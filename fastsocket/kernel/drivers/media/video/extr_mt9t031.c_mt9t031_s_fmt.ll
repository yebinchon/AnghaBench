; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9t031.c_mt9t031_s_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9t031.c_mt9t031_s_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.mt9t031 = type { %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32 }

@MT9T031_MAX_WIDTH = common dso_local global i32 0, align 4
@MT9T031_MAX_HEIGHT = common dso_local global i32 0, align 4
@V4L2_MBUS_FMT_SBGGR10_1X10 = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*)* @mt9t031_s_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t031_s_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_mbus_framefmt* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.mt9t031*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_rect, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %4, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = call %struct.mt9t031* @to_mt9t031(%struct.i2c_client* %12)
  store %struct.mt9t031* %13, %struct.mt9t031** %6, align 8
  %14 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %15 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %14, i32 0, i32 0
  %16 = bitcast %struct.v4l2_rect* %9 to i8*
  %17 = bitcast %struct.v4l2_rect* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 8, i1 false)
  %18 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %9, i32 0, i32 1
  %19 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MT9T031_MAX_WIDTH, align 4
  %23 = call i32 @mt9t031_skip(i32* %18, i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %9, i32 0, i32 0
  %25 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MT9T031_MAX_HEIGHT, align 4
  %29 = call i32 @mt9t031_skip(i32* %24, i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @V4L2_MBUS_FMT_SBGGR10_1X10, align 4
  %31 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %34 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %35 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @mt9t031_set_params(%struct.i2c_client* %36, %struct.v4l2_rect* %9, i32 %37, i32 %38)
  ret i32 %39
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9t031* @to_mt9t031(%struct.i2c_client*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mt9t031_skip(i32*, i32, i32) #1

declare dso_local i32 @mt9t031_set_params(%struct.i2c_client*, %struct.v4l2_rect*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
