; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_mx3_camera_set_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_mx3_camera_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32 }
%struct.soc_camera_host = type { %struct.mx3_camera_dev* }
%struct.mx3_camera_dev = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.soc_camera_format_xlate = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Format %x not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Set format %dx%d\0A\00", align 1
@video = common dso_local global i32 0, align 4
@s_fmt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Sensor set %dx%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.v4l2_format*)* @mx3_camera_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx3_camera_set_fmt(%struct.soc_camera_device* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.soc_camera_host*, align 8
  %7 = alloca %struct.mx3_camera_dev*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca %struct.soc_camera_format_xlate*, align 8
  %10 = alloca %struct.v4l2_pix_format*, align 8
  %11 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %12 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %13 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %15)
  store %struct.soc_camera_host* %16, %struct.soc_camera_host** %6, align 8
  %17 = load %struct.soc_camera_host*, %struct.soc_camera_host** %6, align 8
  %18 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %17, i32 0, i32 0
  %19 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %18, align 8
  store %struct.mx3_camera_dev* %19, %struct.mx3_camera_dev** %7, align 8
  %20 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %21 = call %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device* %20)
  store %struct.v4l2_subdev* %21, %struct.v4l2_subdev** %8, align 8
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.v4l2_pix_format* %24, %struct.v4l2_pix_format** %10, align 8
  %25 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %26 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %27 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.soc_camera_format_xlate* @soc_camera_xlate_by_fourcc(%struct.soc_camera_device* %25, i32 %28)
  store %struct.soc_camera_format_xlate* %29, %struct.soc_camera_format_xlate** %9, align 8
  %30 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %9, align 8
  %31 = icmp ne %struct.soc_camera_format_xlate* %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %2
  %33 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %34 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %38 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_warn(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %104

43:                                               ; preds = %2
  %44 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %45 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %44, i32 0, i32 1
  %46 = call i32 @stride_align(i32* %45)
  %47 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %48 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %52 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %7, align 8
  %59 = call i32 @acquire_dma_channel(%struct.mx3_camera_dev* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %43
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %3, align 4
  br label %104

64:                                               ; preds = %43
  %65 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %7, align 8
  %66 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %67 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %70 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @configure_geometry(%struct.mx3_camera_dev* %65, i32 %68, i32 %71)
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %74 = load i32, i32* @video, align 4
  %75 = load i32, i32* @s_fmt, align 4
  %76 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %77 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %73, i32 %74, i32 %75, %struct.v4l2_format* %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %64
  %81 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %9, align 8
  %82 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %85 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %9, align 8
  %87 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %90 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %80, %64
  %92 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %93 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %97 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %100 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dev_dbg(i32 %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %98, i32 %101)
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %91, %62, %32
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

declare dso_local %struct.soc_camera_format_xlate* @soc_camera_xlate_by_fourcc(%struct.soc_camera_device*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @stride_align(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @acquire_dma_channel(%struct.mx3_camera_dev*) #1

declare dso_local i32 @configure_geometry(%struct.mx3_camera_dev*, i32, i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, %struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
