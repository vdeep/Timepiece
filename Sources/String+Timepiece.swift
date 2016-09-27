//
//  String+Timepiece.swift
//  Timepiece
//
//  Created by Naoto Kaneko on 2015/03/01.
//  Copyright (c) 2015年 Naoto Kaneko. All rights reserved.
//

import Foundation

public extension String {
    // MARK - Parse into NSDate
    
    func dateFromFormat(format: String) -> NSDate? {
        let formatter = NSDateFormatter()
        formatter.dateFormat = format

        // Parse AM/PM time correctly
        // cf. https://developer.apple.com/library/content/qa/qa1480/_index.html
        formatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")

        return formatter.dateFromString(self)
    }
}
