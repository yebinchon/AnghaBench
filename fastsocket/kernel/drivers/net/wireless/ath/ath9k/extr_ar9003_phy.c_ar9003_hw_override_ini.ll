; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_override_ini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_override_ini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_DIAG_SW = common dso_local global i32 0, align 4
@AR_DIAG_RX_DIS = common dso_local global i32 0, align 4
@AR_DIAG_RX_ABORT = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2 = common dso_local global i32 0, align 4
@AR_ADHOC_MCAST_KEYID_ENABLE = common dso_local global i32 0, align 4
@AR_AGG_WEP_ENABLE_FIX = common dso_local global i32 0, align 4
@AR_AGG_WEP_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_CCK_DETECT = common dso_local global i32 0, align 4
@AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_hw_override_ini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_override_ini(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = load i32, i32* @AR_DIAG_SW, align 4
  %6 = load i32, i32* @AR_DIAG_RX_DIS, align 4
  %7 = load i32, i32* @AR_DIAG_RX_ABORT, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @REG_SET_BIT(%struct.ath_hw* %4, i32 %5, i32 %8)
  %10 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %11 = load i32, i32* @AR_PCU_MISC_MODE2, align 4
  %12 = call i32 @REG_READ(%struct.ath_hw* %10, i32 %11)
  %13 = load i32, i32* @AR_ADHOC_MCAST_KEYID_ENABLE, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  store i32 %15, i32* %3, align 4
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = load i32, i32* @AR_PCU_MISC_MODE2, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @AR_AGG_WEP_ENABLE_FIX, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @AR_AGG_WEP_ENABLE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @REG_WRITE(%struct.ath_hw* %16, i32 %17, i32 %22)
  %24 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %25 = load i32, i32* @AR_PHY_CCK_DETECT, align 4
  %26 = load i32, i32* @AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV, align 4
  %27 = call i32 @REG_SET_BIT(%struct.ath_hw* %24, i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
