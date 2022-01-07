; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-radio.c_poseidon_fm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-radio.c_poseidon_fm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poseidon = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.video_device* }
%struct.video_device = type { i32 }

@poseidon_fm_template = common dso_local global i32 0, align 4
@VFL_TYPE_RADIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @poseidon_fm_init(%struct.poseidon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.poseidon*, align 8
  %4 = alloca %struct.video_device*, align 8
  store %struct.poseidon* %0, %struct.poseidon** %3, align 8
  %5 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %6 = call %struct.video_device* @vdev_init(%struct.poseidon* %5, i32* @poseidon_fm_template)
  store %struct.video_device* %6, %struct.video_device** %4, align 8
  %7 = load %struct.video_device*, %struct.video_device** %4, align 8
  %8 = icmp eq %struct.video_device* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %23

10:                                               ; preds = %1
  %11 = load %struct.video_device*, %struct.video_device** %4, align 8
  %12 = load i32, i32* @VFL_TYPE_RADIO, align 4
  %13 = call i64 @video_register_device(%struct.video_device* %11, i32 %12, i32 -1)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.video_device*, %struct.video_device** %4, align 8
  %17 = call i32 @video_device_release(%struct.video_device* %16)
  store i32 -1, i32* %2, align 4
  br label %23

18:                                               ; preds = %10
  %19 = load %struct.video_device*, %struct.video_device** %4, align 8
  %20 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %21 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.video_device* %19, %struct.video_device** %22, align 8
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %18, %15, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.video_device* @vdev_init(%struct.poseidon*, i32*) #1

declare dso_local i64 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @video_device_release(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
