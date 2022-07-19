//
//  ViewController.swift
//  HW.Block2.L2
//
//  Created by Юрій Вовк on 18.07.2022.
//

import UIKit

final class ViewController: UIViewController {
    // MARK: - @IBOutlet

    @IBOutlet var viewColor: UIView!
    @IBOutlet var redLabelvalue: UILabel!
    @IBOutlet var greenLabelvalue: UILabel!
    @IBOutlet var blueLabelvalue: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()

        // MARK: - redSlider

        redSlider.value = 1
        redSlider.minimumValue = 1
        redSlider.maximumValue = 255
        redLabelvalue.text = String(redSlider.value)

        // MARK: - greenSLider

        greenSlider.value = 1
        greenSlider.minimumValue = 1
        greenSlider.maximumValue = 255
        greenLabelvalue.text = String(greenSlider.value)

        // MARK: - blueSLider

        blueSlider.value = 1
        blueSlider.minimumValue = 1
        blueSlider.maximumValue = 255
        blueLabelvalue.text = String(blueSlider.value)
    }

    // MARK: - @IBAction

    @IBAction func redLabelSliderAction(_ sender: UISlider) {
        redLabelvalue.text = String(format: "%.2f", sender.value)
        colorCalculation()
    }

    @IBAction func greenLabelSliderAction(_ sender: UISlider) {
        greenLabelvalue.text = String(format: "%.2f", sender.value)
        colorCalculation()
    }

    @IBAction func blueLabelSliderAction(_ sender: UISlider) {
        blueLabelvalue.text = String(format: "%.2f", sender.value)
        colorCalculation()
    }

    // MARK: - Privat24

    private func colorCalculation() {
        viewColor.backgroundColor = UIColor(
            red: CGFloat(redSlider.value) / 255,
            green: CGFloat(greenSlider.value) / 255,
            blue: CGFloat(blueSlider.value) / 255, alpha: 1)
    }
}
