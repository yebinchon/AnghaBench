; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.em28xx_fh = type { %struct.em28xx* }
%struct.em28xx = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EM28XX_NO_AC97 = common dso_local global i64 0, align 8
@core = common dso_local global i32 0, align 4
@s_ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
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
  br label %81

22:                                               ; preds = %3
  %23 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %24 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EM28XX_NO_AC97, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %31 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %32 = call i32 @ac97_set_ctrl(%struct.em28xx* %30, %struct.v4l2_control* %31)
  store i32 %32, i32* %10, align 4
  br label %34

33:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %73

37:                                               ; preds = %34
  %38 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %39 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @check_subdev_ctrl(%struct.em28xx* %38, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %37
  %46 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %47 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %46, i32 0, i32 2
  %48 = load i32, i32* @core, align 4
  %49 = load i32, i32* @s_ctrl, align 4
  %50 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %51 = call i32 @v4l2_device_call_all(i32* %47, i32 0, i32 %48, i32 %49, %struct.v4l2_control* %50)
  br label %52

52:                                               ; preds = %45, %37
  %53 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %72 [
    i32 129, label %56
    i32 128, label %64
  ]

56:                                               ; preds = %52
  %57 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %61 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %63 = call i32 @em28xx_audio_analog_set(%struct.em28xx* %62)
  store i32 %63, i32* %10, align 4
  br label %72

64:                                               ; preds = %52
  %65 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %69 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %71 = call i32 @em28xx_audio_analog_set(%struct.em28xx* %70)
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %64, %52, %56
  br label %73

73:                                               ; preds = %72, %34
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  br label %79

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ]
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %20
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @check_dev(%struct.em28xx*) #1

declare dso_local i32 @ac97_set_ctrl(%struct.em28xx*, %struct.v4l2_control*) #1

declare dso_local i32 @check_subdev_ctrl(%struct.em28xx*, i32) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, %struct.v4l2_control*) #1

declare dso_local i32 @em28xx_audio_analog_set(%struct.em28xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
