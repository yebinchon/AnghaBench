; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_usbhid_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_usbhid_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, %struct.usbhid_device* }
%struct.usbhid_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@hid_open_mut = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbhid_close(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.usbhid_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %4 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %5 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %4, i32 0, i32 1
  %6 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  store %struct.usbhid_device* %6, %struct.usbhid_device** %3, align 8
  %7 = call i32 @mutex_lock(i32* @hid_open_mut)
  %8 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %9 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %12 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %1
  %17 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %18 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock_irq(i32* %18)
  %20 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %21 = call i32 @hid_cancel_delayed_stuff(%struct.usbhid_device* %20)
  %22 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %23 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @usb_kill_urb(i32 %24)
  %26 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %27 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %34

30:                                               ; preds = %1
  %31 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %32 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock_irq(i32* %32)
  br label %34

34:                                               ; preds = %30, %16
  %35 = call i32 @mutex_unlock(i32* @hid_open_mut)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @hid_cancel_delayed_stuff(%struct.usbhid_device*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
