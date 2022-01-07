; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_vdev_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_vdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bttv = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.video_device = type { i32, i32, i32, i32* }

@video_device_release = common dso_local global i32 0, align 4
@bttv_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"BT%d%s %s (%s)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@bttv_tvcards = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.video_device* (%struct.bttv*, %struct.video_device*, i8*)* @vdev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.video_device* @vdev_init(%struct.bttv* %0, %struct.video_device* %1, i8* %2) #0 {
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.bttv*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.video_device*, align 8
  store %struct.bttv* %0, %struct.bttv** %5, align 8
  store %struct.video_device* %1, %struct.video_device** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call %struct.video_device* (...) @video_device_alloc()
  store %struct.video_device* %9, %struct.video_device** %8, align 8
  %10 = load %struct.video_device*, %struct.video_device** %8, align 8
  %11 = icmp eq %struct.video_device* null, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.video_device* null, %struct.video_device** %4, align 8
  br label %62

13:                                               ; preds = %3
  %14 = load %struct.video_device*, %struct.video_device** %8, align 8
  %15 = load %struct.video_device*, %struct.video_device** %6, align 8
  %16 = bitcast %struct.video_device* %14 to i8*
  %17 = bitcast %struct.video_device* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 24, i1 false)
  %18 = load %struct.bttv*, %struct.bttv** %5, align 8
  %19 = getelementptr inbounds %struct.bttv, %struct.bttv* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.video_device*, %struct.video_device** %8, align 8
  %22 = getelementptr inbounds %struct.video_device, %struct.video_device* %21, i32 0, i32 3
  store i32* %20, i32** %22, align 8
  %23 = load i32, i32* @video_device_release, align 4
  %24 = load %struct.video_device*, %struct.video_device** %8, align 8
  %25 = getelementptr inbounds %struct.video_device, %struct.video_device* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @bttv_debug, align 4
  %27 = load %struct.video_device*, %struct.video_device** %8, align 8
  %28 = getelementptr inbounds %struct.video_device, %struct.video_device* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.video_device*, %struct.video_device** %8, align 8
  %30 = load %struct.bttv*, %struct.bttv** %5, align 8
  %31 = call i32 @video_set_drvdata(%struct.video_device* %29, %struct.bttv* %30)
  %32 = load %struct.video_device*, %struct.video_device** %8, align 8
  %33 = getelementptr inbounds %struct.video_device, %struct.video_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.bttv*, %struct.bttv** %5, align 8
  %36 = getelementptr inbounds %struct.bttv, %struct.bttv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.bttv*, %struct.bttv** %5, align 8
  %39 = getelementptr inbounds %struct.bttv, %struct.bttv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 848
  br i1 %41, label %42, label %47

42:                                               ; preds = %13
  %43 = load %struct.bttv*, %struct.bttv** %5, align 8
  %44 = getelementptr inbounds %struct.bttv, %struct.bttv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 18
  br label %47

47:                                               ; preds = %42, %13
  %48 = phi i1 [ false, %13 ], [ %46, %42 ]
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %53 = load %struct.bttv*, %struct.bttv** %5, align 8
  %54 = getelementptr inbounds %struct.bttv, %struct.bttv* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @snprintf(i32 %34, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %37, i8* %50, i8* %51, i32 %59)
  %61 = load %struct.video_device*, %struct.video_device** %8, align 8
  store %struct.video_device* %61, %struct.video_device** %4, align 8
  br label %62

62:                                               ; preds = %47, %12
  %63 = load %struct.video_device*, %struct.video_device** %4, align 8
  ret %struct.video_device* %63
}

declare dso_local %struct.video_device* @video_device_alloc(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.bttv*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
