; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_normal_mode_setup_3xxx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_normal_mode_setup_3xxx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, %struct.rt2800_drv_data* }
%struct.rt2800_drv_data = type { i32 }

@RFCSR17_TX_LO1_EN = common dso_local global i32 0, align 4
@RT3070 = common dso_local global i32 0, align 4
@RT3071 = common dso_local global i32 0, align 4
@REV_RT3071E = common dso_local global i32 0, align 4
@RT3090 = common dso_local global i32 0, align 4
@REV_RT3090E = common dso_local global i32 0, align 4
@RT3390 = common dso_local global i32 0, align 4
@REV_RT3390E = common dso_local global i32 0, align 4
@CAPABILITY_EXTERNAL_LNA_BG = common dso_local global i32 0, align 4
@RFCSR17_R = common dso_local global i32 0, align 4
@RFCSR17_TXMIXER_GAIN = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0_RXPATH = common dso_local global i32 0, align 4
@BBP138_RX_ADC1 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0_TXPATH = common dso_local global i32 0, align 4
@BBP138_TX_DAC1 = common dso_local global i32 0, align 4
@REV_RT3070F = common dso_local global i32 0, align 4
@RFCSR27_R1 = common dso_local global i32 0, align 4
@RFCSR27_R2 = common dso_local global i32 0, align 4
@RFCSR27_R3 = common dso_local global i32 0, align 4
@RFCSR27_R4 = common dso_local global i32 0, align 4
@RFCSR1_RF_BLOCK_EN = common dso_local global i32 0, align 4
@RFCSR1_RX0_PD = common dso_local global i32 0, align 4
@RFCSR1_TX0_PD = common dso_local global i32 0, align 4
@RFCSR1_RX1_PD = common dso_local global i32 0, align 4
@RFCSR1_TX1_PD = common dso_local global i32 0, align 4
@RFCSR15_TX_LO2_EN = common dso_local global i32 0, align 4
@RFCSR20_RX_LO1_EN = common dso_local global i32 0, align 4
@RFCSR21_RX_LO2_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_normal_mode_setup_3xxx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_normal_mode_setup_3xxx(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.rt2800_drv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %9 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %8, i32 0, i32 1
  %10 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  store %struct.rt2800_drv_data* %10, %struct.rt2800_drv_data** %3, align 8
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %12 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %11, i32 17, i32* %5)
  %13 = load i32, i32* @RFCSR17_TX_LO1_EN, align 4
  %14 = call i32 @rt2x00_set_field8(i32* %5, i32 %13, i32 0)
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %16 = load i32, i32* @RT3070, align 4
  %17 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %1
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %21 = load i32, i32* @RT3071, align 4
  %22 = load i32, i32* @REV_RT3071E, align 4
  %23 = call i64 @rt2x00_rt_rev_lt(%struct.rt2x00_dev* %20, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %19
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %27 = load i32, i32* @RT3090, align 4
  %28 = load i32, i32* @REV_RT3090E, align 4
  %29 = call i64 @rt2x00_rt_rev_lt(%struct.rt2x00_dev* %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %33 = load i32, i32* @RT3390, align 4
  %34 = load i32, i32* @REV_RT3390E, align 4
  %35 = call i64 @rt2x00_rt_rev_lt(%struct.rt2x00_dev* %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %31, %25, %19, %1
  %38 = load i32, i32* @CAPABILITY_EXTERNAL_LNA_BG, align 4
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %40 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %39, i32 0, i32 0
  %41 = call i32 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @RFCSR17_R, align 4
  %45 = call i32 @rt2x00_set_field8(i32* %5, i32 %44, i32 1)
  br label %46

46:                                               ; preds = %43, %37
  br label %47

47:                                               ; preds = %46, %31
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %49 = load i32, i32* @RT3070, align 4
  %50 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 2
  store i32 %53, i32* %4, align 4
  %54 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %3, align 8
  %55 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %47
  %60 = load i32, i32* @RFCSR17_TXMIXER_GAIN, align 4
  %61 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %3, align 8
  %62 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @rt2x00_set_field8(i32* %5, i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %59, %47
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %66, i32 17, i32 %67)
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %70 = load i32, i32* @RT3090, align 4
  %71 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %65
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %75 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %74, i32 138, i32* %6)
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %77 = load i32, i32* @EEPROM_NIC_CONF0, align 4
  %78 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %76, i32 %77, i32* %7)
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @EEPROM_NIC_CONF0_RXPATH, align 4
  %81 = call i32 @rt2x00_get_field16(i32 %79, i32 %80)
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load i32, i32* @BBP138_RX_ADC1, align 4
  %85 = call i32 @rt2x00_set_field8(i32* %6, i32 %84, i32 0)
  br label %86

86:                                               ; preds = %83, %73
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @EEPROM_NIC_CONF0_TXPATH, align 4
  %89 = call i32 @rt2x00_get_field16(i32 %87, i32 %88)
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* @BBP138_TX_DAC1, align 4
  %93 = call i32 @rt2x00_set_field8(i32* %6, i32 %92, i32 1)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %95, i32 138, i32 %96)
  br label %98

