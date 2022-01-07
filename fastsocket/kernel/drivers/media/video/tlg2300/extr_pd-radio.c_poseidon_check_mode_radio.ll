; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-radio.c_poseidon_check_mode_radio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-radio.c_poseidon_check_mode_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poseidon = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@BULK_ALTERNATE_IFACE = common dso_local global i32 0, align 4
@TLG_MODE_FM_RADIO = common dso_local global i32 0, align 4
@SGNL_SRC_SEL = common dso_local global i32 0, align 4
@TLG_SIG_SRC_ANTENNA = common dso_local global i32 0, align 4
@TUNER_AUD_ANA_STD = common dso_local global i32 0, align 4
@TUNER_AUD_MODE = common dso_local global i32 0, align 4
@TLG_TUNE_TVAUDIO_MODE_STEREO = common dso_local global i32 0, align 4
@AUDIO_SAMPLE_RATE_SEL = common dso_local global i32 0, align 4
@ATV_AUDIO_RATE_48K = common dso_local global i32 0, align 4
@TUNE_FREQ_SELECT = common dso_local global i32 0, align 4
@TUNER_FREQ_MIN_FM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.poseidon*)* @poseidon_check_mode_radio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poseidon_check_mode_radio(%struct.poseidon* %0) #0 {
  %2 = alloca %struct.poseidon*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.poseidon* %0, %struct.poseidon** %2, align 8
  %5 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %6 = call i32 @set_current_state(i32 %5)
  %7 = load i32, i32* @HZ, align 4
  %8 = sdiv i32 %7, 2
  %9 = call i32 @schedule_timeout(i32 %8)
  %10 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %11 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BULK_ALTERNATE_IFACE, align 4
  %14 = call i32 @usb_set_interface(i32 %12, i32 0, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %55

18:                                               ; preds = %1
  %19 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %20 = load i32, i32* @TLG_MODE_FM_RADIO, align 4
  %21 = call i32 @set_tuner_mode(%struct.poseidon* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %55

25:                                               ; preds = %18
  %26 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %27 = load i32, i32* @SGNL_SRC_SEL, align 4
  %28 = load i32, i32* @TLG_SIG_SRC_ANTENNA, align 4
  %29 = call i32 @send_set_req(%struct.poseidon* %26, i32 %27, i32 %28, i32* %4)
  store i32 %29, i32* %3, align 4
  %30 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %31 = load i32, i32* @TUNER_AUD_ANA_STD, align 4
  %32 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %33 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @send_set_req(%struct.poseidon* %30, i32 %31, i32 %35, i32* %4)
  store i32 %36, i32* %3, align 4
  %37 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %38 = load i32, i32* @TUNER_AUD_MODE, align 4
  %39 = load i32, i32* @TLG_TUNE_TVAUDIO_MODE_STEREO, align 4
  %40 = call i32 @send_set_req(%struct.poseidon* %37, i32 %38, i32 %39, i32* %4)
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %44 = load i32, i32* @AUDIO_SAMPLE_RATE_SEL, align 4
  %45 = load i32, i32* @ATV_AUDIO_RATE_48K, align 4
  %46 = call i32 @send_set_req(%struct.poseidon* %43, i32 %44, i32 %45, i32* %4)
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %50 = load i32, i32* @TUNE_FREQ_SELECT, align 4
  %51 = load i32, i32* @TUNER_FREQ_MIN_FM, align 4
  %52 = call i32 @send_set_req(%struct.poseidon* %49, i32 %50, i32 %51, i32* %4)
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %25, %24, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @set_tuner_mode(%struct.poseidon*, i32) #1

declare dso_local i32 @send_set_req(%struct.poseidon*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
