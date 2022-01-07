; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-maxiradio.c_vidioc_g_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-maxiradio.c_vidioc_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.maxiradio = type { i32, i32 }

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
  %8 = alloca %struct.maxiradio*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.maxiradio* @video_drvdata(%struct.file* %9)
  store %struct.maxiradio* %10, %struct.maxiradio** %8, align 8
  %11 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %67

18:                                               ; preds = %3
  %19 = load %struct.maxiradio*, %struct.maxiradio** %8, align 8
  %20 = getelementptr inbounds %struct.maxiradio, %struct.maxiradio* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strlcpy(i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 4)
  %26 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %27 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @FREQ_LO, align 4
  %30 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @FREQ_HI, align 4
  %33 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %36 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @V4L2_TUNER_CAP_LOW, align 4
  %41 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.maxiradio*, %struct.maxiradio** %8, align 8
  %44 = getelementptr inbounds %struct.maxiradio, %struct.maxiradio* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @get_stereo(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %18
  %49 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %50 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  br label %56

52:                                               ; preds = %18
  %53 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  %54 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %52, %48
  %57 = load %struct.maxiradio*, %struct.maxiradio** %8, align 8
  %58 = getelementptr inbounds %struct.maxiradio, %struct.maxiradio* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @get_tune(i32 %59)
  %61 = mul nsw i32 65535, %60
  %62 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.maxiradio*, %struct.maxiradio** %8, align 8
  %65 = getelementptr inbounds %struct.maxiradio, %struct.maxiradio* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %56, %15
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.maxiradio* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @get_stereo(i32) #1

declare dso_local i32 @get_tune(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
