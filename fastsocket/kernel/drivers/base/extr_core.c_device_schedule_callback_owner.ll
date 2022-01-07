; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_device_schedule_callback_owner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_device_schedule_callback_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.module = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @device_schedule_callback_owner(%struct.device* %0, void (%struct.device*)* %1, %struct.module* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca void (%struct.device*)*, align 8
  %6 = alloca %struct.module*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store void (%struct.device*)* %1, void (%struct.device*)** %5, align 8
  store %struct.module* %2, %struct.module** %6, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load void (%struct.device*)*, void (%struct.device*)** %5, align 8
  %10 = bitcast void (%struct.device*)* %9 to void (i8*)*
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load %struct.module*, %struct.module** %6, align 8
  %13 = call i32 @sysfs_schedule_callback(i32* %8, void (i8*)* %10, %struct.device* %11, %struct.module* %12)
  ret i32 %13
}

declare dso_local i32 @sysfs_schedule_callback(i32*, void (i8*)*, %struct.device*, %struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
