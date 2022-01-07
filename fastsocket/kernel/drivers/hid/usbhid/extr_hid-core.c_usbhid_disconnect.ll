; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_usbhid_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_usbhid_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.hid_device = type { %struct.usbhid_device* }
%struct.usbhid_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @usbhid_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhid_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.usbhid_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.hid_device* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.hid_device* %6, %struct.hid_device** %3, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %8 = icmp ne %struct.hid_device* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %22

14:                                               ; preds = %1
  %15 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %16 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %15, i32 0, i32 0
  %17 = load %struct.usbhid_device*, %struct.usbhid_device** %16, align 8
  store %struct.usbhid_device* %17, %struct.usbhid_device** %4, align 8
  %18 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %19 = call i32 @hid_destroy_device(%struct.hid_device* %18)
  %20 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %21 = call i32 @kfree(%struct.usbhid_device* %20)
  br label %22

22:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.hid_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @hid_destroy_device(%struct.hid_device*) #1

declare dso_local i32 @kfree(%struct.usbhid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
