; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-alsa.c_snd_pd_capture_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-alsa.c_snd_pd_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, %struct.poseidon* }
%struct.poseidon = type { i32, i32, %struct.poseidon_audio }
%struct.poseidon_audio = type { %struct.snd_pcm_substream*, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@snd_pd_hw_capture = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_pd_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pd_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.poseidon*, align 8
  %5 = alloca %struct.poseidon_audio*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.poseidon* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.poseidon* %8, %struct.poseidon** %4, align 8
  %9 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %10 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %9, i32 0, i32 2
  store %struct.poseidon_audio* %10, %struct.poseidon_audio** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %6, align 8
  %14 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %15 = icmp ne %struct.poseidon* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %45

19:                                               ; preds = %1
  %20 = load %struct.poseidon_audio*, %struct.poseidon_audio** %5, align 8
  %21 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.poseidon_audio*, %struct.poseidon_audio** %5, align 8
  %25 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %27 = load %struct.poseidon_audio*, %struct.poseidon_audio** %5, align 8
  %28 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %27, i32 0, i32 0
  store %struct.snd_pcm_substream* %26, %struct.snd_pcm_substream** %28, align 8
  %29 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 1
  store %struct.poseidon* %29, %struct.poseidon** %31, align 8
  %32 = load i32, i32* @snd_pd_hw_capture, align 4
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %36 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %37 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %35, i32 %36)
  %38 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %39 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @usb_autopm_get_interface(i32 %40)
  %42 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %43 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %42, i32 0, i32 0
  %44 = call i32 @kref_get(i32* %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %19, %16
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.poseidon* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
