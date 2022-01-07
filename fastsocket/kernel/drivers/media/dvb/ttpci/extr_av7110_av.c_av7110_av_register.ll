; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_av7110_av_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_av7110_av_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32, i32, i32, i32, %struct.TYPE_6__, i32, i8*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i8*, i32, i32, i64 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i64, i64 }

@AUDIO_STOPPED = common dso_local global i32 0, align 4
@AUDIO_SOURCE_DEMUX = common dso_local global i32 0, align 4
@AUDIO_STEREO = common dso_local global i32 0, align 4
@VIDEO_STOPPED = common dso_local global i32 0, align 4
@VIDEO_SOURCE_DEMUX = common dso_local global i32 0, align 4
@VIDEO_FORMAT_4_3 = common dso_local global i8* null, align 8
@VIDEO_LETTER_BOX = common dso_local global i32 0, align 4
@VID_VC_AND_PS_PREF = common dso_local global i32 0, align 4
@dvbdev_video = common dso_local global i32 0, align 4
@DVB_DEVICE_VIDEO = common dso_local global i32 0, align 4
@dvbdev_audio = common dso_local global i32 0, align 4
@DVB_DEVICE_AUDIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av7110_av_register(%struct.av7110* %0) #0 {
  %2 = alloca %struct.av7110*, align 8
  store %struct.av7110* %0, %struct.av7110** %2, align 8
  %3 = load %struct.av7110*, %struct.av7110** %2, align 8
  %4 = getelementptr inbounds %struct.av7110, %struct.av7110* %3, i32 0, i32 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 5
  store i64 0, i64* %5, align 8
  %6 = load %struct.av7110*, %struct.av7110** %2, align 8
  %7 = getelementptr inbounds %struct.av7110, %struct.av7110* %6, i32 0, i32 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @AUDIO_STOPPED, align 4
  %10 = load %struct.av7110*, %struct.av7110** %2, align 8
  %11 = getelementptr inbounds %struct.av7110, %struct.av7110* %10, i32 0, i32 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store i32 %9, i32* %12, align 8
  %13 = load i32, i32* @AUDIO_SOURCE_DEMUX, align 4
  %14 = load %struct.av7110*, %struct.av7110** %2, align 8
  %15 = getelementptr inbounds %struct.av7110, %struct.av7110* %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @AUDIO_STEREO, align 4
  %18 = load %struct.av7110*, %struct.av7110** %2, align 8
  %19 = getelementptr inbounds %struct.av7110, %struct.av7110* %18, i32 0, i32 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 8
  %21 = load %struct.av7110*, %struct.av7110** %2, align 8
  %22 = getelementptr inbounds %struct.av7110, %struct.av7110* %21, i32 0, i32 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.av7110*, %struct.av7110** %2, align 8
  %25 = getelementptr inbounds %struct.av7110, %struct.av7110* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @VIDEO_STOPPED, align 4
  %28 = load %struct.av7110*, %struct.av7110** %2, align 8
  %29 = getelementptr inbounds %struct.av7110, %struct.av7110* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @VIDEO_SOURCE_DEMUX, align 4
  %32 = load %struct.av7110*, %struct.av7110** %2, align 8
  %33 = getelementptr inbounds %struct.av7110, %struct.av7110* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load i8*, i8** @VIDEO_FORMAT_4_3, align 8
  %36 = load %struct.av7110*, %struct.av7110** %2, align 8
  %37 = getelementptr inbounds %struct.av7110, %struct.av7110* %36, i32 0, i32 7
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i8* %35, i8** %38, align 8
  %39 = load i32, i32* @VIDEO_LETTER_BOX, align 4
  %40 = load %struct.av7110*, %struct.av7110** %2, align 8
  %41 = getelementptr inbounds %struct.av7110, %struct.av7110* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load i8*, i8** @VIDEO_FORMAT_4_3, align 8
  %44 = load %struct.av7110*, %struct.av7110** %2, align 8
  %45 = getelementptr inbounds %struct.av7110, %struct.av7110* %44, i32 0, i32 6
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @VID_VC_AND_PS_PREF, align 4
  %47 = load %struct.av7110*, %struct.av7110** %2, align 8
  %48 = getelementptr inbounds %struct.av7110, %struct.av7110* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load %struct.av7110*, %struct.av7110** %2, align 8
  %50 = getelementptr inbounds %struct.av7110, %struct.av7110* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  %52 = call i32 @init_waitqueue_head(i32* %51)
  %53 = load %struct.av7110*, %struct.av7110** %2, align 8
  %54 = getelementptr inbounds %struct.av7110, %struct.av7110* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = call i32 @spin_lock_init(i32* %55)
  %57 = load %struct.av7110*, %struct.av7110** %2, align 8
  %58 = getelementptr inbounds %struct.av7110, %struct.av7110* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.av7110*, %struct.av7110** %2, align 8
  %61 = getelementptr inbounds %struct.av7110, %struct.av7110* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.av7110*, %struct.av7110** %2, align 8
  %64 = getelementptr inbounds %struct.av7110, %struct.av7110* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.av7110*, %struct.av7110** %2, align 8
  %67 = getelementptr inbounds %struct.av7110, %struct.av7110* %66, i32 0, i32 3
  %68 = call i32 @memset(i32* %67, i32 0, i32 4)
  %69 = load %struct.av7110*, %struct.av7110** %2, align 8
  %70 = getelementptr inbounds %struct.av7110, %struct.av7110* %69, i32 0, i32 1
  %71 = load %struct.av7110*, %struct.av7110** %2, align 8
  %72 = getelementptr inbounds %struct.av7110, %struct.av7110* %71, i32 0, i32 2
  %73 = load %struct.av7110*, %struct.av7110** %2, align 8
  %74 = load i32, i32* @DVB_DEVICE_VIDEO, align 4
  %75 = call i32 @dvb_register_device(i32* %70, i32* %72, i32* @dvbdev_video, %struct.av7110* %73, i32 %74)
  %76 = load %struct.av7110*, %struct.av7110** %2, align 8
  %77 = getelementptr inbounds %struct.av7110, %struct.av7110* %76, i32 0, i32 1
  %78 = load %struct.av7110*, %struct.av7110** %2, align 8
  %79 = getelementptr inbounds %struct.av7110, %struct.av7110* %78, i32 0, i32 0
  %80 = load %struct.av7110*, %struct.av7110** %2, align 8
  %81 = load i32, i32* @DVB_DEVICE_AUDIO, align 4
  %82 = call i32 @dvb_register_device(i32* %77, i32* %79, i32* @dvbdev_audio, %struct.av7110* %80, i32 %81)
  ret i32 0
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dvb_register_device(i32*, i32*, i32*, %struct.av7110*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
