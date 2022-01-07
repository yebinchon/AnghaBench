; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_vidioc_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_vidioc_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.hdpvr_fh* }
%struct.hdpvr_fh = type { %struct.hdpvr_device* }
%struct.hdpvr_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.v4l2_control = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.hdpvr_fh*, align 8
  %9 = alloca %struct.hdpvr_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %11, align 8
  store %struct.hdpvr_fh* %12, %struct.hdpvr_fh** %8, align 8
  %13 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %8, align 8
  %14 = getelementptr inbounds %struct.hdpvr_fh, %struct.hdpvr_fh* %13, i32 0, i32 0
  %15 = load %struct.hdpvr_device*, %struct.hdpvr_device** %14, align 8
  store %struct.hdpvr_device* %15, %struct.hdpvr_device** %9, align 8
  %16 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %54 [
    i32 132, label %19
    i32 131, label %26
    i32 129, label %33
    i32 130, label %40
    i32 128, label %47
  ]

19:                                               ; preds = %3
  %20 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %21 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %57

26:                                               ; preds = %3
  %27 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %28 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %57

33:                                               ; preds = %3
  %34 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %35 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %57

40:                                               ; preds = %3
  %41 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %42 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %57

47:                                               ; preds = %3
  %48 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %49 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %57

54:                                               ; preds = %3
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %58

57:                                               ; preds = %47, %40, %33, %26, %19
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
