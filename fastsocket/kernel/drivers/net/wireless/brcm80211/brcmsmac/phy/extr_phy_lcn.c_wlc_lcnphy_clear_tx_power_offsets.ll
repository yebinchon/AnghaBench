; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_clear_tx_power_offsets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_clear_tx_power_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }
%struct.phytbl_info = type { i32, i32, i32, i32*, i32 }

@LCNPHY_TBL_ID_TXPWRCTL = common dso_local global i32 0, align 4
@LCNPHY_TX_PWR_CTRL_RATE_OFFSET = common dso_local global i32 0, align 4
@LCNPHY_TX_PWR_CTRL_MAC_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_lcnphy_clear_tx_power_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_clear_tx_power_offsets(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca [64 x i32], align 16
  %4 = alloca %struct.phytbl_info, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %5 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %6 = call i32 @memset(i32* %5, i32 0, i32 256)
  %7 = load i32, i32* @LCNPHY_TBL_ID_TXPWRCTL, align 4
  %8 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 4
  store i32 %7, i32* %8, align 8
  %9 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 0
  store i32 32, i32* %9, align 8
  %10 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %11 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 3
  store i32* %10, i32** %11, align 8
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %13 = call i32 @wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(%struct.brcms_phy* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 1
  store i32 30, i32* %16, align 4
  %17 = load i32, i32* @LCNPHY_TX_PWR_CTRL_RATE_OFFSET, align 4
  %18 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %20 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %19, %struct.phytbl_info* %4)
  br label %21

21:                                               ; preds = %15, %1
  %22 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 1
  store i32 64, i32* %22, align 4
  %23 = load i32, i32* @LCNPHY_TX_PWR_CTRL_MAC_OFFSET, align 4
  %24 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %26 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %25, %struct.phytbl_info* %4)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_write_table(%struct.brcms_phy*, %struct.phytbl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
