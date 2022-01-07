; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_soc_camera_video_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_soc_camera_video_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { %struct.TYPE_7__*, %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_type* }
%struct.device_type = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"video_register_device failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*)* @soc_camera_video_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_video_start(%struct.soc_camera_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soc_camera_device*, align 8
  %4 = alloca %struct.device_type*, align 8
  %5 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %3, align 8
  %6 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %7 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.device_type*, %struct.device_type** %10, align 8
  store %struct.device_type* %11, %struct.device_type** %4, align 8
  %12 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %13 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %63

20:                                               ; preds = %1
  %21 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %22 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %27 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %34 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32, %25, %20
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %63

42:                                               ; preds = %32
  %43 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %44 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %47 = call i32 @video_register_device(%struct.TYPE_7__* %45, i32 %46, i32 -1)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %52 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %51, i32 0, i32 1
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @dev_err(%struct.TYPE_8__* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %63

56:                                               ; preds = %42
  %57 = load %struct.device_type*, %struct.device_type** %4, align 8
  %58 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %59 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store %struct.device_type* %57, %struct.device_type** %62, align 8
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %56, %50, %39, %17
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @video_register_device(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
