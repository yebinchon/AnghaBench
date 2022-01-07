; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_video_dev_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_video_dev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { %struct.video_device*, %struct.TYPE_2__ }
%struct.video_device = type { i8*, i32, i32*, i32*, i8*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.soc_camera_host = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@V4L2_STD_UNKNOWN = common dso_local global i8* null, align 8
@soc_camera_fops = common dso_local global i32 0, align 4
@soc_camera_ioctl_ops = common dso_local global i32 0, align 4
@video_device_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*)* @video_dev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_dev_create(%struct.soc_camera_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soc_camera_device*, align 8
  %4 = alloca %struct.soc_camera_host*, align 8
  %5 = alloca %struct.video_device*, align 8
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %3, align 8
  %6 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %7 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %9)
  store %struct.soc_camera_host* %10, %struct.soc_camera_host** %4, align 8
  %11 = call %struct.video_device* (...) @video_device_alloc()
  store %struct.video_device* %11, %struct.video_device** %5, align 8
  %12 = load %struct.video_device*, %struct.video_device** %5, align 8
  %13 = icmp ne %struct.video_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %45

17:                                               ; preds = %1
  %18 = load %struct.video_device*, %struct.video_device** %5, align 8
  %19 = getelementptr inbounds %struct.video_device, %struct.video_device* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.soc_camera_host*, %struct.soc_camera_host** %4, align 8
  %22 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strlcpy(i32 %20, i32 %23, i32 4)
  %25 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %26 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %25, i32 0, i32 1
  %27 = load %struct.video_device*, %struct.video_device** %5, align 8
  %28 = getelementptr inbounds %struct.video_device, %struct.video_device* %27, i32 0, i32 5
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %28, align 8
  %29 = load i8*, i8** @V4L2_STD_UNKNOWN, align 8
  %30 = load %struct.video_device*, %struct.video_device** %5, align 8
  %31 = getelementptr inbounds %struct.video_device, %struct.video_device* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  %32 = load %struct.video_device*, %struct.video_device** %5, align 8
  %33 = getelementptr inbounds %struct.video_device, %struct.video_device* %32, i32 0, i32 3
  store i32* @soc_camera_fops, i32** %33, align 8
  %34 = load %struct.video_device*, %struct.video_device** %5, align 8
  %35 = getelementptr inbounds %struct.video_device, %struct.video_device* %34, i32 0, i32 2
  store i32* @soc_camera_ioctl_ops, i32** %35, align 8
  %36 = load i32, i32* @video_device_release, align 4
  %37 = load %struct.video_device*, %struct.video_device** %5, align 8
  %38 = getelementptr inbounds %struct.video_device, %struct.video_device* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** @V4L2_STD_UNKNOWN, align 8
  %40 = load %struct.video_device*, %struct.video_device** %5, align 8
  %41 = getelementptr inbounds %struct.video_device, %struct.video_device* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.video_device*, %struct.video_device** %5, align 8
  %43 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %44 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %43, i32 0, i32 0
  store %struct.video_device* %42, %struct.video_device** %44, align 8
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %17, %14
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local %struct.video_device* @video_device_alloc(...) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
