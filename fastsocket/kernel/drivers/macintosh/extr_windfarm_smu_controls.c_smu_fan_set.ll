; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_smu_controls.c_smu_fan_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_smu_controls.c_smu_fan_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_control = type { i32 }
%struct.smu_fan_control = type { i64, i64, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wf_control*, i64)* @smu_fan_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_fan_set(%struct.wf_control* %0, i64 %1) #0 {
  %3 = alloca %struct.wf_control*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.smu_fan_control*, align 8
  store %struct.wf_control* %0, %struct.wf_control** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.wf_control*, %struct.wf_control** %3, align 8
  %7 = call %struct.smu_fan_control* @to_smu_fan(%struct.wf_control* %6)
  store %struct.smu_fan_control* %7, %struct.smu_fan_control** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.smu_fan_control*, %struct.smu_fan_control** %5, align 8
  %10 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.smu_fan_control*, %struct.smu_fan_control** %5, align 8
  %15 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %4, align 8
  br label %17

17:                                               ; preds = %13, %2
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.smu_fan_control*, %struct.smu_fan_control** %5, align 8
  %20 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.smu_fan_control*, %struct.smu_fan_control** %5, align 8
  %25 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %4, align 8
  br label %27

27:                                               ; preds = %23, %17
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.smu_fan_control*, %struct.smu_fan_control** %5, align 8
  %30 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %29, i32 0, i32 4
  store i64 %28, i64* %30, align 8
  %31 = load %struct.smu_fan_control*, %struct.smu_fan_control** %5, align 8
  %32 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.smu_fan_control*, %struct.smu_fan_control** %5, align 8
  %35 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @smu_set_fan(i32 %33, i32 %36, i64 %37)
  ret i32 %38
}

declare dso_local %struct.smu_fan_control* @to_smu_fan(%struct.wf_control*) #1

declare dso_local i32 @smu_set_fan(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
