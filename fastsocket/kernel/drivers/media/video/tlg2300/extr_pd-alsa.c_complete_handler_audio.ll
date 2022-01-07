; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-alsa.c_complete_handler_audio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-alsa.c_complete_handler_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i64, %struct.poseidon_audio* }
%struct.poseidon_audio = type { i32, i64, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32 }

@STREAM_ON = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"audio urb failed (errcod = %i)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @complete_handler_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_handler_audio(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.poseidon_audio*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 2
  %9 = load %struct.poseidon_audio*, %struct.poseidon_audio** %8, align 8
  store %struct.poseidon_audio* %9, %struct.poseidon_audio** %3, align 8
  %10 = load %struct.poseidon_audio*, %struct.poseidon_audio** %3, align 8
  %11 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %10, i32 0, i32 2
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  store %struct.snd_pcm_substream* %12, %struct.snd_pcm_substream** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.poseidon_audio*, %struct.poseidon_audio** %3, align 8
  %14 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 1, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.poseidon_audio*, %struct.poseidon_audio** %3, align 8
  %19 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @STREAM_ON, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %1
  br label %58

24:                                               ; preds = %17
  %25 = load %struct.urb*, %struct.urb** %2, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %58

30:                                               ; preds = %24
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %32 = icmp ne %struct.snd_pcm_substream* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load %struct.urb*, %struct.urb** %2, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.urb*, %struct.urb** %2, align 8
  %40 = call i32 @handle_audio_data(%struct.urb* %39, i32* %5)
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %45 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %44)
  br label %46

46:                                               ; preds = %43, %38
  br label %47

47:                                               ; preds = %46, %33
  br label %48

48:                                               ; preds = %47, %30
  %49 = load %struct.urb*, %struct.urb** %2, align 8
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = call i32 @usb_submit_urb(%struct.urb* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @log(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %48
  br label %58

58:                                               ; preds = %57, %29, %23
  ret void
}

declare dso_local i32 @handle_audio_data(%struct.urb*, i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @log(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
