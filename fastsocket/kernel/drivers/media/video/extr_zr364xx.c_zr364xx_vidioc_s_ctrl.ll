; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_zr364xx.c_zr364xx_vidioc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_zr364xx.c_zr364xx_vidioc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.zr364xx_camera = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @zr364xx_vidioc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zr364xx_vidioc_s_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.zr364xx_camera*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = icmp eq %struct.file* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %52

15:                                               ; preds = %3
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call %struct.zr364xx_camera* @video_drvdata(%struct.file* %16)
  store %struct.zr364xx_camera* %17, %struct.zr364xx_camera** %8, align 8
  %18 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %48 [
    i32 128, label %21
  ]

21:                                               ; preds = %15
  %22 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %8, align 8
  %26 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %8, align 8
  %29 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %8, align 8
  %32 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @send_control_msg(i32 %33, i32 1, i32 8193, i32 0, i32* null, i32 0)
  %35 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %8, align 8
  %36 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 24703, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %8, align 8
  %41 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @send_control_msg(i32 %42, i32 1, i32 %43, i32 0, i32* null, i32 0)
  %45 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %8, align 8
  %46 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  br label %51

48:                                               ; preds = %15
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %52

51:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %48, %12
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.zr364xx_camera* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @send_control_msg(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
