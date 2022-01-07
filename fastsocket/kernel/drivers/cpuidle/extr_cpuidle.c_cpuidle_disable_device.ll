; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/extr_cpuidle.c_cpuidle_disable_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/extr_cpuidle.c_cpuidle_disable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cpuidle_device*)* }
%struct.cpuidle_device = type { i64 }

@cpuidle_curr_governor = common dso_local global %struct.TYPE_2__* null, align 8
@enabled_devices = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpuidle_disable_device(%struct.cpuidle_device* %0) #0 {
  %2 = alloca %struct.cpuidle_device*, align 8
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %2, align 8
  %3 = load %struct.cpuidle_device*, %struct.cpuidle_device** %2, align 8
  %4 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %33

8:                                                ; preds = %1
  %9 = call i32 (...) @cpuidle_get_driver()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_curr_governor, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %8
  br label %33

15:                                               ; preds = %11
  %16 = load %struct.cpuidle_device*, %struct.cpuidle_device** %2, align 8
  %17 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_curr_governor, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.cpuidle_device*)*, i32 (%struct.cpuidle_device*)** %19, align 8
  %21 = icmp ne i32 (%struct.cpuidle_device*)* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_curr_governor, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.cpuidle_device*)*, i32 (%struct.cpuidle_device*)** %24, align 8
  %26 = load %struct.cpuidle_device*, %struct.cpuidle_device** %2, align 8
  %27 = call i32 %25(%struct.cpuidle_device* %26)
  br label %28

28:                                               ; preds = %22, %15
  %29 = load %struct.cpuidle_device*, %struct.cpuidle_device** %2, align 8
  %30 = call i32 @cpuidle_remove_state_sysfs(%struct.cpuidle_device* %29)
  %31 = load i32, i32* @enabled_devices, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* @enabled_devices, align 4
  br label %33

33:                                               ; preds = %28, %14, %7
  ret void
}

declare dso_local i32 @cpuidle_get_driver(...) #1

declare dso_local i32 @cpuidle_remove_state_sysfs(%struct.cpuidle_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
