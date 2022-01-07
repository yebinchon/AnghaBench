; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_xlna_bias_strength_apply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_xlna_bias_strength_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ar9300_eeprom }
%struct.ar9300_eeprom = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@AR_PHY_65NM_CH0_RXTX4 = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXTX4_XLNA_BIAS = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH1_RXTX4 = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH2_RXTX4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9003_hw_xlna_bias_strength_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_xlna_bias_strength_apply(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ar9300_eeprom*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.ar9300_eeprom* %9, %struct.ar9300_eeprom** %5, align 8
  %10 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %5, align 8
  %11 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 64
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %50

17:                                               ; preds = %2
  %18 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %19 = call i32 @AR_SREV_9300(%struct.ath_hw* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %50

22:                                               ; preds = %17
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call %struct.TYPE_6__* @ar9003_modal_header(%struct.ath_hw* %23, i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %29 = load i32, i32* @AR_PHY_65NM_CH0_RXTX4, align 4
  %30 = load i32, i32* @AR_PHY_65NM_RXTX4_XLNA_BIAS, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 3
  %33 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %28, i32 %29, i32 %30, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = ashr i32 %34, 2
  store i32 %35, i32* %6, align 4
  %36 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %37 = load i32, i32* @AR_PHY_65NM_CH1_RXTX4, align 4
  %38 = load i32, i32* @AR_PHY_65NM_RXTX4_XLNA_BIAS, align 4
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 3
  %41 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %36, i32 %37, i32 %38, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = ashr i32 %42, 2
  store i32 %43, i32* %6, align 4
  %44 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %45 = load i32, i32* @AR_PHY_65NM_CH2_RXTX4, align 4
  %46 = load i32, i32* @AR_PHY_65NM_RXTX4_XLNA_BIAS, align 4
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 3
  %49 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %44, i32 %45, i32 %46, i32 %48)
  br label %50

50:                                               ; preds = %22, %21, %16
  ret void
}

declare dso_local i32 @AR_SREV_9300(%struct.ath_hw*) #1

declare dso_local %struct.TYPE_6__* @ar9003_modal_header(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
