; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_pm_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_pm_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ccwgroup_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ccwgroup_driver = type { i32 (%struct.ccwgroup_device.0*)* }
%struct.ccwgroup_device.0 = type opaque

@CCWGROUP_ONLINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @ccwgroup_pm_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccwgroup_pm_complete(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca %struct.ccwgroup_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.ccwgroup_device* @to_ccwgroupdev(%struct.device* %5)
  store %struct.ccwgroup_device* %6, %struct.ccwgroup_device** %3, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ccwgroup_driver* @to_ccwgroupdrv(i32 %9)
  store %struct.ccwgroup_driver* %10, %struct.ccwgroup_driver** %4, align 8
  %11 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %12 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %18 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CCWGROUP_ONLINE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %1
  br label %35

23:                                               ; preds = %16
  %24 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %4, align 8
  %25 = getelementptr inbounds %struct.ccwgroup_driver, %struct.ccwgroup_driver* %24, i32 0, i32 0
  %26 = load i32 (%struct.ccwgroup_device.0*)*, i32 (%struct.ccwgroup_device.0*)** %25, align 8
  %27 = icmp ne i32 (%struct.ccwgroup_device.0*)* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %4, align 8
  %30 = getelementptr inbounds %struct.ccwgroup_driver, %struct.ccwgroup_driver* %29, i32 0, i32 0
  %31 = load i32 (%struct.ccwgroup_device.0*)*, i32 (%struct.ccwgroup_device.0*)** %30, align 8
  %32 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %33 = bitcast %struct.ccwgroup_device* %32 to %struct.ccwgroup_device.0*
  %34 = call i32 %31(%struct.ccwgroup_device.0* %33)
  br label %35

35:                                               ; preds = %22, %28, %23
  ret void
}

declare dso_local %struct.ccwgroup_device* @to_ccwgroupdev(%struct.device*) #1

declare dso_local %struct.ccwgroup_driver* @to_ccwgroupdrv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
