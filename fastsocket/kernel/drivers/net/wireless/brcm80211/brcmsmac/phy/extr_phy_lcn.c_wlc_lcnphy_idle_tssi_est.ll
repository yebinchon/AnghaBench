; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_idle_tssi_est.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_idle_tssi_est.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.lcnphy_txgains = type { i32 }
%struct.brcms_phy = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@RADIO_2064_REG112 = common dso_local global i32 0, align 4
@RADIO_2064_REG007 = common dso_local global i32 0, align 4
@RADIO_2064_REG0FF = common dso_local global i32 0, align 4
@RADIO_2064_REG11F = common dso_local global i32 0, align 4
@maccontrol = common dso_local global i32 0, align 4
@MCTL_EN_MAC = common dso_local global i32 0, align 4
@LCNPHY_TX_PWR_CTRL_OFF = common dso_local global i32 0, align 4
@OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy_pub*)* @wlc_lcnphy_idle_tssi_est to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_idle_tssi_est(%struct.brcms_phy_pub* %0) #0 {
  %2 = alloca %struct.brcms_phy_pub*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.lcnphy_txgains, align 4
  %6 = alloca %struct.brcms_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %2, align 8
  %17 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %2, align 8
  %18 = bitcast %struct.brcms_phy_pub* %17 to %struct.brcms_phy*
  store %struct.brcms_phy* %18, %struct.brcms_phy** %6, align 8
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %20 = call i32 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy* %19)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %22 = load i32, i32* @RADIO_2064_REG112, align 4
  %23 = call i32 @read_radio_reg(%struct.brcms_phy* %21, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %25 = load i32, i32* @RADIO_2064_REG007, align 4
  %26 = call i32 @read_radio_reg(%struct.brcms_phy* %24, i32 %25)
  %27 = and i32 %26, 1
  store i32 %27, i32* %14, align 4
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %29 = load i32, i32* @RADIO_2064_REG0FF, align 4
  %30 = call i32 @read_radio_reg(%struct.brcms_phy* %28, i32 %29)
  %31 = and i32 %30, 16
  store i32 %31, i32* %15, align 4
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %33 = load i32, i32* @RADIO_2064_REG11F, align 4
  %34 = call i32 @read_radio_reg(%struct.brcms_phy* %32, i32 %33)
  %35 = and i32 %34, 4
  store i32 %35, i32* %16, align 4
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %37 = call i32 @read_phy_reg(%struct.brcms_phy* %36, i32 1195)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %39 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @maccontrol, align 4
  %42 = call i32 @D11REGOFFS(i32 %41)
  %43 = call i32 @bcma_read32(i32 %40, i32 %42)
  %44 = load i32, i32* @MCTL_EN_MAC, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 0, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %1
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %52 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @wlapi_suspend_mac_and_wait(i32 %55)
  br label %57

57:                                               ; preds = %50, %1
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %59 = load i32, i32* @LCNPHY_TX_PWR_CTRL_OFF, align 4
  %60 = call i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy* %58, i32 %59)
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %62 = call i32 @wlc_lcnphy_tx_gain_override_enabled(%struct.brcms_phy* %61)
  store i32 %62, i32* %4, align 4
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %64 = call i32 @wlc_lcnphy_get_tx_gain(%struct.brcms_phy* %63, %struct.lcnphy_txgains* %5)
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %66 = call i32 @wlc_lcnphy_enable_tx_gain_override(%struct.brcms_phy* %65)
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %68 = call i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy* %67, i32 127)
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %70 = load i32, i32* @RADIO_2064_REG112, align 4
  %71 = call i32 @write_radio_reg(%struct.brcms_phy* %69, i32 %70, i32 6)
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %73 = load i32, i32* @RADIO_2064_REG007, align 4
  %74 = call i32 @mod_radio_reg(%struct.brcms_phy* %72, i32 %73, i32 1, i32 1)
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %76 = load i32, i32* @RADIO_2064_REG0FF, align 4
  %77 = call i32 @mod_radio_reg(%struct.brcms_phy* %75, i32 %76, i32 16, i32 16)
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %79 = load i32, i32* @RADIO_2064_REG11F, align 4
  %80 = call i32 @mod_radio_reg(%struct.brcms_phy* %78, i32 %79, i32 4, i32 4)
  %81 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %82 = call i32 @wlc_lcnphy_tssi_setup(%struct.brcms_phy* %81)
  %83 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %84 = load i32, i32* @OFF, align 4
  %85 = call i32 @wlc_phy_do_dummy_tx(%struct.brcms_phy* %83, i32 1, i32 %84)
  %86 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %87 = call i32 @read_phy_reg(%struct.brcms_phy* %86, i32 1195)
  %88 = and i32 %87, 511
  %89 = ashr i32 %88, 0
  store i32 %89, i32* %7, align 4
  %90 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %91 = call i32 @read_phy_reg(%struct.brcms_phy* %90, i32 1598)
  %92 = and i32 %91, 511
  %93 = ashr i32 %92, 0
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp sge i32 %94, 256
  br i1 %95, label %96, label %99

