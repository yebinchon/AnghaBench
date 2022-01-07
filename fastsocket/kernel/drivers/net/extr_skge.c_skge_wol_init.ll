; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_wol_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_wol_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_port = type { i32, i32, %struct.TYPE_2__*, %struct.skge_hw* }
%struct.TYPE_2__ = type { i32 }
%struct.skge_hw = type { i64, i64, i64 }

@B0_CTST = common dso_local global i64 0, align 8
@CS_RST_CLR = common dso_local global i32 0, align 4
@GMAC_LINK_CTRL = common dso_local global i32 0, align 4
@GMLC_RST_CLR = common dso_local global i32 0, align 4
@B0_POWER_CTRL = common dso_local global i64 0, align 8
@PC_VAUX_ENA = common dso_local global i32 0, align 4
@PC_VCC_ENA = common dso_local global i32 0, align 4
@PC_VAUX_ON = common dso_local global i32 0, align 4
@PC_VCC_OFF = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_LITE = common dso_local global i64 0, align 8
@CHIP_REV_YU_LITE_A3 = common dso_local global i64 0, align 8
@B2_GP_IO = common dso_local global i64 0, align 8
@GP_DIR_9 = common dso_local global i32 0, align 4
@GP_IO_9 = common dso_local global i32 0, align 4
@GPHY_CTRL = common dso_local global i32 0, align 4
@GPC_DIS_SLEEP = common dso_local global i32 0, align 4
@GPC_HWCFG_M_3 = common dso_local global i32 0, align 4
@GPC_HWCFG_M_2 = common dso_local global i32 0, align 4
@GPC_HWCFG_M_1 = common dso_local global i32 0, align 4
@GPC_HWCFG_M_0 = common dso_local global i32 0, align 4
@GPC_ANEG_1 = common dso_local global i32 0, align 4
@GPC_RST_SET = common dso_local global i32 0, align 4
@GPC_RST_CLR = common dso_local global i32 0, align 4
@GMAC_CTRL = common dso_local global i32 0, align 4
@GMC_RST_CLR = common dso_local global i32 0, align 4
@PHY_MARV_AUNE_ADV = common dso_local global i32 0, align 4
@PHY_AN_100FULL = common dso_local global i32 0, align 4
@PHY_AN_100HALF = common dso_local global i32 0, align 4
@PHY_AN_10FULL = common dso_local global i32 0, align 4
@PHY_AN_10HALF = common dso_local global i32 0, align 4
@PHY_AN_CSMA = common dso_local global i32 0, align 4
@PHY_MARV_1000T_CTRL = common dso_local global i32 0, align 4
@PHY_MARV_CTRL = common dso_local global i32 0, align 4
@PHY_CT_RESET = common dso_local global i32 0, align 4
@PHY_CT_SPS_LSB = common dso_local global i32 0, align 4
@PHY_CT_ANE = common dso_local global i32 0, align 4
@PHY_CT_RE_CFG = common dso_local global i32 0, align 4
@PHY_CT_DUP_MD = common dso_local global i32 0, align 4
@GM_GP_CTRL = common dso_local global i32 0, align 4
@GM_GPCR_FC_TX_DIS = common dso_local global i32 0, align 4
@GM_GPCR_TX_ENA = common dso_local global i32 0, align 4
@GM_GPCR_RX_ENA = common dso_local global i32 0, align 4
@GM_GPCR_DUP_FULL = common dso_local global i32 0, align 4
@GM_GPCR_FC_RX_DIS = common dso_local global i32 0, align 4
@GM_GPCR_AU_FCT_DIS = common dso_local global i32 0, align 4
@WOL_MAC_ADDR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WOL_CTRL_STAT = common dso_local global i32 0, align 4
@WOL_CTL_CLEAR_RESULT = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@WOL_CTL_ENA_PME_ON_LINK_CHG = common dso_local global i32 0, align 4
@WOL_CTL_ENA_LINK_CHG_UNIT = common dso_local global i32 0, align 4
@WOL_CTL_DIS_PME_ON_LINK_CHG = common dso_local global i32 0, align 4
@WOL_CTL_DIS_LINK_CHG_UNIT = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@WOL_CTL_ENA_PME_ON_MAGIC_PKT = common dso_local global i32 0, align 4
@WOL_CTL_ENA_MAGIC_PKT_UNIT = common dso_local global i32 0, align 4
@WOL_CTL_DIS_PME_ON_MAGIC_PKT = common dso_local global i32 0, align 4
@WOL_CTL_DIS_MAGIC_PKT_UNIT = common dso_local global i32 0, align 4
@WOL_CTL_DIS_PME_ON_PATTERN = common dso_local global i32 0, align 4
@WOL_CTL_DIS_PATTERN_UNIT = common dso_local global i32 0, align 4
@RX_GMF_CTRL_T = common dso_local global i32 0, align 4
@GMF_RST_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_port*)* @skge_wol_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skge_wol_init(%struct.skge_port* %0) #0 {
  %2 = alloca %struct.skge_port*, align 8
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.skge_port* %0, %struct.skge_port** %2, align 8
  %7 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %8 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %7, i32 0, i32 3
  %9 = load %struct.skge_hw*, %struct.skge_hw** %8, align 8
  store %struct.skge_hw* %9, %struct.skge_hw** %3, align 8
  %10 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %11 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %14 = load i64, i64* @B0_CTST, align 8
  %15 = load i32, i32* @CS_RST_CLR, align 4
  %16 = call i32 @skge_write16(%struct.skge_hw* %13, i64 %14, i32 %15)
  %17 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @GMAC_LINK_CTRL, align 4
  %20 = call i64 @SK_REG(i32 %18, i32 %19)
  %21 = load i32, i32* @GMLC_RST_CLR, align 4
  %22 = call i32 @skge_write16(%struct.skge_hw* %17, i64 %20, i32 %21)
  %23 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %24 = load i64, i64* @B0_POWER_CTRL, align 8
  %25 = load i32, i32* @PC_VAUX_ENA, align 4
  %26 = load i32, i32* @PC_VCC_ENA, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @PC_VAUX_ON, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @PC_VCC_OFF, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @skge_write8(%struct.skge_hw* %23, i64 %24, i32 %31)
  %33 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %34 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CHIP_ID_YUKON_LITE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %1
  %39 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %40 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CHIP_REV_YU_LITE_A3, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %46 = load i64, i64* @B2_GP_IO, align 8
  %47 = call i32 @skge_read32(%struct.skge_hw* %45, i64 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @GP_DIR_9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @GP_IO_9, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %56 = load i64, i64* @B2_GP_IO, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @skge_write32(%struct.skge_hw* %55, i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %44, %38, %1
  %60 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @GPHY_CTRL, align 4
  %63 = call i64 @SK_REG(i32 %61, i32 %62)
  %64 = load i32, i32* @GPC_DIS_SLEEP, align 4
  %65 = load i32, i32* @GPC_HWCFG_M_3, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @GPC_HWCFG_M_2, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @GPC_HWCFG_M_1, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @GPC_HWCFG_M_0, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @GPC_ANEG_1, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @GPC_RST_SET, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @skge_write32(%struct.skge_hw* %60, i64 %63, i32 %76)
  %78 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @GPHY_CTRL, align 4
  %81 = call i64 @SK_REG(i32 %79, i32 %80)
  %82 = load i32, i32* @GPC_DIS_SLEEP, align 4
  %83 = load i32, i32* @GPC_HWCFG_M_3, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @GPC_HWCFG_M_2, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @GPC_HWCFG_M_1, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @GPC_HWCFG_M_0, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @GPC_ANEG_1, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @GPC_RST_CLR, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @skge_write32(%struct.skge_hw* %78, i64 %81, i32 %94)
  %96 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @GMAC_CTRL, align 4
  %99 = call i64 @SK_REG(i32 %97, i32 %98)
  %100 = load i32, i32* @GMC_RST_CLR, align 4
  %101 = call i32 @skge_write32(%struct.skge_hw* %96, i64 %99, i32 %100)
  %102 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @PHY_MARV_AUNE_ADV, align 4
  %105 = load i32, i32* @PHY_AN_100FULL, align 4
  %106 = load i32, i32* @PHY_AN_100HALF, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @PHY_AN_10FULL, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @PHY_AN_10HALF, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @PHY_AN_CSMA, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @gm_phy_write(%struct.skge_hw* %102, i32 %103, i32 %104, i32 %113)
  %115 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @PHY_MARV_1000T_CTRL, align 4
  %118 = call i32 @gm_phy_write(%struct.skge_hw* %115, i32 %116, i32 %117, i32 0)
  %119 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @PHY_MARV_CTRL, align 4
  %122 = load i32, i32* @PHY_CT_RESET, align 4
  %123 = load i32, i32* @PHY_CT_SPS_LSB, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @PHY_CT_ANE, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @PHY_CT_RE_CFG, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @PHY_CT_DUP_MD, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @gm_phy_write(%struct.skge_hw* %119, i32 %120, i32 %121, i32 %130)
  %132 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @GM_GP_CTRL, align 4
  %135 = load i32, i32* @GM_GPCR_FC_TX_DIS, align 4
  %136 = load i32, i32* @GM_GPCR_TX_ENA, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @GM_GPCR_RX_ENA, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @GM_GPCR_DUP_FULL, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @GM_GPCR_FC_RX_DIS, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @GM_GPCR_AU_FCT_DIS, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @gma_write16(%struct.skge_hw* %132, i32 %133, i32 %134, i32 %145)
  %147 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %148 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @WOL_MAC_ADDR, align 4
  %152 = call i64 @WOL_REGS(i32 %150, i32 %151)
  %153 = add nsw i64 %149, %152
  %154 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %155 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %154, i32 0, i32 2
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @ETH_ALEN, align 4
  %160 = call i32 @memcpy_toio(i64 %153, i32 %158, i32 %159)
  %161 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @WOL_CTRL_STAT, align 4
  %164 = call i64 @WOL_REGS(i32 %162, i32 %163)
  %165 = load i32, i32* @WOL_CTL_CLEAR_RESULT, align 4
  %166 = call i32 @skge_write16(%struct.skge_hw* %161, i64 %164, i32 %165)
  store i32 0, i32* %5, align 4
  %167 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %168 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @WAKE_PHY, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %59
  %174 = load i32, i32* @WOL_CTL_ENA_PME_ON_LINK_CHG, align 4
  %175 = load i32, i32* @WOL_CTL_ENA_LINK_CHG_UNIT, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* %5, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %5, align 4
  br label %185

179:                                              ; preds = %59
  %180 = load i32, i32* @WOL_CTL_DIS_PME_ON_LINK_CHG, align 4
  %181 = load i32, i32* @WOL_CTL_DIS_LINK_CHG_UNIT, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* %5, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %179, %173
  %186 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %187 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @WAKE_MAGIC, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %185
  %193 = load i32, i32* @WOL_CTL_ENA_PME_ON_MAGIC_PKT, align 4
  %194 = load i32, i32* @WOL_CTL_ENA_MAGIC_PKT_UNIT, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* %5, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %5, align 4
  br label %204

198:                                              ; preds = %185
  %199 = load i32, i32* @WOL_CTL_DIS_PME_ON_MAGIC_PKT, align 4
  %200 = load i32, i32* @WOL_CTL_DIS_MAGIC_PKT_UNIT, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* %5, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %198, %192
  %205 = load i32, i32* @WOL_CTL_DIS_PME_ON_PATTERN, align 4
  %206 = load i32, i32* @WOL_CTL_DIS_PATTERN_UNIT, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* %5, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %5, align 4
  %210 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %211 = load i32, i32* %4, align 4
  %212 = load i32, i32* @WOL_CTRL_STAT, align 4
  %213 = call i64 @WOL_REGS(i32 %211, i32 %212)
  %214 = load i32, i32* %5, align 4
  %215 = call i32 @skge_write16(%struct.skge_hw* %210, i64 %213, i32 %214)
  %216 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %219 = call i64 @SK_REG(i32 %217, i32 %218)
  %220 = load i32, i32* @GMF_RST_SET, align 4
  %221 = call i32 @skge_write8(%struct.skge_hw* %216, i64 %219, i32 %220)
  ret void
}

declare dso_local i32 @skge_write16(%struct.skge_hw*, i64, i32) #1

declare dso_local i64 @SK_REG(i32, i32) #1

declare dso_local i32 @skge_write8(%struct.skge_hw*, i64, i32) #1

declare dso_local i32 @skge_read32(%struct.skge_hw*, i64) #1

declare dso_local i32 @skge_write32(%struct.skge_hw*, i64, i32) #1

declare dso_local i32 @gm_phy_write(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @gma_write16(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @memcpy_toio(i64, i32, i32) #1

declare dso_local i64 @WOL_REGS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
