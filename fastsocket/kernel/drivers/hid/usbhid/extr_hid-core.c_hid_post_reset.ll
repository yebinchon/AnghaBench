; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_hid_post_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_hid_post_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.hid_device = type { %struct.usbhid_device* }
%struct.usbhid_device = type { i32, i32 }

@HID_RESET_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @hid_post_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_post_reset(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.usbhid_device*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %7)
  store %struct.usb_device* %8, %struct.usb_device** %3, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %10 = call %struct.hid_device* @usb_get_intfdata(%struct.usb_interface* %9)
  store %struct.hid_device* %10, %struct.hid_device** %4, align 8
  %11 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %12 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %11, i32 0, i32 0
  %13 = load %struct.usbhid_device*, %struct.usbhid_device** %12, align 8
  store %struct.usbhid_device* %13, %struct.usbhid_device** %5, align 8
  %14 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  %15 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load i32, i32* @HID_RESET_PENDING, align 4
  %18 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  %19 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %18, i32 0, i32 1
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  %21 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  %22 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock_irq(i32* %22)
  %24 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %25 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %26 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @hid_set_idle(%struct.usb_device* %24, i32 %30, i32 0, i32 0)
  %32 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %33 = call i32 @hid_start_in(%struct.hid_device* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %38 = call i32 @hid_io_error(%struct.hid_device* %37)
  br label %39

39:                                               ; preds = %36, %1
  %40 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  %41 = call i32 @usbhid_restart_queues(%struct.usbhid_device* %40)
  ret i32 0
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.hid_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @hid_set_idle(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @hid_start_in(%struct.hid_device*) #1

declare dso_local i32 @hid_io_error(%struct.hid_device*) #1

declare dso_local i32 @usbhid_restart_queues(%struct.usbhid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
