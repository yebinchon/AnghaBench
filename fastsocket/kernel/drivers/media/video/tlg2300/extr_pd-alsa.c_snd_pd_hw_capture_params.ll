; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-alsa.c_snd_pd_hw_capture_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-alsa.c_snd_pd_hw_capture_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64 }
%struct.snd_pcm_hw_params = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_pd_hw_capture_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pd_hw_capture_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %6, align 8
  %11 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %12 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %46

24:                                               ; preds = %17
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @vfree(i64 %27)
  br label %29

29:                                               ; preds = %24, %2
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @vmalloc(i32 %30)
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %46

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %38, %23
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @vfree(i64) #1

declare dso_local i64 @vmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
