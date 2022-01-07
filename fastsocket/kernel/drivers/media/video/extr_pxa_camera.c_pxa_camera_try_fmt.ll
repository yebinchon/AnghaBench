; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_pxa_camera_try_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_pxa_camera_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.soc_camera_format_xlate = type { i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Format %x not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUV422P = common dso_local global i64 0, align 8
@video = common dso_local global i32 0, align 4
@try_mbus_fmt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Field type %d unsupported.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.v4l2_format*)* @pxa_camera_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_camera_try_fmt(%struct.soc_camera_device* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.soc_camera_format_xlate*, align 8
  %8 = alloca %struct.v4l2_pix_format*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %12 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %13 = call %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device* %12)
  store %struct.v4l2_subdev* %13, %struct.v4l2_subdev** %6, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.v4l2_pix_format* %16, %struct.v4l2_pix_format** %8, align 8
  %17 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %18 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call %struct.soc_camera_format_xlate* @soc_camera_xlate_by_fourcc(%struct.soc_camera_device* %20, i64 %21)
  store %struct.soc_camera_format_xlate* %22, %struct.soc_camera_format_xlate** %7, align 8
  %23 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %24 = icmp ne %struct.soc_camera_format_xlate* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %2
  %26 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %27 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @dev_warn(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %130

34:                                               ; preds = %2
  %35 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %36 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %35, i32 0, i32 6
  %37 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %38 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %37, i32 0, i32 1
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @V4L2_PIX_FMT_YUV422P, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 4, i32 0
  %44 = call i32 @v4l_bound_align_image(i32* %36, i32 48, i32 2048, i32 1, i32* %38, i32 32, i32 2048, i32 0, i32 %43)
  %45 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %46 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %49 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @soc_mbus_bytes_per_line(i32 %47, i32 %50)
  %52 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %53 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %34
  %59 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %3, align 4
  br label %130

62:                                               ; preds = %34
  %63 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %64 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %67 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %71 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %73 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 3
  store i32 %74, i32* %75, align 4
  %76 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %77 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %81 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  %84 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %85 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 2
  store i32 %86, i32* %87, align 4
  %88 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %89 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 4
  store i32 %90, i32* %91, align 4
  %92 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %93 = load i32, i32* @video, align 4
  %94 = load i32, i32* @try_mbus_fmt, align 4
  %95 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %92, i32 %93, i32 %94, %struct.v4l2_mbus_framefmt* %9)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %62
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %3, align 4
  br label %130

100:                                              ; preds = %62
  %101 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %104 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 4
  %105 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %108 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  %109 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %112 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 8
  %113 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  switch i32 %114, label %118 [
    i32 129, label %115
    i32 128, label %115
  ]

115:                                              ; preds = %100, %100
  %116 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %117 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %116, i32 0, i32 4
  store i32 128, i32* %117, align 4
  br label %128

118:                                              ; preds = %100
  %119 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %120 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dev_err(i32 %122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %130

128:                                              ; preds = %115
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %118, %98, %58, %25
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

declare dso_local %struct.soc_camera_format_xlate* @soc_camera_xlate_by_fourcc(%struct.soc_camera_device*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @soc_mbus_bytes_per_line(i32, i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
