; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_set_power_network_sleep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_set_power_network_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.ath9k_hw_capabilities }
%struct.ath9k_hw_capabilities = type { i32 }

@AR_STA_ID1 = common dso_local global i32 0, align 4
@AR_STA_ID1_PWR_SAV = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_AUTOSLEEP = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE_ON_INT = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_EN = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_HW_MSG_MASK = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE_EN = common dso_local global i32 0, align 4
@AR_WA = common dso_local global i32 0, align 4
@AR_WA_D3_L1_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_set_power_network_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_set_power_network_sleep(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath9k_hw_capabilities*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %4, i32 0, i32 1
  store %struct.ath9k_hw_capabilities* %5, %struct.ath9k_hw_capabilities** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = load i32, i32* @AR_STA_ID1, align 4
  %8 = load i32, i32* @AR_STA_ID1_PWR_SAV, align 4
  %9 = call i32 @REG_SET_BIT(%struct.ath_hw* %6, i32 %7, i32 %8)
  %10 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %11 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ATH9K_HW_CAP_AUTOSLEEP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %18 = load i32, i32* @AR_RTC_FORCE_WAKE, align 4
  %19 = load i32, i32* @AR_RTC_FORCE_WAKE_ON_INT, align 4
  %20 = call i32 @REG_WRITE(%struct.ath_hw* %17, i32 %18, i32 %19)
  br label %41

21:                                               ; preds = %1
  %22 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %23 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %27 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_EN, align 4
  %28 = load i32, i32* @AR_MCI_INTERRUPT_RX_HW_MSG_MASK, align 4
  %29 = call i32 @REG_CLR_BIT(%struct.ath_hw* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %21
  %31 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %32 = load i32, i32* @AR_RTC_FORCE_WAKE, align 4
  %33 = load i32, i32* @AR_RTC_FORCE_WAKE_EN, align 4
  %34 = call i32 @REG_CLR_BIT(%struct.ath_hw* %31, i32 %32, i32 %33)
  %35 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %36 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = call i32 @udelay(i32 30)
  br label %40

40:                                               ; preds = %38, %30
  br label %41

41:                                               ; preds = %40, %16
  %42 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %43 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %47 = load i32, i32* @AR_WA, align 4
  %48 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %49 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = call i32 @REG_WRITE(%struct.ath_hw* %46, i32 %47, i32 %53)
  br label %55

55:                                               ; preds = %45, %41
  ret void
}

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw*) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
