; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_vidioc_querycap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_vidioc_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32, i32 }
%struct.si470x_device = type { i32 }

@DRIVER_NAME = common dso_local global i32 0, align 4
@DRIVER_CARD = common dso_local global i32 0, align 4
@DRIVER_KERNEL_VERSION = common dso_local global i32 0, align 4
@V4L2_CAP_HW_FREQ_SEEK = common dso_local global i32 0, align 4
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@V4L2_CAP_RDS_CAPTURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si470x_vidioc_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.si470x_device*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.si470x_device* @video_drvdata(%struct.file* %8)
  store %struct.si470x_device* %9, %struct.si470x_device** %7, align 8
  %10 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DRIVER_NAME, align 4
  %14 = call i32 @strlcpy(i32 %12, i32 %13, i32 4)
  %15 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DRIVER_CARD, align 4
  %19 = call i32 @strlcpy(i32 %17, i32 %18, i32 4)
  %20 = load %struct.si470x_device*, %struct.si470x_device** %7, align 8
  %21 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @usb_make_path(i32 %22, i32 %25, i32 4)
  %27 = load i32, i32* @DRIVER_KERNEL_VERSION, align 4
  %28 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @V4L2_CAP_HW_FREQ_SEEK, align 4
  %31 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @V4L2_CAP_RDS_CAPTURE, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  ret i32 0
}

declare dso_local %struct.si470x_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @usb_make_path(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
