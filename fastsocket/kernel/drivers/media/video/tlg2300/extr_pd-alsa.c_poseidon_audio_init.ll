; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-alsa.c_poseidon_audio_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-alsa.c_poseidon_audio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poseidon = type { %struct.poseidon_audio }
%struct.poseidon_audio = type { %struct.snd_card* }
%struct.snd_card = type { i32, i32, i32 }
%struct.snd_pcm = type { i32, %struct.poseidon*, i64 }

@.str = private unnamed_addr constant [9 x i8] c"Telegent\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"poseidon audio\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@pcm_capture_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"poseidon audio capture\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ALSA driver\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"poseidon Audio\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"poseidon ALSA Audio\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @poseidon_audio_init(%struct.poseidon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.poseidon*, align 8
  %4 = alloca %struct.poseidon_audio*, align 8
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.poseidon* %0, %struct.poseidon** %3, align 8
  %8 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %9 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %8, i32 0, i32 0
  store %struct.poseidon_audio* %9, %struct.poseidon_audio** %4, align 8
  %10 = load i32, i32* @THIS_MODULE, align 4
  %11 = call i32 @snd_card_create(i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10, i32 0, %struct.snd_card** %5)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %55

16:                                               ; preds = %1
  %17 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %18 = call i32 @snd_pcm_new(%struct.snd_card* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i32 1, %struct.snd_pcm** %6)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %20 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %21 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %19, i32 %20, i32* @pcm_capture_ops)
  %22 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %23 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %26 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %25, i32 0, i32 1
  store %struct.poseidon* %24, %struct.poseidon** %26, align 8
  %27 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %28 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @strcpy(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %32 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strcpy(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %35 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %36 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strcpy(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %39 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %40 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strcpy(i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %43 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %44 = call i64 @snd_card_register(%struct.snd_card* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %16
  %47 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %48 = call i32 @snd_card_free(%struct.snd_card* %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %16
  %52 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %53 = load %struct.poseidon_audio*, %struct.poseidon_audio** %4, align 8
  %54 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %53, i32 0, i32 0
  store %struct.snd_card* %52, %struct.snd_card** %54, align 8
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %46, %14
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @snd_card_create(i32, i8*, i32, i32, %struct.snd_card**) #1

declare dso_local i32 @snd_pcm_new(%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @snd_card_register(%struct.snd_card*) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
