; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_get_ccwdev_by_busid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_get_ccwdev_by_busid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.ccw_driver = type { i32 }
%struct.device = type { i32 }
%struct.device_driver = type { i32 }

@__ccwdev_check_busid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ccw_device* @get_ccwdev_by_busid(%struct.ccw_driver* %0, i8* %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.ccw_driver*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_driver*, align 8
  store %struct.ccw_driver* %0, %struct.ccw_driver** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.ccw_driver*, %struct.ccw_driver** %4, align 8
  %9 = getelementptr inbounds %struct.ccw_driver, %struct.ccw_driver* %8, i32 0, i32 0
  %10 = call %struct.device_driver* @get_driver(i32* %9)
  store %struct.device_driver* %10, %struct.device_driver** %7, align 8
  %11 = load %struct.device_driver*, %struct.device_driver** %7, align 8
  %12 = icmp ne %struct.device_driver* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.ccw_device* null, %struct.ccw_device** %3, align 8
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.device_driver*, %struct.device_driver** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @__ccwdev_check_busid, align 4
  %18 = call %struct.device* @driver_find_device(%struct.device_driver* %15, i32* null, i8* %16, i32 %17)
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.device_driver*, %struct.device_driver** %7, align 8
  %20 = call i32 @put_driver(%struct.device_driver* %19)
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = icmp ne %struct.device* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call %struct.ccw_device* @to_ccwdev(%struct.device* %24)
  br label %27

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi %struct.ccw_device* [ %25, %23 ], [ null, %26 ]
  store %struct.ccw_device* %28, %struct.ccw_device** %3, align 8
  br label %29

29:                                               ; preds = %27, %13
  %30 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  ret %struct.ccw_device* %30
}

declare dso_local %struct.device_driver* @get_driver(i32*) #1

declare dso_local %struct.device* @driver_find_device(%struct.device_driver*, i32*, i8*, i32) #1

declare dso_local i32 @put_driver(%struct.device_driver*) #1

declare dso_local %struct.ccw_device* @to_ccwdev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
