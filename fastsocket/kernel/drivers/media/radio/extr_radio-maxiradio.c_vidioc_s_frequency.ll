; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-maxiradio.c_vidioc_s_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-maxiradio.c_vidioc_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32 }
%struct.maxiradio = type { i32, i32 }

@FREQ_LO = common dso_local global i32 0, align 4
@FREQ_HI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"radio freq (%d.%02d MHz) out of range (%d-%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.maxiradio*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.maxiradio* @video_drvdata(%struct.file* %9)
  store %struct.maxiradio* %10, %struct.maxiradio** %8, align 8
  %11 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FREQ_LO, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FREQ_HI, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %16, %3
  %23 = load %struct.maxiradio*, %struct.maxiradio** %8, align 8
  %24 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 16000
  %28 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = srem i32 %30, 16000
  %32 = mul nsw i32 %31, 100
  %33 = sdiv i32 %32, 16000
  %34 = load i32, i32* @FREQ_LO, align 4
  %35 = sdiv i32 %34, 16000
  %36 = load i32, i32* @FREQ_HI, align 4
  %37 = sdiv i32 %36, 16000
  %38 = call i32 @dprintk(%struct.maxiradio* %23, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %33, i32 %35, i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %59

41:                                               ; preds = %16
  %42 = load %struct.maxiradio*, %struct.maxiradio** %8, align 8
  %43 = getelementptr inbounds %struct.maxiradio, %struct.maxiradio* %42, i32 0, i32 1
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.maxiradio*, %struct.maxiradio** %8, align 8
  %49 = getelementptr inbounds %struct.maxiradio, %struct.maxiradio* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.maxiradio*, %struct.maxiradio** %8, align 8
  %51 = load %struct.maxiradio*, %struct.maxiradio** %8, align 8
  %52 = getelementptr inbounds %struct.maxiradio, %struct.maxiradio* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @set_freq(%struct.maxiradio* %50, i32 %53)
  %55 = call i32 @msleep(i32 125)
  %56 = load %struct.maxiradio*, %struct.maxiradio** %8, align 8
  %57 = getelementptr inbounds %struct.maxiradio, %struct.maxiradio* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %41, %22
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.maxiradio* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dprintk(%struct.maxiradio*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_freq(%struct.maxiradio*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
