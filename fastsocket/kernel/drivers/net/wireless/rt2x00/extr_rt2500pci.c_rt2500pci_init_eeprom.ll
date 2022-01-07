; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500pci.c_rt2500pci_init_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500pci.c_rt2500pci_init_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@EEPROM_ANTENNA = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_RF_TYPE = common dso_local global i32 0, align 4
@CSR0 = common dso_local global i32 0, align 4
@RT2560 = common dso_local global i32 0, align 4
@CSR0_REVISION = common dso_local global i32 0, align 4
@RF2522 = common dso_local global i32 0, align 4
@RF2523 = common dso_local global i32 0, align 4
@RF2524 = common dso_local global i32 0, align 4
@RF2525 = common dso_local global i32 0, align 4
@RF2525E = common dso_local global i32 0, align 4
@RF5222 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid RF chipset detected\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_TX_DEFAULT = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_RX_DEFAULT = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_HARDWARE_RADIO = common dso_local global i32 0, align 4
@CAPABILITY_HW_BUTTON = common dso_local global i32 0, align 4
@EEPROM_NIC = common dso_local global i32 0, align 4
@EEPROM_NIC_DYN_BBP_TUNE = common dso_local global i32 0, align 4
@CAPABILITY_LINK_TUNING = common dso_local global i32 0, align 4
@EEPROM_CALIBRATE_OFFSET = common dso_local global i32 0, align 4
@EEPROM_CALIBRATE_OFFSET_RSSI = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_LED_MODE = common dso_local global i32 0, align 4
@LED_MODE_ASUS = common dso_local global i64 0, align 8
@LED_MODE_DEFAULT = common dso_local global i64 0, align 8
@LED_MODE_TXRX_ACTIVITY = common dso_local global i64 0, align 8
@LED_TYPE_ACTIVITY = common dso_local global i32 0, align 4
@LED_TYPE_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2500pci_init_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2500pci_init_eeprom(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %8 = load i32, i32* @EEPROM_ANTENNA, align 4
  %9 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %7, i32 %8, i64* %6)
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* @EEPROM_ANTENNA_RF_TYPE, align 4
  %12 = call i64 @rt2x00_get_field16(i64 %10, i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %14 = load i32, i32* @CSR0, align 4
  %15 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %13, i32 %14, i32* %4)
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %17 = load i32, i32* @RT2560, align 4
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @CSR0_REVISION, align 4
  %21 = call i32 @rt2x00_get_field32(i32 %19, i32 %20)
  %22 = call i32 @rt2x00_set_chip(%struct.rt2x00_dev* %16, i32 %17, i64 %18, i32 %21)
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %24 = load i32, i32* @RF2522, align 4
  %25 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %57, label %27

27:                                               ; preds = %1
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = load i32, i32* @RF2523, align 4
  %30 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %27
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %34 = load i32, i32* @RF2524, align 4
  %35 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %32
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %39 = load i32, i32* @RF2525, align 4
  %40 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %37
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %44 = load i32, i32* @RF2525E, align 4
  %45 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %42
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %49 = load i32, i32* @RF5222, align 4
  %50 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %54 = call i32 @rt2x00_err(%struct.rt2x00_dev* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %101

57:                                               ; preds = %47, %42, %37, %32, %27, %1
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* @EEPROM_ANTENNA_TX_DEFAULT, align 4
  %60 = call i64 @rt2x00_get_field16(i64 %58, i32 %59)
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %62 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i64 %60, i64* %63, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i32, i32* @EEPROM_ANTENNA_RX_DEFAULT, align 4
  %66 = call i64 @rt2x00_get_field16(i64 %64, i32 %65)
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %68 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i32, i32* @EEPROM_ANTENNA_HARDWARE_RADIO, align 4
  %72 = call i64 @rt2x00_get_field16(i64 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %57
  %75 = load i32, i32* @CAPABILITY_HW_BUTTON, align 4
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %77 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %76, i32 0, i32 1
  %78 = call i32 @__set_bit(i32 %75, i32* %77)
  br label %79

79:                                               ; preds = %74, %57
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %81 = load i32, i32* @EEPROM_NIC, align 4
  %82 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %80, i32 %81, i64* %6)
  %83 = load i64, i64* %6, align 8
  %84 = load i32, i32* @EEPROM_NIC_DYN_BBP_TUNE, align 4
  %85 = call i64 @rt2x00_get_field16(i64 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %79
  %88 = load i32, i32* @CAPABILITY_LINK_TUNING, align 4
  %89 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %90 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %89, i32 0, i32 1
  %91 = call i32 @__set_bit(i32 %88, i32* %90)
  br label %92

92:                                               ; preds = %87, %79
  %93 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %94 = load i32, i32* @EEPROM_CALIBRATE_OFFSET, align 4
  %95 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %93, i32 %94, i64* %6)
  %96 = load i64, i64* %6, align 8
  %97 = load i32, i32* @EEPROM_CALIBRATE_OFFSET_RSSI, align 4
  %98 = call i64 @rt2x00_get_field16(i64 %96, i32 %97)
  %99 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %100 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %92, %52
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i32, i64*) #1

declare dso_local i64 @rt2x00_get_field16(i64, i32) #1

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_chip(%struct.rt2x00_dev*, i32, i64, i32) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
