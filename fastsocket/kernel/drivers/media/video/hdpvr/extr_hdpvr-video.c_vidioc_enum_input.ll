; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_vidioc_enum_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_vidioc_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.hdpvr_fh* }
%struct.hdpvr_fh = type { %struct.hdpvr_device* }
%struct.hdpvr_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_input = type { i32, i8*, i32, i32, i32 }

@HDPVR_VIDEO_INPUTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@iname = common dso_local global i32* null, align 8
@HDPVR_RCA_FRONT = common dso_local global i32 0, align 4
@HDPVR_RCA_BACK = common dso_local global i32 0, align 4
@HDPVR_SPDIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @vidioc_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.hdpvr_fh*, align 8
  %9 = alloca %struct.hdpvr_device*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %12, align 8
  store %struct.hdpvr_fh* %13, %struct.hdpvr_fh** %8, align 8
  %14 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %8, align 8
  %15 = getelementptr inbounds %struct.hdpvr_fh, %struct.hdpvr_fh* %14, i32 0, i32 0
  %16 = load %struct.hdpvr_device*, %struct.hdpvr_device** %15, align 8
  store %struct.hdpvr_device* %16, %struct.hdpvr_device** %9, align 8
  %17 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @HDPVR_VIDEO_INPUTS, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %60

26:                                               ; preds = %3
  %27 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %28 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i32*, i32** @iname, align 8
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strncpy(i8* %32, i32 %37, i32 7)
  %39 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 7
  store i8 0, i8* %42, align 1
  %43 = load i32, i32* @HDPVR_RCA_FRONT, align 4
  %44 = shl i32 1, %43
  %45 = load i32, i32* @HDPVR_RCA_BACK, align 4
  %46 = shl i32 1, %45
  %47 = or i32 %44, %46
  %48 = load i32, i32* @HDPVR_SPDIF, align 4
  %49 = shl i32 1, %48
  %50 = or i32 %47, %49
  %51 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %54 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %26, %23
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @strncpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
