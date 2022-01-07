; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_g_parm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_g_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_streamparm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_captureparm }
%struct.v4l2_captureparm = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.vino_channel_settings = type { i32 }

@V4L2_CAP_TIMEPERFRAME = common dso_local global i32 0, align 4
@vino_drvdata = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @vino_g_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_g_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_streamparm*, align 8
  %7 = alloca %struct.vino_channel_settings*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.v4l2_captureparm*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.vino_channel_settings* @video_drvdata(%struct.file* %10)
  store %struct.vino_channel_settings* %11, %struct.vino_channel_settings** %7, align 8
  %12 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.v4l2_captureparm* %14, %struct.v4l2_captureparm** %9, align 8
  %15 = load i32, i32* @V4L2_CAP_TIMEPERFRAME, align 4
  %16 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %9, align 8
  %17 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %9, align 8
  %19 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vino_drvdata, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %26 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %9, align 8
  %29 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vino_drvdata, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  ret i32 0
}

declare dso_local %struct.vino_channel_settings* @video_drvdata(%struct.file*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
