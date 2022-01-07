; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_init_cal_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_init_cal_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@iq_cal_single_sample = common dso_local global i32 0, align 4
@TX_IQ_CAL = common dso_local global i32 0, align 4
@TX_IQ_ON_AGC_CAL = common dso_local global i32 0, align 4
@IQ_MISMATCH_CAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_hw_init_cal_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_init_cal_settings(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %3 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %4 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i32* @iq_cal_single_sample, i32** %5, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load i32, i32* @TX_IQ_CAL, align 4
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = call i64 @AR_SREV_9485_OR_LATER(%struct.ath_hw* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %9
  %19 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %20 = call i32 @AR_SREV_9340(%struct.ath_hw* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @TX_IQ_ON_AGC_CAL, align 4
  %24 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %25 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %18, %9
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i32, i32* @IQ_MISMATCH_CAL, align 4
  %31 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %32 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  ret void
}

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9485_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9340(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
