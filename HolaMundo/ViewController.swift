//
//  ViewController.swift
//  HolaMundo
//
//  Created by g903 DIT UPM on 04/11/2019.
//  Copyright © 2019 UPM. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var botonHola: UIButton!
    @IBOutlet weak var botonMundo: UIButton!
    @IBOutlet weak var botonCasa: UIButton!
    @IBOutlet weak var vistaMapa: MKMapView!
    
    @IBOutlet weak var MapaTipo: UISegmentedControl!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let center = CLLocationCoordinate2D(latitude: 55, longitude: 15)
        let span = MKCoordinateSpan(latitudeDelta: 80, longitudeDelta: 80)
        let regInicial = MKCoordinateRegion(center: center, span: span)
        
        vistaMapa.setRegion(regInicial, animated: true)
        vistaMapa.mapType = MKMapType.standard
        // Do any additional setup after loading the view.
    }

    @IBAction func actionHola(_ sender: UIButton) {
        titulo.text = "Hala Madrid"
        
        let center = CLLocationCoordinate2D(latitude: 40.41855, longitude: -3.69168)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let region = MKCoordinateRegion(center: center, span: span)
        
        vistaMapa.setRegion(region, animated: true)
        vistaMapa.mapType = MKMapType.standard
        
    }
    
    @IBAction func actionMundo(_ sender: UIButton) {
        titulo.text = "Bienvenido a la ETSIT"
        
        let center = CLLocationCoordinate2D(latitude: 40.452876, longitude: -3.725562)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let region = MKCoordinateRegion(center: center, span: span)
        
        vistaMapa.setRegion(region, animated: true)
        vistaMapa.mapType = MKMapType.standard
    }

    @IBAction func actionHome(_ sender: UIButton) {
        titulo.text = "El malecón"
        
        let center = CLLocationCoordinate2D(latitude: 23.141769, longitude: -82.371656)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let region = MKCoordinateRegion(center: center, span: span)
        
        vistaMapa.setRegion(region, animated: true)
        vistaMapa.mapType = MKMapType.standard
        

        
    }
    
    
    @IBAction func actionMapaTipo(_ sender: UISegmentedControl) {
        
        switch MapaTipo.selectedSegmentIndex {
        case 0:
            vistaMapa.mapType = .standard
        case 1:
            vistaMapa.mapType = .satellite
        case 2:
            vistaMapa.mapType = .hybrid
        default:
            break
        }
    }
    
        
    }
    


