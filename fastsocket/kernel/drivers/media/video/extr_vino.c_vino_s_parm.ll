; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_s_parm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_s_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_streamparm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_captureparm }
%struct.v4l2_captureparm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.vino_channel_settings = type { i32 }

@vino_drvdata = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @vino_s_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_s_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
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
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.v4l2_captureparm* %14, %struct.v4l2_captureparm** %9, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vino_drvdata, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %9, align 8
  %20 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %9, align 8
  %26 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %3
  %31 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %32 = call i32 @vino_set_default_framerate(%struct.vino_channel_settings* %31)
  br label %45

33:                                               ; preds = %24
  %34 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %35 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %9, align 8
  %36 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %9, align 8
  %40 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %38, %42
  %44 = call i32 @vino_set_framerate(%struct.vino_channel_settings* %34, i32 %43)
  br label %45

45:                                               ; preds = %33, %30
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vino_drvdata, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  ret i32 0
}

declare dso_local %struct.vino_channel_settings* @video_drvdata(%struct.file*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vino_set_default_framerate(%struct.vino_channel_settings*) #1

declare dso_local i32 @vino_set_framerate(%struct.vino_channel_settings*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
