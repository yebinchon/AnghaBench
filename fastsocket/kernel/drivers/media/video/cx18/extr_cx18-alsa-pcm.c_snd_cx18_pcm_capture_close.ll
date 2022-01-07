; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-alsa-pcm.c_snd_cx18_pcm_capture_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-alsa-pcm.c_snd_cx18_pcm_capture_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_cx18_card = type { %struct.v4l2_device* }
%struct.v4l2_device = type { i32 }
%struct.cx18 = type { i32*, %struct.cx18_stream* }
%struct.cx18_stream = type { i32 }

@CX18_ENC_STREAM_TYPE_PCM = common dso_local global i64 0, align 8
@CX18_F_S_STREAMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cx18_pcm_capture_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cx18_pcm_capture_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_cx18_card*, align 8
  %4 = alloca %struct.v4l2_device*, align 8
  %5 = alloca %struct.cx18*, align 8
  %6 = alloca %struct.cx18_stream*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.snd_cx18_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_cx18_card* %9, %struct.snd_cx18_card** %3, align 8
  %10 = load %struct.snd_cx18_card*, %struct.snd_cx18_card** %3, align 8
  %11 = getelementptr inbounds %struct.snd_cx18_card, %struct.snd_cx18_card* %10, i32 0, i32 0
  %12 = load %struct.v4l2_device*, %struct.v4l2_device** %11, align 8
  store %struct.v4l2_device* %12, %struct.v4l2_device** %4, align 8
  %13 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %14 = call %struct.cx18* @to_cx18(%struct.v4l2_device* %13)
  store %struct.cx18* %14, %struct.cx18** %5, align 8
  %15 = load %struct.snd_cx18_card*, %struct.snd_cx18_card** %3, align 8
  %16 = call i32 @snd_cx18_lock(%struct.snd_cx18_card* %15)
  %17 = load %struct.cx18*, %struct.cx18** %5, align 8
  %18 = getelementptr inbounds %struct.cx18, %struct.cx18* %17, i32 0, i32 1
  %19 = load %struct.cx18_stream*, %struct.cx18_stream** %18, align 8
  %20 = load i64, i64* @CX18_ENC_STREAM_TYPE_PCM, align 8
  %21 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %19, i64 %20
  store %struct.cx18_stream* %21, %struct.cx18_stream** %6, align 8
  %22 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %23 = call i32 @cx18_stop_v4l2_encode_stream(%struct.cx18_stream* %22, i32 0)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %25 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %26 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %25, i32 0, i32 0
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  %28 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %29 = call i32 @cx18_release_stream(%struct.cx18_stream* %28)
  %30 = load %struct.cx18*, %struct.cx18** %5, align 8
  %31 = getelementptr inbounds %struct.cx18, %struct.cx18* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  %32 = load %struct.snd_cx18_card*, %struct.snd_cx18_card** %3, align 8
  %33 = call i32 @snd_cx18_unlock(%struct.snd_cx18_card* %32)
  ret i32 0
}

declare dso_local %struct.snd_cx18_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.cx18* @to_cx18(%struct.v4l2_device*) #1

declare dso_local i32 @snd_cx18_lock(%struct.snd_cx18_card*) #1

declare dso_local i32 @cx18_stop_v4l2_encode_stream(%struct.cx18_stream*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cx18_release_stream(%struct.cx18_stream*) #1

declare dso_local i32 @snd_cx18_unlock(%struct.snd_cx18_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
