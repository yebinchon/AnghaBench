; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_vidioc_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_vidioc_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32 }
%struct.cafe_camera = type { i32 }
%struct.cafe_format_struct = type { i32, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32 }

@video = common dso_local global i32 0, align 4
@try_mbus_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @cafe_vidioc_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_vidioc_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.cafe_camera*, align 8
  %8 = alloca %struct.cafe_format_struct*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.cafe_camera*
  store %struct.cafe_camera* %13, %struct.cafe_camera** %7, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.v4l2_pix_format* %16, %struct.v4l2_pix_format** %9, align 8
  %17 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %18 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.cafe_format_struct* @cafe_find_format(i32 %19)
  store %struct.cafe_format_struct* %20, %struct.cafe_format_struct** %8, align 8
  %21 = load %struct.cafe_format_struct*, %struct.cafe_format_struct** %8, align 8
  %22 = getelementptr inbounds %struct.cafe_format_struct, %struct.cafe_format_struct* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %25 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %27 = load %struct.cafe_format_struct*, %struct.cafe_format_struct** %8, align 8
  %28 = getelementptr inbounds %struct.cafe_format_struct, %struct.cafe_format_struct* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @v4l2_fill_mbus_format(%struct.v4l2_mbus_framefmt* %10, %struct.v4l2_pix_format* %26, i32 %29)
  %31 = load %struct.cafe_camera*, %struct.cafe_camera** %7, align 8
  %32 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.cafe_camera*, %struct.cafe_camera** %7, align 8
  %35 = load i32, i32* @video, align 4
  %36 = load i32, i32* @try_mbus_fmt, align 4
  %37 = call i32 @sensor_call(%struct.cafe_camera* %34, i32 %35, i32 %36, %struct.v4l2_mbus_framefmt* %10)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.cafe_camera*, %struct.cafe_camera** %7, align 8
  %39 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %42 = call i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format* %41, %struct.v4l2_mbus_framefmt* %10)
  %43 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %44 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cafe_format_struct*, %struct.cafe_format_struct** %8, align 8
  %47 = getelementptr inbounds %struct.cafe_format_struct, %struct.cafe_format_struct* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %51 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %53 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %56 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %54, %57
  %59 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %11, align 4
  ret i32 %61
}

declare dso_local %struct.cafe_format_struct* @cafe_find_format(i32) #1

declare dso_local i32 @v4l2_fill_mbus_format(%struct.v4l2_mbus_framefmt*, %struct.v4l2_pix_format*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sensor_call(%struct.cafe_camera*, i32, i32, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format*, %struct.v4l2_mbus_framefmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
