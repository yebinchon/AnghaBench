; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_pd_vidioc_s_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_pd_vidioc_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.poseidon = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@pd_audio_modes = common dso_local global %struct.TYPE_6__* null, align 8
@TUNER_AUD_MODE = common dso_local global i32 0, align 4
@TUNER_AUD_ANA_STD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.poseidon*, i32)* @pd_vidioc_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd_vidioc_s_tuner(%struct.poseidon* %0, i32 %1) #0 {
  %3 = alloca %struct.poseidon*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.poseidon* %0, %struct.poseidon** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %10 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pd_audio_modes, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %19 = load i32, i32* @TUNER_AUD_MODE, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @send_set_req(%struct.poseidon* %18, i32 %19, i32 %20, i32* %6)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %23 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @get_audio_std(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %29 = load i32, i32* @TUNER_AUD_ANA_STD, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @send_set_req(%struct.poseidon* %28, i32 %29, i32 %30, i32* %6)
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %39 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %2
  %43 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %44 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @send_set_req(%struct.poseidon*, i32, i32, i32*) #1

declare dso_local i32 @get_audio_std(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
