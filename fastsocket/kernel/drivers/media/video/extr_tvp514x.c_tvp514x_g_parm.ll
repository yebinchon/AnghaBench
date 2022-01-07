; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp514x.c_tvp514x_g_parm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp514x.c_tvp514x_g_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_streamparm = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_captureparm }
%struct.v4l2_captureparm = type { i32, i32 }
%struct.tvp514x_decoder = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@STD_INVALID = common dso_local global i32 0, align 4
@V4L2_CAP_TIMEPERFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_streamparm*)* @tvp514x_g_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp514x_g_parm(%struct.v4l2_subdev* %0, %struct.v4l2_streamparm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_streamparm*, align 8
  %6 = alloca %struct.tvp514x_decoder*, align 8
  %7 = alloca %struct.v4l2_captureparm*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_streamparm* %1, %struct.v4l2_streamparm** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev* %9)
  store %struct.tvp514x_decoder* %10, %struct.tvp514x_decoder** %6, align 8
  %11 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %12 = icmp eq %struct.v4l2_streamparm* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %60

16:                                               ; preds = %2
  %17 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %60

25:                                               ; preds = %16
  %26 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %27 = call i32 @memset(%struct.v4l2_streamparm* %26, i32 0, i32 16)
  %28 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %29 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %32 = call i32 @tvp514x_get_current_std(%struct.v4l2_subdev* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @STD_INVALID, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %60

39:                                               ; preds = %25
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %42 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store %struct.v4l2_captureparm* %45, %struct.v4l2_captureparm** %7, align 8
  %46 = load i32, i32* @V4L2_CAP_TIMEPERFRAME, align 4
  %47 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %50 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %39, %36, %22, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev*) #1

declare dso_local i32 @memset(%struct.v4l2_streamparm*, i32, i32) #1

declare dso_local i32 @tvp514x_get_current_std(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
