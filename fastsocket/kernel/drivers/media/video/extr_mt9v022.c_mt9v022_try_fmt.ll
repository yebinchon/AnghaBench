; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v022.c_mt9v022_try_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v022.c_mt9v022_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.mt9v022 = type { %struct.mt9v022_datafmt*, i32, i32, i64 }
%struct.mt9v022_datafmt = type { i32, i32 }

@V4L2_MBUS_FMT_SBGGR8_1X8 = common dso_local global i32 0, align 4
@V4L2_MBUS_FMT_SBGGR10_1X10 = common dso_local global i32 0, align 4
@MT9V022_MIN_WIDTH = common dso_local global i32 0, align 4
@MT9V022_MAX_WIDTH = common dso_local global i32 0, align 4
@MT9V022_MIN_HEIGHT = common dso_local global i64 0, align 8
@MT9V022_MAX_HEIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*)* @mt9v022_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v022_try_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_mbus_framefmt* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.mt9v022*, align 8
  %7 = alloca %struct.mt9v022_datafmt*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = call %struct.mt9v022* @to_mt9v022(%struct.i2c_client* %11)
  store %struct.mt9v022* %12, %struct.mt9v022** %6, align 8
  %13 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @V4L2_MBUS_FMT_SBGGR8_1X8, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @V4L2_MBUS_FMT_SBGGR10_1X10, align 4
  %23 = icmp eq i32 %21, %22
  br label %24

24:                                               ; preds = %18, %2
  %25 = phi i1 [ true, %2 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %28 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %27, i32 0, i32 3
  %29 = load i32, i32* @MT9V022_MIN_WIDTH, align 4
  %30 = load i32, i32* @MT9V022_MAX_WIDTH, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %33 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %32, i32 0, i32 2
  %34 = load i64, i64* @MT9V022_MIN_HEIGHT, align 8
  %35 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %36 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load i64, i64* @MT9V022_MAX_HEIGHT, align 8
  %40 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %41 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @v4l_bound_align_image(i32* %28, i32 %29, i32 %30, i32 %31, i32* %33, i64 %38, i64 %43, i32 %44, i32 0)
  %46 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %47 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %50 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %53 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.mt9v022_datafmt* @mt9v022_find_datafmt(i32 %48, i32 %51, i32 %54)
  store %struct.mt9v022_datafmt* %55, %struct.mt9v022_datafmt** %7, align 8
  %56 = load %struct.mt9v022_datafmt*, %struct.mt9v022_datafmt** %7, align 8
  %57 = icmp ne %struct.mt9v022_datafmt* %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %24
  %59 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %60 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %59, i32 0, i32 0
  %61 = load %struct.mt9v022_datafmt*, %struct.mt9v022_datafmt** %60, align 8
  store %struct.mt9v022_datafmt* %61, %struct.mt9v022_datafmt** %7, align 8
  %62 = load %struct.mt9v022_datafmt*, %struct.mt9v022_datafmt** %7, align 8
  %63 = getelementptr inbounds %struct.mt9v022_datafmt, %struct.mt9v022_datafmt* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %66 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %58, %24
  %68 = load %struct.mt9v022_datafmt*, %struct.mt9v022_datafmt** %7, align 8
  %69 = getelementptr inbounds %struct.mt9v022_datafmt, %struct.mt9v022_datafmt* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %72 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  ret i32 0
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9v022* @to_mt9v022(%struct.i2c_client*) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i64, i64, i32, i32) #1

declare dso_local %struct.mt9v022_datafmt* @mt9v022_find_datafmt(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