96:                                               ; preds = %57
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %97, 256
  store i32 %98, i32* %9, align 4
  br label %102

99:                                               ; preds = %57
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 256
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp sge i32 %104, 256
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i32, i32* %10, align 4
  %108 = sub nsw i32 %107, 256
  store i32 %108, i32* %11, align 4
  br label %112

109:                                              ; preds = %102
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 256
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %109, %106
  %113 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %114 = load i32, i32* %11, align 4
  %115 = shl i32 %114, 0
  %116 = call i32 @mod_phy_reg(%struct.brcms_phy* %113, i32 1190, i32 511, i32 %115)
  %117 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %118 = call i32 @mod_phy_reg(%struct.brcms_phy* %117, i32 1100, i32 4096, i32 0)
  %119 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @wlc_lcnphy_set_tx_gain_override(%struct.brcms_phy* %119, i32 %120)
  %122 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %123 = call i32 @wlc_lcnphy_set_tx_gain(%struct.brcms_phy* %122, %struct.lcnphy_txgains* %5)
  %124 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy* %124, i32 %125)
  %127 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %128 = load i32, i32* @RADIO_2064_REG112, align 4
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @write_radio_reg(%struct.brcms_phy* %127, i32 %128, i32 %129)
  %131 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %132 = load i32, i32* @RADIO_2064_REG007, align 4
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @mod_radio_reg(%struct.brcms_phy* %131, i32 %132, i32 1, i32 %133)
  %135 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %136 = load i32, i32* @RADIO_2064_REG0FF, align 4
  %137 = load i32, i32* %15, align 4
  %138 = call i32 @mod_radio_reg(%struct.brcms_phy* %135, i32 %136, i32 16, i32 %137)
  %139 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %140 = load i32, i32* @RADIO_2064_REG11F, align 4
  %141 = load i32, i32* %16, align 4
  %142 = call i32 @mod_radio_reg(%struct.brcms_phy* %139, i32 %140, i32 4, i32 %141)
  %143 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %144 = load i32, i32* @RADIO_2064_REG112, align 4
  %145 = call i32 @mod_radio_reg(%struct.brcms_phy* %143, i32 %144, i32 128, i32 128)
  %146 = load i32, i32* %3, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %112
  %149 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %150 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %149, i32 0, i32 0
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @wlapi_enable_mac(i32 %153)
  br label %155

155:                                              ; preds = %148, %112
  ret void
}

declare dso_local i32 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy*) #1

declare dso_local i32 @read_radio_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @wlapi_suspend_mac_and_wait(i32) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_tx_gain_override_enabled(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_get_tx_gain(%struct.brcms_phy*, %struct.lcnphy_txgains*) #1

declare dso_local i32 @wlc_lcnphy_enable_tx_gain_override(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy*, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_tssi_setup(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_do_dummy_tx(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_set_tx_gain_override(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_set_tx_gain(%struct.brcms_phy*, %struct.lcnphy_txgains*) #1

declare dso_local i32 @wlapi_enable_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
