; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_dsp_ecdis.h_echo_can_disable_detector_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_dsp_ecdis.h_echo_can_disable_detector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_disable_detector_state = type { i64, i64, i64, i32, i64, i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ec_disable_detector_state*)* @echo_can_disable_detector_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @echo_can_disable_detector_init(%struct.ec_disable_detector_state* %0) #0 {
  %2 = alloca %struct.ec_disable_detector_state*, align 8
  store %struct.ec_disable_detector_state* %0, %struct.ec_disable_detector_state** %2, align 8
  %3 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %2, align 8
  %4 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %3, i32 0, i32 6
  %5 = call i32 @biquad2_init(i32* %4, i32 -24903, i32 -3879, i32 -16724, i32 5136, i32 32768)
  %6 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %2, align 8
  %7 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %6, i32 0, i32 5
  store i64 0, i64* %7, align 8
  %8 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %2, align 8
  %9 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @FALSE, align 4
  %11 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %2, align 8
  %12 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 8
  %13 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %2, align 8
  %14 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %2, align 8
  %16 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.ec_disable_detector_state*, %struct.ec_disable_detector_state** %2, align 8
  %18 = getelementptr inbounds %struct.ec_disable_detector_state, %struct.ec_disable_detector_state* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  ret void
}

declare dso_local i32 @biquad2_init(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
