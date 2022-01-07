; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-mr800.c_vidioc_s_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-mr800.c_vidioc_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32 }
%struct.amradio_device = type { %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"set frequency failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.amradio_device*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call i32 @video_devdata(%struct.file* %10)
  %12 = call %struct.amradio_device* @video_get_drvdata(i32 %11)
  store %struct.amradio_device* %12, %struct.amradio_device** %8, align 8
  %13 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %14 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %46

20:                                               ; preds = %3
  %21 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %22 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %21, i32 0, i32 2
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %28 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %30 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %29, i32 0, i32 2
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %33 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %34 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @amradio_setfreq(%struct.amradio_device* %32, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %20
  %40 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %41 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @amradio_dev_warn(i32* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %39, %20
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %17
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.amradio_device* @video_get_drvdata(i32) #1

declare dso_local i32 @video_devdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @amradio_setfreq(%struct.amradio_device*, i32) #1

declare dso_local i32 @amradio_dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
