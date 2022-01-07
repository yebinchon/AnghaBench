; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-cadet.c_vidioc_s_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-cadet.c_vidioc_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i64, i32 }
%struct.cadet = type { i32 }

@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.cadet*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.cadet* @video_drvdata(%struct.file* %9)
  store %struct.cadet* %10, %struct.cadet** %8, align 8
  %11 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %61

19:                                               ; preds = %3
  %20 = load %struct.cadet*, %struct.cadet** %8, align 8
  %21 = getelementptr inbounds %struct.cadet, %struct.cadet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 1400
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 1728
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %24
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %61

37:                                               ; preds = %29, %19
  %38 = load %struct.cadet*, %struct.cadet** %8, align 8
  %39 = getelementptr inbounds %struct.cadet, %struct.cadet* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %45, 8320
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 26400
  br i1 %51, label %52, label %55

52:                                               ; preds = %47, %42
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %61

55:                                               ; preds = %47, %37
  %56 = load %struct.cadet*, %struct.cadet** %8, align 8
  %57 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @cadet_setfreq(%struct.cadet* %56, i32 %59)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %55, %52, %34, %16
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.cadet* @video_drvdata(%struct.file*) #1

declare dso_local i32 @cadet_setfreq(%struct.cadet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
