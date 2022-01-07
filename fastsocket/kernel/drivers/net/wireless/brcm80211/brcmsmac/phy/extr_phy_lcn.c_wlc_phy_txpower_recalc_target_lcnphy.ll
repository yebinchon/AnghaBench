; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_phy_txpower_recalc_target_lcnphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_phy_txpower_recalc_target_lcnphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

@LCNPHY_PERICAL_TEMPBASED_TXPWRCTRL = common dso_local global i32 0, align 4
@LCNPHY_TX_PWR_CTRL_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_txpower_recalc_target_lcnphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %4 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %5 = call i64 @wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(%struct.brcms_phy* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %9 = load i32, i32* @LCNPHY_PERICAL_TEMPBASED_TXPWRCTRL, align 4
  %10 = call i32 @wlc_lcnphy_calib_modes(%struct.brcms_phy* %8, i32 %9)
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %13 = call i64 @wlc_lcnphy_tssi_based_pwr_ctrl_enabled(%struct.brcms_phy* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %17 = call i32 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy* %16)
  store i32 %17, i32* %3, align 4
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %19 = load i32, i32* @LCNPHY_TX_PWR_CTRL_OFF, align 4
  %20 = call i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy* %18, i32 %19)
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %22 = call i32 @wlc_lcnphy_txpower_recalc_target(%struct.brcms_phy* %21)
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy* %23, i32 %24)
  br label %26

26:                                               ; preds = %15, %11
  br label %27

27:                                               ; preds = %26, %7
  ret void
}

declare dso_local i64 @wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_calib_modes(%struct.brcms_phy*, i32) #1

declare dso_local i64 @wlc_lcnphy_tssi_based_pwr_ctrl_enabled(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_txpower_recalc_target(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
