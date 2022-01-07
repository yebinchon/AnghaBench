; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-zoltrix.c_vidioc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-zoltrix.c_vidioc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.zoltrix = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VIDEO_SOUND_MONO = common dso_local global i32 0, align 4
@VIDEO_SOUND_STEREO = common dso_local global i32 0, align 4
@v = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.zoltrix*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.zoltrix* @video_drvdata(%struct.file* %9)
  store %struct.zoltrix* %10, %struct.zoltrix** %8, align 8
  %11 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %38 [
    i32 129, label %14
    i32 128, label %31
  ]

14:                                               ; preds = %3
  %15 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.zoltrix*, %struct.zoltrix** %8, align 8
  %21 = call i32 @zol_mute(%struct.zoltrix* %20)
  br label %30

22:                                               ; preds = %14
  %23 = load %struct.zoltrix*, %struct.zoltrix** %8, align 8
  %24 = call i32 @zol_unmute(%struct.zoltrix* %23)
  %25 = load %struct.zoltrix*, %struct.zoltrix** %8, align 8
  %26 = load %struct.zoltrix*, %struct.zoltrix** %8, align 8
  %27 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @zol_setvol(%struct.zoltrix* %25, i32 %28)
  br label %30

30:                                               ; preds = %22, %19
  store i32 0, i32* %4, align 4
  br label %53

31:                                               ; preds = %3
  %32 = load %struct.zoltrix*, %struct.zoltrix** %8, align 8
  %33 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %35, 4096
  %37 = call i32 @zol_setvol(%struct.zoltrix* %32, i32 %36)
  store i32 0, i32* %4, align 4
  br label %53

38:                                               ; preds = %3
  %39 = load %struct.zoltrix*, %struct.zoltrix** %8, align 8
  %40 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load %struct.zoltrix*, %struct.zoltrix** %8, align 8
  %42 = load %struct.zoltrix*, %struct.zoltrix** %8, align 8
  %43 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @zol_setfreq(%struct.zoltrix* %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %53

50:                                               ; preds = %38
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %47, %31, %30
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.zoltrix* @video_drvdata(%struct.file*) #1

declare dso_local i32 @zol_mute(%struct.zoltrix*) #1

declare dso_local i32 @zol_unmute(%struct.zoltrix*) #1

declare dso_local i32 @zol_setvol(%struct.zoltrix*, i32) #1

declare dso_local i64 @zol_setfreq(%struct.zoltrix*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
