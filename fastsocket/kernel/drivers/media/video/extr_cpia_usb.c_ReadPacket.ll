; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_usb.c_ReadPacket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_usb.c_ReadPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32*, i32*, i64)* @ReadPacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadPacket(%struct.usb_device* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i64, i64* %9, align 8
  %14 = icmp ule i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %54

18:                                               ; preds = %12
  %19 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %20 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %21 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %20, i32 0)
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 8
  %29 = add nsw i32 %24, %28
  %30 = load i32, i32* @USB_DIR_IN, align 4
  %31 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %34 = or i32 %32, %33
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 8
  %42 = add nsw i32 %37, %41
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 5
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 8
  %50 = add nsw i32 %45, %49
  %51 = load i32*, i32** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @usb_control_msg(%struct.usb_device* %19, i32 %21, i32 %29, i32 %34, i32 %42, i32 %50, i32* %51, i64 %52, i32 1000)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %18, %15
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i64, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
