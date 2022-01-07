; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_vidioc_querycap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_vidioc_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32, i32 }
%struct.cx231xx_fh = type { %struct.cx231xx* }
%struct.cx231xx = type { i64, i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"cx231xx\00", align 1
@cx231xx_boards = common dso_local global %struct.TYPE_2__* null, align 8
@CX231XX_VERSION_CODE = common dso_local global i32 0, align 4
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_AUDIO = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@TUNER_ABSENT = common dso_local global i64 0, align 8
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@V4L2_CAP_SLICED_VBI_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @vidioc_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.cx231xx_fh*, align 8
  %8 = alloca %struct.cx231xx*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.cx231xx_fh*
  store %struct.cx231xx_fh* %10, %struct.cx231xx_fh** %7, align 8
  %11 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %12 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %11, i32 0, i32 0
  %13 = load %struct.cx231xx*, %struct.cx231xx** %12, align 8
  store %struct.cx231xx* %13, %struct.cx231xx** %8, align 8
  %14 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strlcpy(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %18 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx231xx_boards, align 8
  %22 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %23 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strlcpy(i32 %20, i8* %27, i32 4)
  %29 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %30 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_make_path(i32 %31, i32 %34, i32 4)
  %36 = load i32, i32* @CX231XX_VERSION_CODE, align 4
  %37 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %40 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @V4L2_CAP_AUDIO, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %51 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TUNER_ABSENT, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %3
  %56 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %57 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %58 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %3
  ret i32 0
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @usb_make_path(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
