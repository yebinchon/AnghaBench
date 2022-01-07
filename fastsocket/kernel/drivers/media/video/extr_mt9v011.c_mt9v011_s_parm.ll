; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v011.c_mt9v011_s_parm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v011.c_mt9v011_s_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_streamparm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_captureparm }
%struct.v4l2_captureparm = type { i64, %struct.v4l2_fract }
%struct.v4l2_fract = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@R0A_MT9V011_CLK_SPEED = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Setting speed to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_streamparm*)* @mt9v011_s_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v011_s_parm(%struct.v4l2_subdev* %0, %struct.v4l2_streamparm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_streamparm*, align 8
  %6 = alloca %struct.v4l2_captureparm*, align 8
  %7 = alloca %struct.v4l2_fract*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_streamparm* %1, %struct.v4l2_streamparm** %5, align 8
  %9 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.v4l2_captureparm* %11, %struct.v4l2_captureparm** %6, align 8
  %12 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %12, i32 0, i32 1
  store %struct.v4l2_fract* %13, %struct.v4l2_fract** %7, align 8
  %14 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %53

22:                                               ; preds = %2
  %23 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %53

30:                                               ; preds = %22
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %32 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @calc_speed(%struct.v4l2_subdev* %31, i32 %34, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %40 = load i32, i32* @R0A_MT9V011_CLK_SPEED, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @mt9v011_write(%struct.v4l2_subdev* %39, i32 %40, i32 %41)
  %43 = load i32, i32* @debug, align 4
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @v4l2_dbg(i32 1, i32 %43, %struct.v4l2_subdev* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %48 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %48, i32 0, i32 1
  %50 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %50, i32 0, i32 0
  %52 = call i32 @calc_fps(%struct.v4l2_subdev* %47, i32* %49, i32* %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %30, %27, %19
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @calc_speed(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @mt9v011_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @calc_fps(%struct.v4l2_subdev*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
