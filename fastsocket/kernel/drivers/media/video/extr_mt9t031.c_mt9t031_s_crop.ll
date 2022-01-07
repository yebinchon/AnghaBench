; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9t031.c_mt9t031_s_crop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9t031.c_mt9t031_s_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_crop = type { %struct.v4l2_rect }
%struct.v4l2_rect = type { i8*, i32, i8*, i32 }
%struct.i2c_client = type { i32 }
%struct.mt9t031 = type { i32, i32 }

@MT9T031_COLUMN_SKIP = common dso_local global i32 0, align 4
@MT9T031_MIN_WIDTH = common dso_local global i32 0, align 4
@MT9T031_MAX_WIDTH = common dso_local global i32 0, align 4
@MT9T031_ROW_SKIP = common dso_local global i32 0, align 4
@MT9T031_MIN_HEIGHT = common dso_local global i32 0, align 4
@MT9T031_MAX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_crop*)* @mt9t031_s_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t031_s_crop(%struct.v4l2_subdev* %0, %struct.v4l2_crop* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_crop*, align 8
  %5 = alloca %struct.v4l2_rect, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.mt9t031*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_crop* %1, %struct.v4l2_crop** %4, align 8
  %8 = load %struct.v4l2_crop*, %struct.v4l2_crop** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %8, i32 0, i32 0
  %10 = bitcast %struct.v4l2_rect* %5 to i8*
  %11 = bitcast %struct.v4l2_rect* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 32, i1 false)
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %13 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %15 = call %struct.mt9t031* @to_mt9t031(%struct.i2c_client* %14)
  store %struct.mt9t031* %15, %struct.mt9t031** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %5, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @ALIGN(i8* %17, i32 2)
  %19 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %5, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %5, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @ALIGN(i8* %21, i32 2)
  %23 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %5, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %5, i32 0, i32 3
  %25 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %5, i32 0, i32 2
  %26 = load i32, i32* @MT9T031_COLUMN_SKIP, align 4
  %27 = load i32, i32* @MT9T031_MIN_WIDTH, align 4
  %28 = load i32, i32* @MT9T031_MAX_WIDTH, align 4
  %29 = call i32 @soc_camera_limit_side(i32* %24, i8** %25, i32 %26, i32 %27, i32 %28)
  %30 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %5, i32 0, i32 1
  %31 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %5, i32 0, i32 0
  %32 = load i32, i32* @MT9T031_ROW_SKIP, align 4
  %33 = load i32, i32* @MT9T031_MIN_HEIGHT, align 4
  %34 = load i32, i32* @MT9T031_MAX_HEIGHT, align 4
  %35 = call i32 @soc_camera_limit_side(i32* %30, i8** %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %37 = load %struct.mt9t031*, %struct.mt9t031** %7, align 8
  %38 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mt9t031*, %struct.mt9t031** %7, align 8
  %41 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mt9t031_set_params(%struct.i2c_client* %36, %struct.v4l2_rect* %5, i32 %39, i32 %42)
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #2

declare dso_local %struct.mt9t031* @to_mt9t031(%struct.i2c_client*) #2

declare dso_local i8* @ALIGN(i8*, i32) #2

declare dso_local i32 @soc_camera_limit_side(i32*, i8**, i32, i32, i32) #2

declare dso_local i32 @mt9t031_set_params(%struct.i2c_client*, %struct.v4l2_rect*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
