; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_tx_iq_cal_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_tx_iq_cal_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@AR_PHY_TX_FORCED_GAIN = common dso_local global i32 0, align 4
@AR_PHY_TXGAIN_FORCE = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_START = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_START_DO_CAL = common dso_local global i32 0, align 4
@AH_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Tx IQ Cal is not completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*)* @ar9003_hw_tx_iq_cal_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_tx_iq_cal_run(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %6)
  store %struct.ath_common* %7, %struct.ath_common** %4, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %9 = load i32, i32* @AR_PHY_TX_FORCED_GAIN, align 4
  %10 = load i32, i32* @AR_PHY_TXGAIN_FORCE, align 4
  %11 = call i64 @REG_READ_FIELD(%struct.ath_hw* %8, i32 %9, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %16 = load i32, i32* @AR_PHY_TX_FORCED_GAIN, align 4
  %17 = load i32, i32* @AR_PHY_TXGAIN_FORCE, align 4
  %18 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %15, i32 %16, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %21 = load i32, i32* @AR_PHY_TX_IQCAL_START, align 4
  %22 = load i32, i32* @AR_PHY_TX_IQCAL_START_DO_CAL, align 4
  %23 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %20, i32 %21, i32 %22, i32 1)
  %24 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %25 = load i32, i32* @AR_PHY_TX_IQCAL_START, align 4
  %26 = load i32, i32* @AR_PHY_TX_IQCAL_START_DO_CAL, align 4
  %27 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %28 = call i32 @ath9k_hw_wait(%struct.ath_hw* %24, i32 %25, i32 %26, i32 0, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %19
  %31 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %32 = load i32, i32* @CALIBRATE, align 4
  %33 = call i32 @ath_dbg(%struct.ath_common* %31, i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %35

34:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @REG_READ_FIELD(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @ath9k_hw_wait(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
