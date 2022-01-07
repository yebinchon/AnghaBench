; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_usbhid_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_usbhid_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, %struct.usbhid_device* }
%struct.usbhid_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@hid_open_mut = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbhid_open(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.usbhid_device*, align 8
  %5 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %6 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %7 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %6, i32 0, i32 1
  %8 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  store %struct.usbhid_device* %8, %struct.usbhid_device** %4, align 8
  %9 = call i32 @mutex_lock(i32* @hid_open_mut)
  %10 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %11 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 8
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %46, label %15

15:                                               ; preds = %1
  %16 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %17 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = call i32 @usb_autopm_get_interface(%struct.TYPE_3__* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %24 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 8
  %27 = call i32 @mutex_unlock(i32* @hid_open_mut)
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %48

30:                                               ; preds = %15
  %31 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %32 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %36 = call i64 @hid_start_in(%struct.hid_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %40 = call i32 @hid_io_error(%struct.hid_device* %39)
  br label %41

41:                                               ; preds = %38, %30
  %42 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %43 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = call i32 @usb_autopm_put_interface(%struct.TYPE_3__* %44)
  br label %46

46:                                               ; preds = %41, %1
  %47 = call i32 @mutex_unlock(i32* @hid_open_mut)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %22
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_autopm_get_interface(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @hid_start_in(%struct.hid_device*) #1

declare dso_local i32 @hid_io_error(%struct.hid_device*) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
