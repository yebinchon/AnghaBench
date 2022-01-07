; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_tx_pwr_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_tx_pwr_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i32, i64, i32, i32, i32 }

@LCNPHY_TX_PWR_CTRL_HW = common dso_local global i64 0, align 8
@RADIO_2064_REG11F = common dso_local global i32 0, align 4
@LCNPHY_TX_PWR_CTRL_TEMPBASED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %9 = call i64 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy* %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %11 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %12, align 8
  store %struct.brcms_phy_lcnphy* %13, %struct.brcms_phy_lcnphy** %7, align 8
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @wlc_lcnphy_set_tx_pwr_ctrl_mode(%struct.brcms_phy* %14, i64 %15)
  store i64 %16, i64* %4, align 8
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @wlc_lcnphy_set_tx_pwr_ctrl_mode(%struct.brcms_phy* %17, i64 %18)
  store i64 %19, i64* %5, align 8
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %21 = load i64, i64* @LCNPHY_TX_PWR_CTRL_HW, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  %26 = shl i32 %25, 6
  %27 = sext i32 %26 to i64
  %28 = call i32 @mod_phy_reg(%struct.brcms_phy* %20, i32 1754, i32 64, i64 %27)
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %30 = load i64, i64* @LCNPHY_TX_PWR_CTRL_HW, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 1
  %35 = shl i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = call i32 @mod_phy_reg(%struct.brcms_phy* %29, i32 1699, i32 16, i64 %36)
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %102

41:                                               ; preds = %2
  %42 = load i64, i64* @LCNPHY_TX_PWR_CTRL_HW, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %47 = call i32 @wlc_lcnphy_tx_pwr_update_npt(%struct.brcms_phy* %46)
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %49 = call i32 @wlc_lcnphy_clear_tx_power_offsets(%struct.brcms_phy* %48)
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i64, i64* @LCNPHY_TX_PWR_CTRL_HW, align 8
  %52 = load i64, i64* %4, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %50
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %56 = call i32 @wlc_lcnphy_txpower_recalc_target(%struct.brcms_phy* %55)
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %58 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %7, align 8
  %59 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @wlc_lcnphy_set_start_tx_pwr_idx(%struct.brcms_phy* %57, i32 %60)
  %62 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %63 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %7, align 8
  %64 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @wlc_lcnphy_set_tx_pwr_npt(%struct.brcms_phy* %62, i32 %65)
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %68 = load i32, i32* @RADIO_2064_REG11F, align 4
  %69 = call i32 @mod_radio_reg(%struct.brcms_phy* %67, i32 %68, i32 4, i32 0)
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %71 = call i32 @wlc_lcnphy_total_tx_frames(%struct.brcms_phy* %70)
  %72 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %7, align 8
  %73 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %75 = call i32 @wlc_lcnphy_disable_tx_gain_override(%struct.brcms_phy* %74)
  %76 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %7, align 8
  %77 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %76, i32 0, i32 0
  store i32 -1, i32* %77, align 8
  br label %81

78:                                               ; preds = %50
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %80 = call i32 @wlc_lcnphy_enable_tx_gain_override(%struct.brcms_phy* %79)
  br label %81

81:                                               ; preds = %78, %54
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @mod_phy_reg(%struct.brcms_phy* %82, i32 1188, i32 57344, i64 %83)
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* @LCNPHY_TX_PWR_CTRL_TEMPBASED, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %81
  %89 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %90 = call i64 @wlc_lcnphy_tempcompensated_txpwrctrl(%struct.brcms_phy* %89)
  store i64 %90, i64* %6, align 8
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @wlc_lcnphy_set_tx_pwr_soft_ctrl(%struct.brcms_phy* %91, i64 %92)
  %94 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %95 = call i32 @read_phy_reg(%struct.brcms_phy* %94, i32 1193)
  %96 = and i32 %95, 255
  %97 = sdiv i32 %96, 2
  %98 = sext i32 %97 to i64
  %99 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %7, align 8
  %100 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %88, %81
  br label %102

102:                                              ; preds = %101, %2
  ret void
}

declare dso_local i64 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy*) #1

declare dso_local i64 @wlc_lcnphy_set_tx_pwr_ctrl_mode(%struct.brcms_phy*, i64) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i64) #1

declare dso_local i32 @wlc_lcnphy_tx_pwr_update_npt(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_clear_tx_power_offsets(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_txpower_recalc_target(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_set_start_tx_pwr_idx(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_npt(%struct.brcms_phy*, i32) #1

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_total_tx_frames(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_disable_tx_gain_override(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_enable_tx_gain_override(%struct.brcms_phy*) #1

declare dso_local i64 @wlc_lcnphy_tempcompensated_txpwrctrl(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_soft_ctrl(%struct.brcms_phy*, i64) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
