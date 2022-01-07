; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_spur_ofdm_9565.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_spur_ofdm_9565.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_PHY_PILOT_SPUR_MASK = common dso_local global i32 0, align 4
@AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_IDX_B = common dso_local global i32 0, align 4
@AR_PHY_SPUR_MASK_B = common dso_local global i32 0, align 4
@AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_IDX_A = common dso_local global i32 0, align 4
@AR_PHY_CHAN_SPUR_MASK = common dso_local global i32 0, align 4
@AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_IDX_B = common dso_local global i32 0, align 4
@AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_B = common dso_local global i32 0, align 4
@AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_B = common dso_local global i32 0, align 4
@AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9003_hw_spur_ofdm_9565 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_spur_ofdm_9565(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = shl i32 %6, 4
  %8 = sdiv i32 %7, 5
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 127
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = load i32, i32* @AR_PHY_PILOT_SPUR_MASK, align 4
  %19 = load i32, i32* @AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_IDX_B, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = load i32, i32* @AR_PHY_SPUR_MASK_B, align 4
  %24 = load i32, i32* @AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_IDX_A, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %28 = load i32, i32* @AR_PHY_CHAN_SPUR_MASK, align 4
  %29 = load i32, i32* @AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_IDX_B, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %33 = load i32, i32* @AR_PHY_PILOT_SPUR_MASK, align 4
  %34 = load i32, i32* @AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_B, align 4
  %35 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %32, i32 %33, i32 %34, i32 14)
  %36 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %37 = load i32, i32* @AR_PHY_CHAN_SPUR_MASK, align 4
  %38 = load i32, i32* @AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_B, align 4
  %39 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %36, i32 %37, i32 %38, i32 14)
  %40 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %41 = load i32, i32* @AR_PHY_SPUR_MASK_B, align 4
  %42 = load i32, i32* @AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_A, align 4
  %43 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %40, i32 %41, i32 %42, i32 160)
  ret void
}

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
