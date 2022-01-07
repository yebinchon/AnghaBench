; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_queryctrl = type { i32, i64 }
%struct.em28xx_fh = type { %struct.em28xx* }
%struct.em28xx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EM28XX_NO_AC97 = common dso_local global i64 0, align 8
@core = common dso_local global i32 0, align 4
@queryctrl = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_queryctrl*)* @vidioc_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_queryctrl(%struct.file* %0, i8* %1, %struct.v4l2_queryctrl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_queryctrl*, align 8
  %8 = alloca %struct.em28xx_fh*, align 8
  %9 = alloca %struct.em28xx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_queryctrl* %2, %struct.v4l2_queryctrl** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.em28xx_fh*
  store %struct.em28xx_fh* %13, %struct.em28xx_fh** %8, align 8
  %14 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %15 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %14, i32 0, i32 0
  %16 = load %struct.em28xx*, %struct.em28xx** %15, align 8
  store %struct.em28xx* %16, %struct.em28xx** %9, align 8
  %17 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %21 = call i32 @check_dev(%struct.em28xx* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %60

26:                                               ; preds = %3
  %27 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %28 = call i32 @memset(%struct.v4l2_queryctrl* %27, i32 0, i32 16)
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %33 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @EM28XX_NO_AC97, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %26
  %39 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %40 = call i32 @ac97_queryctrl(%struct.v4l2_queryctrl* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %60

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %47 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %46, i32 0, i32 0
  %48 = load i32, i32* @core, align 4
  %49 = load i32, i32* @queryctrl, align 4
  %50 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %51 = call i32 @v4l2_device_call_all(i32* %47, i32 0, i32 %48, i32 %49, %struct.v4l2_queryctrl* %50)
  %52 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %60

57:                                               ; preds = %45
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %56, %43, %24
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @check_dev(%struct.em28xx*) #1

declare dso_local i32 @memset(%struct.v4l2_queryctrl*, i32, i32) #1

declare dso_local i32 @ac97_queryctrl(%struct.v4l2_queryctrl*) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, %struct.v4l2_queryctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
