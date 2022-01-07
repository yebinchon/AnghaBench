; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-sf16fmi.c_vidioc_s_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-sf16fmi.c_vidioc_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32 }
%struct.fmi = type { i32 }

@RSF16_MINFREQ = common dso_local global i32 0, align 4
@RSF16_MAXFREQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.fmi*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.fmi* @video_drvdata(%struct.file* %9)
  store %struct.fmi* %10, %struct.fmi** %8, align 8
  %11 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @RSF16_MINFREQ, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RSF16_MAXFREQ, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %33

25:                                               ; preds = %16
  %26 = load %struct.fmi*, %struct.fmi** %8, align 8
  %27 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 800
  %31 = mul nsw i32 %30, 800
  %32 = call i32 @fmi_setfreq(%struct.fmi* %26, i32 %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %25, %22
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.fmi* @video_drvdata(%struct.file*) #1

declare dso_local i32 @fmi_setfreq(%struct.fmi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
