; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_vidioc_g_audio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_vidioc_g_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.hdpvr_fh* }
%struct.hdpvr_fh = type { %struct.hdpvr_device* }
%struct.hdpvr_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.v4l2_audio = type { i64, i8*, i32 }

@V4L2_AUDCAP_STEREO = common dso_local global i32 0, align 4
@audio_iname = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_audio*)* @vidioc_g_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_audio(%struct.file* %0, i8* %1, %struct.v4l2_audio* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_audio*, align 8
  %7 = alloca %struct.hdpvr_fh*, align 8
  %8 = alloca %struct.hdpvr_device*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_audio* %2, %struct.v4l2_audio** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %10, align 8
  store %struct.hdpvr_fh* %11, %struct.hdpvr_fh** %7, align 8
  %12 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %7, align 8
  %13 = getelementptr inbounds %struct.hdpvr_fh, %struct.hdpvr_fh* %12, i32 0, i32 0
  %14 = load %struct.hdpvr_device*, %struct.hdpvr_device** %13, align 8
  store %struct.hdpvr_device* %14, %struct.hdpvr_device** %8, align 8
  %15 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %16 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.v4l2_audio*, %struct.v4l2_audio** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* @V4L2_AUDCAP_STEREO, align 4
  %22 = load %struct.v4l2_audio*, %struct.v4l2_audio** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.v4l2_audio*, %struct.v4l2_audio** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i32*, i32** @audio_iname, align 8
  %28 = load %struct.v4l2_audio*, %struct.v4l2_audio** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strncpy(i8* %26, i32 %32, i32 8)
  %34 = load %struct.v4l2_audio*, %struct.v4l2_audio** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 7
  store i8 0, i8* %37, align 1
  ret i32 0
}

declare dso_local i32 @strncpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
