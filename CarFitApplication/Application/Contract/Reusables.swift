//
//  Reusables.swift
//  CarFitApplication
//
//  Created by Usman on 09/08/2020.
//  Copyright © 2020 usman-pucit All rights reserved.
//

import UIKit

// MARK: - Protocol

protocol ReuseIdentifying {
    static var reuseIdentifier: String { get }
}

// MARK: - extension

extension ReuseIdentifying where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

// MARK: - Protocol

protocol NibLoadableView: class {
    static var nibName: String { get }
}

// MARK: - extension

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}

/// Confirming Reusable protocols and Nib protocols
extension UITableViewCell: NibLoadableView, ReuseIdentifying {}


/// Confirming Reusable protocols and Nib protocols
extension UICollectionViewCell: NibLoadableView, ReuseIdentifying {}
