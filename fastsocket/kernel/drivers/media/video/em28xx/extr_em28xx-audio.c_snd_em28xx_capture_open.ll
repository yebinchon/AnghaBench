; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-audio.c_snd_em28xx_capture_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-audio.c_snd_em28xx_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.em28xx*, i32 }
%struct.em28xx = type { i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64, %struct.snd_pcm_substream* }

@.str = private unnamed_addr constant [53 x i8] c"opening device and trying to acquire exclusive lock\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"BUG: em28xx can't find device struct. Can't proceed with open\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@snd_em28xx_hw_capture = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"changing alternate number to 7\0A\00", align 1
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Error while configuring em28xx mixer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_em28xx_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_em28xx_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.em28xx*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.em28xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.em28xx* %9, %struct.em28xx** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = call i32 @dprintk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %15 = icmp ne %struct.em28xx* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = call i32 @em28xx_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %78

20:                                               ; preds = %1
  %21 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %22 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %24 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %27 = call i32 @em28xx_audio_analog_set(%struct.em28xx* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %72

31:                                               ; preds = %20
  %32 = load i32, i32* @snd_em28xx_hw_capture, align 4
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %36 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %31
  %40 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %41 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %47 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %46, i32 0, i32 0
  store i32 7, i32* %47, align 8
  %48 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %50 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @usb_set_interface(i32 %51, i32 0, i32 7)
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %45, %39, %31
  %54 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %55 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %60 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %63 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %64 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %62, i32 %63)
  %65 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %66 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %67 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store %struct.snd_pcm_substream* %65, %struct.snd_pcm_substream** %68, align 8
  %69 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %70 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %70, i32 0, i32 0
  store %struct.em28xx* %69, %struct.em28xx** %71, align 8
  store i32 0, i32* %2, align 4
  br label %78

72:                                               ; preds = %30
  %73 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %74 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = call i32 @em28xx_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %72, %53, %16
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.em28xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @em28xx_err(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @em28xx_audio_analog_set(%struct.em28xx*) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
