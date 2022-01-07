; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_smu_sat.c_wf_sat_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_smu_sat.c_wf_sat_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_sensor = type { i32 }
%struct.wf_sat_sensor = type { i64, i32, %struct.wf_sat_sensor* }
%struct.wf_sat = type { i64, i32, %struct.wf_sat* }

@sats = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wf_sensor*)* @wf_sat_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wf_sat_release(%struct.wf_sensor* %0) #0 {
  %2 = alloca %struct.wf_sensor*, align 8
  %3 = alloca %struct.wf_sat_sensor*, align 8
  %4 = alloca %struct.wf_sat*, align 8
  store %struct.wf_sensor* %0, %struct.wf_sensor** %2, align 8
  %5 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %6 = call %struct.wf_sat_sensor* @wf_to_sat(%struct.wf_sensor* %5)
  store %struct.wf_sat_sensor* %6, %struct.wf_sat_sensor** %3, align 8
  %7 = load %struct.wf_sat_sensor*, %struct.wf_sat_sensor** %3, align 8
  %8 = getelementptr inbounds %struct.wf_sat_sensor, %struct.wf_sat_sensor* %7, i32 0, i32 2
  %9 = load %struct.wf_sat_sensor*, %struct.wf_sat_sensor** %8, align 8
  %10 = bitcast %struct.wf_sat_sensor* %9 to %struct.wf_sat*
  store %struct.wf_sat* %10, %struct.wf_sat** %4, align 8
  %11 = load %struct.wf_sat*, %struct.wf_sat** %4, align 8
  %12 = getelementptr inbounds %struct.wf_sat, %struct.wf_sat* %11, i32 0, i32 1
  %13 = call i64 @atomic_dec_and_test(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load %struct.wf_sat*, %struct.wf_sat** %4, align 8
  %17 = getelementptr inbounds %struct.wf_sat, %struct.wf_sat* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32**, i32*** @sats, align 8
  %22 = load %struct.wf_sat*, %struct.wf_sat** %4, align 8
  %23 = getelementptr inbounds %struct.wf_sat, %struct.wf_sat* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32*, i32** %21, i64 %24
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.wf_sat*, %struct.wf_sat** %4, align 8
  %28 = bitcast %struct.wf_sat* %27 to %struct.wf_sat_sensor*
  %29 = call i32 @kfree(%struct.wf_sat_sensor* %28)
  br label %30

30:                                               ; preds = %26, %1
  %31 = load %struct.wf_sat_sensor*, %struct.wf_sat_sensor** %3, align 8
  %32 = call i32 @kfree(%struct.wf_sat_sensor* %31)
  ret void
}

declare dso_local %struct.wf_sat_sensor* @wf_to_sat(%struct.wf_sensor*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @kfree(%struct.wf_sat_sensor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
