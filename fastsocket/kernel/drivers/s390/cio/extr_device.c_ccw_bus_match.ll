; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_ccw_bus_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_ccw_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.ccw_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ccw_driver = type { %struct.ccw_device_id* }
%struct.ccw_device_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @ccw_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccw_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.ccw_device*, align 8
  %7 = alloca %struct.ccw_driver*, align 8
  %8 = alloca %struct.ccw_device_id*, align 8
  %9 = alloca %struct.ccw_device_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.ccw_device* @to_ccwdev(%struct.device* %10)
  store %struct.ccw_device* %11, %struct.ccw_device** %6, align 8
  %12 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %13 = call %struct.ccw_driver* @to_ccwdrv(%struct.device_driver* %12)
  store %struct.ccw_driver* %13, %struct.ccw_driver** %7, align 8
  %14 = load %struct.ccw_driver*, %struct.ccw_driver** %7, align 8
  %15 = getelementptr inbounds %struct.ccw_driver, %struct.ccw_driver* %14, i32 0, i32 0
  %16 = load %struct.ccw_device_id*, %struct.ccw_device_id** %15, align 8
  store %struct.ccw_device_id* %16, %struct.ccw_device_id** %8, align 8
  %17 = load %struct.ccw_device_id*, %struct.ccw_device_id** %8, align 8
  %18 = icmp ne %struct.ccw_device_id* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

20:                                               ; preds = %2
  %21 = load %struct.ccw_device_id*, %struct.ccw_device_id** %8, align 8
  %22 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %23 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %22, i32 0, i32 0
  %24 = call %struct.ccw_device_id* @ccw_device_id_match(%struct.ccw_device_id* %21, %struct.TYPE_2__* %23)
  store %struct.ccw_device_id* %24, %struct.ccw_device_id** %9, align 8
  %25 = load %struct.ccw_device_id*, %struct.ccw_device_id** %9, align 8
  %26 = icmp ne %struct.ccw_device_id* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %35

28:                                               ; preds = %20
  %29 = load %struct.ccw_device_id*, %struct.ccw_device_id** %9, align 8
  %30 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %33 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %28, %27, %19
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.ccw_device* @to_ccwdev(%struct.device*) #1

declare dso_local %struct.ccw_driver* @to_ccwdrv(%struct.device_driver*) #1

declare dso_local %struct.ccw_device_id* @ccw_device_id_match(%struct.ccw_device_id*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
