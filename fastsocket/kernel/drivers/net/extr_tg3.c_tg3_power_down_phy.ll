; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_power_down_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_power_down_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@TG3_PHYFLG_KEEP_LINK_ON_PWRDN = common dso_local global i32 0, align 4
@TG3_PHYFLG_PHY_SERDES = common dso_local global i32 0, align 4
@ASIC_REV_5704 = common dso_local global i64 0, align 8
@SG_DIG_CTRL = common dso_local global i32 0, align 4
@MAC_SERDES_CFG = common dso_local global i32 0, align 4
@SG_DIG_USING_HW_AUTONEG = common dso_local global i32 0, align 4
@SG_DIG_SOFT_RESET = common dso_local global i32 0, align 4
@ASIC_REV_5906 = common dso_local global i64 0, align 8
@GRC_MISC_CFG = common dso_local global i32 0, align 4
@GRC_MISC_CFG_EPHY_IDDQ = common dso_local global i32 0, align 4
@TG3_PHYFLG_IS_FET = common dso_local global i32 0, align 4
@MII_TG3_FET_TEST = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@MII_TG3_FET_SHADOW_EN = common dso_local global i32 0, align 4
@MII_TG3_FET_SHDW_AUXMODE4 = common dso_local global i32 0, align 4
@MII_TG3_FET_SHDW_AUXMODE4_SBPD = common dso_local global i32 0, align 4
@MII_TG3_EXT_CTRL = common dso_local global i32 0, align 4
@MII_TG3_EXT_CTRL_FORCE_LED_OFF = common dso_local global i32 0, align 4
@MII_TG3_AUXCTL_PCTL_100TX_LPWR = common dso_local global i32 0, align 4
@MII_TG3_AUXCTL_PCTL_SPR_ISOLATE = common dso_local global i32 0, align 4
@MII_TG3_AUXCTL_PCTL_VREG_11V = common dso_local global i32 0, align 4
@MII_TG3_AUXCTL_SHDWSEL_PWRCTL = common dso_local global i32 0, align 4
@CHIPREV_5784_AX = common dso_local global i64 0, align 8
@CHIPREV_5761_AX = common dso_local global i64 0, align 8
@TG3_CPMU_LSPD_1000MB_CLK = common dso_local global i32 0, align 4
@CPMU_LSPD_1000MB_MACCLK_MASK = common dso_local global i32 0, align 4
@CPMU_LSPD_1000MB_MACCLK_12_5 = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i32)* @tg3_power_down_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_power_down_phy(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.tg3*, %struct.tg3** %3, align 8
  %11 = getelementptr inbounds %struct.tg3, %struct.tg3* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TG3_PHYFLG_KEEP_LINK_ON_PWRDN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %166

17:                                               ; preds = %2
  %18 = load %struct.tg3*, %struct.tg3** %3, align 8
  %19 = getelementptr inbounds %struct.tg3, %struct.tg3* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TG3_PHYFLG_PHY_SERDES, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %17
  %25 = load %struct.tg3*, %struct.tg3** %3, align 8
  %26 = call i64 @tg3_asic_rev(%struct.tg3* %25)
  %27 = load i64, i64* @ASIC_REV_5704, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load i32, i32* @SG_DIG_CTRL, align 4
  %31 = call i32 @tr32(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @MAC_SERDES_CFG, align 4
  %33 = call i32 @tr32(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @SG_DIG_USING_HW_AUTONEG, align 4
  %35 = load i32, i32* @SG_DIG_SOFT_RESET, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @SG_DIG_CTRL, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @tw32(i32 %39, i32 %40)
  %42 = load i32, i32* @MAC_SERDES_CFG, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, 32768
  %45 = call i32 @tw32(i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %29, %24
  br label %166

47:                                               ; preds = %17
  %48 = load %struct.tg3*, %struct.tg3** %3, align 8
  %49 = call i64 @tg3_asic_rev(%struct.tg3* %48)
  %50 = load i64, i64* @ASIC_REV_5906, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.tg3*, %struct.tg3** %3, align 8
  %54 = call i32 @tg3_bmcr_reset(%struct.tg3* %53)
  %55 = load i32, i32* @GRC_MISC_CFG, align 4
  %56 = call i32 @tr32(i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @GRC_MISC_CFG, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @GRC_MISC_CFG_EPHY_IDDQ, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @tw32_f(i32 %57, i32 %60)
  %62 = call i32 @udelay(i32 40)
  br label %166

63:                                               ; preds = %47
  %64 = load %struct.tg3*, %struct.tg3** %3, align 8
  %65 = getelementptr inbounds %struct.tg3, %struct.tg3* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @TG3_PHYFLG_IS_FET, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %109

70:                                               ; preds = %63
  %71 = load %struct.tg3*, %struct.tg3** %3, align 8
  %72 = load i32, i32* @MII_TG3_FET_TEST, align 4
  %73 = call i32 @tg3_readphy(%struct.tg3* %71, i32 %72, i32* %8)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %108, label %75

75:                                               ; preds = %70
  %76 = load %struct.tg3*, %struct.tg3** %3, align 8
  %77 = load i32, i32* @MII_ADVERTISE, align 4
  %78 = call i32 @tg3_writephy(%struct.tg3* %76, i32 %77, i32 0)
  %79 = load %struct.tg3*, %struct.tg3** %3, align 8
  %80 = load i32, i32* @MII_BMCR, align 4
  %81 = load i32, i32* @BMCR_ANENABLE, align 4
  %82 = load i32, i32* @BMCR_ANRESTART, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @tg3_writephy(%struct.tg3* %79, i32 %80, i32 %83)
  %85 = load %struct.tg3*, %struct.tg3** %3, align 8
  %86 = load i32, i32* @MII_TG3_FET_TEST, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @MII_TG3_FET_SHADOW_EN, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @tg3_writephy(%struct.tg3* %85, i32 %86, i32 %89)
  %91 = load %struct.tg3*, %struct.tg3** %3, align 8
  %92 = load i32, i32* @MII_TG3_FET_SHDW_AUXMODE4, align 4
  %93 = call i32 @tg3_readphy(%struct.tg3* %91, i32 %92, i32* %9)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %75
  %96 = load i32, i32* @MII_TG3_FET_SHDW_AUXMODE4_SBPD, align 4
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  %99 = load %struct.tg3*, %struct.tg3** %3, align 8
  %100 = load i32, i32* @MII_TG3_FET_SHDW_AUXMODE4, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @tg3_writephy(%struct.tg3* %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %95, %75
  %104 = load %struct.tg3*, %struct.tg3** %3, align 8
  %105 = load i32, i32* @MII_TG3_FET_TEST, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @tg3_writephy(%struct.tg3* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %70
  br label %166

109:                                              ; preds = %63
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %109
  %113 = load %struct.tg3*, %struct.tg3** %3, align 8
  %114 = call i32 @tg3_phy_led_bug(%struct.tg3* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %112
  %117 = load %struct.tg3*, %struct.tg3** %3, align 8
  %118 = load i32, i32* @MII_TG3_EXT_CTRL, align 4
  %119 = load i32, i32* @MII_TG3_EXT_CTRL_FORCE_LED_OFF, align 4
  %120 = call i32 @tg3_writephy(%struct.tg3* %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %116, %112
  %122 = load i32, i32* @MII_TG3_AUXCTL_PCTL_100TX_LPWR, align 4
  %123 = load i32, i32* @MII_TG3_AUXCTL_PCTL_SPR_ISOLATE, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @MII_TG3_AUXCTL_PCTL_VREG_11V, align 4
  %126 = or i32 %124, %125
  store i32 %126, i32* %5, align 4
  %127 = load %struct.tg3*, %struct.tg3** %3, align 8
  %128 = load i32, i32* @MII_TG3_AUXCTL_SHDWSEL_PWRCTL, align 4
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @tg3_phy_auxctl_write(%struct.tg3* %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %121, %109
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132
  %134 = load %struct.tg3*, %struct.tg3** %3, align 8
  %135 = call i64 @tg3_phy_power_bug(%struct.tg3* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  br label %166

138:                                              ; preds = %133
  %139 = load %struct.tg3*, %struct.tg3** %3, align 8
  %140 = call i64 @tg3_chip_rev(%struct.tg3* %139)
  %141 = load i64, i64* @CHIPREV_5784_AX, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = load %struct.tg3*, %struct.tg3** %3, align 8
  %145 = call i64 @tg3_chip_rev(%struct.tg3* %144)
  %146 = load i64, i64* @CHIPREV_5761_AX, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %143, %138
  %149 = load i32, i32* @TG3_CPMU_LSPD_1000MB_CLK, align 4
  %150 = call i32 @tr32(i32 %149)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* @CPMU_LSPD_1000MB_MACCLK_MASK, align 4
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %5, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* @CPMU_LSPD_1000MB_MACCLK_12_5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* @TG3_CPMU_LSPD_1000MB_CLK, align 4
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @tw32_f(i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %148, %143
  %162 = load %struct.tg3*, %struct.tg3** %3, align 8
  %163 = load i32, i32* @MII_BMCR, align 4
  %164 = load i32, i32* @BMCR_PDOWN, align 4
  %165 = call i32 @tg3_writephy(%struct.tg3* %162, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %161, %137, %108, %52, %46, %16
  ret void
}

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i32 @tg3_bmcr_reset(%struct.tg3*) #1

declare dso_local i32 @tw32_f(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tg3_readphy(%struct.tg3*, i32, i32*) #1

declare dso_local i32 @tg3_writephy(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_phy_led_bug(%struct.tg3*) #1

declare dso_local i32 @tg3_phy_auxctl_write(%struct.tg3*, i32, i32) #1

declare dso_local i64 @tg3_phy_power_bug(%struct.tg3*) #1

declare dso_local i64 @tg3_chip_rev(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
