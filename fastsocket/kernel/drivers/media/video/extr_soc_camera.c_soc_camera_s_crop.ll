; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_soc_camera_s_crop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_soc_camera_s_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.soc_camera_device* }
%struct.soc_camera_device = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64* }
%struct.v4l2_crop = type { i64, %struct.v4l2_rect }
%struct.v4l2_rect = type { i64, i64, i32, i32 }
%struct.soc_camera_host = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.soc_camera_device*, %struct.v4l2_crop*)*, i32 (%struct.soc_camera_device*, %struct.v4l2_crop*)* }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"S_CROP(%ux%u@%u:%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"S_CROP denied: getting current crop failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"S_CROP denied: queue initialised and sizes differ\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_crop*)* @soc_camera_s_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_s_crop(%struct.file* %0, i8* %1, %struct.v4l2_crop* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_crop*, align 8
  %8 = alloca %struct.soc_camera_device*, align 8
  %9 = alloca %struct.soc_camera_host*, align 8
  %10 = alloca %struct.v4l2_rect*, align 8
  %11 = alloca %struct.v4l2_crop, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_crop* %2, %struct.v4l2_crop** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.soc_camera_device*, %struct.soc_camera_device** %14, align 8
  store %struct.soc_camera_device* %15, %struct.soc_camera_device** %8, align 8
  %16 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %17 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %19)
  store %struct.soc_camera_host* %20, %struct.soc_camera_host** %9, align 8
  %21 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %21, i32 0, i32 1
  store %struct.v4l2_rect* %22, %struct.v4l2_rect** %10, align 8
  %23 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %104

31:                                               ; preds = %3
  %32 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %33 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %32, i32 0, i32 0
  %34 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %35 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %38 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %41 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %44 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_dbg(%struct.TYPE_7__* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %39, i32 %42, i32 %45)
  %47 = load %struct.soc_camera_host*, %struct.soc_camera_host** %9, align 8
  %48 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32 (%struct.soc_camera_device*, %struct.v4l2_crop*)*, i32 (%struct.soc_camera_device*, %struct.v4l2_crop*)** %50, align 8
  %52 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %53 = call i32 %51(%struct.soc_camera_device* %52, %struct.v4l2_crop* %11)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %31
  %57 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %58 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %57, i32 0, i32 0
  %59 = call i32 @dev_err(%struct.TYPE_7__* %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %102

60:                                               ; preds = %31
  %61 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %62 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %60
  %69 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %11, i32 0, i32 1
  %74 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %86, label %77

77:                                               ; preds = %68
  %78 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %11, i32 0, i32 1
  %83 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %77, %68
  %87 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %88 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %87, i32 0, i32 0
  %89 = call i32 @dev_err(%struct.TYPE_7__* %88, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @EBUSY, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %12, align 4
  br label %101

92:                                               ; preds = %77, %60
  %93 = load %struct.soc_camera_host*, %struct.soc_camera_host** %9, align 8
  %94 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32 (%struct.soc_camera_device*, %struct.v4l2_crop*)*, i32 (%struct.soc_camera_device*, %struct.v4l2_crop*)** %96, align 8
  %98 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %99 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %100 = call i32 %97(%struct.soc_camera_device* %98, %struct.v4l2_crop* %99)
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %92, %86
  br label %102

102:                                              ; preds = %101, %56
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %28
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_7__*, i8*, i64, i64, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
