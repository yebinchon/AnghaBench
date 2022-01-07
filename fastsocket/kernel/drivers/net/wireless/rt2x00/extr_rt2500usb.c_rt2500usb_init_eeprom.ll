; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500usb.c_rt2500usb_init_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500usb.c_rt2500usb_init_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i8*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@EEPROM_ANTENNA = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_RF_TYPE = common dso_local global i32 0, align 4
@MAC_CSR0 = common dso_local global i32 0, align 4
@RT2570 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid RT chipset detected\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@RF2522 = common dso_local global i32 0, align 4
@RF2523 = common dso_local global i32 0, align 4
@RF2524 = common dso_local global i32 0, align 4
@RF2525 = common dso_local global i32 0, align 4
@RF2525E = common dso_local global i32 0, align 4
@RF5222 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid RF chipset detected\0A\00", align 1
@EEPROM_ANTENNA_TX_DEFAULT = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_RX_DEFAULT = common dso_local global i32 0, align 4
@ANTENNA_SW_DIVERSITY = common dso_local global i64 0, align 8
@ANTENNA_HW_DIVERSITY = common dso_local global i8* null, align 8
@EEPROM_ANTENNA_HARDWARE_RADIO = common dso_local global i32 0, align 4
@CAPABILITY_HW_BUTTON = common dso_local global i32 0, align 4
@EEPROM_CALIBRATE_OFFSET = common dso_local global i32 0, align 4
@EEPROM_CALIBRATE_OFFSET_RSSI = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_LED_MODE = common dso_local global i32 0, align 4
@LED_MODE_ASUS = common dso_local global i32 0, align 4
@LED_MODE_DEFAULT = common dso_local global i32 0, align 4
@LED_MODE_TXRX_ACTIVITY = common dso_local global i32 0, align 4
@LED_TYPE_ACTIVITY = common dso_local global i32 0, align 4
@LED_TYPE_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2500usb_init_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2500usb_init_eeprom(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %8 = load i32, i32* @EEPROM_ANTENNA, align 4
  %9 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %7, i32 %8, i32* %6)
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @EEPROM_ANTENNA_RF_TYPE, align 4
  %12 = call i8* @rt2x00_get_field16(i32 %10, i32 %11)
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %15 = load i32, i32* @MAC_CSR0, align 4
  %16 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %14, i32 %15, i32* %4)
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %18 = load i32, i32* @RT2570, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @rt2x00_set_chip(%struct.rt2x00_dev* %17, i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 65520
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25, %1
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %31 = call i32 @rt2x00_err(%struct.rt2x00_dev* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %128

34:                                               ; preds = %25
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %36 = load i32, i32* @RF2522, align 4
  %37 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %69, label %39

39:                                               ; preds = %34
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %41 = load i32, i32* @RF2523, align 4
  %42 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %39
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %46 = load i32, i32* @RF2524, align 4
  %47 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %44
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %51 = load i32, i32* @RF2525, align 4
  %52 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %49
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %56 = load i32, i32* @RF2525E, align 4
  %57 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %61 = load i32, i32* @RF5222, align 4
  %62 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %66 = call i32 @rt2x00_err(%struct.rt2x00_dev* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %128

69:                                               ; preds = %59, %54, %49, %44, %39, %34
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @EEPROM_ANTENNA_TX_DEFAULT, align 4
  %72 = call i8* @rt2x00_get_field16(i32 %70, i32 %71)
  %73 = ptrtoint i8* %72 to i64
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %75 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i64 %73, i64* %76, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @EEPROM_ANTENNA_RX_DEFAULT, align 4
  %79 = call i8* @rt2x00_get_field16(i32 %77, i32 %78)
  %80 = ptrtoint i8* %79 to i64
  %81 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %82 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i64 %80, i64* %83, align 8
  %84 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %85 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ANTENNA_SW_DIVERSITY, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %69
  %91 = load i8*, i8** @ANTENNA_HW_DIVERSITY, align 8
  %92 = ptrtoint i8* %91 to i64
  %93 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %94 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  br label %96

96:                                               ; preds = %90, %69
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %98 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ANTENNA_SW_DIVERSITY, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load i8*, i8** @ANTENNA_HW_DIVERSITY, align 8
  %105 = ptrtoint i8* %104 to i64
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %107 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i64 %105, i64* %108, align 8
  br label %109

109:                                              ; preds = %103, %96
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @EEPROM_ANTENNA_HARDWARE_RADIO, align 4
  %112 = call i8* @rt2x00_get_field16(i32 %110, i32 %111)
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i32, i32* @CAPABILITY_HW_BUTTON, align 4
  %116 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %117 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %116, i32 0, i32 1
  %118 = call i32 @__set_bit(i32 %115, i32* %117)
  br label %119

119:                                              ; preds = %114, %109
  %120 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %121 = load i32, i32* @EEPROM_CALIBRATE_OFFSET, align 4
  %122 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %120, i32 %121, i32* %6)
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @EEPROM_CALIBRATE_OFFSET_RSSI, align 4
  %125 = call i8* @rt2x00_get_field16(i32 %123, i32 %124)
  %126 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %127 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %119, %64, %29
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i8* @rt2x00_get_field16(i32, i32) #1

declare dso_local i32 @rt2500usb_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_chip(%struct.rt2x00_dev*, i32, i32, i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
