; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_s2255drv.c_s2255_vendor_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_s2255drv.c_s2255_vendor_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2255_dev = type { i32 }

@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.s2255_dev*, i8, i32, i32, i8*, i32, i32)* @s2255_vendor_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @s2255_vendor_req(%struct.s2255_dev* %0, i8 zeroext %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.s2255_dev*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.s2255_dev* %0, %struct.s2255_dev** %8, align 8
  store i8 %1, i8* %9, align 1
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* %14, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %7
  %19 = load %struct.s2255_dev*, %struct.s2255_dev** %8, align 8
  %20 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.s2255_dev*, %struct.s2255_dev** %8, align 8
  %23 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @usb_rcvctrlpipe(i32 %24, i32 0)
  %26 = load i8, i8* %9, align 1
  %27 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %28 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @USB_DIR_IN, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i8*, i8** %12, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @HZ, align 4
  %37 = mul nsw i32 %36, 5
  %38 = call i32 @usb_control_msg(i32 %21, i32 %25, i8 zeroext %26, i32 %31, i32 %32, i32 %33, i8* %34, i32 %35, i32 %37)
  store i32 %38, i32* %15, align 4
  br label %58

39:                                               ; preds = %7
  %40 = load %struct.s2255_dev*, %struct.s2255_dev** %8, align 8
  %41 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.s2255_dev*, %struct.s2255_dev** %8, align 8
  %44 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @usb_sndctrlpipe(i32 %45, i32 0)
  %47 = load i8, i8* %9, align 1
  %48 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %49 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @HZ, align 4
  %56 = mul nsw i32 %55, 5
  %57 = call i32 @usb_control_msg(i32 %42, i32 %46, i8 zeroext %47, i32 %50, i32 %51, i32 %52, i8* %53, i32 %54, i32 %56)
  store i32 %57, i32* %15, align 4
  br label %58

58:                                               ; preds = %39, %18
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  ret i64 %60
}

declare dso_local i32 @usb_control_msg(i32, i32, i8 zeroext, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
