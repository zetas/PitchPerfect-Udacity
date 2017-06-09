//
//  RecordSoundsViewController-Delegate.swift
//  PitchPerfect
//
//  Created by David Della Vecchia on 6/9/17.
//  Copyright © 2017 QubitLogic. All rights reserved.
//

import UIKit
import AVFoundation

// MARK: - RecordSoundsViewController: AVAudioRecorderDelegate

extension RecordSoundsViewController: AVAudioRecorderDelegate {

    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if flag {
            performSegue(withIdentifier: "stopRecording", sender: audioRecorder.url)
        } else {
            print("recording was not successful")
        }
    }
}
