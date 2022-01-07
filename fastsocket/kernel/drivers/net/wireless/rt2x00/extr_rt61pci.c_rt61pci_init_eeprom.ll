; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_init_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_init_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EEPROM_ANTENNA = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_RF_TYPE = common dso_local global i32 0, align 4
@MAC_CSR0 = common dso_local global i32 0, align 4
@MAC_CSR0_CHIPSET = common dso_local global i32 0, align 4
@MAC_CSR0_REVISION = common dso_local global i32 0, align 4
@RF5225 = common dso_local global i32 0, align 4
@RF5325 = common dso_local global i32 0, align 4
@RF2527 = common dso_local global i32 0, align 4
@RF2529 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid RF chipset detected\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_NUM = common dso_local global i32 0, align 4
@CAPABILITY_DOUBLE_ANTENNA = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_TX_DEFAULT = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_RX_DEFAULT = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_FRAME_TYPE = common dso_local global i32 0, align 4
@CAPABILITY_FRAME_TYPE = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_HARDWARE_RADIO = common dso_local global i32 0, align 4
@CAPABILITY_HW_BUTTON = common dso_local global i32 0, align 4
@EEPROM_FREQ = common dso_local global i32 0, align 4
@EEPROM_FREQ_SEQ = common dso_local global i32 0, align 4
@CAPABILITY_RF_SEQUENCE = common dso_local global i32 0, align 4
@EEPROM_FREQ_OFFSET = common dso_local global i32 0, align 4
@EEPROM_NIC = common dso_local global i32 0, align 4
@EEPROM_NIC_EXTERNAL_LNA_A = common dso_local global i32 0, align 4
@CAPABILITY_EXTERNAL_LNA_A = common dso_local global i32 0, align 4
@EEPROM_NIC_EXTERNAL_LNA_BG = common dso_local global i32 0, align 4
@CAPABILITY_EXTERNAL_LNA_BG = common dso_local global i32 0, align 4
@ANTENNA_A = common dso_local global i32 0, align 4
@EEPROM_NIC_RX_FIXED = common dso_local global i32 0, align 4
@ANTENNA_B = common dso_local global i32 0, align 4
@EEPROM_NIC_TX_FIXED = common dso_local global i32 0, align 4
@EEPROM_NIC_TX_DIVERSITY = common dso_local global i32 0, align 4
@ANTENNA_SW_DIVERSITY = common dso_local global i8* null, align 8
@EEPROM_NIC_ENABLE_DIVERSITY = common dso_local global i32 0, align 4
@EEPROM_LED = common dso_local global i32 0, align 4
@EEPROM_LED_LED_MODE = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_ACT = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_GPIO_0 = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_GPIO_1 = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_GPIO_2 = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_GPIO_3 = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_GPIO_4 = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_RDY_A = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_RDY_G = common dso_local global i32 0, align 4
@LED_MODE_SIGNAL_STRENGTH = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt61pci_init_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt61pci_init_eeprom(%struct.rt2x00_dev* %0) #0 {
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
  %12 = call i32 @rt2x00_get_field16(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %14 = load i32, i32* @MAC_CSR0, align 4
  %15 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %13, i32 %14, i32* %4)
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MAC_CSR0_CHIPSET, align 4
  %19 = call i32 @rt2x00_get_field32(i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MAC_CSR0_REVISION, align 4
  %23 = call i32 @rt2x00_get_field32(i32 %21, i32 %22)
  %24 = call i32 @rt2x00_set_chip(%struct.rt2x00_dev* %16, i32 %19, i32 %20, i32 %23)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = load i32, i32* @RF5225, align 4
  %27 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %1
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %31 = load i32, i32* @RF5325, align 4
  %32 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %29
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %36 = load i32, i32* @RF2527, align 4
  %37 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %41 = load i32, i32* @RF2529, align 4
  %42 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %46 = call i32 @rt2x00_err(%struct.rt2x00_dev* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %183

49:                                               ; preds = %39, %34, %29, %1
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @EEPROM_ANTENNA_NUM, align 4
  %52 = call i32 @rt2x00_get_field16(i32 %50, i32 %51)
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* @CAPABILITY_DOUBLE_ANTENNA, align 4
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %57 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %56, i32 0, i32 6
  %58 = call i32 @__set_bit(i32 %55, i32* %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @EEPROM_ANTENNA_TX_DEFAULT, align 4
  %62 = call i32 @rt2x00_get_field16(i32 %60, i32 %61)
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %64 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @EEPROM_ANTENNA_RX_DEFAULT, align 4
  %68 = call i32 @rt2x00_get_field16(i32 %66, i32 %67)
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %70 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @EEPROM_ANTENNA_FRAME_TYPE, align 4
  %74 = call i32 @rt2x00_get_field16(i32 %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %59
  %77 = load i32, i32* @CAPABILITY_FRAME_TYPE, align 4
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %79 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %78, i32 0, i32 6
  %80 = call i32 @__set_bit(i32 %77, i32* %79)
  br label %81

81:                                               ; preds = %76, %59
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @EEPROM_ANTENNA_HARDWARE_RADIO, align 4
  %84 = call i32 @rt2x00_get_field16(i32 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i32, i32* @CAPABILITY_HW_BUTTON, align 4
  %88 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %89 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %88, i32 0, i32 6
  %90 = call i32 @__set_bit(i32 %87, i32* %89)
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %93 = load i32, i32* @EEPROM_FREQ, align 4
  %94 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %92, i32 %93, i32* %6)
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @EEPROM_FREQ_SEQ, align 4
  %97 = call i32 @rt2x00_get_field16(i32 %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %91
  %100 = load i32, i32* @CAPABILITY_RF_SEQUENCE, align 4
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %102 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %101, i32 0, i32 6
  %103 = call i32 @__set_bit(i32 %100, i32* %102)
  br label %104

104:                                              ; preds = %99, %91
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @EEPROM_FREQ_OFFSET, align 4
  %107 = call i32 @rt2x00_get_field16(i32 %105, i32 %106)
  %108 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %109 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %111 = load i32, i32* @EEPROM_NIC, align 4
  %112 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %110, i32 %111, i32* %6)
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @EEPROM_NIC_EXTERNAL_LNA_A, align 4
  %115 = call i32 @rt2x00_get_field16(i32 %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %104
  %118 = load i32, i32* @CAPABILITY_EXTERNAL_LNA_A, align 4
  %119 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %120 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %119, i32 0, i32 6
  %121 = call i32 @__set_bit(i32 %118, i32* %120)
  br label %122

122:                                              ; preds = %117, %104
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @EEPROM_NIC_EXTERNAL_LNA_BG, align 4
  %125 = call i32 @rt2x00_get_field16(i32 %123, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load i32, i32* @CAPABILITY_EXTERNAL_LNA_BG, align 4
  %129 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %130 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %129, i32 0, i32 6
  %131 = call i32 @__set_bit(i32 %128, i32* %130)
  br label %132

132:                                              ; preds = %127, %122
  %133 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %134 = load i32, i32* @RF2529, align 4
  %135 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %182

137:                                              ; preds = %132
  %138 = load i32, i32* @CAPABILITY_DOUBLE_ANTENNA, align 4
  %139 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %140 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %139, i32 0, i32 6
  %141 = call i32 @test_bit(i32 %138, i32* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %182, label %143

143:                                              ; preds = %137
  %144 = load i32, i32* @ANTENNA_A, align 4
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @EEPROM_NIC_RX_FIXED, align 4
  %147 = call i32 @rt2x00_get_field16(i32 %145, i32 %146)
  %148 = add nsw i32 %144, %147
  %149 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %150 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  store i32 %148, i32* %151, align 4
  %152 = load i32, i32* @ANTENNA_B, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* @EEPROM_NIC_TX_FIXED, align 4
  %155 = call i32 @rt2x00_get_field16(i32 %153, i32 %154)
  %156 = sub nsw i32 %152, %155
  %157 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %158 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 4
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @EEPROM_NIC_TX_DIVERSITY, align 4
  %162 = call i32 @rt2x00_get_field16(i32 %160, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %143
  %165 = load i8*, i8** @ANTENNA_SW_DIVERSITY, align 8
  %166 = ptrtoint i8* %165 to i32
  %167 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %168 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 4
  br label %170

170:                                              ; preds = %164, %143
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* @EEPROM_NIC_ENABLE_DIVERSITY, align 4
  %173 = call i32 @rt2x00_get_field16(i32 %171, i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i8*, i8** @ANTENNA_SW_DIVERSITY, align 8
  %177 = ptrtoint i8* %176 to i32
  %178 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %179 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 1
  store i32 %177, i32* %180, align 4
  br label %181

181:                                              ; preds = %175, %170
  br label %182

182:                                              ; preds = %181, %137, %132
  store i32 0, i32* %2, align 4
  br label %183

183:                                              ; preds = %182, %44
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_chip(%struct.rt2x00_dev*, i32, i32, i32) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i64 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
