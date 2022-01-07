; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_phy_init_lcnphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_phy_init_lcnphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i32, i32, i32, i64 }
%struct.brcms_phy_pub = type { i32 }

@AFE_CLK_INIT_MODE_TXRX2X = common dso_local global i32 0, align 4
@BFL_FEM = common dso_local global i32 0, align 4
@FIXED_TXPWR = common dso_local global i32 0, align 4
@LCNPHY_TX_PWR_CTRL_HW = common dso_local global i32 0, align 4
@LCNPHY_NOISE_SAMPLES_DEFAULT = common dso_local global i32 0, align 4
@PHY_PERICAL_PHYINIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_init_lcnphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %6 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %7, align 8
  store %struct.brcms_phy_lcnphy* %8, %struct.brcms_phy_lcnphy** %4, align 8
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %10 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @CHSPEC_IS40(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %4, align 8
  %14 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %4, align 8
  %16 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %4, align 8
  %19 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %21 = call i32 @or_phy_reg(%struct.brcms_phy* %20, i32 1098, i32 128)
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %23 = call i32 @and_phy_reg(%struct.brcms_phy* %22, i32 1098, i32 127)
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %25 = load i32, i32* @AFE_CLK_INIT_MODE_TXRX2X, align 4
  %26 = call i32 @wlc_lcnphy_afe_clk_init(%struct.brcms_phy* %24, i32 %25)
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %28 = call i32 @write_phy_reg(%struct.brcms_phy* %27, i32 1546, i32 160)
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %30 = call i32 @write_phy_reg(%struct.brcms_phy* %29, i32 1130, i32 25)
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %32 = call i32 @wlc_lcnphy_baseband_init(%struct.brcms_phy* %31)
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %34 = call i32 @wlc_lcnphy_radio_init(%struct.brcms_phy* %33)
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %36 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @CHSPEC_IS2G(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %1
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %42 = bitcast %struct.brcms_phy* %41 to %struct.brcms_phy_pub*
  %43 = call i32 @wlc_lcnphy_tx_pwr_ctrl_init(%struct.brcms_phy_pub* %42)
  br label %44

44:                                               ; preds = %40, %1
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %46 = bitcast %struct.brcms_phy* %45 to %struct.brcms_phy_pub*
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %48 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @wlc_phy_chanspec_set(%struct.brcms_phy_pub* %46, i32 %49)
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %52 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @si_pmu_regcontrol(i32 %55, i32 0, i32 15, i32 9)
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %58 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @si_pmu_chipcontrol(i32 %61, i32 0, i32 -1, i32 63823325)
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %64 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @BFL_FEM, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %44
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %73 = call i64 @wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(%struct.brcms_phy* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %77 = load i32, i32* @FIXED_TXPWR, align 4
  %78 = call i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %71, %44
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %81 = call i32 @wlc_lcnphy_agc_temp_init(%struct.brcms_phy* %80)
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %83 = call i32 @wlc_lcnphy_temp_adj(%struct.brcms_phy* %82)
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %85 = call i32 @mod_phy_reg(%struct.brcms_phy* %84, i32 1096, i32 16384, i32 16384)
  %86 = call i32 @udelay(i32 100)
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %88 = call i32 @mod_phy_reg(%struct.brcms_phy* %87, i32 1096, i32 16384, i32 0)
  %89 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %90 = load i32, i32* @LCNPHY_TX_PWR_CTRL_HW, align 4
  %91 = call i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy* %89, i32 %90)
  %92 = load i32, i32* @LCNPHY_NOISE_SAMPLES_DEFAULT, align 4
  %93 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %4, align 8
  %94 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %96 = load i32, i32* @PHY_PERICAL_PHYINIT, align 4
  %97 = call i32 @wlc_lcnphy_calib_modes(%struct.brcms_phy* %95, i32 %96)
  ret void
}

declare dso_local i32 @CHSPEC_IS40(i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @and_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_afe_clk_init(%struct.brcms_phy*, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_baseband_init(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_radio_init(%struct.brcms_phy*) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @wlc_lcnphy_tx_pwr_ctrl_init(%struct.brcms_phy_pub*) #1

declare dso_local i32 @wlc_phy_chanspec_set(%struct.brcms_phy_pub*, i32) #1

declare dso_local i32 @si_pmu_regcontrol(i32, i32, i32, i32) #1

declare dso_local i32 @si_pmu_chipcontrol(i32, i32, i32, i32) #1

declare dso_local i64 @wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_agc_temp_init(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_temp_adj(%struct.brcms_phy*) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_calib_modes(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
