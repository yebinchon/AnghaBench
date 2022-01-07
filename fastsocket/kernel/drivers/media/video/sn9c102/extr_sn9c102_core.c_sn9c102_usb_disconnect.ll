; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.sn9c102_device = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@sn9c102_dev_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Disconnecting %s...\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"Device /dev/video%d is open! Deregistration and memory deallocation are deferred.\00", align 1
@DEV_MISCONFIGURED = common dso_local global i32 0, align 4
@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@sn9c102_release_resources = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @sn9c102_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sn9c102_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.sn9c102_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = call i32 @down_write(i32* @sn9c102_dev_lock)
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.sn9c102_device* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.sn9c102_device* %6, %struct.sn9c102_device** %3, align 8
  %7 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %8 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %7, i32 0, i32 5
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %14 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %1
  %18 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %19 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %18, i32 0, i32 5
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @DEV_MISCONFIGURED, align 4
  %25 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %26 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %30 = call i32 @sn9c102_stop_transfer(%struct.sn9c102_device* %29)
  %31 = load i32, i32* @DEV_DISCONNECTED, align 4
  %32 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %33 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %37 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %36, i32 0, i32 4
  %38 = call i32 @wake_up_interruptible(i32* %37)
  %39 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %40 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %39, i32 0, i32 3
  %41 = call i32 @wake_up(i32* %40)
  br label %48

42:                                               ; preds = %1
  %43 = load i32, i32* @DEV_DISCONNECTED, align 4
  %44 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %45 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %42, %17
  %49 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %50 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %49, i32 0, i32 1
  %51 = call i32 @wake_up_interruptible_all(i32* %50)
  %52 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %53 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %52, i32 0, i32 0
  %54 = load i32, i32* @sn9c102_release_resources, align 4
  %55 = call i32 @kref_put(i32* %53, i32 %54)
  %56 = call i32 @up_write(i32* @sn9c102_dev_lock)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.sn9c102_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @DBG(i32, i8*, i32) #1

declare dso_local i32 @sn9c102_stop_transfer(%struct.sn9c102_device*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
