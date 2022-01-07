; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_init_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_init_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@EEPROM_ANTENNA = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_RF_TYPE = common dso_local global i32 0, align 4
@CSR0 = common dso_local global i32 0, align 4
@RT2460 = common dso_local global i32 0, align 4
@CSR0_REVISION = common dso_local global i32 0, align 4
@RF2420 = common dso_local global i32 0, align 4
@RF2421 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid RF chipset detected\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_TX_DEFAULT = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_RX_DEFAULT = common dso_local global i32 0, align 4
@ANTENNA_SW_DIVERSITY = common dso_local global i64 0, align 8
@ANTENNA_HW_DIVERSITY = common dso_local global i8* null, align 8
@EEPROM_ANTENNA_HARDWARE_RADIO = common dso_local global i32 0, align 4
@CAPABILITY_HW_BUTTON = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_RX_AGCVGC_TUNING = common dso_local global i32 0, align 4
@CAPABILITY_LINK_TUNING = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_LED_MODE = common dso_local global i32 0, align 4
@LED_MODE_ASUS = common dso_local global i64 0, align 8
@LED_MODE_DEFAULT = common dso_local global i64 0, align 8
@LED_MODE_TXRX_ACTIVITY = common dso_local global i64 0, align 8
@LED_TYPE_ACTIVITY = common dso_local global i32 0, align 4
@LED_TYPE_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2400pci_init_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2400pci_init_eeprom(%struct.rt2x00_dev* %0) #0 {
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
  %17 = load i32, i32* @RT2460, align 4
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @CSR0_REVISION, align 4
  %21 = call i32 @rt2x00_get_field32(i32 %19, i32 %20)
  %22 = call i32 @rt2x00_set_chip(%struct.rt2x00_dev* %16, i32 %17, i64 %18, i32 %21)
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %24 = load i32, i32* @RF2420, align 4
  %25 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %1
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = load i32, i32* @RF2421, align 4
  %30 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %34 = call i32 @rt2x00_err(%struct.rt2x00_dev* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %96

37:                                               ; preds = %27, %1
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* @EEPROM_ANTENNA_TX_DEFAULT, align 4
  %40 = call i64 @rt2x00_get_field16(i64 %38, i32 %39)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %42 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* @EEPROM_ANTENNA_RX_DEFAULT, align 4
  %46 = call i64 @rt2x00_get_field16(i64 %44, i32 %45)
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %48 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i64 %46, i64* %49, align 8
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %51 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ANTENNA_SW_DIVERSITY, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %37
  %57 = load i8*, i8** @ANTENNA_HW_DIVERSITY, align 8
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %60 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  br label %62

62:                                               ; preds = %56, %37
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %64 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ANTENNA_SW_DIVERSITY, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load i8*, i8** @ANTENNA_HW_DIVERSITY, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %73 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i64 %71, i64* %74, align 8
  br label %75

75:                                               ; preds = %69, %62
  %76 = load i64, i64* %6, align 8
  %77 = load i32, i32* @EEPROM_ANTENNA_HARDWARE_RADIO, align 4
  %78 = call i64 @rt2x00_get_field16(i64 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i32, i32* @CAPABILITY_HW_BUTTON, align 4
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %83 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %82, i32 0, i32 0
  %84 = call i32 @__set_bit(i32 %81, i32* %83)
  br label %85

85:                                               ; preds = %80, %75
  %86 = load i64, i64* %6, align 8
  %87 = load i32, i32* @EEPROM_ANTENNA_RX_AGCVGC_TUNING, align 4
  %88 = call i64 @rt2x00_get_field16(i64 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i32, i32* @CAPABILITY_LINK_TUNING, align 4
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %93 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %92, i32 0, i32 0
  %94 = call i32 @__set_bit(i32 %91, i32* %93)
  br label %95

95:                                               ; preds = %90, %85
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %32
  %97 = load i32, i32* %2, align 4
  ret i32 %97
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
