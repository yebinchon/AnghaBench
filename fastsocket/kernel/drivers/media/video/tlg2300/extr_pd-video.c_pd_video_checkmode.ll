; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_pd_video_checkmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_pd_video_checkmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poseidon = type { %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ISO_3K_BULK_ALTERNATE_IFACE = common dso_local global i32 0, align 4
@BULK_ALTERNATE_IFACE = common dso_local global i32 0, align 4
@TLG_MODE_ANALOG_TV = common dso_local global i32 0, align 4
@SGNL_SRC_SEL = common dso_local global i32 0, align 4
@TLG_SIG_SRC_ANTENNA = common dso_local global i32 0, align 4
@VIDEO_STD_SEL = common dso_local global i32 0, align 4
@TLG_TUNE_VSTD_PAL_D = common dso_local global i32 0, align 4
@VIDEO_STREAM_FMT_SEL = common dso_local global i32 0, align 4
@TLG_TUNER_VID_FORMAT_YUV = common dso_local global i32 0, align 4
@VIDEO_ROSOLU_SEL = common dso_local global i32 0, align 4
@TLG_TUNE_VID_RES_720 = common dso_local global i32 0, align 4
@TUNE_FREQ_SELECT = common dso_local global i32 0, align 4
@TUNER_FREQ_MIN = common dso_local global i32 0, align 4
@VBI_DATA_SEL = common dso_local global i32 0, align 4
@TUNER_AUD_ANA_STD = common dso_local global i32 0, align 4
@TUNER_AUD_MODE = common dso_local global i32 0, align 4
@TLG_TUNE_TVAUDIO_MODE_STEREO = common dso_local global i32 0, align 4
@AUDIO_SAMPLE_RATE_SEL = common dso_local global i32 0, align 4
@ATV_AUDIO_RATE_48K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.poseidon*)* @pd_video_checkmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd_video_checkmode(%struct.poseidon* %0) #0 {
  %2 = alloca %struct.poseidon*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.poseidon* %0, %struct.poseidon** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %7 = call i32 @set_current_state(i32 %6)
  %8 = load i32, i32* @HZ, align 4
  %9 = sdiv i32 %8, 2
  %10 = call i32 @schedule_timeout(i32 %9)
  %11 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %12 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %15 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ISO_3K_BULK_ALTERNATE_IFACE, align 4
  br label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @BULK_ALTERNATE_IFACE, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = call i32 @usb_set_interface(i32 %13, i32 0, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %91

28:                                               ; preds = %22
  %29 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %30 = load i32, i32* @TLG_MODE_ANALOG_TV, align 4
  %31 = call i32 @set_tuner_mode(%struct.poseidon* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %33 = load i32, i32* @SGNL_SRC_SEL, align 4
  %34 = load i32, i32* @TLG_SIG_SRC_ANTENNA, align 4
  %35 = call i32 @send_set_req(%struct.poseidon* %32, i32 %33, i32 %34, i32* %4)
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %39 = load i32, i32* @VIDEO_STD_SEL, align 4
  %40 = load i32, i32* @TLG_TUNE_VSTD_PAL_D, align 4
  %41 = call i32 @send_set_req(%struct.poseidon* %38, i32 %39, i32 %40, i32* %4)
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %45 = load i32, i32* @VIDEO_STREAM_FMT_SEL, align 4
  %46 = load i32, i32* @TLG_TUNER_VID_FORMAT_YUV, align 4
  %47 = call i32 @send_set_req(%struct.poseidon* %44, i32 %45, i32 %46, i32* %4)
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %51 = load i32, i32* @VIDEO_ROSOLU_SEL, align 4
  %52 = load i32, i32* @TLG_TUNE_VID_RES_720, align 4
  %53 = call i32 @send_set_req(%struct.poseidon* %50, i32 %51, i32 %52, i32* %4)
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %57 = load i32, i32* @TUNE_FREQ_SELECT, align 4
  %58 = load i32, i32* @TUNER_FREQ_MIN, align 4
  %59 = call i32 @send_set_req(%struct.poseidon* %56, i32 %57, i32 %58, i32* %4)
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  %62 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %63 = load i32, i32* @VBI_DATA_SEL, align 4
  %64 = call i32 @send_set_req(%struct.poseidon* %62, i32 %63, i32 1, i32* %4)
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %3, align 4
  %67 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %68 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @get_audio_std(i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %74 = load i32, i32* @TUNER_AUD_ANA_STD, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @send_set_req(%struct.poseidon* %73, i32 %74, i32 %75, i32* %4)
  %77 = load i32, i32* %3, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %3, align 4
  %79 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %80 = load i32, i32* @TUNER_AUD_MODE, align 4
  %81 = load i32, i32* @TLG_TUNE_TVAUDIO_MODE_STEREO, align 4
  %82 = call i32 @send_set_req(%struct.poseidon* %79, i32 %80, i32 %81, i32* %4)
  %83 = load i32, i32* %3, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %3, align 4
  %85 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %86 = load i32, i32* @AUDIO_SAMPLE_RATE_SEL, align 4
  %87 = load i32, i32* @ATV_AUDIO_RATE_48K, align 4
  %88 = call i32 @send_set_req(%struct.poseidon* %85, i32 %86, i32 %87, i32* %4)
  %89 = load i32, i32* %3, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %28, %27
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @set_tuner_mode(%struct.poseidon*, i32) #1

declare dso_local i32 @send_set_req(%struct.poseidon*, i32, i32, i32*) #1

declare dso_local i32 @get_audio_std(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
