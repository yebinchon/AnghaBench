; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_vdev_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_vdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poseidon = type { i32 }
%struct.video_device = type { i32, i32, i32* }

@video_device_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.video_device* @vdev_init(%struct.poseidon* %0, %struct.video_device* %1) #0 {
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.poseidon*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.video_device*, align 8
  store %struct.poseidon* %0, %struct.poseidon** %4, align 8
  store %struct.video_device* %1, %struct.video_device** %5, align 8
  %7 = call %struct.video_device* (...) @video_device_alloc()
  store %struct.video_device* %7, %struct.video_device** %6, align 8
  %8 = load %struct.video_device*, %struct.video_device** %6, align 8
  %9 = icmp eq %struct.video_device* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.video_device* null, %struct.video_device** %3, align 8
  br label %29

11:                                               ; preds = %2
  %12 = load %struct.video_device*, %struct.video_device** %6, align 8
  %13 = load %struct.video_device*, %struct.video_device** %5, align 8
  %14 = bitcast %struct.video_device* %12 to i8*
  %15 = bitcast %struct.video_device* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  %16 = load %struct.video_device*, %struct.video_device** %6, align 8
  %17 = getelementptr inbounds %struct.video_device, %struct.video_device* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 8
  %18 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %19 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %18, i32 0, i32 0
  %20 = load %struct.video_device*, %struct.video_device** %6, align 8
  %21 = getelementptr inbounds %struct.video_device, %struct.video_device* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  %22 = load i32, i32* @video_device_release, align 4
  %23 = load %struct.video_device*, %struct.video_device** %6, align 8
  %24 = getelementptr inbounds %struct.video_device, %struct.video_device* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.video_device*, %struct.video_device** %6, align 8
  %26 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %27 = call i32 @video_set_drvdata(%struct.video_device* %25, %struct.poseidon* %26)
  %28 = load %struct.video_device*, %struct.video_device** %6, align 8
  store %struct.video_device* %28, %struct.video_device** %3, align 8
  br label %29

29:                                               ; preds = %11, %10
  %30 = load %struct.video_device*, %struct.video_device** %3, align 8
  ret %struct.video_device* %30
}

declare dso_local %struct.video_device* @video_device_alloc(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.poseidon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
