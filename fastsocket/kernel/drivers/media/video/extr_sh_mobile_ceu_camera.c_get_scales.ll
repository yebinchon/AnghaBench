; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_get_scales.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_get_scales.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32, i32, %struct.sh_mobile_ceu_cam* }
%struct.sh_mobile_ceu_cam = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_crop = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, i32*, i32*)* @get_scales to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_scales(%struct.soc_camera_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.soc_camera_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sh_mobile_ceu_cam*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca %struct.v4l2_crop, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %15 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %14, i32 0, i32 2
  %16 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %15, align 8
  store %struct.sh_mobile_ceu_cam* %16, %struct.sh_mobile_ceu_cam** %8, align 8
  %17 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %18 = call %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device* %17)
  store %struct.v4l2_subdev* %18, %struct.v4l2_subdev** %9, align 8
  %19 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %20 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %10, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %22 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %10, i32 0, i32 0
  %23 = call i32 @client_g_rect(%struct.v4l2_subdev* %21, i32* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %4, align 4
  br label %65

28:                                               ; preds = %3
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %30 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %10, i32 0, i32 0
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @get_camera_scales(%struct.v4l2_subdev* %29, i32* %30, i32* %31, i32* %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %4, align 4
  br label %65

38:                                               ; preds = %28
  %39 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %8, align 8
  %40 = getelementptr inbounds %struct.sh_mobile_ceu_cam, %struct.sh_mobile_ceu_cam* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @scale_up(i32 %42, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %8, align 8
  %47 = getelementptr inbounds %struct.sh_mobile_ceu_cam, %struct.sh_mobile_ceu_cam* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @scale_up(i32 %49, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %55 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @calc_generic_scale(i32 %53, i32 %56)
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %61 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @calc_generic_scale(i32 %59, i32 %62)
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %38, %36, %26
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

declare dso_local i32 @client_g_rect(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @get_camera_scales(%struct.v4l2_subdev*, i32*, i32*, i32*) #1

declare dso_local i32 @scale_up(i32, i32) #1

declare dso_local i32 @calc_generic_scale(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
