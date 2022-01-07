; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv_sndctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv_sndctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_stv = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@PENCAM_TIMEOUT = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"STV(e): usb_control_msg error %i, request = 0x%x, error = %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.usb_stv*, i16, i16, i8*, i32)* @stv_sndctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv_sndctrl(i32 %0, %struct.usb_stv* %1, i16 zeroext %2, i16 zeroext %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_stv*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.usb_stv* %1, %struct.usb_stv** %8, align 8
  store i16 %2, i16* %9, align 2
  store i16 %3, i16* %10, align 2
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %89 [
    i32 0, label %15
    i32 1, label %34
    i32 2, label %53
    i32 3, label %70
  ]

15:                                               ; preds = %6
  %16 = load %struct.usb_stv*, %struct.usb_stv** %8, align 8
  %17 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usb_stv*, %struct.usb_stv** %8, align 8
  %20 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_rcvctrlpipe(i32 %21, i32 0)
  %23 = load i16, i16* %9, align 2
  %24 = load i32, i32* @USB_DIR_IN, align 4
  %25 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %28 = or i32 %26, %27
  %29 = load i16, i16* %10, align 2
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @PENCAM_TIMEOUT, align 4
  %33 = call i32 @usb_control_msg(i32 %18, i32 %22, i16 zeroext %23, i32 %28, i16 zeroext %29, i32 0, i8* %30, i32 %31, i32 %32)
  store i32 %33, i32* %13, align 4
  br label %89

34:                                               ; preds = %6
  %35 = load %struct.usb_stv*, %struct.usb_stv** %8, align 8
  %36 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.usb_stv*, %struct.usb_stv** %8, align 8
  %39 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @usb_sndctrlpipe(i32 %40, i32 0)
  %42 = load i16, i16* %9, align 2
  %43 = load i32, i32* @USB_DIR_OUT, align 4
  %44 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %47 = or i32 %45, %46
  %48 = load i16, i16* %10, align 2
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @PENCAM_TIMEOUT, align 4
  %52 = call i32 @usb_control_msg(i32 %37, i32 %41, i16 zeroext %42, i32 %47, i16 zeroext %48, i32 0, i8* %49, i32 %50, i32 %51)
  store i32 %52, i32* %13, align 4
  br label %89

53:                                               ; preds = %6
  %54 = load %struct.usb_stv*, %struct.usb_stv** %8, align 8
  %55 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.usb_stv*, %struct.usb_stv** %8, align 8
  %58 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @usb_rcvctrlpipe(i32 %59, i32 0)
  %61 = load i16, i16* %9, align 2
  %62 = load i32, i32* @USB_DIR_IN, align 4
  %63 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %64 = or i32 %62, %63
  %65 = load i16, i16* %10, align 2
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @PENCAM_TIMEOUT, align 4
  %69 = call i32 @usb_control_msg(i32 %56, i32 %60, i16 zeroext %61, i32 %64, i16 zeroext %65, i32 0, i8* %66, i32 %67, i32 %68)
  store i32 %69, i32* %13, align 4
  br label %89

70:                                               ; preds = %6
  %71 = load %struct.usb_stv*, %struct.usb_stv** %8, align 8
  %72 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.usb_stv*, %struct.usb_stv** %8, align 8
  %75 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @usb_sndctrlpipe(i32 %76, i32 0)
  %78 = load i16, i16* %9, align 2
  %79 = load i32, i32* @USB_DIR_OUT, align 4
  %80 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %83 = or i32 %81, %82
  %84 = load i16, i16* %10, align 2
  %85 = load i8*, i8** %11, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @PENCAM_TIMEOUT, align 4
  %88 = call i32 @usb_control_msg(i32 %73, i32 %77, i16 zeroext %78, i32 %83, i16 zeroext %84, i32 0, i8* %85, i32 %86, i32 %87)
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %6, %70, %53, %34, %15
  %90 = load i32, i32* %13, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i16, i16* %9, align 2
  %94 = zext i16 %93 to i32
  %95 = icmp ne i32 %94, 10
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i32, i32* %7, align 4
  %98 = load i16, i16* %9, align 2
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @PDEBUG(i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %97, i16 zeroext %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %92, %89
  %102 = load i32, i32* %13, align 4
  ret i32 %102
}

declare dso_local i32 @usb_control_msg(i32, i32, i16 zeroext, i32, i16 zeroext, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
