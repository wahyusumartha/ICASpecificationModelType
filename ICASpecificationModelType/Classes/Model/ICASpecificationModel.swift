//
//  ICASpecificationModel.swift
//  Pods
//
//  Created by Wahyu Sumartha on 06/09/2017.
//
//

import Foundation

enum ICASpecificationModelType: String {
  case cylinders = "cylinders"
  case doors = "doors"
  case bore = "bore"
  case stroke = "stroke"
  case compressionRatio = "compression_ratio"
  case seatCapacity = "seat_capacity"
  case peakPower = "peak_power"
  case horsePower = "horse_power"
  case peakTorque = "peak_torque"
  case fuelConsumption = "fuel_consumption"
  case co2Emission = "co2_emission"
  case gearNumber = "gear_num"
  case steeringTurn = "steering_turn"
  case steeringRadius = "steering_radius"
  case length = "length"
  case width = "width"
  case height = "height"
  case wheelBase = "wheel_base"
  case frontTread = "front_tread"
  case rearTread = "rear_tread"
  case frontOverhang = "front_overhang"
  case rearOverhang = "rear_overhang"
  case groundClearance = "ground_clearance"
  case kerbWeight = "kerb_weight"
  case boot = "boot"
  case fuelTank = "fuel_tank"
  case duration = "duration_0_100"
  case topSpeed = "top_speed"
  case dryWeight = "dry_weight"
  case seatHeight = "seat_height"
  case engineModel = "engine_model"
  case powerRPMFrom = "power_rpm_from"
  case torqueRPMFrom = "torque_rpm_from"
  case torqueRPMTo = "torque_rpm_to"
  case engineType = "engine_type"
  case directInjection = "direct_injection"
  case aspiration = "aspiration"
  case gearBoxType = "gear_box_type"
  case finalDriveRatio = "final_drive_ratio"
  case drivenWheel = "driven_wheel"
  case frontBrakes = "front_brakes"
  case rearBrakes = "rear_brakes"
  case frontSuspension = "front_suspension"
  case rearSuspension = "rear_suspension"
  case steeringType = "steering_type"
  case frontTyre = "front_tyre"
  case rearTyre = "rear_tyre"
  case frontRim = "front_rim"
  case rearRim = "rear_rim"
  case assembled = "assembled"
  case fuelType = "fuel_type"
  case coolingType = "cooling_type"
  case wheelsType = "wheels_type"
  case engineCC = "engine_cc"
}

public struct ICAspecificationModel {
  private var config: ICASpecificationModelConfig = .my
  
  public init(config: ICASpecificationModelConfig) {
    self.config = config
  }

  public func typeDescription(for rawValue: String) -> String {
    if let modelType = ICASpecificationModelType(rawValue: rawValue) {
      switch modelType {
      case .cylinders: return localiseType.cylinders
      case .doors: return localiseType.doors
      case .bore: return localiseType.bore
      case .stroke: return localiseType.stroke
      case .compressionRatio: return localiseType.compressionRatio
      case .seatCapacity: return localiseType.seatCapacity
      case .peakPower: return localiseType.peakPower
      case .horsePower: return localiseType.horsePower
      case .peakTorque: return localiseType.peakTorque
      case .fuelConsumption: return localiseType.fuelConsumption
      case .co2Emission: return localiseType.co2Emission
      case .gearNumber: return localiseType.gearNumber
      case .steeringTurn: return localiseType.steeringTurn
      case .steeringRadius: return localiseType.steeringRadius
      case .length: return localiseType.length
      case .width: return localiseType.width
      case .height: return localiseType.height
      case .wheelBase: return localiseType.wheelBase
      case .frontTread: return localiseType.frontTread
      case .rearTread: return localiseType.rearTread
      case .frontOverhang: return localiseType.frontOverhang
      case .rearOverhang: return localiseType.rearOverhang
      case .groundClearance: return localiseType.groundClearance
      case .kerbWeight: return localiseType.kerbWeight
      case .boot: return localiseType.boot
      case .fuelTank: return localiseType.fuelTank
      case .duration: return localiseType.duration
      case .topSpeed: return localiseType.topSpeed
      case .dryWeight: return localiseType.dryWeight
      case .seatHeight: return localiseType.seatHeight
      case .engineModel: return localiseType.engineModel
      case .powerRPMFrom: return localiseType.powerRPMFrom
      case .torqueRPMFrom: return localiseType.torqueRPMFrom
      case .torqueRPMTo: return localiseType.torqueRPMTo
      case .engineType: return localiseType.engineType
      case .directInjection: return localiseType.directInjection
      case .aspiration: return localiseType.aspiration
      case .gearBoxType: return localiseType.gearBoxType
      case .finalDriveRatio: return localiseType.finalDriveRatio
      case .drivenWheel: return localiseType.drivenWheel
      case .frontBrakes: return localiseType.frontBrakes
      case .rearBrakes: return localiseType.rearBrakes
      case .frontSuspension: return localiseType.frontSuspension
      case .rearSuspension: return localiseType.rearSuspension
      case .steeringType: return localiseType.steeringType
      case .frontTyre: return localiseType.frontTyre
      case .rearTyre: return localiseType.rearTyre
      case .frontRim: return localiseType.frontRim
      case .rearRim: return localiseType.rearRim
      case .assembled: return localiseType.assembled
      case .fuelType: return localiseType.fuelType
      case .coolingType: return localiseType.coolingType
      case .wheelsType: return localiseType.wheelsType
      case .engineCC: return localiseType.engineCC
      }
    } else {
      return ""
    }
  }
  
  private var localiseType: ICASpecificationLocaliseType {
    get {
      switch config {
      case .my:
        return ICASpecificationENLocaliseString()
      case .id:
        return ICASpecificationIDLocaliseString()
      case .th:
        return ICASpecificationTHLocaliseString()
      }
    }
  }
  
  public static var engineSpecsCollections: [String] {
    get {
      return [ICASpecificationModelType.cylinders.rawValue,
              ICASpecificationModelType.engineCC.rawValue,
              ICASpecificationModelType.peakPower.rawValue,
              ICASpecificationModelType.peakTorque.rawValue,
              ICASpecificationModelType.engineType.rawValue,
              ICASpecificationModelType.engineModel.rawValue,
              ICASpecificationModelType.directInjection.rawValue,
              ICASpecificationModelType.aspiration.rawValue,
              ICASpecificationModelType.bore.rawValue,
              ICASpecificationModelType.stroke.rawValue,
              ICASpecificationModelType.compressionRatio.rawValue,
              ICASpecificationModelType.fuelType.rawValue]
    }
  }
  
  public static var dimensionSpecsCollection: [String] {
    get {
      return [ICASpecificationModelType.length.rawValue,
              ICASpecificationModelType.width.rawValue,
              ICASpecificationModelType.height.rawValue,
              ICASpecificationModelType.wheelBase.rawValue,
              ICASpecificationModelType.frontTread.rawValue,
              ICASpecificationModelType.rearTread.rawValue,
              ICASpecificationModelType.frontOverhang.rawValue,
              ICASpecificationModelType.rearOverhang.rawValue,
              ICASpecificationModelType.kerbWeight.rawValue,
              ICASpecificationModelType.boot.rawValue,
              ICASpecificationModelType.fuelTank.rawValue]
    }
  }
}
