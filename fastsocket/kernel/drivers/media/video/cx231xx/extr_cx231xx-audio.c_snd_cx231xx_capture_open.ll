; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-audio.c_snd_cx231xx_capture_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-audio.c_snd_cx231xx_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.cx231xx*, i32 }
%struct.cx231xx = type { %struct.TYPE_2__, i32, i64, i64 }
%struct.TYPE_2__ = type { %struct.snd_pcm_substream*, i32 }

@.str = private unnamed_addr constant [53 x i8] c"opening device and trying to acquire exclusive lock\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"BUG: cx231xx can't find device struct. Can't proceed with open\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@INDEX_AUDIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to set alternate setting !\0A\00", align 1
@snd_cx231xx_hw_capture = common dso_local global i32 0, align 4
@Audio = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cx231xx_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cx231xx_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.cx231xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.cx231xx* %8, %struct.cx231xx** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = call i32 @dprintk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %14 = icmp ne %struct.cx231xx* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = call i32 @cx231xx_errdev(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %74

19:                                               ; preds = %1
  %20 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %21 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %23 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %26 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %31 = load i32, i32* @INDEX_AUDIO, align 4
  %32 = call i32 @cx231xx_set_alt_setting(%struct.cx231xx* %30, i32 %31, i32 1)
  store i32 %32, i32* %6, align 4
  br label %37

33:                                               ; preds = %19
  %34 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %35 = load i32, i32* @INDEX_AUDIO, align 4
  %36 = call i32 @cx231xx_set_alt_setting(%struct.cx231xx* %34, i32 %35, i32 0)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %39 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = call i32 @cx231xx_errdev(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %74

46:                                               ; preds = %37
  %47 = load i32, i32* @snd_cx231xx_hw_capture, align 4
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %51 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %50, i32 0, i32 1
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %54 = load i32, i32* @Audio, align 4
  %55 = call i32 @cx231xx_capture_start(%struct.cx231xx* %53, i32 1, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %57 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %62 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %65 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %66 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %64, i32 %65)
  %67 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %68 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %69 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store %struct.snd_pcm_substream* %67, %struct.snd_pcm_substream** %70, align 8
  %71 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %72 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %72, i32 0, i32 0
  store %struct.cx231xx* %71, %struct.cx231xx** %73, align 8
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %46, %43, %15
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.cx231xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @cx231xx_errdev(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cx231xx_set_alt_setting(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cx231xx_capture_start(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
