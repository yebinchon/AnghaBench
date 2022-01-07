; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx1_camera.c_mx1_camera_set_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx1_camera.c_mx1_camera_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.soc_camera_format_xlate = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Format %x not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.v4l2_format*)* @mx1_camera_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx1_camera_set_fmt(%struct.soc_camera_device* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.soc_camera_format_xlate*, align 8
  %8 = alloca %struct.v4l2_pix_format*, align 8
  %9 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %10 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %11 = call %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device* %10)
  store %struct.v4l2_subdev* %11, %struct.v4l2_subdev** %6, align 8
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.v4l2_pix_format* %14, %struct.v4l2_pix_format** %8, align 8
  %15 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %16 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %17 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.soc_camera_format_xlate* @soc_camera_xlate_by_fourcc(%struct.soc_camera_device* %15, i32 %18)
  store %struct.soc_camera_format_xlate* %19, %struct.soc_camera_format_xlate** %7, align 8
  %20 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %21 = icmp ne %struct.soc_camera_format_xlate* %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %2
  %23 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %24 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %28 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_warn(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %54

33:                                               ; preds = %2
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %35 = load i32, i32* @video, align 4
  %36 = load i32, i32* @s_fmt, align 4
  %37 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %38 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %34, i32 %35, i32 %36, %struct.v4l2_format* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %33
  %42 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %43 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %46 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %48 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %51 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %41, %33
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %22
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

declare dso_local %struct.soc_camera_format_xlate* @soc_camera_xlate_by_fourcc(%struct.soc_camera_device*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, %struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
