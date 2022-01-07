; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_init_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_init_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@EEPROM_ANTENNA = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_RF_TYPE = common dso_local global i32 0, align 4
@MAC_CSR0 = common dso_local global i32 0, align 4
@MAC_CSR0_CHIPSET = common dso_local global i32 0, align 4
@MAC_CSR0_REVISION = common dso_local global i32 0, align 4
@RT2573 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid RT chipset detected\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@RF5226 = common dso_local global i32 0, align 4
@RF2528 = common dso_local global i32 0, align 4
@RF5225 = common dso_local global i32 0, align 4
@RF2527 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid RF chipset detected\0A\00", align 1
@EEPROM_ANTENNA_TX_DEFAULT = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_RX_DEFAULT = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_FRAME_TYPE = common dso_local global i32 0, align 4
@CAPABILITY_FRAME_TYPE = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_HARDWARE_RADIO = common dso_local global i32 0, align 4
@CAPABILITY_HW_BUTTON = common dso_local global i32 0, align 4
@EEPROM_FREQ = common dso_local global i32 0, align 4
@EEPROM_FREQ_OFFSET = common dso_local global i32 0, align 4
@EEPROM_NIC = common dso_local global i32 0, align 4
@EEPROM_NIC_EXTERNAL_LNA = common dso_local global i32 0, align 4
@CAPABILITY_EXTERNAL_LNA_A = common dso_local global i32 0, align 4
@CAPABILITY_EXTERNAL_LNA_BG = common dso_local global i32 0, align 4
@EEPROM_LED = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_ACT = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_GPIO_0 = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_GPIO_1 = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_GPIO_2 = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_GPIO_3 = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_GPIO_4 = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_RDY_A = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_RDY_G = common dso_local global i32 0, align 4
@LED_MODE_SIGNAL_STRENGTH = common dso_local global i64 0, align 8
@LED_TYPE_ASSOC = common dso_local global i32 0, align 4
@LED_TYPE_QUALITY = common dso_local global i32 0, align 4
@LED_TYPE_RADIO = common dso_local global i32 0, align 4
@MCU_LEDCS_LED_MODE = common dso_local global i32 0, align 4
@MCU_LEDCS_POLARITY_ACT = common dso_local global i32 0, align 4
@MCU_LEDCS_POLARITY_GPIO_0 = common dso_local global i32 0, align 4
@MCU_LEDCS_POLARITY_GPIO_1 = common dso_local global i32 0, align 4
@MCU_LEDCS_POLARITY_GPIO_2 = common dso_local global i32 0, align 4
@MCU_LEDCS_POLARITY_GPIO_3 = common dso_local global i32 0, align 4
@MCU_LEDCS_POLARITY_GPIO_4 = common dso_local global i32 0, align 4
@MCU_LEDCS_POLARITY_READY_A = common dso_local global i32 0, align 4
@MCU_LEDCS_POLARITY_READY_BG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt73usb_init_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt73usb_init_eeprom(%struct.rt2x00_dev* %0) #0 {
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
  %14 = load i32, i32* @MAC_CSR0, align 4
  %15 = call i32 @rt2x00usb_register_read(%struct.rt2x00_dev* %13, i32 %14, i32* %4)
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MAC_CSR0_CHIPSET, align 4
  %19 = call i32 @rt2x00_get_field32(i32 %17, i32 %18)
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MAC_CSR0_REVISION, align 4
  %23 = call i32 @rt2x00_get_field32(i32 %21, i32 %22)
  %24 = call i32 @rt2x00_set_chip(%struct.rt2x00_dev* %16, i32 %19, i64 %20, i32 %23)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = load i32, i32* @RT2573, align 4
  %27 = call i32 @rt2x00_rt(%struct.rt2x00_dev* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %31 = call i64 @rt2x00_rev(%struct.rt2x00_dev* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29, %1
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %35 = call i32 @rt2x00_err(%struct.rt2x00_dev* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %121

38:                                               ; preds = %29
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %40 = load i32, i32* @RF5226, align 4
  %41 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %63, label %43

43:                                               ; preds = %38
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %45 = load i32, i32* @RF2528, align 4
  %46 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %43
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %50 = load i32, i32* @RF5225, align 4
  %51 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %55 = load i32, i32* @RF2527, align 4
  %56 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %60 = call i32 @rt2x00_err(%struct.rt2x00_dev* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %121

63:                                               ; preds = %53, %48, %43, %38
  %64 = load i64, i64* %6, align 8
  %65 = load i32, i32* @EEPROM_ANTENNA_TX_DEFAULT, align 4
  %66 = call i64 @rt2x00_get_field16(i64 %64, i32 %65)
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %68 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i64 %66, i64* %69, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i32, i32* @EEPROM_ANTENNA_RX_DEFAULT, align 4
  %72 = call i64 @rt2x00_get_field16(i64 %70, i32 %71)
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %74 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i32, i32* @EEPROM_ANTENNA_FRAME_TYPE, align 4
  %78 = call i64 @rt2x00_get_field16(i64 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %63
  %81 = load i32, i32* @CAPABILITY_FRAME_TYPE, align 4
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %83 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %82, i32 0, i32 4
  %84 = call i32 @__set_bit(i32 %81, i32* %83)
  br label %85

85:                                               ; preds = %80, %63
  %86 = load i64, i64* %6, align 8
  %87 = load i32, i32* @EEPROM_ANTENNA_HARDWARE_RADIO, align 4
  %88 = call i64 @rt2x00_get_field16(i64 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i32, i32* @CAPABILITY_HW_BUTTON, align 4
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %93 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %92, i32 0, i32 4
  %94 = call i32 @__set_bit(i32 %91, i32* %93)
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %97 = load i32, i32* @EEPROM_FREQ, align 4
  %98 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %96, i32 %97, i64* %6)
  %99 = load i64, i64* %6, align 8
  %100 = load i32, i32* @EEPROM_FREQ_OFFSET, align 4
  %101 = call i64 @rt2x00_get_field16(i64 %99, i32 %100)
  %102 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %103 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %102, i32 0, i32 5
  store i64 %101, i64* %103, align 8
  %104 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %105 = load i32, i32* @EEPROM_NIC, align 4
  %106 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %104, i32 %105, i64* %6)
  %107 = load i64, i64* %6, align 8
  %108 = load i32, i32* @EEPROM_NIC_EXTERNAL_LNA, align 4
  %109 = call i64 @rt2x00_get_field16(i64 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %95
  %112 = load i32, i32* @CAPABILITY_EXTERNAL_LNA_A, align 4
  %113 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %114 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %113, i32 0, i32 4
  %115 = call i32 @__set_bit(i32 %112, i32* %114)
  %116 = load i32, i32* @CAPABILITY_EXTERNAL_LNA_BG, align 4
  %117 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %118 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %117, i32 0, i32 4
  %119 = call i32 @__set_bit(i32 %116, i32* %118)
  br label %120

120:                                              ; preds = %111, %95
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %58, %33
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i32, i64*) #1

declare dso_local i64 @rt2x00_get_field16(i64, i32) #1

declare dso_local i32 @rt2x00usb_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_chip(%struct.rt2x00_dev*, i32, i64, i32) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @rt2x00_rev(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
