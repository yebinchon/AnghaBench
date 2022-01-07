; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_make_rect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_make_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.v4l2_rect = type { i8*, i32, i8*, i32 }
%struct.mt9m111 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@V4L2_MBUS_FMT_SBGGR8_1X8 = common dso_local global i64 0, align 8
@V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_LE = common dso_local global i64 0, align 8
@MT9M111_MIN_DARK_COLS = common dso_local global i32 0, align 4
@MT9M111_MAX_WIDTH = common dso_local global i32 0, align 4
@MT9M111_MIN_DARK_ROWS = common dso_local global i32 0, align 4
@MT9M111_MAX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.v4l2_rect*)* @mt9m111_make_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_make_rect(%struct.i2c_client* %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.v4l2_rect*, align 8
  %5 = alloca %struct.mt9m111*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %4, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = call %struct.mt9m111* @to_mt9m111(%struct.i2c_client* %6)
  store %struct.mt9m111* %7, %struct.mt9m111** %5, align 8
  %8 = load %struct.mt9m111*, %struct.mt9m111** %5, align 8
  %9 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @V4L2_MBUS_FMT_SBGGR8_1X8, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load %struct.mt9m111*, %struct.mt9m111** %5, align 8
  %17 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_LE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %15, %2
  %24 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %25 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @ALIGN(i8* %26, i32 2)
  %28 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %31 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @ALIGN(i8* %32, i32 2)
  %34 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %35 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %23, %15
  %37 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %37, i32 0, i32 3
  %39 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %40 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %39, i32 0, i32 2
  %41 = load i32, i32* @MT9M111_MIN_DARK_COLS, align 4
  %42 = load i32, i32* @MT9M111_MAX_WIDTH, align 4
  %43 = call i32 @soc_camera_limit_side(i32* %38, i8** %40, i32 %41, i32 2, i32 %42)
  %44 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %45 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %44, i32 0, i32 1
  %46 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %47 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %46, i32 0, i32 0
  %48 = load i32, i32* @MT9M111_MIN_DARK_ROWS, align 4
  %49 = load i32, i32* @MT9M111_MAX_HEIGHT, align 4
  %50 = call i32 @soc_camera_limit_side(i32* %45, i8** %47, i32 %48, i32 2, i32 %49)
  %51 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %52 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %53 = call i32 @mt9m111_setup_rect(%struct.i2c_client* %51, %struct.v4l2_rect* %52)
  ret i32 %53
}

declare dso_local %struct.mt9m111* @to_mt9m111(%struct.i2c_client*) #1

declare dso_local i8* @ALIGN(i8*, i32) #1

declare dso_local i32 @soc_camera_limit_side(i32*, i8**, i32, i32, i32) #1

declare dso_local i32 @mt9m111_setup_rect(%struct.i2c_client*, %struct.v4l2_rect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
