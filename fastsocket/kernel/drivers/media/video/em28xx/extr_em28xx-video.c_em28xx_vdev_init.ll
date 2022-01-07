; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_em28xx_vdev_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_em28xx_vdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i8*, i32, i32 }
%struct.video_device = type { i32, i32, i32, i32* }
%struct.video_device_shadow = type { i32* }

@video_device_release = common dso_local global i32 0, align 4
@video_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.video_device* (%struct.em28xx*, %struct.video_device*, i8*)* @em28xx_vdev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.video_device* @em28xx_vdev_init(%struct.em28xx* %0, %struct.video_device* %1, i8* %2) #0 {
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.em28xx*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.video_device_shadow*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %5, align 8
  store %struct.video_device* %1, %struct.video_device** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = call %struct.video_device* (...) @video_device_alloc()
  store %struct.video_device* %10, %struct.video_device** %8, align 8
  %11 = load %struct.video_device*, %struct.video_device** %8, align 8
  %12 = icmp eq %struct.video_device* null, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.video_device* null, %struct.video_device** %4, align 8
  br label %51

14:                                               ; preds = %3
  %15 = load %struct.video_device*, %struct.video_device** %8, align 8
  %16 = call %struct.video_device_shadow* @video_device_shadow_get(%struct.video_device* %15)
  store %struct.video_device_shadow* %16, %struct.video_device_shadow** %9, align 8
  %17 = load %struct.video_device_shadow*, %struct.video_device_shadow** %9, align 8
  %18 = icmp eq %struct.video_device_shadow* null, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store %struct.video_device* null, %struct.video_device** %4, align 8
  br label %51

20:                                               ; preds = %14
  %21 = load %struct.video_device*, %struct.video_device** %8, align 8
  %22 = load %struct.video_device*, %struct.video_device** %6, align 8
  %23 = bitcast %struct.video_device* %21 to i8*
  %24 = bitcast %struct.video_device* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 24, i1 false)
  %25 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %26 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %25, i32 0, i32 2
  %27 = load %struct.video_device*, %struct.video_device** %8, align 8
  %28 = getelementptr inbounds %struct.video_device, %struct.video_device* %27, i32 0, i32 3
  store i32* %26, i32** %28, align 8
  %29 = load i32, i32* @video_device_release, align 4
  %30 = load %struct.video_device*, %struct.video_device** %8, align 8
  %31 = getelementptr inbounds %struct.video_device, %struct.video_device* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @video_debug, align 4
  %33 = load %struct.video_device*, %struct.video_device** %8, align 8
  %34 = getelementptr inbounds %struct.video_device, %struct.video_device* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %36 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %35, i32 0, i32 1
  %37 = load %struct.video_device_shadow*, %struct.video_device_shadow** %9, align 8
  %38 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load %struct.video_device*, %struct.video_device** %8, align 8
  %40 = getelementptr inbounds %struct.video_device, %struct.video_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %43 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @snprintf(i32 %41, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %45)
  %47 = load %struct.video_device*, %struct.video_device** %8, align 8
  %48 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %49 = call i32 @video_set_drvdata(%struct.video_device* %47, %struct.em28xx* %48)
  %50 = load %struct.video_device*, %struct.video_device** %8, align 8
  store %struct.video_device* %50, %struct.video_device** %4, align 8
  br label %51

51:                                               ; preds = %20, %19, %13
  %52 = load %struct.video_device*, %struct.video_device** %4, align 8
  ret %struct.video_device* %52
}

declare dso_local %struct.video_device* @video_device_alloc(...) #1

declare dso_local %struct.video_device_shadow* @video_device_shadow_get(%struct.video_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.em28xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
