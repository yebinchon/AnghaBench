; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cs5345.c_cs5345_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cs5345.c_cs5345_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i64, i32 }

@V4L2_CID_AUDIO_MUTE = common dso_local global i64 0, align 8
@V4L2_CID_AUDIO_VOLUME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @cs5345_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs5345_s_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %6 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @V4L2_CID_AUDIO_MUTE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %13 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 128, i32 0
  %19 = call i32 @cs5345_write(%struct.v4l2_subdev* %12, i32 4, i32 %18)
  store i32 0, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  %21 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_CID_AUDIO_VOLUME, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %55

29:                                               ; preds = %20
  %30 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 24
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %37, -24
  br i1 %38, label %39, label %42

39:                                               ; preds = %34, %29
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %55

42:                                               ; preds = %34
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %44 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, 63
  %48 = call i32 @cs5345_write(%struct.v4l2_subdev* %43, i32 7, i32 %47)
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %50 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %51 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 63
  %54 = call i32 @cs5345_write(%struct.v4l2_subdev* %49, i32 8, i32 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %42, %39, %26, %11
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @cs5345_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
