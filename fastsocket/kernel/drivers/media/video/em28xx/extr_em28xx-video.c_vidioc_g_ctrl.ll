; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i32 }
%struct.em28xx_fh = type { %struct.em28xx* }
%struct.em28xx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EM28XX_NO_AC97 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@g_ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.em28xx_fh*, align 8
  %9 = alloca %struct.em28xx*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.em28xx_fh*
  store %struct.em28xx_fh* %12, %struct.em28xx_fh** %8, align 8
  %13 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %14 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %13, i32 0, i32 0
  %15 = load %struct.em28xx*, %struct.em28xx** %14, align 8
  store %struct.em28xx* %15, %struct.em28xx** %9, align 8
  %16 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %17 = call i32 @check_dev(%struct.em28xx* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %56

22:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %23 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %24 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EM28XX_NO_AC97, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %31 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %32 = call i32 @ac97_get_ctrl(%struct.em28xx* %30, %struct.v4l2_control* %31)
  store i32 %32, i32* %10, align 4
  br label %34

33:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %39 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @check_subdev_ctrl(%struct.em28xx* %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %56

47:                                               ; preds = %37
  %48 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %49 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %48, i32 0, i32 0
  %50 = load i32, i32* @core, align 4
  %51 = load i32, i32* @g_ctrl, align 4
  %52 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %53 = call i32 @v4l2_device_call_all(i32* %49, i32 0, i32 %50, i32 %51, %struct.v4l2_control* %52)
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %47, %34
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %44, %20
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @check_dev(%struct.em28xx*) #1

declare dso_local i32 @ac97_get_ctrl(%struct.em28xx*, %struct.v4l2_control*) #1

declare dso_local i64 @check_subdev_ctrl(%struct.em28xx*, i32) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, %struct.v4l2_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
