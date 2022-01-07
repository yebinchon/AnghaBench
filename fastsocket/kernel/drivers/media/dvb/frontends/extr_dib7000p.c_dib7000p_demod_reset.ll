; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_demod_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_demod_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@DIB7000P_POWER_ALL = common dso_local global i32 0, align 4
@DIBX000_VBG_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"GPIO reset was not successful.\00", align 1
@OUTMODE_HIGH_Z = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"OUTPUT_MODE could not be reset.\00", align 1
@DIBX000_SLOW_ADC_ON = common dso_local global i32 0, align 4
@DIBX000_SLOW_ADC_OFF = common dso_local global i32 0, align 4
@dib7000p_defaults = common dso_local global i32 0, align 4
@DIB7000P_POWER_INTERFACE_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib7000p_state*)* @dib7000p_demod_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_demod_reset(%struct.dib7000p_state* %0) #0 {
  %2 = alloca %struct.dib7000p_state*, align 8
  store %struct.dib7000p_state* %0, %struct.dib7000p_state** %2, align 8
  %3 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %4 = load i32, i32* @DIB7000P_POWER_ALL, align 4
  %5 = call i32 @dib7000p_set_power_mode(%struct.dib7000p_state* %3, i32 %4)
  %6 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %7 = load i32, i32* @DIBX000_VBG_ENABLE, align 4
  %8 = call i32 @dib7000p_set_adc_state(%struct.dib7000p_state* %6, i32 %7)
  %9 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %10 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %9, i32 770, i32 65535)
  %11 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %12 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %11, i32 771, i32 65535)
  %13 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %14 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %13, i32 772, i32 31)
  %15 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %16 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %15, i32 898, i32 3)
  %17 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %18 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %17, i32 1280, i32 284)
  %19 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %20 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %19, i32 770, i32 0)
  %21 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %22 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %21, i32 771, i32 0)
  %23 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %24 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %23, i32 772, i32 0)
  %25 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %26 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %25, i32 898, i32 0)
  %27 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %28 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %27, i32 1280, i32 0)
  %29 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %30 = call i32 @dib7000p_reset_pll(%struct.dib7000p_state* %29)
  %31 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %32 = call i64 @dib7000p_reset_gpio(%struct.dib7000p_state* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = call i32 @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %1
  %37 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %38 = load i32, i32* @OUTMODE_HIGH_Z, align 4
  %39 = call i64 @dib7000p_set_output_mode(%struct.dib7000p_state* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36
  %44 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %45 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %46 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %45, i32 1285)
  %47 = and i32 %46, -3
  %48 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %44, i32 1285, i32 %47)
  %49 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %50 = call i32 @dib7000p_set_bandwidth(%struct.dib7000p_state* %49, i32 8000)
  %51 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %52 = load i32, i32* @DIBX000_SLOW_ADC_ON, align 4
  %53 = call i32 @dib7000p_set_adc_state(%struct.dib7000p_state* %51, i32 %52)
  %54 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %55 = call i32 @dib7000p_sad_calib(%struct.dib7000p_state* %54)
  %56 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %57 = load i32, i32* @DIBX000_SLOW_ADC_OFF, align 4
  %58 = call i32 @dib7000p_set_adc_state(%struct.dib7000p_state* %56, i32 %57)
  %59 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %60 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %43
  %65 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %66 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %65, i32 36, i32 1877)
  br label %70

67:                                               ; preds = %43
  %68 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %69 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %68, i32 36, i32 8021)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %72 = load i32, i32* @dib7000p_defaults, align 4
  %73 = call i32 @dib7000p_write_tab(%struct.dib7000p_state* %71, i32 %72)
  %74 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %75 = load i32, i32* @DIB7000P_POWER_INTERFACE_ONLY, align 4
  %76 = call i32 @dib7000p_set_power_mode(%struct.dib7000p_state* %74, i32 %75)
  ret i32 0
}

declare dso_local i32 @dib7000p_set_power_mode(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_set_adc_state(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

declare dso_local i32 @dib7000p_reset_pll(%struct.dib7000p_state*) #1

declare dso_local i64 @dib7000p_reset_gpio(%struct.dib7000p_state*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i64 @dib7000p_set_output_mode(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_set_bandwidth(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_sad_calib(%struct.dib7000p_state*) #1

declare dso_local i32 @dib7000p_write_tab(%struct.dib7000p_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
