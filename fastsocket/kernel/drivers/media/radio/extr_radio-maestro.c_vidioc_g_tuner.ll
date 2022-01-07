; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-maestro.c_vidioc_g_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-maestro.c_vidioc_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.maestro = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"FM\00", align 1
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@FREQ_LO = common dso_local global i32 0, align 4
@FREQ_HI = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LOW = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_MONO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @vidioc_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.maestro*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.maestro* @video_drvdata(%struct.file* %9)
  store %struct.maestro* %10, %struct.maestro** %8, align 8
  %11 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %66

18:                                               ; preds = %3
  %19 = load %struct.maestro*, %struct.maestro** %8, align 8
  %20 = getelementptr inbounds %struct.maestro, %struct.maestro* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.maestro*, %struct.maestro** %8, align 8
  %23 = call i32 @radio_bits_get(%struct.maestro* %22)
  %24 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strlcpy(i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 4)
  %28 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %29 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @FREQ_LO, align 4
  %32 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @FREQ_HI, align 4
  %35 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %38 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @V4L2_TUNER_CAP_LOW, align 4
  %43 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.maestro*, %struct.maestro** %8, align 8
  %46 = getelementptr inbounds %struct.maestro, %struct.maestro* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %18
  %50 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %51 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  br label %57

53:                                               ; preds = %18
  %54 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  %55 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.maestro*, %struct.maestro** %8, align 8
  %59 = getelementptr inbounds %struct.maestro, %struct.maestro* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.maestro*, %struct.maestro** %8, align 8
  %64 = getelementptr inbounds %struct.maestro, %struct.maestro* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %57, %15
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.maestro* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @radio_bits_get(%struct.maestro*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
