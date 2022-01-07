; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9t031.c_mt9t031_try_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9t031.c_mt9t031_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32 }

@MT9T031_MIN_WIDTH = common dso_local global i32 0, align 4
@MT9T031_MAX_WIDTH = common dso_local global i32 0, align 4
@MT9T031_MIN_HEIGHT = common dso_local global i32 0, align 4
@MT9T031_MAX_HEIGHT = common dso_local global i32 0, align 4
@V4L2_MBUS_FMT_SBGGR10_1X10 = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*)* @mt9t031_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t031_try_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_mbus_framefmt* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %4, align 8
  %5 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %5, i32 0, i32 3
  %7 = load i32, i32* @MT9T031_MIN_WIDTH, align 4
  %8 = load i32, i32* @MT9T031_MAX_WIDTH, align 4
  %9 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 2
  %11 = load i32, i32* @MT9T031_MIN_HEIGHT, align 4
  %12 = load i32, i32* @MT9T031_MAX_HEIGHT, align 4
  %13 = call i32 @v4l_bound_align_image(i32* %6, i32 %7, i32 %8, i32 1, i32* %10, i32 %11, i32 %12, i32 1, i32 0)
  %14 = load i32, i32* @V4L2_MBUS_FMT_SBGGR10_1X10, align 4
  %15 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %18 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  ret i32 0
}

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
