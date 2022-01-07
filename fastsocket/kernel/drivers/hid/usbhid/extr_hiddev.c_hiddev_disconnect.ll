; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hiddev.c_hiddev_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hiddev.c_hiddev_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.usbhid_device*, %struct.hiddev* }
%struct.usbhid_device = type { i32 }
%struct.hiddev = type { i32, %struct.TYPE_2__*, i64, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@hiddev_table = common dso_local global i32** null, align 8
@HIDDEV_MINOR_BASE = common dso_local global i64 0, align 8
@hiddev_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hiddev_disconnect(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.hiddev*, align 8
  %4 = alloca %struct.usbhid_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %5 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %6 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %5, i32 0, i32 1
  %7 = load %struct.hiddev*, %struct.hiddev** %6, align 8
  store %struct.hiddev* %7, %struct.hiddev** %3, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %9 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %8, i32 0, i32 0
  %10 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  store %struct.usbhid_device* %10, %struct.usbhid_device** %4, align 8
  %11 = load %struct.hiddev*, %struct.hiddev** %3, align 8
  %12 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %11, i32 0, i32 3
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.hiddev*, %struct.hiddev** %3, align 8
  %15 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.hiddev*, %struct.hiddev** %3, align 8
  %17 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %16, i32 0, i32 3
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load i32**, i32*** @hiddev_table, align 8
  %20 = load %struct.hiddev*, %struct.hiddev** %3, align 8
  %21 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HIDDEV_MINOR_BASE, align 8
  %26 = sub i64 %24, %25
  %27 = getelementptr inbounds i32*, i32** %19, i64 %26
  store i32* null, i32** %27, align 8
  %28 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %29 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_deregister_dev(i32 %30, i32* @hiddev_class)
  %32 = load %struct.hiddev*, %struct.hiddev** %3, align 8
  %33 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %1
  %37 = load %struct.hiddev*, %struct.hiddev** %3, align 8
  %38 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i32 @usbhid_close(%struct.TYPE_2__* %39)
  %41 = load %struct.hiddev*, %struct.hiddev** %3, align 8
  %42 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %41, i32 0, i32 0
  %43 = call i32 @wake_up_interruptible(i32* %42)
  br label %47

44:                                               ; preds = %1
  %45 = load %struct.hiddev*, %struct.hiddev** %3, align 8
  %46 = call i32 @kfree(%struct.hiddev* %45)
  br label %47

47:                                               ; preds = %44, %36
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_deregister_dev(i32, i32*) #1

declare dso_local i32 @usbhid_close(%struct.TYPE_2__*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kfree(%struct.hiddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
