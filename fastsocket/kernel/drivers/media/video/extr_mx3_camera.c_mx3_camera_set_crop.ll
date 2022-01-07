; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_mx3_camera_set_crop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_mx3_camera_set_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_crop = type { %struct.TYPE_3__, i32, %struct.v4l2_rect }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i64 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.soc_camera_host = type { %struct.mx3_camera_dev* }
%struct.mx3_camera_dev = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__, i32, %struct.v4l2_rect }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_crop = common dso_local global i32 0, align 4
@g_fmt = common dso_local global i32 0, align 4
@s_fmt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Sensor cropped %dx%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.v4l2_crop*)* @mx3_camera_set_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx3_camera_set_crop(%struct.soc_camera_device* %0, %struct.v4l2_crop* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.v4l2_crop*, align 8
  %6 = alloca %struct.v4l2_rect*, align 8
  %7 = alloca %struct.soc_camera_host*, align 8
  %8 = alloca %struct.mx3_camera_dev*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca %struct.v4l2_format, align 8
  %11 = alloca %struct.v4l2_pix_format*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store %struct.v4l2_crop* %1, %struct.v4l2_crop** %5, align 8
  %14 = load %struct.v4l2_crop*, %struct.v4l2_crop** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %14, i32 0, i32 2
  store %struct.v4l2_rect* %15, %struct.v4l2_rect** %6, align 8
  %16 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %17 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %19)
  store %struct.soc_camera_host* %20, %struct.soc_camera_host** %7, align 8
  %21 = load %struct.soc_camera_host*, %struct.soc_camera_host** %7, align 8
  %22 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %21, i32 0, i32 0
  %23 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %22, align 8
  store %struct.mx3_camera_dev* %23, %struct.mx3_camera_dev** %8, align 8
  %24 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %25 = call %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device* %24)
  store %struct.v4l2_subdev* %25, %struct.v4l2_subdev** %9, align 8
  %26 = bitcast %struct.v4l2_format* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 40, i1 false)
  %27 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 1
  %28 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store %struct.v4l2_pix_format* %30, %struct.v4l2_pix_format** %11, align 8
  %31 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %31, i32 0, i32 3
  %33 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %33, i32 0, i32 2
  %35 = call i32 @soc_camera_limit_side(i32* %32, i32* %34, i32 0, i32 2, i32 4096)
  %36 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %37 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %36, i32 0, i32 1
  %38 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %38, i32 0, i32 0
  %40 = call i32 @soc_camera_limit_side(i32* %37, i32* %39, i32 0, i32 2, i32 4096)
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %42 = load i32, i32* @video, align 4
  %43 = load i32, i32* @s_crop, align 4
  %44 = load %struct.v4l2_crop*, %struct.v4l2_crop** %5, align 8
  %45 = bitcast %struct.v4l2_crop* %44 to %struct.v4l2_format*
  %46 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %41, i32 %42, i32 %43, %struct.v4l2_format* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %2
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %3, align 4
  br label %140

51:                                               ; preds = %2
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %53 = load i32, i32* @video, align 4
  %54 = load i32, i32* @g_fmt, align 4
  %55 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %52, i32 %53, i32 %54, %struct.v4l2_format* %10)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %3, align 4
  br label %140

60:                                               ; preds = %51
  %61 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %62 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, 7
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %68 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %67, i32 0, i32 0
  %69 = call i32 @stride_align(i32* %68)
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %71 = load i32, i32* @video, align 4
  %72 = load i32, i32* @s_fmt, align 4
  %73 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %70, i32 %71, i32 %72, %struct.v4l2_format* %10)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %3, align 4
  br label %140

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %60
  %80 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %81 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %84 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %82, %85
  br i1 %86, label %95, label %87

87:                                               ; preds = %79
  %88 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %89 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %92 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %117

95:                                               ; preds = %87, %79
  %96 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %97 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %98 = call i64 @channel_change_requested(%struct.soc_camera_device* %96, %struct.v4l2_rect* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %8, align 8
  %102 = call i32 @acquire_dma_channel(%struct.mx3_camera_dev* %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %3, align 4
  br label %140

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107, %95
  %109 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %8, align 8
  %110 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %111 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %114 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @configure_geometry(%struct.mx3_camera_dev* %109, i32 %112, i64 %115)
  br label %117

117:                                              ; preds = %108, %87
  %118 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %119 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %123 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %126 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @dev_dbg(i32 %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %124, i64 %127)
  %129 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %130 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %133 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %135 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %138 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %117, %105, %76, %58, %49
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @soc_camera_limit_side(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, %struct.v4l2_format*) #1

declare dso_local i32 @stride_align(i32*) #1

declare dso_local i64 @channel_change_requested(%struct.soc_camera_device*, %struct.v4l2_rect*) #1

declare dso_local i32 @acquire_dma_channel(%struct.mx3_camera_dev*) #1

declare dso_local i32 @configure_geometry(%struct.mx3_camera_dev*, i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
