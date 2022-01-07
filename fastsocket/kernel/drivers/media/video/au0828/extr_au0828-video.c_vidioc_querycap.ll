; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_vidioc_querycap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_vidioc_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32, i32 }
%struct.au0828_fh = type { %struct.au0828_dev* }
%struct.au0828_dev = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"au0828\00", align 1
@AU0828_VERSION_CODE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_AUDIO = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @vidioc_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.au0828_fh*, align 8
  %8 = alloca %struct.au0828_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.au0828_fh*
  store %struct.au0828_fh* %10, %struct.au0828_fh** %7, align 8
  %11 = load %struct.au0828_fh*, %struct.au0828_fh** %7, align 8
  %12 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %11, i32 0, i32 0
  %13 = load %struct.au0828_dev*, %struct.au0828_dev** %12, align 8
  store %struct.au0828_dev* %13, %struct.au0828_dev** %8, align 8
  %14 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strlcpy(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4)
  %18 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.au0828_dev*, %struct.au0828_dev** %8, align 8
  %22 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strlcpy(i32 %20, i8* %24, i32 4)
  %26 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.au0828_dev*, %struct.au0828_dev** %8, align 8
  %30 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strlcpy(i32 %28, i8* %32, i32 4)
  %34 = load i32, i32* @AU0828_VERSION_CODE, align 4
  %35 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %38 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @V4L2_CAP_AUDIO, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  ret i32 0
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
