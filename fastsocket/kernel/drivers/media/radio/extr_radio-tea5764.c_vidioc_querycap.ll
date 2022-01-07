; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-tea5764.c_vidioc_querycap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-tea5764.c_vidioc_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32, i32 }
%struct.tea5764_device = type { %struct.video_device* }
%struct.video_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"I2C:%s\00", align 1
@RADIO_VERSION = common dso_local global i32 0, align 4
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @vidioc_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.tea5764_device*, align 8
  %8 = alloca %struct.video_device*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.tea5764_device* @video_drvdata(%struct.file* %9)
  store %struct.tea5764_device* %10, %struct.tea5764_device** %7, align 8
  %11 = load %struct.tea5764_device*, %struct.tea5764_device** %7, align 8
  %12 = getelementptr inbounds %struct.tea5764_device, %struct.tea5764_device* %11, i32 0, i32 0
  %13 = load %struct.video_device*, %struct.video_device** %12, align 8
  store %struct.video_device* %13, %struct.video_device** %8, align 8
  %14 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.video_device*, %struct.video_device** %8, align 8
  %18 = getelementptr inbounds %struct.video_device, %struct.video_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strlcpy(i32 %16, i32 %22, i32 4)
  %24 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.video_device*, %struct.video_device** %8, align 8
  %28 = getelementptr inbounds %struct.video_device, %struct.video_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @strlcpy(i32 %26, i32 %29, i32 4)
  %31 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.video_device*, %struct.video_device** %8, align 8
  %35 = getelementptr inbounds %struct.video_device, %struct.video_device* %34, i32 0, i32 0
  %36 = call i8* @dev_name(%struct.TYPE_4__* %35)
  %37 = call i32 @snprintf(i32 %33, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @RADIO_VERSION, align 4
  %39 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %40 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %42 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %45 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  ret i32 0
}

declare dso_local %struct.tea5764_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
