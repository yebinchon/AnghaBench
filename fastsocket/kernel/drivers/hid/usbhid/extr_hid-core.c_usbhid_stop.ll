; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_usbhid_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_usbhid_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64, %struct.usbhid_device* }
%struct.usbhid_device = type { i32*, i32*, i32*, i32, i32 }

@HID_STARTED = common dso_local global i32 0, align 4
@HID_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @usbhid_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhid_stop(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.usbhid_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %4 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %5 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %4, i32 0, i32 1
  %6 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  store %struct.usbhid_device* %6, %struct.usbhid_device** %3, align 8
  %7 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %8 = icmp ne %struct.usbhid_device* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %67

14:                                               ; preds = %1
  %15 = load i32, i32* @HID_STARTED, align 4
  %16 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %17 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %16, i32 0, i32 4
  %18 = call i32 @clear_bit(i32 %15, i32* %17)
  %19 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %20 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %19, i32 0, i32 3
  %21 = call i32 @spin_lock_irq(i32* %20)
  %22 = load i32, i32* @HID_DISCONNECTED, align 4
  %23 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %24 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %23, i32 0, i32 4
  %25 = call i32 @set_bit(i32 %22, i32* %24)
  %26 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %27 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %26, i32 0, i32 3
  %28 = call i32 @spin_unlock_irq(i32* %27)
  %29 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %30 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @usb_kill_urb(i32* %31)
  %33 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %34 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @usb_kill_urb(i32* %35)
  %37 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %38 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @usb_kill_urb(i32* %39)
  %41 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %42 = call i32 @hid_cancel_delayed_stuff(%struct.usbhid_device* %41)
  %43 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %44 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %46 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @usb_free_urb(i32* %47)
  %49 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %50 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @usb_free_urb(i32* %51)
  %53 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %54 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @usb_free_urb(i32* %55)
  %57 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %58 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %57, i32 0, i32 2
  store i32* null, i32** %58, align 8
  %59 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %60 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %62 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  %63 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %64 = call i32 @hid_to_usb_dev(%struct.hid_device* %63)
  %65 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %66 = call i32 @hid_free_buffers(i32 %64, %struct.hid_device* %65)
  br label %67

67:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @hid_cancel_delayed_stuff(%struct.usbhid_device*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @hid_free_buffers(i32, %struct.hid_device*) #1

declare dso_local i32 @hid_to_usb_dev(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
