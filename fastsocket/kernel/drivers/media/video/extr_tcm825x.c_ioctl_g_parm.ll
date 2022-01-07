; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_ioctl_g_parm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_ioctl_g_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_int_device = type { %struct.tcm825x_sensor* }
%struct.tcm825x_sensor = type { i32 }
%struct.v4l2_streamparm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_captureparm }
%struct.v4l2_captureparm = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CAP_TIMEPERFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_int_device*, %struct.v4l2_streamparm*)* @ioctl_g_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_g_parm(%struct.v4l2_int_device* %0, %struct.v4l2_streamparm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_int_device*, align 8
  %5 = alloca %struct.v4l2_streamparm*, align 8
  %6 = alloca %struct.tcm825x_sensor*, align 8
  %7 = alloca %struct.v4l2_captureparm*, align 8
  store %struct.v4l2_int_device* %0, %struct.v4l2_int_device** %4, align 8
  store %struct.v4l2_streamparm* %1, %struct.v4l2_streamparm** %5, align 8
  %8 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_int_device, %struct.v4l2_int_device* %8, i32 0, i32 0
  %10 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %9, align 8
  store %struct.tcm825x_sensor* %10, %struct.tcm825x_sensor** %6, align 8
  %11 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.v4l2_captureparm* %13, %struct.v4l2_captureparm** %7, align 8
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
  br label %36

22:                                               ; preds = %2
  %23 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %24 = call i32 @memset(%struct.v4l2_streamparm* %23, i32 0, i32 16)
  %25 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %26 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* @V4L2_CAP_TIMEPERFRAME, align 4
  %29 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %6, align 8
  %32 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %22, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @memset(%struct.v4l2_streamparm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
