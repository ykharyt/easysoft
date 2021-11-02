//
//  RocketRidesTests.swift
//  RocketRidesTests
//
//  Created by Yevhen Kharytonenko on 02.11.2021.
//  Copyright © 2021 Romain Huet. All rights reserved.
//

import XCTest
@testable import RocketRides

class RocketRidesTests: XCTestCase {
    
    var testViewController: RideRequestViewController?

    override func setUpWithError() throws {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        testViewController = storyboard.instantiateViewController(withIdentifier: "RideRequestViewController") as? RideRequestViewController
        testViewController?.loadView()
    }

    override func tearDownWithError() throws {}

    func testThatOutletsAreNotNil() throws {
        XCTAssertNotNil(testViewController?.mapView)
        XCTAssertNotNil(testViewController?.inputContainerView)
        XCTAssertNotNil(testViewController?.destinationButton)
        XCTAssertNotNil(testViewController?.paymentButton)
        XCTAssertNotNil(testViewController?.priceButton)
    }
    
    func testThatBaseURLStringIsSet() throws {
        let apiClient = MainAPIClient.shared
        XCTAssertEqual(apiClient.baseURLString, "https://rocketrides.io")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
}
