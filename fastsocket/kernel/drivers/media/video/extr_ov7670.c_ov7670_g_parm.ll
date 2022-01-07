; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_g_parm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_g_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_streamparm = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_captureparm }
%struct.v4l2_captureparm = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ov7670_info = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CAP_TIMEPERFRAME = common dso_local global i32 0, align 4
@CLK_EXT = common dso_local global i32 0, align 4
@CLK_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_streamparm*)* @ov7670_g_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_g_parm(%struct.v4l2_subdev* %0, %struct.v4l2_streamparm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_streamparm*, align 8
  %6 = alloca %struct.v4l2_captureparm*, align 8
  %7 = alloca %struct.ov7670_info*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_streamparm* %1, %struct.v4l2_streamparm** %5, align 8
  %8 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.v4l2_captureparm* %10, %struct.v4l2_captureparm** %6, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.ov7670_info* @to_state(%struct.v4l2_subdev* %11)
  store %struct.ov7670_info* %12, %struct.ov7670_info** %7, align 8
  %13 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %61

21:                                               ; preds = %2
  %22 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %6, align 8
  %23 = call i32 @memset(%struct.v4l2_captureparm* %22, i32 0, i32 12)
  %24 = load i32, i32* @V4L2_CAP_TIMEPERFRAME, align 4
  %25 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.ov7670_info*, %struct.ov7670_info** %7, align 8
  %31 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.ov7670_info*, %struct.ov7670_info** %7, align 8
  %37 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CLK_EXT, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %21
  %43 = load %struct.ov7670_info*, %struct.ov7670_info** %7, align 8
  %44 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CLK_SCALE, align 4
  %47 = and i32 %45, %46
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load %struct.ov7670_info*, %struct.ov7670_info** %7, align 8
  %51 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CLK_SCALE, align 4
  %54 = and i32 %52, %53
  %55 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %6, align 8
  %56 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %58, %54
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %49, %42, %21
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %18
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.ov7670_info* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @memset(%struct.v4l2_captureparm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
