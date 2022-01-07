; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-tea5764.c_vidioc_s_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-tea5764.c_vidioc_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i64, i32 }
%struct.tea5764_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FREQ_MIN = common dso_local global i32 0, align 4
@FREQ_MUL = common dso_local global i32 0, align 4
@FREQ_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.tea5764_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.tea5764_device* @video_drvdata(%struct.file* %9)
  store %struct.tea5764_device* %10, %struct.tea5764_device** %8, align 8
  %11 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %58

18:                                               ; preds = %3
  %19 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.tea5764_device*, %struct.tea5764_device** %8, align 8
  %25 = call i32 @tea5764_power_down(%struct.tea5764_device* %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FREQ_MIN, align 4
  %31 = load i32, i32* @FREQ_MUL, align 4
  %32 = mul nsw i32 %30, %31
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %58

37:                                               ; preds = %26
  %38 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @FREQ_MAX, align 4
  %42 = load i32, i32* @FREQ_MUL, align 4
  %43 = mul nsw i32 %41, %42
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %58

48:                                               ; preds = %37
  %49 = load %struct.tea5764_device*, %struct.tea5764_device** %8, align 8
  %50 = call i32 @tea5764_power_up(%struct.tea5764_device* %49)
  %51 = load %struct.tea5764_device*, %struct.tea5764_device** %8, align 8
  %52 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %54, 125
  %56 = sdiv i32 %55, 2
  %57 = call i32 @tea5764_tune(%struct.tea5764_device* %51, i32 %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %48, %45, %34, %15
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.tea5764_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @tea5764_power_down(%struct.tea5764_device*) #1

declare dso_local i32 @tea5764_power_up(%struct.tea5764_device*) #1

declare dso_local i32 @tea5764_tune(%struct.tea5764_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
