; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_veio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_veio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ibmcam_veio.proc = internal constant [12 x i8] c"ibmcam_veio\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"%s: ERROR=%d. Camera stopped; Reconnect or reload driver.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*, i8, i16, i16)* @ibmcam_veio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmcam_veio(%struct.uvd* %0, i8 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uvd*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca [8 x i8], align 1
  %11 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %6, align 8
  store i8 %1, i8* %7, align 1
  store i16 %2, i16* %8, align 2
  store i16 %3, i16* %9, align 2
  %12 = load %struct.uvd*, %struct.uvd** %6, align 8
  %13 = call i32 @CAMERA_IS_OPERATIONAL(%struct.uvd* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %66

16:                                               ; preds = %4
  %17 = load i8, i8* %7, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load %struct.uvd*, %struct.uvd** %6, align 8
  %22 = getelementptr inbounds %struct.uvd, %struct.uvd* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load %struct.uvd*, %struct.uvd** %6, align 8
  %25 = getelementptr inbounds %struct.uvd, %struct.uvd* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i32 @usb_rcvctrlpipe(%struct.TYPE_4__* %26, i32 0)
  %28 = load i8, i8* %7, align 1
  %29 = load i32, i32* @USB_DIR_IN, align 4
  %30 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %33 = or i32 %31, %32
  %34 = load i16, i16* %8, align 2
  %35 = load i16, i16* %9, align 2
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %37 = call i32 @usb_control_msg(%struct.TYPE_4__* %23, i32 %27, i8 zeroext %28, i32 %33, i16 zeroext %34, i16 zeroext %35, i8* %36, i32 8, i32 1000)
  store i32 %37, i32* %11, align 4
  br label %55

38:                                               ; preds = %16
  %39 = load %struct.uvd*, %struct.uvd** %6, align 8
  %40 = getelementptr inbounds %struct.uvd, %struct.uvd* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load %struct.uvd*, %struct.uvd** %6, align 8
  %43 = getelementptr inbounds %struct.uvd, %struct.uvd* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = call i32 @usb_sndctrlpipe(%struct.TYPE_4__* %44, i32 0)
  %46 = load i8, i8* %7, align 1
  %47 = load i32, i32* @USB_DIR_OUT, align 4
  %48 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %51 = or i32 %49, %50
  %52 = load i16, i16* %8, align 2
  %53 = load i16, i16* %9, align 2
  %54 = call i32 @usb_control_msg(%struct.TYPE_4__* %41, i32 %45, i8 zeroext %46, i32 %51, i16 zeroext %52, i16 zeroext %53, i8* null, i32 0, i32 1000)
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %38, %20
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @ibmcam_veio.proc, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.uvd*, %struct.uvd** %6, align 8
  %63 = getelementptr inbounds %struct.uvd, %struct.uvd* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %58, %55
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %15
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @CAMERA_IS_OPERATIONAL(%struct.uvd*) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_4__*, i32, i8 zeroext, i32, i16 zeroext, i16 zeroext, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @err(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
