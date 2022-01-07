; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_hw.c_ar9280_20_hw_init_txgain_ini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_hw.c_ar9280_20_hw_init_txgain_ini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.ath_hw*, i32)* }

@EEP_MINOR_REV = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_19 = common dso_local global i64 0, align 8
@AR5416_EEP_TXGAIN_HIGH_POWER = common dso_local global i64 0, align 8
@ar9280Modes_high_power_tx_gain_9280_2 = common dso_local global i32 0, align 4
@ar9280Modes_original_tx_gain_9280_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i64)* @ar9280_20_hw_init_txgain_ini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9280_20_hw_init_txgain_ini(%struct.ath_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %6 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64 (%struct.ath_hw*, i32)*, i64 (%struct.ath_hw*, i32)** %8, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = load i32, i32* @EEP_MINOR_REV, align 4
  %12 = call i64 %9(%struct.ath_hw* %10, i32 %11)
  %13 = load i64, i64* @AR5416_EEP_MINOR_VER_19, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @AR5416_EEP_TXGAIN_HIGH_POWER, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %21 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %20, i32 0, i32 0
  %22 = load i32, i32* @ar9280Modes_high_power_tx_gain_9280_2, align 4
  %23 = call i32 @INIT_INI_ARRAY(i32* %21, i32 %22)
  br label %29

24:                                               ; preds = %15
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 0
  %27 = load i32, i32* @ar9280Modes_original_tx_gain_9280_2, align 4
  %28 = call i32 @INIT_INI_ARRAY(i32* %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %19
  br label %35

30:                                               ; preds = %2
  %31 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %32 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %31, i32 0, i32 0
  %33 = load i32, i32* @ar9280Modes_original_tx_gain_9280_2, align 4
  %34 = call i32 @INIT_INI_ARRAY(i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @INIT_INI_ARRAY(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
