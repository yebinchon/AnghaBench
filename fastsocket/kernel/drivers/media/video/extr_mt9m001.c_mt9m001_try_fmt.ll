; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m001.c_mt9m001_try_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m001.c_mt9m001_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i64, i32 }
%struct.i2c_client = type { i32 }
%struct.mt9m001 = type { i64, %struct.mt9m001_datafmt*, i32, i64 }
%struct.mt9m001_datafmt = type { i32, i32 }

@MT9M001_MIN_WIDTH = common dso_local global i32 0, align 4
@MT9M001_MAX_WIDTH = common dso_local global i32 0, align 4
@MT9M001_MIN_HEIGHT = common dso_local global i64 0, align 8
@MT9M001_MAX_HEIGHT = common dso_local global i64 0, align 8
@mt9m001_colour_fmts = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*)* @mt9m001_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m001_try_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_mbus_framefmt* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.mt9m001*, align 8
  %7 = alloca %struct.mt9m001_datafmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %11 = call %struct.mt9m001* @to_mt9m001(%struct.i2c_client* %10)
  store %struct.mt9m001* %11, %struct.mt9m001** %6, align 8
  %12 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %12, i32 0, i32 3
  %14 = load i32, i32* @MT9M001_MIN_WIDTH, align 4
  %15 = load i32, i32* @MT9M001_MAX_WIDTH, align 4
  %16 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %16, i32 0, i32 2
  %18 = load i64, i64* @MT9M001_MIN_HEIGHT, align 8
  %19 = load %struct.mt9m001*, %struct.mt9m001** %6, align 8
  %20 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = load i64, i64* @MT9M001_MAX_HEIGHT, align 8
  %24 = load %struct.mt9m001*, %struct.mt9m001** %6, align 8
  %25 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = call i32 @v4l_bound_align_image(i32* %13, i32 %14, i32 %15, i32 1, i64* %17, i64 %22, i64 %27, i32 0, i32 0)
  %29 = load %struct.mt9m001*, %struct.mt9m001** %6, align 8
  %30 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @mt9m001_colour_fmts, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %36 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, 1
  %39 = call i64 @ALIGN(i64 %38, i32 2)
  %40 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %41 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %34, %2
  %43 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %44 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mt9m001*, %struct.mt9m001** %6, align 8
  %47 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.mt9m001*, %struct.mt9m001** %6, align 8
  %50 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.mt9m001_datafmt* @mt9m001_find_datafmt(i32 %45, i64 %48, i32 %51)
  store %struct.mt9m001_datafmt* %52, %struct.mt9m001_datafmt** %7, align 8
  %53 = load %struct.mt9m001_datafmt*, %struct.mt9m001_datafmt** %7, align 8
  %54 = icmp ne %struct.mt9m001_datafmt* %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %42
  %56 = load %struct.mt9m001*, %struct.mt9m001** %6, align 8
  %57 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %56, i32 0, i32 1
  %58 = load %struct.mt9m001_datafmt*, %struct.mt9m001_datafmt** %57, align 8
  store %struct.mt9m001_datafmt* %58, %struct.mt9m001_datafmt** %7, align 8
  %59 = load %struct.mt9m001_datafmt*, %struct.mt9m001_datafmt** %7, align 8
  %60 = getelementptr inbounds %struct.mt9m001_datafmt, %struct.mt9m001_datafmt* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %63 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %55, %42
  %65 = load %struct.mt9m001_datafmt*, %struct.mt9m001_datafmt** %7, align 8
  %66 = getelementptr inbounds %struct.mt9m001_datafmt, %struct.mt9m001_datafmt* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %69 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  ret i32 0
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9m001* @to_mt9m001(%struct.i2c_client*) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i64*, i64, i64, i32, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local %struct.mt9m001_datafmt* @mt9m001_find_datafmt(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
