; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-alsa.c_snd_pd_capture_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-alsa.c_snd_pd_capture_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.poseidon = type { %struct.poseidon_audio }
%struct.poseidon_audio = type { i32, i32, i32 }

@debug_mode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"cmd %d, audio stat : %d\0A\00", align 1
@STREAM_ON = common dso_local global i32 0, align 4
@STREAM_SUSPEND = common dso_local global i32 0, align 4
@STREAM_OFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_pd_capture_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pd_capture_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.poseidon*, align 8
  %7 = alloca %struct.poseidon_audio*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = call %struct.poseidon* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.poseidon* %9, %struct.poseidon** %6, align 8
  %10 = load %struct.poseidon*, %struct.poseidon** %6, align 8
  %11 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %10, i32 0, i32 0
  store %struct.poseidon_audio* %11, %struct.poseidon_audio** %7, align 8
  %12 = load i64, i64* @debug_mode, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.poseidon_audio*, %struct.poseidon_audio** %7, align 8
  %17 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @log(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %14, %2
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %52 [
    i32 131, label %22
    i32 130, label %22
    i32 128, label %44
    i32 129, label %48
  ]

22:                                               ; preds = %20, %20
  %23 = load %struct.poseidon_audio*, %struct.poseidon_audio** %7, align 8
  %24 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @STREAM_ON, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %55

29:                                               ; preds = %22
  %30 = load %struct.poseidon_audio*, %struct.poseidon_audio** %7, align 8
  %31 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.poseidon_audio*, %struct.poseidon_audio** %7, align 8
  %33 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %32, i32 0, i32 2
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* @STREAM_ON, align 4
  %35 = load %struct.poseidon_audio*, %struct.poseidon_audio** %7, align 8
  %36 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.poseidon*, %struct.poseidon** %6, align 8
  %38 = call i32 @in_hibernation(%struct.poseidon* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %55

41:                                               ; preds = %29
  %42 = load %struct.poseidon*, %struct.poseidon** %6, align 8
  %43 = call i32 @fire_audio_urb(%struct.poseidon* %42)
  store i32 0, i32* %3, align 4
  br label %55

44:                                               ; preds = %20
  %45 = load i32, i32* @STREAM_SUSPEND, align 4
  %46 = load %struct.poseidon_audio*, %struct.poseidon_audio** %7, align 8
  %47 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %3, align 4
  br label %55

48:                                               ; preds = %20
  %49 = load i32, i32* @STREAM_OFF, align 4
  %50 = load %struct.poseidon_audio*, %struct.poseidon_audio** %7, align 8
  %51 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %55

52:                                               ; preds = %20
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %48, %44, %41, %40, %28
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.poseidon* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @log(i8*, i32, i32) #1

declare dso_local i32 @in_hibernation(%struct.poseidon*) #1

declare dso_local i32 @fire_audio_urb(%struct.poseidon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
