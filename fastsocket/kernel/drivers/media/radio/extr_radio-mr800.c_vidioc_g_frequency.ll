; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-mr800.c_vidioc_g_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-mr800.c_vidioc_g_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32, i32 }
%struct.amradio_device = type { i32, i64 }

@EIO = common dso_local global i32 0, align 4
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_g_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.amradio_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call i32 @video_devdata(%struct.file* %9)
  %11 = call %struct.amradio_device* @video_get_drvdata(i32 %10)
  store %struct.amradio_device* %11, %struct.amradio_device** %8, align 8
  %12 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %13 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %28

19:                                               ; preds = %3
  %20 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %21 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %24 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.amradio_device* @video_get_drvdata(i32) #1

declare dso_local i32 @video_devdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
