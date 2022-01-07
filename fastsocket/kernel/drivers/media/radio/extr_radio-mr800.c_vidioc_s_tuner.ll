; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-mr800.c_vidioc_s_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-mr800.c_vidioc_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32 }
%struct.amradio_device = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WANT_MONO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"set mono failed\0A\00", align 1
@WANT_STEREO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"set stereo failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @vidioc_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.amradio_device*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call i32 @video_devdata(%struct.file* %10)
  %12 = call %struct.amradio_device* @video_get_drvdata(i32 %11)
  store %struct.amradio_device* %12, %struct.amradio_device** %8, align 8
  %13 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %14 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %62

20:                                               ; preds = %3
  %21 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %62

28:                                               ; preds = %20
  %29 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %58 [
    i32 129, label %32
    i32 128, label %45
  ]

32:                                               ; preds = %28
  %33 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %34 = load i32, i32* @WANT_MONO, align 4
  %35 = call i32 @amradio_set_stereo(%struct.amradio_device* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %40 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @amradio_dev_warn(i32* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %38, %32
  br label %61

45:                                               ; preds = %28
  %46 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %47 = load i32, i32* @WANT_STEREO, align 4
  %48 = call i32 @amradio_set_stereo(%struct.amradio_device* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %53 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @amradio_dev_warn(i32* %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %51, %45
  br label %61

58:                                               ; preds = %28
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %57, %44
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %58, %25, %17
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.amradio_device* @video_get_drvdata(i32) #1

declare dso_local i32 @video_devdata(%struct.file*) #1

declare dso_local i32 @amradio_set_stereo(%struct.amradio_device*, i32) #1

declare dso_local i32 @amradio_dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
