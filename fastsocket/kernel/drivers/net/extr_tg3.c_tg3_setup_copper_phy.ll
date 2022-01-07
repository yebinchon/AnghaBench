; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_setup_copper_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_setup_copper_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i8*, i8*, i64 }

@MAC_MI_MODE_AUTO_POLL = common dso_local global i32 0, align 4
@MAC_MI_MODE = common dso_local global i32 0, align 4
@MII_TG3_AUXCTL_SHDWSEL_PWRCTL = common dso_local global i32 0, align 4
@ASIC_REV_5703 = common dso_local global i64 0, align 8
@ASIC_REV_5704 = common dso_local global i64 0, align 8
@ASIC_REV_5705 = common dso_local global i64 0, align 8
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@TG3_PHY_ID_MASK = common dso_local global i32 0, align 4
@TG3_PHY_ID_BCM5401 = common dso_local global i32 0, align 4
@INIT_COMPLETE = common dso_local global i32 0, align 4
@TG3_PHY_ID_REV_MASK = common dso_local global i32 0, align 4
@TG3_PHY_REV_BCM5401_B0 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@CHIPREV_ID_5701_A0 = common dso_local global i64 0, align 8
@CHIPREV_ID_5701_B0 = common dso_local global i64 0, align 8
@MII_TG3_MISC_SHDW = common dso_local global i32 0, align 4
@MII_TG3_ISTAT = common dso_local global i32 0, align 4
@TG3_PHYFLG_USE_MI_INTERRUPT = common dso_local global i32 0, align 4
@MII_TG3_IMASK = common dso_local global i32 0, align 4
@MII_TG3_INT_LINKCHG = common dso_local global i32 0, align 4
@TG3_PHYFLG_IS_FET = common dso_local global i32 0, align 4
@ASIC_REV_5700 = common dso_local global i64 0, align 8
@ASIC_REV_5701 = common dso_local global i64 0, align 8
@LED_CTRL_MODE_PHY_1 = common dso_local global i64 0, align 8
@MII_TG3_EXT_CTRL = common dso_local global i32 0, align 4
@MII_TG3_EXT_CTRL_LNK3_LED_MODE = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i8* null, align 8
@DUPLEX_UNKNOWN = common dso_local global i8* null, align 8
@TG3_PHYFLG_MDIX_STATE = common dso_local global i32 0, align 4
@TG3_PHYFLG_CAPACITIVE_COUPLING = common dso_local global i32 0, align 4
@MII_TG3_AUXCTL_SHDWSEL_MISCTEST = common dso_local global i32 0, align 4
@MII_TG3_AUX_STAT = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@TG3_PHYFLG_KEEP_LINK_ON_PWRDN = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@MII_TG3_FET_GEN_STAT = common dso_local global i32 0, align 4
@MII_TG3_FET_GEN_STAT_MDIXSTAT = common dso_local global i32 0, align 4
@MII_TG3_EXT_STAT = common dso_local global i32 0, align 4
@MII_TG3_EXT_STAT_MDIX = common dso_local global i32 0, align 4
@TG3_PHYFLG_IS_LOW_POWER = common dso_local global i32 0, align 4
@ROBOSWITCH = common dso_local global i32 0, align 4
@MAC_MODE_PORT_MODE_MASK = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@MAC_MODE_PORT_MODE_MII = common dso_local global i32 0, align 4
@MAC_MODE_PORT_MODE_GMII = common dso_local global i32 0, align 4
@RGMII_MODE = common dso_local global i32 0, align 4
@MAC_LED_CTRL = common dso_local global i32 0, align 4
@LED_CTRL_1000MBPS_ON = common dso_local global i32 0, align 4
@LED_CTRL_100MBPS_ON = common dso_local global i32 0, align 4
@LED_CTRL_LNKLED_OVERRIDE = common dso_local global i32 0, align 4
@MAC_MODE_HALF_DUPLEX = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@MAC_MODE_LINK_POLARITY = common dso_local global i32 0, align 4
@TG3_PHY_ID_BCM5411 = common dso_local global i32 0, align 4
@CHIPREV_ID_5700_ALTIMA = common dso_local global i64 0, align 8
@MAC_MODE = common dso_local global i32 0, align 4
@USE_LINKCHG_REG = common dso_local global i32 0, align 4
@MAC_EVENT = common dso_local global i32 0, align 4
@MAC_EVENT_LNKSTATE_CHANGED = common dso_local global i32 0, align 4
@PCIX_MODE = common dso_local global i32 0, align 4
@PCI_HIGH_SPEED = common dso_local global i32 0, align 4
@MAC_STATUS = common dso_local global i32 0, align 4
@MAC_STATUS_SYNC_CHANGED = common dso_local global i32 0, align 4
@MAC_STATUS_CFG_CHANGED = common dso_local global i32 0, align 4
@NIC_SRAM_FIRMWARE_MBOX = common dso_local global i32 0, align 4
@NIC_SRAM_FIRMWARE_MBOX_MAGIC2 = common dso_local global i32 0, align 4
@CLKREQ_BUG = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL_CLKREQ_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32)* @tg3_setup_copper_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_setup_copper_phy(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i32 %1, i32* %5, align 4
  %21 = load %struct.tg3*, %struct.tg3** %4, align 8
  %22 = call i32 @tg3_clear_mac_status(%struct.tg3* %21)
  %23 = load %struct.tg3*, %struct.tg3** %4, align 8
  %24 = getelementptr inbounds %struct.tg3, %struct.tg3* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MAC_MI_MODE_AUTO_POLL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load i32, i32* @MAC_MI_MODE, align 4
  %31 = load %struct.tg3*, %struct.tg3** %4, align 8
  %32 = getelementptr inbounds %struct.tg3, %struct.tg3* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MAC_MI_MODE_AUTO_POLL, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 @tw32_f(i32 %30, i32 %36)
  %38 = call i32 @udelay(i32 80)
  br label %39

39:                                               ; preds = %29, %2
  %40 = load %struct.tg3*, %struct.tg3** %4, align 8
  %41 = load i32, i32* @MII_TG3_AUXCTL_SHDWSEL_PWRCTL, align 4
  %42 = call i32 @tg3_phy_auxctl_write(%struct.tg3* %40, i32 %41, i32 0)
  %43 = load %struct.tg3*, %struct.tg3** %4, align 8
  %44 = call i64 @tg3_asic_rev(%struct.tg3* %43)
  %45 = load i64, i64* @ASIC_REV_5703, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %57, label %47

47:                                               ; preds = %39
  %48 = load %struct.tg3*, %struct.tg3** %4, align 8
  %49 = call i64 @tg3_asic_rev(%struct.tg3* %48)
  %50 = load i64, i64* @ASIC_REV_5704, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.tg3*, %struct.tg3** %4, align 8
  %54 = call i64 @tg3_asic_rev(%struct.tg3* %53)
  %55 = load i64, i64* @ASIC_REV_5705, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %52, %47, %39
  %58 = load %struct.tg3*, %struct.tg3** %4, align 8
  %59 = getelementptr inbounds %struct.tg3, %struct.tg3* %58, i32 0, i32 7
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load %struct.tg3*, %struct.tg3** %4, align 8
  %64 = load i32, i32* @MII_BMSR, align 4
  %65 = call i64 @tg3_readphy(%struct.tg3* %63, i32 %64, i32* %7)
  %66 = load %struct.tg3*, %struct.tg3** %4, align 8
  %67 = load i32, i32* @MII_BMSR, align 4
  %68 = call i64 @tg3_readphy(%struct.tg3* %66, i32 %67, i32* %7)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @BMSR_LSTATUS, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 1, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %70, %62
  br label %77

77:                                               ; preds = %76, %57, %52
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.tg3*, %struct.tg3** %4, align 8
  %82 = call i32 @tg3_phy_reset(%struct.tg3* %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.tg3*, %struct.tg3** %4, align 8
  %85 = getelementptr inbounds %struct.tg3, %struct.tg3* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @TG3_PHY_ID_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @TG3_PHY_ID_BCM5401, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %177

91:                                               ; preds = %83
  %92 = load %struct.tg3*, %struct.tg3** %4, align 8
  %93 = load i32, i32* @MII_BMSR, align 4
  %94 = call i64 @tg3_readphy(%struct.tg3* %92, i32 %93, i32* %7)
  %95 = load %struct.tg3*, %struct.tg3** %4, align 8
  %96 = load i32, i32* @MII_BMSR, align 4
  %97 = call i64 @tg3_readphy(%struct.tg3* %95, i32 %96, i32* %7)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %91
  %100 = load %struct.tg3*, %struct.tg3** %4, align 8
  %101 = load i32, i32* @INIT_COMPLETE, align 4
  %102 = call i64 @tg3_flag(%struct.tg3* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99, %91
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %104, %99
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @BMSR_LSTATUS, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %176, label %110

110:                                              ; preds = %105
  %111 = load %struct.tg3*, %struct.tg3** %4, align 8
  %112 = call i32 @tg3_init_5401phy_dsp(%struct.tg3* %111)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %3, align 4
  br label %822

117:                                              ; preds = %110
  %118 = load %struct.tg3*, %struct.tg3** %4, align 8
  %119 = load i32, i32* @MII_BMSR, align 4
  %120 = call i64 @tg3_readphy(%struct.tg3* %118, i32 %119, i32* %7)
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %138, %117
  %122 = load i32, i32* %13, align 4
  %123 = icmp slt i32 %122, 1000
  br i1 %123, label %124, label %141

124:                                              ; preds = %121
  %125 = call i32 @udelay(i32 10)
  %126 = load %struct.tg3*, %struct.tg3** %4, align 8
  %127 = load i32, i32* @MII_BMSR, align 4
  %128 = call i64 @tg3_readphy(%struct.tg3* %126, i32 %127, i32* %7)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %124
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @BMSR_LSTATUS, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = call i32 @udelay(i32 40)
  br label %141

137:                                              ; preds = %130, %124
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %13, align 4
  br label %121

141:                                              ; preds = %135, %121
  %142 = load %struct.tg3*, %struct.tg3** %4, align 8
  %143 = getelementptr inbounds %struct.tg3, %struct.tg3* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @TG3_PHY_ID_REV_MASK, align 4
  %146 = and i32 %144, %145
  %147 = load i32, i32* @TG3_PHY_REV_BCM5401_B0, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %175

149:                                              ; preds = %141
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @BMSR_LSTATUS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %175, label %154

154:                                              ; preds = %149
  %155 = load %struct.tg3*, %struct.tg3** %4, align 8
  %156 = getelementptr inbounds %struct.tg3, %struct.tg3* %155, i32 0, i32 6
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SPEED_1000, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %175

161:                                              ; preds = %154
  %162 = load %struct.tg3*, %struct.tg3** %4, align 8
  %163 = call i32 @tg3_phy_reset(%struct.tg3* %162)
  store i32 %163, i32* %14, align 4
  %164 = load i32, i32* %14, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %161
  %167 = load %struct.tg3*, %struct.tg3** %4, align 8
  %168 = call i32 @tg3_init_5401phy_dsp(%struct.tg3* %167)
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %166, %161
  %170 = load i32, i32* %14, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = load i32, i32* %14, align 4
  store i32 %173, i32* %3, align 4
  br label %822

174:                                              ; preds = %169
  br label %175

175:                                              ; preds = %174, %154, %149, %141
  br label %176

176:                                              ; preds = %175, %105
  br label %200

177:                                              ; preds = %83
  %178 = load %struct.tg3*, %struct.tg3** %4, align 8
  %179 = call i64 @tg3_chip_rev_id(%struct.tg3* %178)
  %180 = load i64, i64* @CHIPREV_ID_5701_A0, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %187, label %182

182:                                              ; preds = %177
  %183 = load %struct.tg3*, %struct.tg3** %4, align 8
  %184 = call i64 @tg3_chip_rev_id(%struct.tg3* %183)
  %185 = load i64, i64* @CHIPREV_ID_5701_B0, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %199

187:                                              ; preds = %182, %177
  %188 = load %struct.tg3*, %struct.tg3** %4, align 8
  %189 = call i32 @tg3_writephy(%struct.tg3* %188, i32 21, i32 2677)
  %190 = load %struct.tg3*, %struct.tg3** %4, align 8
  %191 = load i32, i32* @MII_TG3_MISC_SHDW, align 4
  %192 = call i32 @tg3_writephy(%struct.tg3* %190, i32 %191, i32 35944)
  %193 = load %struct.tg3*, %struct.tg3** %4, align 8
  %194 = load i32, i32* @MII_TG3_MISC_SHDW, align 4
  %195 = call i32 @tg3_writephy(%struct.tg3* %193, i32 %194, i32 36200)
  %196 = load %struct.tg3*, %struct.tg3** %4, align 8
  %197 = load i32, i32* @MII_TG3_MISC_SHDW, align 4
  %198 = call i32 @tg3_writephy(%struct.tg3* %196, i32 %197, i32 35944)
  br label %199

199:                                              ; preds = %187, %182
  br label %200

200:                                              ; preds = %199, %176
  %201 = load %struct.tg3*, %struct.tg3** %4, align 8
  %202 = load i32, i32* @MII_TG3_ISTAT, align 4
  %203 = call i64 @tg3_readphy(%struct.tg3* %201, i32 %202, i32* %8)
  %204 = load %struct.tg3*, %struct.tg3** %4, align 8
  %205 = load i32, i32* @MII_TG3_ISTAT, align 4
  %206 = call i64 @tg3_readphy(%struct.tg3* %204, i32 %205, i32* %8)
  %207 = load %struct.tg3*, %struct.tg3** %4, align 8
  %208 = getelementptr inbounds %struct.tg3, %struct.tg3* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @TG3_PHYFLG_USE_MI_INTERRUPT, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %200
  %214 = load %struct.tg3*, %struct.tg3** %4, align 8
  %215 = load i32, i32* @MII_TG3_IMASK, align 4
  %216 = load i32, i32* @MII_TG3_INT_LINKCHG, align 4
  %217 = xor i32 %216, -1
  %218 = call i32 @tg3_writephy(%struct.tg3* %214, i32 %215, i32 %217)
  br label %231

219:                                              ; preds = %200
  %220 = load %struct.tg3*, %struct.tg3** %4, align 8
  %221 = getelementptr inbounds %struct.tg3, %struct.tg3* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @TG3_PHYFLG_IS_FET, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %219
  %227 = load %struct.tg3*, %struct.tg3** %4, align 8
  %228 = load i32, i32* @MII_TG3_IMASK, align 4
  %229 = call i32 @tg3_writephy(%struct.tg3* %227, i32 %228, i32 -1)
  br label %230

230:                                              ; preds = %226, %219
  br label %231

231:                                              ; preds = %230, %213
  %232 = load %struct.tg3*, %struct.tg3** %4, align 8
  %233 = call i64 @tg3_asic_rev(%struct.tg3* %232)
  %234 = load i64, i64* @ASIC_REV_5700, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %241, label %236

236:                                              ; preds = %231
  %237 = load %struct.tg3*, %struct.tg3** %4, align 8
  %238 = call i64 @tg3_asic_rev(%struct.tg3* %237)
  %239 = load i64, i64* @ASIC_REV_5701, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %257

241:                                              ; preds = %236, %231
  %242 = load %struct.tg3*, %struct.tg3** %4, align 8
  %243 = getelementptr inbounds %struct.tg3, %struct.tg3* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @LED_CTRL_MODE_PHY_1, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %252

247:                                              ; preds = %241
  %248 = load %struct.tg3*, %struct.tg3** %4, align 8
  %249 = load i32, i32* @MII_TG3_EXT_CTRL, align 4
  %250 = load i32, i32* @MII_TG3_EXT_CTRL_LNK3_LED_MODE, align 4
  %251 = call i32 @tg3_writephy(%struct.tg3* %248, i32 %249, i32 %250)
  br label %256

252:                                              ; preds = %241
  %253 = load %struct.tg3*, %struct.tg3** %4, align 8
  %254 = load i32, i32* @MII_TG3_EXT_CTRL, align 4
  %255 = call i32 @tg3_writephy(%struct.tg3* %253, i32 %254, i32 0)
  br label %256

256:                                              ; preds = %252, %247
  br label %257

257:                                              ; preds = %256, %236
  store i32 0, i32* %6, align 4
  %258 = load i8*, i8** @SPEED_UNKNOWN, align 8
  store i8* %258, i8** %11, align 8
  %259 = load i8*, i8** @DUPLEX_UNKNOWN, align 8
  store i8* %259, i8** %12, align 8
  %260 = load i32, i32* @TG3_PHYFLG_MDIX_STATE, align 4
  %261 = xor i32 %260, -1
  %262 = load %struct.tg3*, %struct.tg3** %4, align 8
  %263 = getelementptr inbounds %struct.tg3, %struct.tg3* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = and i32 %264, %261
  store i32 %265, i32* %263, align 8
  %266 = load %struct.tg3*, %struct.tg3** %4, align 8
  %267 = getelementptr inbounds %struct.tg3, %struct.tg3* %266, i32 0, i32 6
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 5
  store i64 0, i64* %268, align 8
  %269 = load %struct.tg3*, %struct.tg3** %4, align 8
  %270 = getelementptr inbounds %struct.tg3, %struct.tg3* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @TG3_PHYFLG_CAPACITIVE_COUPLING, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %292

275:                                              ; preds = %257
  %276 = load %struct.tg3*, %struct.tg3** %4, align 8
  %277 = load i32, i32* @MII_TG3_AUXCTL_SHDWSEL_MISCTEST, align 4
  %278 = call i32 @tg3_phy_auxctl_read(%struct.tg3* %276, i32 %277, i32* %8)
  store i32 %278, i32* %14, align 4
  %279 = load i32, i32* %14, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %291, label %281

281:                                              ; preds = %275
  %282 = load i32, i32* %8, align 4
  %283 = and i32 %282, 1024
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %291, label %285

285:                                              ; preds = %281
  %286 = load %struct.tg3*, %struct.tg3** %4, align 8
  %287 = load i32, i32* @MII_TG3_AUXCTL_SHDWSEL_MISCTEST, align 4
  %288 = load i32, i32* %8, align 4
  %289 = or i32 %288, 1024
  %290 = call i32 @tg3_phy_auxctl_write(%struct.tg3* %286, i32 %287, i32 %289)
  br label %491

291:                                              ; preds = %281, %275
  br label %292

292:                                              ; preds = %291, %257
  store i32 0, i32* %7, align 4
  store i32 0, i32* %13, align 4
  br label %293

293:                                              ; preds = %312, %292
  %294 = load i32, i32* %13, align 4
  %295 = icmp slt i32 %294, 100
  br i1 %295, label %296, label %315

296:                                              ; preds = %293
  %297 = load %struct.tg3*, %struct.tg3** %4, align 8
  %298 = load i32, i32* @MII_BMSR, align 4
  %299 = call i64 @tg3_readphy(%struct.tg3* %297, i32 %298, i32* %7)
  %300 = load %struct.tg3*, %struct.tg3** %4, align 8
  %301 = load i32, i32* @MII_BMSR, align 4
  %302 = call i64 @tg3_readphy(%struct.tg3* %300, i32 %301, i32* %7)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %310, label %304

304:                                              ; preds = %296
  %305 = load i32, i32* %7, align 4
  %306 = load i32, i32* @BMSR_LSTATUS, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %304
  br label %315

310:                                              ; preds = %304, %296
  %311 = call i32 @udelay(i32 40)
  br label %312

312:                                              ; preds = %310
  %313 = load i32, i32* %13, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %13, align 4
  br label %293

315:                                              ; preds = %309, %293
  %316 = load i32, i32* %7, align 4
  %317 = load i32, i32* @BMSR_LSTATUS, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %490

320:                                              ; preds = %315
  %321 = load %struct.tg3*, %struct.tg3** %4, align 8
  %322 = load i32, i32* @MII_TG3_AUX_STAT, align 4
  %323 = call i64 @tg3_readphy(%struct.tg3* %321, i32 %322, i32* %15)
  store i32 0, i32* %13, align 4
  br label %324

324:                                              ; preds = %338, %320
  %325 = load i32, i32* %13, align 4
  %326 = icmp slt i32 %325, 2000
  br i1 %326, label %327, label %341

327:                                              ; preds = %324
  %328 = call i32 @udelay(i32 10)
  %329 = load %struct.tg3*, %struct.tg3** %4, align 8
  %330 = load i32, i32* @MII_TG3_AUX_STAT, align 4
  %331 = call i64 @tg3_readphy(%struct.tg3* %329, i32 %330, i32* %15)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %337, label %333

333:                                              ; preds = %327
  %334 = load i32, i32* %15, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %333
  br label %341

337:                                              ; preds = %333, %327
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %13, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %13, align 4
  br label %324

341:                                              ; preds = %336, %324
  %342 = load %struct.tg3*, %struct.tg3** %4, align 8
  %343 = load i32, i32* %15, align 4
  %344 = call i32 @tg3_aux_stat_to_speed_duplex(%struct.tg3* %342, i32 %343, i8** %11, i8** %12)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %345

345:                                              ; preds = %366, %341
  %346 = load i32, i32* %13, align 4
  %347 = icmp slt i32 %346, 200
  br i1 %347, label %348, label %369

348:                                              ; preds = %345
  %349 = load %struct.tg3*, %struct.tg3** %4, align 8
  %350 = load i32, i32* @MII_BMCR, align 4
  %351 = call i64 @tg3_readphy(%struct.tg3* %349, i32 %350, i32* %16)
  %352 = load %struct.tg3*, %struct.tg3** %4, align 8
  %353 = load i32, i32* @MII_BMCR, align 4
  %354 = call i64 @tg3_readphy(%struct.tg3* %352, i32 %353, i32* %16)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %348
  br label %366

357:                                              ; preds = %348
  %358 = load i32, i32* %16, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %364

360:                                              ; preds = %357
  %361 = load i32, i32* %16, align 4
  %362 = icmp ne i32 %361, 32767
  br i1 %362, label %363, label %364

363:                                              ; preds = %360
  br label %369

364:                                              ; preds = %360, %357
  %365 = call i32 @udelay(i32 10)
  br label %366

366:                                              ; preds = %364, %356
  %367 = load i32, i32* %13, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %13, align 4
  br label %345

369:                                              ; preds = %363, %345
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %370 = load i8*, i8** %11, align 8
  %371 = ptrtoint i8* %370 to i64
  %372 = load %struct.tg3*, %struct.tg3** %4, align 8
  %373 = getelementptr inbounds %struct.tg3, %struct.tg3* %372, i32 0, i32 6
  %374 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %373, i32 0, i32 0
  store i64 %371, i64* %374, align 8
  %375 = load i8*, i8** %12, align 8
  %376 = ptrtoint i8* %375 to i64
  %377 = load %struct.tg3*, %struct.tg3** %4, align 8
  %378 = getelementptr inbounds %struct.tg3, %struct.tg3* %377, i32 0, i32 6
  %379 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %378, i32 0, i32 1
  store i64 %376, i64* %379, align 8
  %380 = load %struct.tg3*, %struct.tg3** %4, align 8
  %381 = getelementptr inbounds %struct.tg3, %struct.tg3* %380, i32 0, i32 6
  %382 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %381, i32 0, i32 2
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* @AUTONEG_ENABLE, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %386, label %424

386:                                              ; preds = %369
  %387 = load %struct.tg3*, %struct.tg3** %4, align 8
  %388 = call i32 @tg3_phy_eee_config_ok(%struct.tg3* %387)
  store i32 %388, i32* %17, align 4
  %389 = load i32, i32* %16, align 4
  %390 = load i32, i32* @BMCR_ANENABLE, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %405

393:                                              ; preds = %386
  %394 = load i32, i32* %17, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %405

396:                                              ; preds = %393
  %397 = load %struct.tg3*, %struct.tg3** %4, align 8
  %398 = call i64 @tg3_phy_copper_an_config_ok(%struct.tg3* %397, i32* %9)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %396
  %401 = load %struct.tg3*, %struct.tg3** %4, align 8
  %402 = call i64 @tg3_phy_copper_fetch_rmtadv(%struct.tg3* %401, i32* %10)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %400
  store i32 1, i32* %6, align 4
  br label %405

405:                                              ; preds = %404, %400, %396, %393, %386
  %406 = load i32, i32* %17, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %423, label %408

408:                                              ; preds = %405
  %409 = load %struct.tg3*, %struct.tg3** %4, align 8
  %410 = getelementptr inbounds %struct.tg3, %struct.tg3* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* @TG3_PHYFLG_KEEP_LINK_ON_PWRDN, align 4
  %413 = and i32 %411, %412
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %423

415:                                              ; preds = %408
  %416 = load i32, i32* %5, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %423, label %418

418:                                              ; preds = %415
  %419 = load %struct.tg3*, %struct.tg3** %4, align 8
  %420 = call i32 @tg3_setup_eee(%struct.tg3* %419)
  %421 = load %struct.tg3*, %struct.tg3** %4, align 8
  %422 = call i32 @tg3_phy_reset(%struct.tg3* %421)
  br label %423

423:                                              ; preds = %418, %415, %408, %405
  br label %445

424:                                              ; preds = %369
  %425 = load i32, i32* %16, align 4
  %426 = load i32, i32* @BMCR_ANENABLE, align 4
  %427 = and i32 %425, %426
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %444, label %429

429:                                              ; preds = %424
  %430 = load %struct.tg3*, %struct.tg3** %4, align 8
  %431 = getelementptr inbounds %struct.tg3, %struct.tg3* %430, i32 0, i32 6
  %432 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %431, i32 0, i32 3
  %433 = load i8*, i8** %432, align 8
  %434 = load i8*, i8** %11, align 8
  %435 = icmp eq i8* %433, %434
  br i1 %435, label %436, label %444

436:                                              ; preds = %429
  %437 = load %struct.tg3*, %struct.tg3** %4, align 8
  %438 = getelementptr inbounds %struct.tg3, %struct.tg3* %437, i32 0, i32 6
  %439 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %438, i32 0, i32 4
  %440 = load i8*, i8** %439, align 8
  %441 = load i8*, i8** %12, align 8
  %442 = icmp eq i8* %440, %441
  br i1 %442, label %443, label %444

443:                                              ; preds = %436
  store i32 1, i32* %6, align 4
  br label %444

444:                                              ; preds = %443, %436, %429, %424
  br label %445

445:                                              ; preds = %444, %423
  %446 = load i32, i32* %6, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %489

448:                                              ; preds = %445
  %449 = load %struct.tg3*, %struct.tg3** %4, align 8
  %450 = getelementptr inbounds %struct.tg3, %struct.tg3* %449, i32 0, i32 6
  %451 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = load i64, i64* @DUPLEX_FULL, align 8
  %454 = icmp eq i64 %452, %453
  br i1 %454, label %455, label %489

455:                                              ; preds = %448
  %456 = load %struct.tg3*, %struct.tg3** %4, align 8
  %457 = getelementptr inbounds %struct.tg3, %struct.tg3* %456, i32 0, i32 2
  %458 = load i32, i32* %457, align 8
  %459 = load i32, i32* @TG3_PHYFLG_IS_FET, align 4
  %460 = and i32 %458, %459
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %465

462:                                              ; preds = %455
  %463 = load i32, i32* @MII_TG3_FET_GEN_STAT, align 4
  store i32 %463, i32* %18, align 4
  %464 = load i32, i32* @MII_TG3_FET_GEN_STAT_MDIXSTAT, align 4
  store i32 %464, i32* %19, align 4
  br label %468

465:                                              ; preds = %455
  %466 = load i32, i32* @MII_TG3_EXT_STAT, align 4
  store i32 %466, i32* %18, align 4
  %467 = load i32, i32* @MII_TG3_EXT_STAT_MDIX, align 4
  store i32 %467, i32* %19, align 4
  br label %468

468:                                              ; preds = %465, %462
  %469 = load %struct.tg3*, %struct.tg3** %4, align 8
  %470 = load i32, i32* %18, align 4
  %471 = call i64 @tg3_readphy(%struct.tg3* %469, i32 %470, i32* %8)
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %484, label %473

473:                                              ; preds = %468
  %474 = load i32, i32* %8, align 4
  %475 = load i32, i32* %19, align 4
  %476 = and i32 %474, %475
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %484

478:                                              ; preds = %473
  %479 = load i32, i32* @TG3_PHYFLG_MDIX_STATE, align 4
  %480 = load %struct.tg3*, %struct.tg3** %4, align 8
  %481 = getelementptr inbounds %struct.tg3, %struct.tg3* %480, i32 0, i32 2
  %482 = load i32, i32* %481, align 8
  %483 = or i32 %482, %479
  store i32 %483, i32* %481, align 8
  br label %484

484:                                              ; preds = %478, %473, %468
  %485 = load %struct.tg3*, %struct.tg3** %4, align 8
  %486 = load i32, i32* %9, align 4
  %487 = load i32, i32* %10, align 4
  %488 = call i32 @tg3_setup_flow_control(%struct.tg3* %485, i32 %486, i32 %487)
  br label %489

489:                                              ; preds = %484, %448, %445
  br label %490

490:                                              ; preds = %489, %315
  br label %491

491:                                              ; preds = %490, %285
  %492 = load i32, i32* %6, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %501

494:                                              ; preds = %491
  %495 = load %struct.tg3*, %struct.tg3** %4, align 8
  %496 = getelementptr inbounds %struct.tg3, %struct.tg3* %495, i32 0, i32 2
  %497 = load i32, i32* %496, align 8
  %498 = load i32, i32* @TG3_PHYFLG_IS_LOW_POWER, align 4
  %499 = and i32 %497, %498
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %538

501:                                              ; preds = %494, %491
  %502 = load %struct.tg3*, %struct.tg3** %4, align 8
  %503 = call i32 @tg3_phy_copper_begin(%struct.tg3* %502)
  %504 = load %struct.tg3*, %struct.tg3** %4, align 8
  %505 = load i32, i32* @ROBOSWITCH, align 4
  %506 = call i64 @tg3_flag(%struct.tg3* %504, i32 %505)
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %508, label %523

508:                                              ; preds = %501
  store i32 1, i32* %6, align 4
  %509 = load i64, i64* @SPEED_1000, align 8
  %510 = inttoptr i64 %509 to i8*
  store i8* %510, i8** %11, align 8
  %511 = load i64, i64* @DUPLEX_FULL, align 8
  %512 = inttoptr i64 %511 to i8*
  store i8* %512, i8** %12, align 8
  %513 = load i8*, i8** %11, align 8
  %514 = ptrtoint i8* %513 to i64
  %515 = load %struct.tg3*, %struct.tg3** %4, align 8
  %516 = getelementptr inbounds %struct.tg3, %struct.tg3* %515, i32 0, i32 6
  %517 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %516, i32 0, i32 0
  store i64 %514, i64* %517, align 8
  %518 = load i8*, i8** %12, align 8
  %519 = ptrtoint i8* %518 to i64
  %520 = load %struct.tg3*, %struct.tg3** %4, align 8
  %521 = getelementptr inbounds %struct.tg3, %struct.tg3* %520, i32 0, i32 6
  %522 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %521, i32 0, i32 1
  store i64 %519, i64* %522, align 8
  br label %523

523:                                              ; preds = %508, %501
  %524 = load %struct.tg3*, %struct.tg3** %4, align 8
  %525 = load i32, i32* @MII_BMSR, align 4
  %526 = call i64 @tg3_readphy(%struct.tg3* %524, i32 %525, i32* %7)
  %527 = load %struct.tg3*, %struct.tg3** %4, align 8
  %528 = load i32, i32* @MII_BMSR, align 4
  %529 = call i64 @tg3_readphy(%struct.tg3* %527, i32 %528, i32* %7)
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %537, label %531

531:                                              ; preds = %523
  %532 = load i32, i32* %7, align 4
  %533 = load i32, i32* @BMSR_LSTATUS, align 4
  %534 = and i32 %532, %533
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %537

536:                                              ; preds = %531
  store i32 1, i32* %6, align 4
  br label %537

537:                                              ; preds = %536, %531, %523
  br label %538

538:                                              ; preds = %537, %494
  %539 = load i32, i32* @MAC_MODE_PORT_MODE_MASK, align 4
  %540 = xor i32 %539, -1
  %541 = load %struct.tg3*, %struct.tg3** %4, align 8
  %542 = getelementptr inbounds %struct.tg3, %struct.tg3* %541, i32 0, i32 4
  %543 = load i32, i32* %542, align 8
  %544 = and i32 %543, %540
  store i32 %544, i32* %542, align 8
  %545 = load i32, i32* %6, align 4
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %574

547:                                              ; preds = %538
  %548 = load %struct.tg3*, %struct.tg3** %4, align 8
  %549 = getelementptr inbounds %struct.tg3, %struct.tg3* %548, i32 0, i32 6
  %550 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %549, i32 0, i32 0
  %551 = load i64, i64* %550, align 8
  %552 = load i64, i64* @SPEED_100, align 8
  %553 = icmp eq i64 %551, %552
  br i1 %553, label %561, label %554

554:                                              ; preds = %547
  %555 = load %struct.tg3*, %struct.tg3** %4, align 8
  %556 = getelementptr inbounds %struct.tg3, %struct.tg3* %555, i32 0, i32 6
  %557 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %556, i32 0, i32 0
  %558 = load i64, i64* %557, align 8
  %559 = load i64, i64* @SPEED_10, align 8
  %560 = icmp eq i64 %558, %559
  br i1 %560, label %561, label %567

561:                                              ; preds = %554, %547
  %562 = load i32, i32* @MAC_MODE_PORT_MODE_MII, align 4
  %563 = load %struct.tg3*, %struct.tg3** %4, align 8
  %564 = getelementptr inbounds %struct.tg3, %struct.tg3* %563, i32 0, i32 4
  %565 = load i32, i32* %564, align 8
  %566 = or i32 %565, %562
  store i32 %566, i32* %564, align 8
  br label %573

567:                                              ; preds = %554
  %568 = load i32, i32* @MAC_MODE_PORT_MODE_GMII, align 4
  %569 = load %struct.tg3*, %struct.tg3** %4, align 8
  %570 = getelementptr inbounds %struct.tg3, %struct.tg3* %569, i32 0, i32 4
  %571 = load i32, i32* %570, align 8
  %572 = or i32 %571, %568
  store i32 %572, i32* %570, align 8
  br label %573

573:                                              ; preds = %567, %561
  br label %594

574:                                              ; preds = %538
  %575 = load %struct.tg3*, %struct.tg3** %4, align 8
  %576 = getelementptr inbounds %struct.tg3, %struct.tg3* %575, i32 0, i32 2
  %577 = load i32, i32* %576, align 8
  %578 = load i32, i32* @TG3_PHYFLG_IS_FET, align 4
  %579 = and i32 %577, %578
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %587

581:                                              ; preds = %574
  %582 = load i32, i32* @MAC_MODE_PORT_MODE_MII, align 4
  %583 = load %struct.tg3*, %struct.tg3** %4, align 8
  %584 = getelementptr inbounds %struct.tg3, %struct.tg3* %583, i32 0, i32 4
  %585 = load i32, i32* %584, align 8
  %586 = or i32 %585, %582
  store i32 %586, i32* %584, align 8
  br label %593

587:                                              ; preds = %574
  %588 = load i32, i32* @MAC_MODE_PORT_MODE_GMII, align 4
  %589 = load %struct.tg3*, %struct.tg3** %4, align 8
  %590 = getelementptr inbounds %struct.tg3, %struct.tg3* %589, i32 0, i32 4
  %591 = load i32, i32* %590, align 8
  %592 = or i32 %591, %588
  store i32 %592, i32* %590, align 8
  br label %593

593:                                              ; preds = %587, %581
  br label %594

594:                                              ; preds = %593, %573
  %595 = load %struct.tg3*, %struct.tg3** %4, align 8
  %596 = load i32, i32* @RGMII_MODE, align 4
  %597 = call i64 @tg3_flag(%struct.tg3* %595, i32 %596)
  %598 = icmp ne i64 %597, 0
  br i1 %598, label %599, label %651

599:                                              ; preds = %594
  %600 = load i32, i32* @MAC_LED_CTRL, align 4
  %601 = call i32 @tr32(i32 %600)
  store i32 %601, i32* %20, align 4
  %602 = load i32, i32* @LED_CTRL_1000MBPS_ON, align 4
  %603 = load i32, i32* @LED_CTRL_100MBPS_ON, align 4
  %604 = or i32 %602, %603
  %605 = xor i32 %604, -1
  %606 = load i32, i32* %20, align 4
  %607 = and i32 %606, %605
  store i32 %607, i32* %20, align 4
  %608 = load %struct.tg3*, %struct.tg3** %4, align 8
  %609 = getelementptr inbounds %struct.tg3, %struct.tg3* %608, i32 0, i32 6
  %610 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %609, i32 0, i32 0
  %611 = load i64, i64* %610, align 8
  %612 = load i64, i64* @SPEED_10, align 8
  %613 = icmp eq i64 %611, %612
  br i1 %613, label %614, label %618

614:                                              ; preds = %599
  %615 = load i32, i32* @LED_CTRL_LNKLED_OVERRIDE, align 4
  %616 = load i32, i32* %20, align 4
  %617 = or i32 %616, %615
  store i32 %617, i32* %20, align 4
  br label %646

618:                                              ; preds = %599
  %619 = load %struct.tg3*, %struct.tg3** %4, align 8
  %620 = getelementptr inbounds %struct.tg3, %struct.tg3* %619, i32 0, i32 6
  %621 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %620, i32 0, i32 0
  %622 = load i64, i64* %621, align 8
  %623 = load i64, i64* @SPEED_100, align 8
  %624 = icmp eq i64 %622, %623
  br i1 %624, label %625, label %631

625:                                              ; preds = %618
  %626 = load i32, i32* @LED_CTRL_LNKLED_OVERRIDE, align 4
  %627 = load i32, i32* @LED_CTRL_100MBPS_ON, align 4
  %628 = or i32 %626, %627
  %629 = load i32, i32* %20, align 4
  %630 = or i32 %629, %628
  store i32 %630, i32* %20, align 4
  br label %645

631:                                              ; preds = %618
  %632 = load %struct.tg3*, %struct.tg3** %4, align 8
  %633 = getelementptr inbounds %struct.tg3, %struct.tg3* %632, i32 0, i32 6
  %634 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %633, i32 0, i32 0
  %635 = load i64, i64* %634, align 8
  %636 = load i64, i64* @SPEED_1000, align 8
  %637 = icmp eq i64 %635, %636
  br i1 %637, label %638, label %644

638:                                              ; preds = %631
  %639 = load i32, i32* @LED_CTRL_LNKLED_OVERRIDE, align 4
  %640 = load i32, i32* @LED_CTRL_1000MBPS_ON, align 4
  %641 = or i32 %639, %640
  %642 = load i32, i32* %20, align 4
  %643 = or i32 %642, %641
  store i32 %643, i32* %20, align 4
  br label %644

644:                                              ; preds = %638, %631
  br label %645

645:                                              ; preds = %644, %625
  br label %646

646:                                              ; preds = %645, %614
  %647 = load i32, i32* @MAC_LED_CTRL, align 4
  %648 = load i32, i32* %20, align 4
  %649 = call i32 @tw32(i32 %647, i32 %648)
  %650 = call i32 @udelay(i32 40)
  br label %651

651:                                              ; preds = %646, %594
  %652 = load i32, i32* @MAC_MODE_HALF_DUPLEX, align 4
  %653 = xor i32 %652, -1
  %654 = load %struct.tg3*, %struct.tg3** %4, align 8
  %655 = getelementptr inbounds %struct.tg3, %struct.tg3* %654, i32 0, i32 4
  %656 = load i32, i32* %655, align 8
  %657 = and i32 %656, %653
  store i32 %657, i32* %655, align 8
  %658 = load %struct.tg3*, %struct.tg3** %4, align 8
  %659 = getelementptr inbounds %struct.tg3, %struct.tg3* %658, i32 0, i32 6
  %660 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %659, i32 0, i32 1
  %661 = load i64, i64* %660, align 8
  %662 = load i64, i64* @DUPLEX_HALF, align 8
  %663 = icmp eq i64 %661, %662
  br i1 %663, label %664, label %670

664:                                              ; preds = %651
  %665 = load i32, i32* @MAC_MODE_HALF_DUPLEX, align 4
  %666 = load %struct.tg3*, %struct.tg3** %4, align 8
  %667 = getelementptr inbounds %struct.tg3, %struct.tg3* %666, i32 0, i32 4
  %668 = load i32, i32* %667, align 8
  %669 = or i32 %668, %665
  store i32 %669, i32* %667, align 8
  br label %670

670:                                              ; preds = %664, %651
  %671 = load %struct.tg3*, %struct.tg3** %4, align 8
  %672 = call i64 @tg3_asic_rev(%struct.tg3* %671)
  %673 = load i64, i64* @ASIC_REV_5700, align 8
  %674 = icmp eq i64 %672, %673
  br i1 %674, label %675, label %700

675:                                              ; preds = %670
  %676 = load i32, i32* %6, align 4
  %677 = icmp ne i32 %676, 0
  br i1 %677, label %678, label %692

678:                                              ; preds = %675
  %679 = load %struct.tg3*, %struct.tg3** %4, align 8
  %680 = load %struct.tg3*, %struct.tg3** %4, align 8
  %681 = getelementptr inbounds %struct.tg3, %struct.tg3* %680, i32 0, i32 6
  %682 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %681, i32 0, i32 0
  %683 = load i64, i64* %682, align 8
  %684 = call i64 @tg3_5700_link_polarity(%struct.tg3* %679, i64 %683)
  %685 = icmp ne i64 %684, 0
  br i1 %685, label %686, label %692

686:                                              ; preds = %678
  %687 = load i32, i32* @MAC_MODE_LINK_POLARITY, align 4
  %688 = load %struct.tg3*, %struct.tg3** %4, align 8
  %689 = getelementptr inbounds %struct.tg3, %struct.tg3* %688, i32 0, i32 4
  %690 = load i32, i32* %689, align 8
  %691 = or i32 %690, %687
  store i32 %691, i32* %689, align 8
  br label %699

692:                                              ; preds = %678, %675
  %693 = load i32, i32* @MAC_MODE_LINK_POLARITY, align 4
  %694 = xor i32 %693, -1
  %695 = load %struct.tg3*, %struct.tg3** %4, align 8
  %696 = getelementptr inbounds %struct.tg3, %struct.tg3* %695, i32 0, i32 4
  %697 = load i32, i32* %696, align 8
  %698 = and i32 %697, %694
  store i32 %698, i32* %696, align 8
  br label %699

699:                                              ; preds = %692, %686
  br label %700

700:                                              ; preds = %699, %670
  %701 = load %struct.tg3*, %struct.tg3** %4, align 8
  %702 = getelementptr inbounds %struct.tg3, %struct.tg3* %701, i32 0, i32 1
  %703 = load i32, i32* %702, align 4
  %704 = load i32, i32* @TG3_PHY_ID_MASK, align 4
  %705 = and i32 %703, %704
  %706 = load i32, i32* @TG3_PHY_ID_BCM5411, align 4
  %707 = icmp eq i32 %705, %706
  br i1 %707, label %708, label %725

708:                                              ; preds = %700
  %709 = load %struct.tg3*, %struct.tg3** %4, align 8
  %710 = call i64 @tg3_chip_rev_id(%struct.tg3* %709)
  %711 = load i64, i64* @CHIPREV_ID_5700_ALTIMA, align 8
  %712 = icmp eq i64 %710, %711
  br i1 %712, label %713, label %725

713:                                              ; preds = %708
  %714 = load i32, i32* @MAC_MI_MODE_AUTO_POLL, align 4
  %715 = load %struct.tg3*, %struct.tg3** %4, align 8
  %716 = getelementptr inbounds %struct.tg3, %struct.tg3* %715, i32 0, i32 0
  %717 = load i32, i32* %716, align 8
  %718 = or i32 %717, %714
  store i32 %718, i32* %716, align 8
  %719 = load i32, i32* @MAC_MI_MODE, align 4
  %720 = load %struct.tg3*, %struct.tg3** %4, align 8
  %721 = getelementptr inbounds %struct.tg3, %struct.tg3* %720, i32 0, i32 0
  %722 = load i32, i32* %721, align 8
  %723 = call i32 @tw32_f(i32 %719, i32 %722)
  %724 = call i32 @udelay(i32 80)
  br label %725

725:                                              ; preds = %713, %708, %700
  %726 = load i32, i32* @MAC_MODE, align 4
  %727 = load %struct.tg3*, %struct.tg3** %4, align 8
  %728 = getelementptr inbounds %struct.tg3, %struct.tg3* %727, i32 0, i32 4
  %729 = load i32, i32* %728, align 8
  %730 = call i32 @tw32_f(i32 %726, i32 %729)
  %731 = call i32 @udelay(i32 40)
  %732 = load %struct.tg3*, %struct.tg3** %4, align 8
  %733 = load i32, i32* %6, align 4
  %734 = call i32 @tg3_phy_eee_adjust(%struct.tg3* %732, i32 %733)
  %735 = load %struct.tg3*, %struct.tg3** %4, align 8
  %736 = load i32, i32* @USE_LINKCHG_REG, align 4
  %737 = call i64 @tg3_flag(%struct.tg3* %735, i32 %736)
  %738 = icmp ne i64 %737, 0
  br i1 %738, label %739, label %742

739:                                              ; preds = %725
  %740 = load i32, i32* @MAC_EVENT, align 4
  %741 = call i32 @tw32_f(i32 %740, i32 0)
  br label %746

742:                                              ; preds = %725
  %743 = load i32, i32* @MAC_EVENT, align 4
  %744 = load i32, i32* @MAC_EVENT_LNKSTATE_CHANGED, align 4
  %745 = call i32 @tw32_f(i32 %743, i32 %744)
  br label %746

746:                                              ; preds = %742, %739
  %747 = call i32 @udelay(i32 40)
  %748 = load %struct.tg3*, %struct.tg3** %4, align 8
  %749 = call i64 @tg3_asic_rev(%struct.tg3* %748)
  %750 = load i64, i64* @ASIC_REV_5700, align 8
  %751 = icmp eq i64 %749, %750
  br i1 %751, label %752, label %784

752:                                              ; preds = %746
  %753 = load i32, i32* %6, align 4
  %754 = icmp ne i32 %753, 0
  br i1 %754, label %755, label %784

755:                                              ; preds = %752
  %756 = load %struct.tg3*, %struct.tg3** %4, align 8
  %757 = getelementptr inbounds %struct.tg3, %struct.tg3* %756, i32 0, i32 6
  %758 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %757, i32 0, i32 0
  %759 = load i64, i64* %758, align 8
  %760 = load i64, i64* @SPEED_1000, align 8
  %761 = icmp eq i64 %759, %760
  br i1 %761, label %762, label %784

762:                                              ; preds = %755
  %763 = load %struct.tg3*, %struct.tg3** %4, align 8
  %764 = load i32, i32* @PCIX_MODE, align 4
  %765 = call i64 @tg3_flag(%struct.tg3* %763, i32 %764)
  %766 = icmp ne i64 %765, 0
  br i1 %766, label %772, label %767

767:                                              ; preds = %762
  %768 = load %struct.tg3*, %struct.tg3** %4, align 8
  %769 = load i32, i32* @PCI_HIGH_SPEED, align 4
  %770 = call i64 @tg3_flag(%struct.tg3* %768, i32 %769)
  %771 = icmp ne i64 %770, 0
  br i1 %771, label %772, label %784

772:                                              ; preds = %767, %762
  %773 = call i32 @udelay(i32 120)
  %774 = load i32, i32* @MAC_STATUS, align 4
  %775 = load i32, i32* @MAC_STATUS_SYNC_CHANGED, align 4
  %776 = load i32, i32* @MAC_STATUS_CFG_CHANGED, align 4
  %777 = or i32 %775, %776
  %778 = call i32 @tw32_f(i32 %774, i32 %777)
  %779 = call i32 @udelay(i32 40)
  %780 = load %struct.tg3*, %struct.tg3** %4, align 8
  %781 = load i32, i32* @NIC_SRAM_FIRMWARE_MBOX, align 4
  %782 = load i32, i32* @NIC_SRAM_FIRMWARE_MBOX_MAGIC2, align 4
  %783 = call i32 @tg3_write_mem(%struct.tg3* %780, i32 %781, i32 %782)
  br label %784

784:                                              ; preds = %772, %767, %755, %752, %746
  %785 = load %struct.tg3*, %struct.tg3** %4, align 8
  %786 = load i32, i32* @CLKREQ_BUG, align 4
  %787 = call i64 @tg3_flag(%struct.tg3* %785, i32 %786)
  %788 = icmp ne i64 %787, 0
  br i1 %788, label %789, label %818

789:                                              ; preds = %784
  %790 = load %struct.tg3*, %struct.tg3** %4, align 8
  %791 = getelementptr inbounds %struct.tg3, %struct.tg3* %790, i32 0, i32 6
  %792 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %791, i32 0, i32 0
  %793 = load i64, i64* %792, align 8
  %794 = load i64, i64* @SPEED_100, align 8
  %795 = icmp eq i64 %793, %794
  br i1 %795, label %803, label %796

796:                                              ; preds = %789
  %797 = load %struct.tg3*, %struct.tg3** %4, align 8
  %798 = getelementptr inbounds %struct.tg3, %struct.tg3* %797, i32 0, i32 6
  %799 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %798, i32 0, i32 0
  %800 = load i64, i64* %799, align 8
  %801 = load i64, i64* @SPEED_10, align 8
  %802 = icmp eq i64 %800, %801
  br i1 %802, label %803, label %810

803:                                              ; preds = %796, %789
  %804 = load %struct.tg3*, %struct.tg3** %4, align 8
  %805 = getelementptr inbounds %struct.tg3, %struct.tg3* %804, i32 0, i32 5
  %806 = load i32, i32* %805, align 4
  %807 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %808 = load i32, i32* @PCI_EXP_LNKCTL_CLKREQ_EN, align 4
  %809 = call i32 @pcie_capability_clear_word(i32 %806, i32 %807, i32 %808)
  br label %817

810:                                              ; preds = %796
  %811 = load %struct.tg3*, %struct.tg3** %4, align 8
  %812 = getelementptr inbounds %struct.tg3, %struct.tg3* %811, i32 0, i32 5
  %813 = load i32, i32* %812, align 4
  %814 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %815 = load i32, i32* @PCI_EXP_LNKCTL_CLKREQ_EN, align 4
  %816 = call i32 @pcie_capability_set_word(i32 %813, i32 %814, i32 %815)
  br label %817

817:                                              ; preds = %810, %803
  br label %818

818:                                              ; preds = %817, %784
  %819 = load %struct.tg3*, %struct.tg3** %4, align 8
  %820 = load i32, i32* %6, align 4
  %821 = call i32 @tg3_test_and_report_link_chg(%struct.tg3* %819, i32 %820)
  store i32 0, i32* %3, align 4
  br label %822

822:                                              ; preds = %818, %172, %115
  %823 = load i32, i32* %3, align 4
  ret i32 %823
}

declare dso_local i32 @tg3_clear_mac_status(%struct.tg3*) #1

declare dso_local i32 @tw32_f(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tg3_phy_auxctl_write(%struct.tg3*, i32, i32) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i64 @tg3_readphy(%struct.tg3*, i32, i32*) #1

declare dso_local i32 @tg3_phy_reset(%struct.tg3*) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_init_5401phy_dsp(%struct.tg3*) #1

declare dso_local i64 @tg3_chip_rev_id(%struct.tg3*) #1

declare dso_local i32 @tg3_writephy(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_phy_auxctl_read(%struct.tg3*, i32, i32*) #1

declare dso_local i32 @tg3_aux_stat_to_speed_duplex(%struct.tg3*, i32, i8**, i8**) #1

declare dso_local i32 @tg3_phy_eee_config_ok(%struct.tg3*) #1

declare dso_local i64 @tg3_phy_copper_an_config_ok(%struct.tg3*, i32*) #1

declare dso_local i64 @tg3_phy_copper_fetch_rmtadv(%struct.tg3*, i32*) #1

declare dso_local i32 @tg3_setup_eee(%struct.tg3*) #1

declare dso_local i32 @tg3_setup_flow_control(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_phy_copper_begin(%struct.tg3*) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i64 @tg3_5700_link_polarity(%struct.tg3*, i64) #1

declare dso_local i32 @tg3_phy_eee_adjust(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_write_mem(%struct.tg3*, i32, i32) #1

declare dso_local i32 @pcie_capability_clear_word(i32, i32, i32) #1

declare dso_local i32 @pcie_capability_set_word(i32, i32, i32) #1

declare dso_local i32 @tg3_test_and_report_link_chg(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
