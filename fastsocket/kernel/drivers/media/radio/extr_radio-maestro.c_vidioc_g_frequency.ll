; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-maestro.c_vidioc_g_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-maestro.c_vidioc_g_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32, i32 }
%struct.maestro = type { i32 }

@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_g_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_frequency*, align 8
  %7 = alloca %struct.maestro*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %6, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.maestro* @video_drvdata(%struct.file* %8)
  store %struct.maestro* %9, %struct.maestro** %7, align 8
  %10 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %11 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %12 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.maestro*, %struct.maestro** %7, align 8
  %14 = getelementptr inbounds %struct.maestro, %struct.maestro* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.maestro*, %struct.maestro** %7, align 8
  %17 = call i32 @radio_bits_get(%struct.maestro* %16)
  %18 = call i32 @BITS2FREQ(i32 %17)
  %19 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.maestro*, %struct.maestro** %7, align 8
  %22 = getelementptr inbounds %struct.maestro, %struct.maestro* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  ret i32 0
}

declare dso_local %struct.maestro* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BITS2FREQ(i32) #1

declare dso_local i32 @radio_bits_get(%struct.maestro*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
