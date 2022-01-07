; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_zr364xx.c_zr364xx_vidioc_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_zr364xx.c_zr364xx_vidioc_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_queryctrl = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.zr364xx_camera = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_INTEGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Brightness\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_queryctrl*)* @zr364xx_vidioc_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zr364xx_vidioc_queryctrl(%struct.file* %0, i8* %1, %struct.v4l2_queryctrl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_queryctrl*, align 8
  %8 = alloca %struct.zr364xx_camera*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_queryctrl* %2, %struct.v4l2_queryctrl** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = icmp eq %struct.file* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %46

14:                                               ; preds = %3
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = call %struct.zr364xx_camera* @video_drvdata(%struct.file* %15)
  store %struct.zr364xx_camera* %16, %struct.zr364xx_camera** %8, align 8
  %17 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %42 [
    i32 128, label %20
  ]

20:                                               ; preds = %14
  %21 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER, align 4
  %22 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 4
  %24 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strcpy(i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %28, i32 0, i32 5
  store i32 0, i32* %29, align 4
  %30 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %30, i32 0, i32 1
  store i32 127, i32* %31, align 4
  %32 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %32, i32 0, i32 2
  store i32 1, i32* %33, align 4
  %34 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %8, align 8
  %35 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %40, i32 0, i32 3
  store i32 0, i32* %41, align 4
  br label %45

42:                                               ; preds = %14
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %46

45:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %42, %11
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.zr364xx_camera* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
