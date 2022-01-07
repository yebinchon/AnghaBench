; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-alsa-pcm.c_snd_cx18_pcm_hw_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-alsa-pcm.c_snd_cx18_pcm_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.snd_cx18_card = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"freeing pcm capture region\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cx18_pcm_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cx18_pcm_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_cx18_card*, align 8
  %4 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.snd_cx18_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.snd_cx18_card* %6, %struct.snd_cx18_card** %3, align 8
  %7 = load %struct.snd_cx18_card*, %struct.snd_cx18_card** %3, align 8
  %8 = getelementptr inbounds %struct.snd_cx18_card, %struct.snd_cx18_card* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @vfree(i32* %23)
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %17, %1
  %30 = load %struct.snd_cx18_card*, %struct.snd_cx18_card** %3, align 8
  %31 = getelementptr inbounds %struct.snd_cx18_card, %struct.snd_cx18_card* %30, i32 0, i32 0
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  ret i32 0
}

declare dso_local %struct.snd_cx18_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
