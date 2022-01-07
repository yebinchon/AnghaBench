; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-cadet.c_vidioc_g_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-cadet.c_vidioc_g_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32, i32, i32 }
%struct.cadet = type { i32 }

@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_g_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_frequency*, align 8
  %7 = alloca %struct.cadet*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %6, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.cadet* @video_drvdata(%struct.file* %8)
  store %struct.cadet* %9, %struct.cadet** %7, align 8
  %10 = load %struct.cadet*, %struct.cadet** %7, align 8
  %11 = getelementptr inbounds %struct.cadet, %struct.cadet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %14 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %16 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.cadet*, %struct.cadet** %7, align 8
  %19 = call i32 @cadet_getfreq(%struct.cadet* %18)
  %20 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  ret i32 0
}

declare dso_local %struct.cadet* @video_drvdata(%struct.file*) #1

declare dso_local i32 @cadet_getfreq(%struct.cadet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
