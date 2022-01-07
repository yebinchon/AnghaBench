; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_initialize_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_initialize_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32 }
%struct.ccw_device = type { %struct.TYPE_6__*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, %struct.ccw_device* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32* }

@ccw_device_release = common dso_local global i32 0, align 4
@ccw_device_todo = common dso_local global i32 0, align 4
@ccwdev_attr_groups = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*, %struct.ccw_device*)* @io_subchannel_initialize_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_subchannel_initialize_dev(%struct.subchannel* %0, %struct.ccw_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.subchannel*, align 8
  %5 = alloca %struct.ccw_device*, align 8
  store %struct.subchannel* %0, %struct.subchannel** %4, align 8
  store %struct.ccw_device* %1, %struct.ccw_device** %5, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %7 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %8 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  store %struct.ccw_device* %6, %struct.ccw_device** %10, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = call i32 @atomic_set(i32* %14, i32 0)
  %16 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %17 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %16, i32 0, i32 0
  %18 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %19 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store i32* %17, i32** %20, align 8
  %21 = load i32, i32* @ccw_device_release, align 4
  %22 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %23 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %26 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* @ccw_device_todo, align 4
  %30 = call i32 @INIT_WORK(i32* %28, i32 %29)
  %31 = load i32, i32* @ccwdev_attr_groups, align 4
  %32 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %33 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %36 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %35, i32 0, i32 1
  %37 = call i32 @device_initialize(%struct.TYPE_7__* %36)
  %38 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %39 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %38, i32 0, i32 0
  %40 = call i32 @get_device(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %2
  %43 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %44 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %43, i32 0, i32 1
  %45 = call i32 @put_device(%struct.TYPE_7__* %44)
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %54

48:                                               ; preds = %2
  %49 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %50 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %48, %42
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_7__*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @put_device(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
