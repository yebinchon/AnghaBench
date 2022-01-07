; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_device_from_cdev_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_device_from_cdev_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.ccw_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dasd_device* @dasd_device_from_cdev_locked(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.dasd_device*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %5 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %6 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %5, i32 0, i32 0
  %7 = call %struct.dasd_device* @dev_get_drvdata(i32* %6)
  store %struct.dasd_device* %7, %struct.dasd_device** %4, align 8
  %8 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %9 = icmp ne %struct.dasd_device* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.dasd_device* @ERR_PTR(i32 %12)
  store %struct.dasd_device* %13, %struct.dasd_device** %2, align 8
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %16 = call i32 @dasd_get_device(%struct.dasd_device* %15)
  %17 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  store %struct.dasd_device* %17, %struct.dasd_device** %2, align 8
  br label %18

18:                                               ; preds = %14, %10
  %19 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  ret %struct.dasd_device* %19
}

declare dso_local %struct.dasd_device* @dev_get_drvdata(i32*) #1

declare dso_local %struct.dasd_device* @ERR_PTR(i32) #1

declare dso_local i32 @dasd_get_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
