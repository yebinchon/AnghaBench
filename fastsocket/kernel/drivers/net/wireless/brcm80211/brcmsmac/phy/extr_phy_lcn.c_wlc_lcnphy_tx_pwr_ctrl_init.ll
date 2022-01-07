; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tx_pwr_ctrl_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tx_pwr_ctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.lcnphy_txgains = type { i32, i32, i32, i64 }
%struct.phytbl_info = type { i32, i32*, i32, i64, i32 }
%struct.brcms_phy = type { i32*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@maccontrol = common dso_local global i32 0, align 4
@MCTL_EN_MAC = common dso_local global i32 0, align 4
@TEMPSENSE = common dso_local global i32 0, align 4
@LCNPHY_TBL_ID_TXPWRCTL = common dso_local global i32 0, align 4
@LCN_TARGET_PWR = common dso_local global i32 0, align 4
@LCNPHY_TX_PWR_CTRL_HW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy_pub*)* @wlc_lcnphy_tx_pwr_ctrl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_tx_pwr_ctrl_init(%struct.brcms_phy_pub* %0) #0 {
  %2 = alloca %struct.brcms_phy_pub*, align 8
  %3 = alloca %struct.lcnphy_txgains, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.phytbl_info, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.brcms_phy*, align 8
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %2, align 8
  %15 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %2, align 8
  %16 = bitcast %struct.brcms_phy_pub* %15 to %struct.brcms_phy*
  store %struct.brcms_phy* %16, %struct.brcms_phy** %14, align 8
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %14, align 8
  %18 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @maccontrol, align 4
  %21 = call i32 @D11REGOFFS(i32 %20)
  %22 = call i32 @bcma_read32(i32 %19, i32 %21)
  %23 = load i32, i32* @MCTL_EN_MAC, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 0, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %1
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %14, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @wlapi_suspend_mac_and_wait(i32 %34)
  br label %36

36:                                               ; preds = %29, %1
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %14, align 8
  %38 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %36
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %14, align 8
  %43 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @CHSPEC_IS2G(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 0
  store i32 4, i32* %48, align 8
  %49 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 1
  store i32 12, i32* %49, align 4
  %50 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 2
  store i32 12, i32* %50, align 8
  %51 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 3
  store i64 0, i64* %51, align 8
  store i32 150, i32* %4, align 4
  br label %57

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 0
  store i32 7, i32* %53, align 8
  %54 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 1
  store i32 15, i32* %54, align 4
  %55 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 2
  store i32 14, i32* %55, align 8
  %56 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 3
  store i64 0, i64* %56, align 8
  store i32 150, i32* %4, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %14, align 8
  %59 = call i32 @wlc_lcnphy_set_tx_gain(%struct.brcms_phy* %58, %struct.lcnphy_txgains* %3)
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %14, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @wlc_lcnphy_set_bbmult(%struct.brcms_phy* %60, i32 %61)
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %14, align 8
  %64 = load i32, i32* @TEMPSENSE, align 4
  %65 = call i32 @wlc_lcnphy_vbat_temp_sense_setup(%struct.brcms_phy* %63, i32 %64)
  br label %137

66:                                               ; preds = %36
  %67 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %2, align 8
  %68 = call i32 @wlc_lcnphy_idle_tssi_est(%struct.brcms_phy_pub* %67)
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %14, align 8
  %70 = call i32 @wlc_lcnphy_clear_tx_power_offsets(%struct.brcms_phy* %69)
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %14, align 8
  %72 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %7, align 4
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %14, align 8
  %77 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %8, align 4
  %81 = load %struct.brcms_phy*, %struct.brcms_phy** %14, align 8
  %82 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @wlc_lcnphy_tssi2dbm(i32 10, i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @wlc_lcnphy_tssi2dbm(i32 125, i32 %90, i32 %91, i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* @LCNPHY_TBL_ID_TXPWRCTL, align 4
  %95 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 4
  store i32 %94, i32* %95, align 8
  %96 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 0
  store i32 32, i32* %96, align 8
  %97 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 1
  store i32* %10, i32** %97, align 8
  %98 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 2
  store i32 1, i32* %98, align 8
  %99 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 3
  store i64 0, i64* %99, align 8
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %123, %66
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 128
  br i1 %102, label %103, label %126

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @wlc_lcnphy_tssi2dbm(i32 %104, i32 %105, i32 %106, i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = load i32, i32* %12, align 4
  br label %116

114:                                              ; preds = %103
  %115 = load i32, i32* %10, align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ]
  store i32 %117, i32* %10, align 4
  %118 = load %struct.brcms_phy*, %struct.brcms_phy** %14, align 8
  %119 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %118, %struct.phytbl_info* %5)
  %120 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %120, align 8
  br label %123

123:                                              ; preds = %116
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %100

126:                                              ; preds = %100
  %127 = load %struct.brcms_phy*, %struct.brcms_phy** %14, align 8
  %128 = call i32 @mod_phy_reg(%struct.brcms_phy* %127, i32 1040, i32 128, i32 0)
  %129 = load %struct.brcms_phy*, %struct.brcms_phy** %14, align 8
  %130 = call i32 @write_phy_reg(%struct.brcms_phy* %129, i32 1192, i32 10)
  %131 = load %struct.brcms_phy*, %struct.brcms_phy** %14, align 8
  %132 = load i32, i32* @LCN_TARGET_PWR, align 4
  %133 = call i32 @wlc_lcnphy_set_target_tx_pwr(%struct.brcms_phy* %131, i32 %132)
  %134 = load %struct.brcms_phy*, %struct.brcms_phy** %14, align 8
  %135 = load i32, i32* @LCNPHY_TX_PWR_CTRL_HW, align 4
  %136 = call i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy* %134, i32 %135)
  br label %137

137:                                              ; preds = %126, %57
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %137
  %141 = load %struct.brcms_phy*, %struct.brcms_phy** %14, align 8
  %142 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %141, i32 0, i32 1
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @wlapi_enable_mac(i32 %145)
  br label %147

147:                                              ; preds = %140, %137
  ret void
}

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @wlapi_suspend_mac_and_wait(i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @wlc_lcnphy_set_tx_gain(%struct.brcms_phy*, %struct.lcnphy_txgains*) #1

declare dso_local i32 @wlc_lcnphy_set_bbmult(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_vbat_temp_sense_setup(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_idle_tssi_est(%struct.brcms_phy_pub*) #1

declare dso_local i32 @wlc_lcnphy_clear_tx_power_offsets(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_tssi2dbm(i32, i32, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_write_table(%struct.brcms_phy*, %struct.phytbl_info*) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_set_target_tx_pwr(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlapi_enable_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
