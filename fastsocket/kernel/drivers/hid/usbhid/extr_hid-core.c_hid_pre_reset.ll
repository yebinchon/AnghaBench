; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_hid_pre_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_hid_pre_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.hid_device = type { %struct.usbhid_device* }
%struct.usbhid_device = type { i32, i32, i32 }

@HID_RESET_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @hid_pre_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_pre_reset(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.usbhid_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.hid_device* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.hid_device* %6, %struct.hid_device** %3, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %8 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %7, i32 0, i32 0
  %9 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  store %struct.usbhid_device* %9, %struct.usbhid_device** %4, align 8
  %10 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %11 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load i32, i32* @HID_RESET_PENDING, align 4
  %14 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %15 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %14, i32 0, i32 2
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %18 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %17, i32 0, i32 1
  %19 = call i32 @spin_unlock_irq(i32* %18)
  %20 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %21 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %20, i32 0, i32 0
  %22 = call i32 @cancel_work_sync(i32* %21)
  %23 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %24 = call i32 @hid_cease_io(%struct.usbhid_device* %23)
  ret i32 0
}

declare dso_local %struct.hid_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @hid_cease_io(%struct.usbhid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
