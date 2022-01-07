; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_mfp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_mfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_AES_MUTE_MASK1 = common dso_local global i32 0, align 4
@AR_AES_MUTE_MASK1_FC_MGMT = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2 = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2_MGMT_CRYPTO_ENABLE = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2_NO_CRYPTO_FOR_NON_DATA_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_hw_init_mfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_init_mfp(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %3 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %4 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = load i32, i32* @AR_AES_MUTE_MASK1, align 4
  %9 = load i32, i32* @AR_AES_MUTE_MASK1_FC_MGMT, align 4
  %10 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %7, i32 %8, i32 %9, i32 51199)
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  br label %32

13:                                               ; preds = %1
  %14 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %15 = call i64 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %19 = load i32, i32* @AR_PCU_MISC_MODE2, align 4
  %20 = load i32, i32* @AR_PCU_MISC_MODE2_MGMT_CRYPTO_ENABLE, align 4
  %21 = call i32 @REG_CLR_BIT(%struct.ath_hw* %18, i32 %19, i32 %20)
  %22 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %23 = load i32, i32* @AR_PCU_MISC_MODE2, align 4
  %24 = load i32, i32* @AR_PCU_MISC_MODE2_NO_CRYPTO_FOR_NON_DATA_PKT, align 4
  %25 = call i32 @REG_SET_BIT(%struct.ath_hw* %22, i32 %23, i32 %24)
  %26 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %27 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  br label %31

28:                                               ; preds = %13
  %29 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %30 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %17
  br label %32

32:                                               ; preds = %31, %6
  ret void
}

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
