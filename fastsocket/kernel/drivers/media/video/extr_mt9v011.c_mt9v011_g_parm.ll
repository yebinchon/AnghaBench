; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v011.c_mt9v011_g_parm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v011.c_mt9v011_g_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_streamparm = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_captureparm }
%struct.v4l2_captureparm = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CAP_TIMEPERFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_streamparm*)* @mt9v011_g_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v011_g_parm(%struct.v4l2_subdev* %0, %struct.v4l2_streamparm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_streamparm*, align 8
  %6 = alloca %struct.v4l2_captureparm*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_streamparm* %1, %struct.v4l2_streamparm** %5, align 8
  %7 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %8 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.v4l2_captureparm* %9, %struct.v4l2_captureparm** %6, align 8
  %10 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %32

18:                                               ; preds = %2
  %19 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %6, align 8
  %20 = call i32 @memset(%struct.v4l2_captureparm* %19, i32 0, i32 12)
  %21 = load i32, i32* @V4L2_CAP_TIMEPERFRAME, align 4
  %22 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %25 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @calc_fps(%struct.v4l2_subdev* %24, i32* %27, i32* %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %18, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @memset(%struct.v4l2_captureparm*, i32, i32) #1

declare dso_local i32 @calc_fps(%struct.v4l2_subdev*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
