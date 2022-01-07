; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_stv_getw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_stv_getw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i16, i32*)* @qcm_stv_getw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcm_stv_getw(%struct.usb_device* %0, i16 zeroext %1, i32* %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32* %2, i32** %6, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %10 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %9, i32 0)
  %11 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %12 = load i32, i32* @USB_DIR_IN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %15 = or i32 %13, %14
  %16 = load i16, i16* %5, align 2
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @HZ, align 4
  %19 = mul nsw i32 3, %18
  %20 = call i32 @usb_control_msg(%struct.usb_device* %8, i32 %10, i32 4, i32 %15, i16 zeroext %16, i32 0, i32* %17, i32 2, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  ret i32 %21
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i16 zeroext, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
