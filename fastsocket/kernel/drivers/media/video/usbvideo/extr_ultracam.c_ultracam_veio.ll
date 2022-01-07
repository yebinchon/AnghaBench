; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ultracam.c_ultracam_veio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ultracam.c_ultracam_veio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ultracam_veio.proc = internal constant [14 x i8] c"ultracam_veio\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"USB => %02x%02x%02x%02x%02x%02x%02x%02x (req=$%02x val=$%04x ind=$%04x)\0A\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"%s: ERROR=%d. Camera stopped; Reconnect or reload driver.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*, i8, i16, i16, i32)* @ultracam_veio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ultracam_veio(%struct.uvd* %0, i8 zeroext %1, i16 zeroext %2, i16 zeroext %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.uvd*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca [8 x i8], align 1
  %13 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %7, align 8
  store i8 %1, i8* %8, align 1
  store i16 %2, i16* %9, align 2
  store i16 %3, i16* %10, align 2
  store i32 %4, i32* %11, align 4
  %14 = load %struct.uvd*, %struct.uvd** %7, align 8
  %15 = call i32 @CAMERA_IS_OPERATIONAL(%struct.uvd* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %91

18:                                               ; preds = %5
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %63, label %21

21:                                               ; preds = %18
  %22 = load %struct.uvd*, %struct.uvd** %7, align 8
  %23 = getelementptr inbounds %struct.uvd, %struct.uvd* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load %struct.uvd*, %struct.uvd** %7, align 8
  %26 = getelementptr inbounds %struct.uvd, %struct.uvd* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 @usb_rcvctrlpipe(%struct.TYPE_4__* %27, i32 0)
  %29 = load i8, i8* %8, align 1
  %30 = load i32, i32* @USB_DIR_IN, align 4
  %31 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %34 = or i32 %32, %33
  %35 = load i16, i16* %9, align 2
  %36 = load i16, i16* %10, align 2
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %38 = call i32 @usb_control_msg(%struct.TYPE_4__* %24, i32 %28, i8 zeroext %29, i32 %34, i16 zeroext %35, i16 zeroext %36, i8* %37, i32 8, i32 1000)
  store i32 %38, i32* %13, align 4
  %39 = load %struct.uvd*, %struct.uvd** %7, align 8
  %40 = getelementptr inbounds %struct.uvd, %struct.uvd* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 2
  %48 = load i8, i8* %47, align 1
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 4
  %52 = load i8, i8* %51, align 1
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 5
  %54 = load i8, i8* %53, align 1
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 6
  %56 = load i8, i8* %55, align 1
  %57 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 7
  %58 = load i8, i8* %57, align 1
  %59 = load i8, i8* %8, align 1
  %60 = load i16, i16* %9, align 2
  %61 = load i16, i16* %10, align 2
  %62 = call i32 @dev_info(i32* %42, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i8 zeroext %44, i8 zeroext %46, i8 zeroext %48, i8 zeroext %50, i8 zeroext %52, i8 zeroext %54, i8 zeroext %56, i8 zeroext %58, i8 zeroext %59, i16 zeroext %60, i16 zeroext %61)
  br label %80

63:                                               ; preds = %18
  %64 = load %struct.uvd*, %struct.uvd** %7, align 8
  %65 = getelementptr inbounds %struct.uvd, %struct.uvd* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load %struct.uvd*, %struct.uvd** %7, align 8
  %68 = getelementptr inbounds %struct.uvd, %struct.uvd* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = call i32 @usb_sndctrlpipe(%struct.TYPE_4__* %69, i32 0)
  %71 = load i8, i8* %8, align 1
  %72 = load i32, i32* @USB_DIR_OUT, align 4
  %73 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %76 = or i32 %74, %75
  %77 = load i16, i16* %9, align 2
  %78 = load i16, i16* %10, align 2
  %79 = call i32 @usb_control_msg(%struct.TYPE_4__* %66, i32 %70, i8 zeroext %71, i32 %76, i16 zeroext %77, i16 zeroext %78, i8* null, i32 0, i32 1000)
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %63, %21
  %81 = load i32, i32* %13, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @ultracam_veio.proc, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.uvd*, %struct.uvd** %7, align 8
  %88 = getelementptr inbounds %struct.uvd, %struct.uvd* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %83, %80
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %89, %17
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @CAMERA_IS_OPERATIONAL(%struct.uvd*) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_4__*, i32, i8 zeroext, i32, i16 zeroext, i16 zeroext, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @err(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
