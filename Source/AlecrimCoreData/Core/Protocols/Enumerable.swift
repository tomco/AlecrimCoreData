//
//  Enumerable.swift
//  AlecrimCoreData
//
//  Created by Vanderlei Martinelli on 2015-06-17.
//  Copyright (c) 2015 Alecrim. All rights reserved.
//

import Foundation

public protocol Enumerable: SequenceType {
    
    func skip(count: Int) -> Self
    func take(count: Int) -> Self
    
    func count() -> Int

}

// MARK: -

extension Enumerable {
    
    public func any() -> Bool {
        return self.take(1).count() == 1
    }
    
    public func none() -> Bool {
        return !self.any()
    }
    
}