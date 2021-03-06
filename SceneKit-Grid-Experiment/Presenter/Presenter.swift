//
//  Presenter.swift
//  SceneKit-Grid-Experiment
//
//  Created by Trevin Wisaksana on 27/07/2018.
//  Copyright © 2018 Trevin Wisaksana. All rights reserved.
//

import UIKit

enum Presenter {
    static func inject(_ component: ViewComponent) -> UIViewController {
        let controller: UIViewController
        
        switch component {
        case .colorPickerView:
            controller = ColorPickerViewController()
            
        case .onboarding:
            controller = OnboardingViewController()
            
        case .sceneInspectorView:
            controller = SceneInspectorViewController()
            
        case .nodeInspectorView:
            controller = NodeInspectorViewController()
            
        case .utilitiesView:
            controller = UtilitiesInspectorViewController()
            
        case .documentBrowser:
            controller = DocumentBrowserViewController()
            
        case .sceneActionsMenu(let isNodeSelected):
            controller = SceneActionMenuViewController(isNodeSelected: isNodeSelected)
            
        case .objectCatalog:
            controller = ObjectCatalogViewController()
            
        case .presentation(let scene):
            controller = PresentationViewController(scene: scene)
            
        case .nodeAnimationList:
            controller = NodeAnimationListViewController()
            
        case .nodeAnimationMenu:
            controller = NodeAnimationMenuViewController()
            
        case .moveAnimationAttributes(let animationAttributes):
            controller = MoveAnimationAttributesViewController(animationAttributes: animationAttributes)
            
        case .rotateAnimationAttributes(let animationAttributes):
            controller = RotateAnimationAttributesViewController(animationAttributes: animationAttributes)
            
        case .delayAnimationAttributes(let animationAttributes):
            controller = DelayAnimationAttributesViewController(animationAttributes: animationAttributes)
            
        case .speechBubbleAnimationAttributes(attributes: let animationAttributes):
            controller = SpeechBubbleAnimationAttributesViewController(animationAttributes: animationAttributes)

        case .alertAnimationPopover:
            controller = SpeechBubbleAnimationPopoverViewController()
        }
        
        return controller
    }
}
