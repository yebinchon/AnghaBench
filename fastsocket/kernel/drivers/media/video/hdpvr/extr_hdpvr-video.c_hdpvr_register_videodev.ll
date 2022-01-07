; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_hdpvr_register_videodev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_hdpvr_register_videodev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.device*, i32 }
%struct.device = type { i32 }
%struct.hdpvr_device = type { i32, %struct.TYPE_5__* }

@.str = private unnamed_addr constant [29 x i8] c"video_device_alloc() failed\0A\00", align 1
@hdpvr_video_template = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Hauppauge HD PVR\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"video_device registration failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdpvr_register_videodev(%struct.hdpvr_device* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdpvr_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.hdpvr_device* %0, %struct.hdpvr_device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = call %struct.TYPE_5__* (...) @video_device_alloc()
  %9 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %10 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %9, i32 0, i32 1
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %10, align 8
  %11 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %12 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %17 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %16, i32 0, i32 0
  %18 = call i32 @v4l2_err(i32* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %52

19:                                               ; preds = %3
  %20 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %21 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = bitcast %struct.TYPE_5__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.TYPE_5__* @hdpvr_video_template to i8*), i64 16, i1 false)
  %24 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %25 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @strcpy(i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %32 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store %struct.device* %30, %struct.device** %34, align 8
  %35 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %36 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %39 = call i32 @video_set_drvdata(%struct.TYPE_5__* %37, %struct.hdpvr_device* %38)
  %40 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %41 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @video_register_device(%struct.TYPE_5__* %42, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %19
  %48 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %49 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %48, i32 0, i32 0
  %50 = call i32 @v4l2_err(i32* %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %52

51:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %55

52:                                               ; preds = %47, %15
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %51
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_5__* @video_device_alloc(...) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_5__*, %struct.hdpvr_device*) #1

declare dso_local i64 @video_register_device(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
