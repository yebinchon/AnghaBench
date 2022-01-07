; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_get_feature.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_get_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_se401 = type { i32 }

@SE401_REQ_GET_EXT_FEATURE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.usb_se401*, i16)* @se401_get_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @se401_get_feature(%struct.usb_se401* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.usb_se401*, align 8
  %4 = alloca i16, align 2
  %5 = alloca [2 x i8], align 1
  store %struct.usb_se401* %0, %struct.usb_se401** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %7 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %10 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @usb_rcvctrlpipe(i32 %11, i32 0)
  %13 = load i32, i32* @SE401_REQ_GET_EXT_FEATURE, align 4
  %14 = load i32, i32* @USB_DIR_OUT, align 4
  %15 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %18 = or i32 %16, %17
  %19 = load i16, i16* %4, align 2
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %21 = call i32 @usb_control_msg(i32 %8, i32 %12, i32 %13, i32 %18, i32 0, i16 zeroext %19, i8* %20, i32 2, i32 1000)
  %22 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = mul nsw i32 %27, 256
  %29 = add nsw i32 %24, %28
  %30 = trunc i32 %29 to i16
  ret i16 %30
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i16 zeroext, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
