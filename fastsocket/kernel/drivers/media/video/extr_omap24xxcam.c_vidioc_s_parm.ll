; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_vidioc_s_parm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_vidioc_s_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_streamparm = type { i32 }
%struct.omap24xxcam_fh = type { %struct.omap24xxcam_device* }
%struct.omap24xxcam_device = type { i32, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @vidioc_s_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_streamparm*, align 8
  %7 = alloca %struct.omap24xxcam_fh*, align 8
  %8 = alloca %struct.omap24xxcam_device*, align 8
  %9 = alloca %struct.v4l2_streamparm, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.omap24xxcam_fh*
  store %struct.omap24xxcam_fh* %12, %struct.omap24xxcam_fh** %7, align 8
  %13 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %7, align 8
  %14 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %13, i32 0, i32 0
  %15 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %14, align 8
  store %struct.omap24xxcam_device* %15, %struct.omap24xxcam_device** %8, align 8
  %16 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %17 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %20 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %10, align 4
  br label %56

26:                                               ; preds = %3
  %27 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %28 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %9, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %30 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @vidioc_int_g_parm(i32 %31, %struct.v4l2_streamparm* %9)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %56

36:                                               ; preds = %26
  %37 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %38 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %6, align 8
  %41 = call i32 @vidioc_int_s_parm(i32 %39, %struct.v4l2_streamparm* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %56

45:                                               ; preds = %36
  %46 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %47 = call i32 @omap24xxcam_sensor_if_enable(%struct.omap24xxcam_device* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %52 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @vidioc_int_s_parm(i32 %53, %struct.v4l2_streamparm* %9)
  br label %55

55:                                               ; preds = %50, %45
  br label %56

56:                                               ; preds = %55, %44, %35, %23
  %57 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %58 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %10, align 4
  ret i32 %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vidioc_int_g_parm(i32, %struct.v4l2_streamparm*) #1

declare dso_local i32 @vidioc_int_s_parm(i32, %struct.v4l2_streamparm*) #1

declare dso_local i32 @omap24xxcam_sensor_if_enable(%struct.omap24xxcam_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
