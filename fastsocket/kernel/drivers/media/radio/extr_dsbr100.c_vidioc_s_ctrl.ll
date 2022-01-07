; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_dsbr100.c_vidioc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_dsbr100.c_vidioc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.dsbr100_device = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Radio did not respond properly\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.dsbr100_device*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.dsbr100_device* @video_drvdata(%struct.file* %10)
  store %struct.dsbr100_device* %11, %struct.dsbr100_device** %8, align 8
  %12 = load %struct.dsbr100_device*, %struct.dsbr100_device** %8, align 8
  %13 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %60

19:                                               ; preds = %3
  %20 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %57 [
    i32 128, label %23
  ]

23:                                               ; preds = %19
  %24 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.dsbr100_device*, %struct.dsbr100_device** %8, align 8
  %30 = call i32 @dsbr100_stop(%struct.dsbr100_device* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.dsbr100_device*, %struct.dsbr100_device** %8, align 8
  %35 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @dev_warn(i32* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %60

41:                                               ; preds = %28
  br label %56

42:                                               ; preds = %23
  %43 = load %struct.dsbr100_device*, %struct.dsbr100_device** %8, align 8
  %44 = call i32 @dsbr100_start(%struct.dsbr100_device* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.dsbr100_device*, %struct.dsbr100_device** %8, align 8
  %49 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @dev_warn(i32* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %60

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %41
  store i32 0, i32* %4, align 4
  br label %60

57:                                               ; preds = %19
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %56, %47, %33, %16
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.dsbr100_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dsbr100_stop(%struct.dsbr100_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dsbr100_start(%struct.dsbr100_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