98:                                               ; preds = %94, %65
  %99 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %100 = load i32, i32* @RT3070, align 4
  %101 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %127

103:                                              ; preds = %98
  %104 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %105 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %104, i32 27, i32* %5)
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %107 = load i32, i32* @RT3070, align 4
  %108 = load i32, i32* @REV_RT3070F, align 4
  %109 = call i64 @rt2x00_rt_rev_lt(%struct.rt2x00_dev* %106, i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load i32, i32* @RFCSR27_R1, align 4
  %113 = call i32 @rt2x00_set_field8(i32* %5, i32 %112, i32 3)
  br label %117

114:                                              ; preds = %103
  %115 = load i32, i32* @RFCSR27_R1, align 4
  %116 = call i32 @rt2x00_set_field8(i32* %5, i32 %115, i32 0)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32, i32* @RFCSR27_R2, align 4
  %119 = call i32 @rt2x00_set_field8(i32* %5, i32 %118, i32 0)
  %120 = load i32, i32* @RFCSR27_R3, align 4
  %121 = call i32 @rt2x00_set_field8(i32* %5, i32 %120, i32 0)
  %122 = load i32, i32* @RFCSR27_R4, align 4
  %123 = call i32 @rt2x00_set_field8(i32* %5, i32 %122, i32 0)
  %124 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %124, i32 27, i32 %125)
  br label %180

127:                                              ; preds = %98
  %128 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %129 = load i32, i32* @RT3071, align 4
  %130 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %142, label %132

132:                                              ; preds = %127
  %133 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %134 = load i32, i32* @RT3090, align 4
  %135 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %139 = load i32, i32* @RT3390, align 4
  %140 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %179

142:                                              ; preds = %137, %132, %127
  %143 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %144 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %143, i32 1, i32* %5)
  %145 = load i32, i32* @RFCSR1_RF_BLOCK_EN, align 4
  %146 = call i32 @rt2x00_set_field8(i32* %5, i32 %145, i32 1)
  %147 = load i32, i32* @RFCSR1_RX0_PD, align 4
  %148 = call i32 @rt2x00_set_field8(i32* %5, i32 %147, i32 0)
  %149 = load i32, i32* @RFCSR1_TX0_PD, align 4
  %150 = call i32 @rt2x00_set_field8(i32* %5, i32 %149, i32 0)
  %151 = load i32, i32* @RFCSR1_RX1_PD, align 4
  %152 = call i32 @rt2x00_set_field8(i32* %5, i32 %151, i32 1)
  %153 = load i32, i32* @RFCSR1_TX1_PD, align 4
  %154 = call i32 @rt2x00_set_field8(i32* %5, i32 %153, i32 1)
  %155 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %155, i32 1, i32 %156)
  %158 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %159 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %158, i32 15, i32* %5)
  %160 = load i32, i32* @RFCSR15_TX_LO2_EN, align 4
  %161 = call i32 @rt2x00_set_field8(i32* %5, i32 %160, i32 0)
  %162 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %162, i32 15, i32 %163)
  %165 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %166 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %165, i32 20, i32* %5)
  %167 = load i32, i32* @RFCSR20_RX_LO1_EN, align 4
  %168 = call i32 @rt2x00_set_field8(i32* %5, i32 %167, i32 0)
  %169 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %169, i32 20, i32 %170)
  %172 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %173 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %172, i32 21, i32* %5)
  %174 = load i32, i32* @RFCSR21_RX_LO2_EN, align 4
  %175 = call i32 @rt2x00_set_field8(i32* %5, i32 %174, i32 0)
  %176 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %176, i32 21, i32 %177)
  br label %179

179:                                              ; preds = %142, %137
  br label %180

180:                                              ; preds = %179, %117
  ret void
}

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @rt2x00_rt_rev_lt(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_bbp_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
