; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_register_video_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_register_video_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 }
%struct.stk_camera = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@stk_v4l_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@debug = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"v4l registration failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Syntek USB2.0 Camera is now controlling device %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk_camera*)* @stk_register_video_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_register_video_device(%struct.stk_camera* %0) #0 {
  %2 = alloca %struct.stk_camera*, align 8
  %3 = alloca i32, align 4
  store %struct.stk_camera* %0, %struct.stk_camera** %2, align 8
  %4 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %5 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %4, i32 0, i32 0
  %6 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_6__* @stk_v4l_data to i8*), i64 16, i1 false)
  %7 = load i32, i32* @debug, align 4
  %8 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %9 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 %7, i32* %10, align 8
  %11 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %12 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %16 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32* %14, i32** %17, align 8
  %18 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %19 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %18, i32 0, i32 0
  %20 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %21 = call i32 @video_register_device(%struct.TYPE_6__* %19, i32 %20, i32 -1)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 @STK_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %31

26:                                               ; preds = %1
  %27 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %28 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %27, i32 0, i32 0
  %29 = call i32 @video_device_node_name(%struct.TYPE_6__* %28)
  %30 = call i32 @STK_INFO(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %24
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @video_register_device(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @STK_ERROR(i8*) #2

declare dso_local i32 @STK_INFO(i8*, i32) #2

declare dso_local i32 @video_device_node_name(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
