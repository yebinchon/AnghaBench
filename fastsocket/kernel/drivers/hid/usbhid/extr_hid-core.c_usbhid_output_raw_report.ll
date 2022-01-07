; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_usbhid_output_raw_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_usbhid_output_raw_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.usbhid_device* }
%struct.usbhid_device = type { %struct.usb_interface* }
%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device = type { i32 }

@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i8*, i64, i8)* @usbhid_output_raw_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhid_output_raw_report(%struct.hid_device* %0, i8* %1, i64 %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.usbhid_device*, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca %struct.usb_interface*, align 8
  %12 = alloca %struct.usb_host_interface*, align 8
  %13 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8 %3, i8* %8, align 1
  %14 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 0
  %16 = load %struct.usbhid_device*, %struct.usbhid_device** %15, align 8
  store %struct.usbhid_device* %16, %struct.usbhid_device** %9, align 8
  %17 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %18 = call %struct.usb_device* @hid_to_usb_dev(%struct.hid_device* %17)
  store %struct.usb_device* %18, %struct.usb_device** %10, align 8
  %19 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %20 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %19, i32 0, i32 0
  %21 = load %struct.usb_interface*, %struct.usb_interface** %20, align 8
  store %struct.usb_interface* %21, %struct.usb_interface** %11, align 8
  %22 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %23 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %22, i32 0, i32 0
  %24 = load %struct.usb_host_interface*, %struct.usb_host_interface** %23, align 8
  store %struct.usb_host_interface* %24, %struct.usb_host_interface** %12, align 8
  %25 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %27 = call i32 @usb_sndctrlpipe(%struct.usb_device* %26, i32 0)
  %28 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %29 = load i32, i32* @USB_DIR_OUT, align 4
  %30 = load i32, i32* @USB_TYPE_CLASS, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %33 = or i32 %31, %32
  %34 = load i8, i8* %8, align 1
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, 1
  %37 = shl i32 %36, 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %37, %40
  %42 = trunc i32 %41 to i8
  %43 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %44 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 %49, 1
  %51 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %52 = call i32 @usb_control_msg(%struct.usb_device* %25, i32 %27, i32 %28, i32 %33, i8 zeroext %42, i32 %46, i8* %48, i64 %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %4
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %55, %4
  %59 = load i32, i32* %13, align 4
  ret i32 %59
}

declare dso_local %struct.usb_device* @hid_to_usb_dev(%struct.hid_device*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i8 zeroext, i32, i8*, i64, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
