; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_30xx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_30xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@RT3070 = common dso_local global i32 0, align 4
@REV_RT3070F = common dso_local global i32 0, align 4
@LDO_CFG0 = common dso_local global i32 0, align 4
@LDO_CFG0_BGSEL = common dso_local global i32 0, align 4
@LDO_CFG0_LDO_CORE_VLEVEL = common dso_local global i32 0, align 4
@RT3071 = common dso_local global i32 0, align 4
@RT3090 = common dso_local global i32 0, align 4
@RFCSR6_R2 = common dso_local global i32 0, align 4
@REV_RT3071E = common dso_local global i32 0, align 4
@REV_RT3090E = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_DAC_TEST = common dso_local global i32 0, align 4
@GPIO_SWITCH = common dso_local global i32 0, align 4
@GPIO_SWITCH_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_init_rfcsr_30xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_init_rfcsr_30xx(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %7 = call i32 @rt2800_rf_init_calibration(%struct.rt2x00_dev* %6, i32 30)
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %9 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %8, i32 4, i32 64)
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %11 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %10, i32 5, i32 3)
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %13 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %12, i32 6, i32 2)
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %15 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %14, i32 7, i32 96)
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %17 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %16, i32 9, i32 15)
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %19 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %18, i32 10, i32 65)
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %21 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %20, i32 11, i32 33)
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %23 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %22, i32 12, i32 123)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %25 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %24, i32 14, i32 144)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %27 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %26, i32 15, i32 88)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %29 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %28, i32 16, i32 179)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %31 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %30, i32 17, i32 146)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %33 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %32, i32 18, i32 44)
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %35 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %34, i32 19, i32 2)
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %37 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %36, i32 20, i32 186)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %39 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %38, i32 21, i32 219)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %41 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %40, i32 24, i32 22)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %43 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %42, i32 25, i32 1)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %45 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %44, i32 29, i32 31)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %47 = load i32, i32* @RT3070, align 4
  %48 = load i32, i32* @REV_RT3070F, align 4
  %49 = call i64 @rt2x00_rt_rev_lt(%struct.rt2x00_dev* %46, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %1
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %53 = load i32, i32* @LDO_CFG0, align 4
  %54 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %52, i32 %53, i32* %5)
  %55 = load i32, i32* @LDO_CFG0_BGSEL, align 4
  %56 = call i32 @rt2x00_set_field32(i32* %5, i32 %55, i32 1)
  %57 = load i32, i32* @LDO_CFG0_LDO_CORE_VLEVEL, align 4
  %58 = call i32 @rt2x00_set_field32(i32* %5, i32 %57, i32 3)
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %60 = load i32, i32* @LDO_CFG0, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %59, i32 %60, i32 %61)
  br label %129

63:                                               ; preds = %1
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %65 = load i32, i32* @RT3071, align 4
  %66 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %70 = load i32, i32* @RT3090, align 4
  %71 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %128

73:                                               ; preds = %68, %63
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %75 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %74, i32 31, i32 20)
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %77 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %76, i32 6, i32* %3)
  %78 = load i32, i32* @RFCSR6_R2, align 4
  %79 = call i32 @rt2x00_set_field8(i32* %3, i32 %78, i32 1)
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %80, i32 6, i32 %81)
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %84 = load i32, i32* @LDO_CFG0, align 4
  %85 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %83, i32 %84, i32* %5)
  %86 = load i32, i32* @LDO_CFG0_BGSEL, align 4
  %87 = call i32 @rt2x00_set_field32(i32* %5, i32 %86, i32 1)
  %88 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %89 = load i32, i32* @RT3071, align 4
  %90 = load i32, i32* @REV_RT3071E, align 4
  %91 = call i64 @rt2x00_rt_rev_lt(%struct.rt2x00_dev* %88, i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %73
  %94 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %95 = load i32, i32* @RT3090, align 4
  %96 = load i32, i32* @REV_RT3090E, align 4
  %97 = call i64 @rt2x00_rt_rev_lt(%struct.rt2x00_dev* %94, i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %93, %73
  %100 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %101 = load i32, i32* @EEPROM_NIC_CONF1, align 4
  %102 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %100, i32 %101, i32* %4)
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @EEPROM_NIC_CONF1_DAC_TEST, align 4
  %105 = call i64 @rt2x00_get_field16(i32 %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i32, i32* @LDO_CFG0_LDO_CORE_VLEVEL, align 4
  %109 = call i32 @rt2x00_set_field32(i32* %5, i32 %108, i32 3)
  br label %113

110:                                              ; preds = %99
  %111 = load i32, i32* @LDO_CFG0_LDO_CORE_VLEVEL, align 4
  %112 = call i32 @rt2x00_set_field32(i32* %5, i32 %111, i32 0)
  br label %113

113:                                              ; preds = %110, %107
  br label %114

114:                                              ; preds = %113, %93
  %115 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %116 = load i32, i32* @LDO_CFG0, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %115, i32 %116, i32 %117)
  %119 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %120 = load i32, i32* @GPIO_SWITCH, align 4
  %121 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %119, i32 %120, i32* %5)
  %122 = load i32, i32* @GPIO_SWITCH_5, align 4
  %123 = call i32 @rt2x00_set_field32(i32* %5, i32 %122, i32 0)
  %124 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %125 = load i32, i32* @GPIO_SWITCH, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %114, %68
  br label %129

129:                                              ; preds = %128, %51
  %130 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %131 = call i32 @rt2800_rx_filter_calibration(%struct.rt2x00_dev* %130)
  %132 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %133 = load i32, i32* @RT3070, align 4
  %134 = load i32, i32* @REV_RT3070F, align 4
  %135 = call i64 @rt2x00_rt_rev_lt(%struct.rt2x00_dev* %132, i32 %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %149, label %137

137:                                              ; preds = %129
  %138 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %139 = load i32, i32* @RT3071, align 4
  %140 = load i32, i32* @REV_RT3071E, align 4
  %141 = call i64 @rt2x00_rt_rev_lt(%struct.rt2x00_dev* %138, i32 %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %137
  %144 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %145 = load i32, i32* @RT3090, align 4
  %146 = load i32, i32* @REV_RT3090E, align 4
  %147 = call i64 @rt2x00_rt_rev_lt(%struct.rt2x00_dev* %144, i32 %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %143, %137, %129
  %150 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %151 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %150, i32 27, i32 3)
  br label %152

152:                                              ; preds = %149, %143
  %153 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %154 = call i32 @rt2800_led_open_drain_enable(%struct.rt2x00_dev* %153)
  %155 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %156 = call i32 @rt2800_normal_mode_setup_3xxx(%struct.rt2x00_dev* %155)
  ret void
}

declare dso_local i32 @rt2800_rf_init_calibration(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_rt_rev_lt(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i64 @rt2x00_get_field16(i32, i32) #1

declare dso_local i32 @rt2800_rx_filter_calibration(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_led_open_drain_enable(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_normal_mode_setup_3xxx(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
