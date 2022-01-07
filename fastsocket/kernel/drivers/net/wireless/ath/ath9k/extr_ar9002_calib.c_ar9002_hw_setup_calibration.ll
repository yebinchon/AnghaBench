; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9002_hw_setup_calibration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9002_hw_setup_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_cal_list = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ath_common = type { i32 }

@AR_PHY_TIMING_CTRL4_IQCAL_LOG_COUNT_MAX = common dso_local global i32 0, align 4
@AR_PHY_CALMODE = common dso_local global i32 0, align 4
@AR_PHY_CALMODE_IQ = common dso_local global i32 0, align 4
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"starting IQ Mismatch Calibration\0A\00", align 1
@AR_PHY_CALMODE_ADC_GAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"starting ADC Gain Calibration\0A\00", align 1
@AR_PHY_CALMODE_ADC_DC_PER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"starting ADC DC Calibration\0A\00", align 1
@AR_PHY_TIMING_CTRL4_DO_CAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_cal_list*)* @ar9002_hw_setup_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9002_hw_setup_calibration(%struct.ath_hw* %0, %struct.ath9k_cal_list* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_cal_list*, align 8
  %5 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_cal_list* %1, %struct.ath9k_cal_list** %4, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %6)
  store %struct.ath_common* %7, %struct.ath_common** %5, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %9 = call i32 @AR_PHY_TIMING_CTRL4(i32 0)
  %10 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCAL_LOG_COUNT_MAX, align 4
  %11 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %4, align 8
  %12 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %8, i32 %9, i32 %10, i32 %15)
  %17 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %4, align 8
  %18 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %46 [
    i32 128, label %22
    i32 129, label %30
    i32 130, label %38
  ]

22:                                               ; preds = %2
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = load i32, i32* @AR_PHY_CALMODE, align 4
  %25 = load i32, i32* @AR_PHY_CALMODE_IQ, align 4
  %26 = call i32 @REG_WRITE(%struct.ath_hw* %23, i32 %24, i32 %25)
  %27 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %28 = load i32, i32* @CALIBRATE, align 4
  %29 = call i32 @ath_dbg(%struct.ath_common* %27, i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %46

30:                                               ; preds = %2
  %31 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %32 = load i32, i32* @AR_PHY_CALMODE, align 4
  %33 = load i32, i32* @AR_PHY_CALMODE_ADC_GAIN, align 4
  %34 = call i32 @REG_WRITE(%struct.ath_hw* %31, i32 %32, i32 %33)
  %35 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %36 = load i32, i32* @CALIBRATE, align 4
  %37 = call i32 @ath_dbg(%struct.ath_common* %35, i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %46

38:                                               ; preds = %2
  %39 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %40 = load i32, i32* @AR_PHY_CALMODE, align 4
  %41 = load i32, i32* @AR_PHY_CALMODE_ADC_DC_PER, align 4
  %42 = call i32 @REG_WRITE(%struct.ath_hw* %39, i32 %40, i32 %41)
  %43 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %44 = load i32, i32* @CALIBRATE, align 4
  %45 = call i32 @ath_dbg(%struct.ath_common* %43, i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %2, %38, %30, %22
  %47 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %48 = call i32 @AR_PHY_TIMING_CTRL4(i32 0)
  %49 = load i32, i32* @AR_PHY_TIMING_CTRL4_DO_CAL, align 4
  %50 = call i32 @REG_SET_BIT(%struct.ath_hw* %47, i32 %48, i32 %49)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @AR_PHY_TIMING_CTRL4(i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
