; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_vidioc_s_audio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_vidioc_s_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.hdpvr_fh* }
%struct.hdpvr_fh = type { %struct.hdpvr_device* }
%struct.hdpvr_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.v4l2_audio = type { i64 }

@HDPVR_AUDIO_INPUTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@STATUS_IDLE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_audio*)* @vidioc_s_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_audio(%struct.file* %0, i8* %1, %struct.v4l2_audio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_audio*, align 8
  %8 = alloca %struct.hdpvr_fh*, align 8
  %9 = alloca %struct.hdpvr_device*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_audio* %2, %struct.v4l2_audio** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %12, align 8
  store %struct.hdpvr_fh* %13, %struct.hdpvr_fh** %8, align 8
  %14 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %8, align 8
  %15 = getelementptr inbounds %struct.hdpvr_fh, %struct.hdpvr_fh* %14, i32 0, i32 0
  %16 = load %struct.hdpvr_device*, %struct.hdpvr_device** %15, align 8
  store %struct.hdpvr_device* %16, %struct.hdpvr_device** %9, align 8
  %17 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HDPVR_AUDIO_INPUTS, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %56

25:                                               ; preds = %3
  %26 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %27 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @STATUS_IDLE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %56

34:                                               ; preds = %25
  %35 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %36 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  %40 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %41 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @hdpvr_set_audio(%struct.hdpvr_device* %35, i64 %39, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %34
  %48 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %52 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  br label %54

54:                                               ; preds = %47, %34
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %31, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @hdpvr_set_audio(%struct.hdpvr_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
