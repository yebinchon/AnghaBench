; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera_platform.c_soc_camera_platform_g_crop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera_platform.c_soc_camera_platform_g_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_crop = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }
%struct.soc_camera_platform_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_crop*)* @soc_camera_platform_g_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_platform_g_crop(%struct.v4l2_subdev* %0, %struct.v4l2_crop* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_crop*, align 8
  %5 = alloca %struct.soc_camera_platform_info*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_crop* %1, %struct.v4l2_crop** %4, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.soc_camera_platform_info* @v4l2_get_subdevdata(%struct.v4l2_subdev* %6)
  store %struct.soc_camera_platform_info* %7, %struct.soc_camera_platform_info** %5, align 8
  %8 = load %struct.v4l2_crop*, %struct.v4l2_crop** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.v4l2_crop*, %struct.v4l2_crop** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.soc_camera_platform_info*, %struct.soc_camera_platform_info** %5, align 8
  %15 = getelementptr inbounds %struct.soc_camera_platform_info, %struct.soc_camera_platform_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_crop*, %struct.v4l2_crop** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.soc_camera_platform_info*, %struct.soc_camera_platform_info** %5, align 8
  %22 = getelementptr inbounds %struct.soc_camera_platform_info, %struct.soc_camera_platform_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v4l2_crop*, %struct.v4l2_crop** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %29 = load %struct.v4l2_crop*, %struct.v4l2_crop** %4, align 8
  %30 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  ret i32 0
}

declare dso_local %struct.soc_camera_platform_info* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
