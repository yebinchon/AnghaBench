; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ccwgroup_device = type { i32 }
%struct.ccwgroup_driver = type { i32 (%struct.ccwgroup_device.0*)* }
%struct.ccwgroup_device.0 = type opaque

@dev_attr_online = common dso_local global i32 0, align 4
@dev_attr_ungroup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ccwgroup_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccwgroup_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ccwgroup_device*, align 8
  %5 = alloca %struct.ccwgroup_driver*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call i32 @device_remove_file(%struct.device* %6, i32* @dev_attr_online)
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i32 @device_remove_file(%struct.device* %8, i32* @dev_attr_ungroup)
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call %struct.ccwgroup_device* @to_ccwgroupdev(%struct.device* %16)
  store %struct.ccwgroup_device* %17, %struct.ccwgroup_device** %4, align 8
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ccwgroup_driver* @to_ccwgroupdrv(i32 %20)
  store %struct.ccwgroup_driver* %21, %struct.ccwgroup_driver** %5, align 8
  %22 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %5, align 8
  %23 = getelementptr inbounds %struct.ccwgroup_driver, %struct.ccwgroup_driver* %22, i32 0, i32 0
  %24 = load i32 (%struct.ccwgroup_device.0*)*, i32 (%struct.ccwgroup_device.0*)** %23, align 8
  %25 = icmp ne i32 (%struct.ccwgroup_device.0*)* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %15
  %27 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %5, align 8
  %28 = getelementptr inbounds %struct.ccwgroup_driver, %struct.ccwgroup_driver* %27, i32 0, i32 0
  %29 = load i32 (%struct.ccwgroup_device.0*)*, i32 (%struct.ccwgroup_device.0*)** %28, align 8
  %30 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %4, align 8
  %31 = bitcast %struct.ccwgroup_device* %30 to %struct.ccwgroup_device.0*
  %32 = call i32 %29(%struct.ccwgroup_device.0* %31)
  br label %33

33:                                               ; preds = %26, %15
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %14
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

declare dso_local %struct.ccwgroup_device* @to_ccwgroupdev(%struct.device*) #1

declare dso_local %struct.ccwgroup_driver* @to_ccwgroupdrv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
