; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0090.c_dib0090_pwm_gain_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0090.c_dib0090_pwm_gain_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib0090_state* }
%struct.dib0090_state = type { i64, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@rf_ramp_pwm_uhf = common dso_local global i32 0, align 4
@bb_ramp_pwm_normal = common dso_local global i32 0, align 4
@BAND_CBAND = common dso_local global i64 0, align 8
@BAND_SBAND = common dso_local global i64 0, align 8
@BAND_VHF = common dso_local global i64 0, align 8
@bb_ramp_pwm_boost = common dso_local global i32 0, align 4
@rf_ramp_pwm_cband = common dso_local global i32 0, align 4
@rf_ramp_pwm_sband = common dso_local global i32 0, align 4
@rf_ramp_pwm_vhf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dib0090_pwm_gain_reset(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dib0090_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 0
  %6 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  store %struct.dib0090_state* %6, %struct.dib0090_state** %3, align 8
  %7 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %8 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %15 = load i32, i32* @rf_ramp_pwm_uhf, align 4
  %16 = call i32 @dib0090_set_rframp_pwm(%struct.dib0090_state* %14, i32 %15)
  %17 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %18 = load i32, i32* @bb_ramp_pwm_normal, align 4
  %19 = call i32 @dib0090_set_bbramp_pwm(%struct.dib0090_state* %17, i32 %18)
  %20 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %21 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %28 = call i32 @dib0090_write_reg(%struct.dib0090_state* %27, i32 50, i32 6144)
  br label %32

29:                                               ; preds = %13
  %30 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %31 = call i32 @dib0090_write_reg(%struct.dib0090_state* %30, i32 50, i32 0)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %34 = call i32 @dib0090_write_reg(%struct.dib0090_state* %33, i32 57, i32 1024)
  br label %35

35:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @dib0090_set_rframp_pwm(%struct.dib0090_state*, i32) #1

declare dso_local i32 @dib0090_set_bbramp_pwm(%struct.dib0090_state*, i32) #1

declare dso_local i32 @dib0090_write_reg(%struct.dib0090_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
