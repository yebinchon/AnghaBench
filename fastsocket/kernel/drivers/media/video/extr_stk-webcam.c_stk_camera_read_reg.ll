; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_camera_read_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_camera_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk_camera = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stk_camera_read_reg(%struct.stk_camera* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stk_camera*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  store %struct.stk_camera* %0, %struct.stk_camera** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.stk_camera*, %struct.stk_camera** %5, align 8
  %11 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %10, i32 0, i32 0
  %12 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  store %struct.usb_device* %12, %struct.usb_device** %8, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %15 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %14, i32 0)
  %16 = load i32, i32* @USB_DIR_IN, align 4
  %17 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @usb_control_msg(%struct.usb_device* %13, i32 %15, i32 0, i32 %20, i32 0, i32 %21, i32* %22, i32 4, i32 500)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %26
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
