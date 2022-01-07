; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_baseband_rev0_1_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_baseband_rev0_1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, %struct.b43_phy_lp* }
%struct.b43_phy_lp = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i64, %struct.ssb_sprom*, %struct.TYPE_4__* }
%struct.ssb_sprom = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.ssb_bus* }
%struct.ssb_bus = type { i32 }

@B43_LPPHY_AFE_DAC_CTL = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_CTL = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_CTL_OVR = common dso_local global i32 0, align 4
@B43_LPPHY_RF_OVERRIDE_0 = common dso_local global i32 0, align 4
@B43_LPPHY_RF_OVERRIDE_2 = common dso_local global i32 0, align 4
@B43_LPPHY_OFDMSYNCTHRESH0 = common dso_local global i32 0, align 4
@B43_LPPHY_CLIPCTRTHRESH = common dso_local global i32 0, align 4
@B43_LPPHY_ADC_COMPENSATION_CTL = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_ADC_CTL_0 = common dso_local global i32 0, align 4
@B43_LPPHY_VERYLOWGAINDB = common dso_local global i32 0, align 4
@B43_LPPHY_HIGAINDB = common dso_local global i32 0, align 4
@B43_LPPHY_LOWGAINDB = common dso_local global i32 0, align 4
@B43_LPPHY_RX_RADIO_CTL = common dso_local global i32 0, align 4
@B43_LPPHY_GAINDIRECTMISMATCH = common dso_local global i32 0, align 4
@B43_LPPHY_GAIN_MISMATCH_LIMIT = common dso_local global i32 0, align 4
@B43_LPPHY_CRS_ED_THRESH = common dso_local global i32 0, align 4
@B43_LPPHY_INPUT_PWRDB = common dso_local global i32 0, align 4
@B43_BFL_FEM = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@B43_BFH_PAREF = common dso_local global i32 0, align 4
@LDO_PAREF = common dso_local global i32 0, align 4
@B43_LPPHY_LP_RF_SIGNAL_LUT = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_RSSI_CTL_0 = common dso_local global i32 0, align 4
@B43_BFH_RSSIINV = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_RSSI_CTL_1 = common dso_local global i32 0, align 4
@B43_BFH_FEM_BT = common dso_local global i32 0, align 4
@B43_LPPHY_TR_LOOKUP_1 = common dso_local global i32 0, align 4
@B43_LPPHY_TR_LOOKUP_2 = common dso_local global i32 0, align 4
@B43_LPPHY_TR_LOOKUP_3 = common dso_local global i32 0, align 4
@B43_LPPHY_TR_LOOKUP_4 = common dso_local global i32 0, align 4
@B43_LPPHY_TR_LOOKUP_5 = common dso_local global i32 0, align 4
@B43_LPPHY_TR_LOOKUP_6 = common dso_local global i32 0, align 4
@B43_LPPHY_TR_LOOKUP_7 = common dso_local global i32 0, align 4
@B43_LPPHY_TR_LOOKUP_8 = common dso_local global i32 0, align 4
@SSB_CHIPPACK_BCM4712S = common dso_local global i64 0, align 8
@B43_LPPHY_CRSGAIN_CTL = common dso_local global i32 0, align 4
@B43_LPPHY_GPIO_SELECT = common dso_local global i32 0, align 4
@B43_LPPHY_GPIO_OUTEN = common dso_local global i32 0, align 4
@B43_HF_PR45960W = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_LPPHY_LP_PHY_CTL = common dso_local global i32 0, align 4
@B43_LPPHY_MINPWR_LEVEL = common dso_local global i32 0, align 4
@B43_LPPHY_SYNCPEAKCNT = common dso_local global i32 0, align 4
@B43_LPPHY_DSSS_CONFIRM_CNT = common dso_local global i32 0, align 4
@B43_LPPHY_IDLEAFTERPKTRXTO = common dso_local global i32 0, align 4
@B43_LPPHY_4C3 = common dso_local global i32 0, align 4
@B43_LPPHY_4C4 = common dso_local global i32 0, align 4
@B43_LPPHY_4C5 = common dso_local global i32 0, align 4
@SSB_BOARD_BU4312 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @lpphy_baseband_rev0_1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_baseband_rev0_1_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca %struct.ssb_sprom*, align 8
  %5 = alloca %struct.b43_phy_lp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.ssb_bus*, %struct.ssb_bus** %13, align 8
  store %struct.ssb_bus* %14, %struct.ssb_bus** %3, align 8
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  %19 = load %struct.ssb_sprom*, %struct.ssb_sprom** %18, align 8
  store %struct.ssb_sprom* %19, %struct.ssb_sprom** %4, align 8
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %22, align 8
  store %struct.b43_phy_lp* %23, %struct.b43_phy_lp** %5, align 8
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = load i32, i32* @B43_LPPHY_AFE_DAC_CTL, align 4
  %26 = call i32 @b43_phy_mask(%struct.b43_wldev* %24, i32 %25, i32 63487)
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %28 = load i32, i32* @B43_LPPHY_AFE_CTL, align 4
  %29 = call i32 @b43_phy_write(%struct.b43_wldev* %27, i32 %28, i32 0)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = load i32, i32* @B43_LPPHY_AFE_CTL_OVR, align 4
  %32 = call i32 @b43_phy_write(%struct.b43_wldev* %30, i32 %31, i32 0)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %34 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %35 = call i32 @b43_phy_write(%struct.b43_wldev* %33, i32 %34, i32 0)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2, align 4
  %38 = call i32 @b43_phy_write(%struct.b43_wldev* %36, i32 %37, i32 0)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = load i32, i32* @B43_LPPHY_AFE_DAC_CTL, align 4
  %41 = call i32 @b43_phy_set(%struct.b43_wldev* %39, i32 %40, i32 4)
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %43 = load i32, i32* @B43_LPPHY_OFDMSYNCTHRESH0, align 4
  %44 = call i32 @b43_phy_maskset(%struct.b43_wldev* %42, i32 %43, i32 65280, i32 120)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = load i32, i32* @B43_LPPHY_CLIPCTRTHRESH, align 4
  %47 = call i32 @b43_phy_maskset(%struct.b43_wldev* %45, i32 %46, i32 33791, i32 22528)
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %49 = load i32, i32* @B43_LPPHY_ADC_COMPENSATION_CTL, align 4
  %50 = call i32 @b43_phy_write(%struct.b43_wldev* %48, i32 %49, i32 22)
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %52 = load i32, i32* @B43_LPPHY_AFE_ADC_CTL_0, align 4
  %53 = call i32 @b43_phy_maskset(%struct.b43_wldev* %51, i32 %52, i32 65528, i32 4)
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %55 = load i32, i32* @B43_LPPHY_VERYLOWGAINDB, align 4
  %56 = call i32 @b43_phy_maskset(%struct.b43_wldev* %54, i32 %55, i32 255, i32 21504)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = load i32, i32* @B43_LPPHY_HIGAINDB, align 4
  %59 = call i32 @b43_phy_maskset(%struct.b43_wldev* %57, i32 %58, i32 255, i32 9216)
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %61 = load i32, i32* @B43_LPPHY_LOWGAINDB, align 4
  %62 = call i32 @b43_phy_maskset(%struct.b43_wldev* %60, i32 %61, i32 255, i32 8448)
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %64 = load i32, i32* @B43_LPPHY_VERYLOWGAINDB, align 4
  %65 = call i32 @b43_phy_maskset(%struct.b43_wldev* %63, i32 %64, i32 65280, i32 6)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = load i32, i32* @B43_LPPHY_RX_RADIO_CTL, align 4
  %68 = call i32 @b43_phy_mask(%struct.b43_wldev* %66, i32 %67, i32 65534)
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %70 = load i32, i32* @B43_LPPHY_CLIPCTRTHRESH, align 4
  %71 = call i32 @b43_phy_maskset(%struct.b43_wldev* %69, i32 %70, i32 65504, i32 5)
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %73 = load i32, i32* @B43_LPPHY_CLIPCTRTHRESH, align 4
  %74 = call i32 @b43_phy_maskset(%struct.b43_wldev* %72, i32 %73, i32 64543, i32 384)
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %76 = load i32, i32* @B43_LPPHY_CLIPCTRTHRESH, align 4
  %77 = call i32 @b43_phy_maskset(%struct.b43_wldev* %75, i32 %76, i32 33791, i32 15360)
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %79 = load i32, i32* @B43_LPPHY_GAINDIRECTMISMATCH, align 4
  %80 = call i32 @b43_phy_maskset(%struct.b43_wldev* %78, i32 %79, i32 65520, i32 5)
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %82 = load i32, i32* @B43_LPPHY_GAIN_MISMATCH_LIMIT, align 4
  %83 = call i32 @b43_phy_maskset(%struct.b43_wldev* %81, i32 %82, i32 65472, i32 26)
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %85 = load i32, i32* @B43_LPPHY_CRS_ED_THRESH, align 4
  %86 = call i32 @b43_phy_maskset(%struct.b43_wldev* %84, i32 %85, i32 65280, i32 179)
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %88 = load i32, i32* @B43_LPPHY_CRS_ED_THRESH, align 4
  %89 = call i32 @b43_phy_maskset(%struct.b43_wldev* %87, i32 %88, i32 255, i32 44288)
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %91 = load i32, i32* @B43_LPPHY_INPUT_PWRDB, align 4
  %92 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %5, align 8
  %93 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @b43_phy_maskset(%struct.b43_wldev* %90, i32 %91, i32 65280, i32 %94)
  %96 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %97 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @B43_BFL_FEM, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %137

102:                                              ; preds = %1
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %104 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @b43_current_band(i32 %105)
  %107 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %116, label %109

109:                                              ; preds = %102
  %110 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %111 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @B43_BFH_PAREF, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %137

116:                                              ; preds = %109, %102
  %117 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %118 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %117, i32 0, i32 0
  %119 = load i32, i32* @LDO_PAREF, align 4
  %120 = call i32 @ssb_pmu_set_ldo_voltage(i32* %118, i32 %119, i32 40)
  %121 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %122 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %121, i32 0, i32 0
  %123 = call i32 @ssb_pmu_set_ldo_paref(i32* %122, i32 1)
  %124 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %125 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %116
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %131 = load i32, i32* @B43_LPPHY_LP_RF_SIGNAL_LUT, align 4
  %132 = call i32 @b43_phy_maskset(%struct.b43_wldev* %130, i32 %131, i32 65487, i32 16)
  br label %133

133:                                              ; preds = %129, %116
  %134 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %135 = call i32 @B43_LPTAB16(i32 11, i32 7)
  %136 = call i32 @b43_lptab_write(%struct.b43_wldev* %134, i32 %135, i32 60)
  br label %147

137:                                              ; preds = %109, %1
  %138 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %139 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %138, i32 0, i32 0
  %140 = call i32 @ssb_pmu_set_ldo_paref(i32* %139, i32 0)
  %141 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %142 = load i32, i32* @B43_LPPHY_LP_RF_SIGNAL_LUT, align 4
  %143 = call i32 @b43_phy_maskset(%struct.b43_wldev* %141, i32 %142, i32 65487, i32 32)
  %144 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %145 = call i32 @B43_LPTAB16(i32 11, i32 7)
  %146 = call i32 @b43_lptab_write(%struct.b43_wldev* %144, i32 %145, i32 100)
  br label %147

147:                                              ; preds = %137, %133
  %148 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %5, align 8
  %149 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %5, align 8
  %152 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 %153, 4
  %155 = or i32 %150, %154
  %156 = or i32 %155, 40960
  store i32 %156, i32* %6, align 4
  %157 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %158 = load i32, i32* @B43_LPPHY_AFE_RSSI_CTL_0, align 4
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @b43_phy_write(%struct.b43_wldev* %157, i32 %158, i32 %159)
  %161 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %162 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @B43_BFH_RSSIINV, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %147
  %168 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %169 = load i32, i32* @B43_LPPHY_AFE_RSSI_CTL_1, align 4
  %170 = call i32 @b43_phy_maskset(%struct.b43_wldev* %168, i32 %169, i32 61440, i32 2730)
  br label %175

171:                                              ; preds = %147
  %172 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %173 = load i32, i32* @B43_LPPHY_AFE_RSSI_CTL_1, align 4
  %174 = call i32 @b43_phy_maskset(%struct.b43_wldev* %172, i32 %173, i32 61440, i32 682)
  br label %175

175:                                              ; preds = %171, %167
  %176 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %177 = call i32 @B43_LPTAB16(i32 11, i32 1)
  %178 = call i32 @b43_lptab_write(%struct.b43_wldev* %176, i32 %177, i32 24)
  %179 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %180 = load i32, i32* @B43_LPPHY_RX_RADIO_CTL, align 4
  %181 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %5, align 8
  %182 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = shl i32 %183, 1
  %185 = call i32 @b43_phy_maskset(%struct.b43_wldev* %179, i32 %180, i32 65529, i32 %184)
  %186 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %187 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %247

191:                                              ; preds = %175
  %192 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %193 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @B43_BFH_FEM_BT, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %247

198:                                              ; preds = %191
  %199 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %200 = load i32, i32* @B43_LPPHY_TR_LOOKUP_1, align 4
  %201 = call i32 @b43_phy_maskset(%struct.b43_wldev* %199, i32 %200, i32 65472, i32 10)
  %202 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %203 = load i32, i32* @B43_LPPHY_TR_LOOKUP_1, align 4
  %204 = call i32 @b43_phy_maskset(%struct.b43_wldev* %202, i32 %203, i32 16128, i32 2304)
  %205 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %206 = load i32, i32* @B43_LPPHY_TR_LOOKUP_2, align 4
  %207 = call i32 @b43_phy_maskset(%struct.b43_wldev* %205, i32 %206, i32 65472, i32 10)
  %208 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %209 = load i32, i32* @B43_LPPHY_TR_LOOKUP_2, align 4
  %210 = call i32 @b43_phy_maskset(%struct.b43_wldev* %208, i32 %209, i32 49407, i32 2816)
  %211 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %212 = load i32, i32* @B43_LPPHY_TR_LOOKUP_3, align 4
  %213 = call i32 @b43_phy_maskset(%struct.b43_wldev* %211, i32 %212, i32 65472, i32 10)
  %214 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %215 = load i32, i32* @B43_LPPHY_TR_LOOKUP_3, align 4
  %216 = call i32 @b43_phy_maskset(%struct.b43_wldev* %214, i32 %215, i32 49407, i32 1024)
  %217 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %218 = load i32, i32* @B43_LPPHY_TR_LOOKUP_4, align 4
  %219 = call i32 @b43_phy_maskset(%struct.b43_wldev* %217, i32 %218, i32 65472, i32 10)
  %220 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %221 = load i32, i32* @B43_LPPHY_TR_LOOKUP_4, align 4
  %222 = call i32 @b43_phy_maskset(%struct.b43_wldev* %220, i32 %221, i32 49407, i32 2816)
  %223 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %224 = load i32, i32* @B43_LPPHY_TR_LOOKUP_5, align 4
  %225 = call i32 @b43_phy_maskset(%struct.b43_wldev* %223, i32 %224, i32 65472, i32 10)
  %226 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %227 = load i32, i32* @B43_LPPHY_TR_LOOKUP_5, align 4
  %228 = call i32 @b43_phy_maskset(%struct.b43_wldev* %226, i32 %227, i32 49407, i32 2304)
  %229 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %230 = load i32, i32* @B43_LPPHY_TR_LOOKUP_6, align 4
  %231 = call i32 @b43_phy_maskset(%struct.b43_wldev* %229, i32 %230, i32 65472, i32 10)
  %232 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %233 = load i32, i32* @B43_LPPHY_TR_LOOKUP_6, align 4
  %234 = call i32 @b43_phy_maskset(%struct.b43_wldev* %232, i32 %233, i32 49407, i32 2816)
  %235 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %236 = load i32, i32* @B43_LPPHY_TR_LOOKUP_7, align 4
  %237 = call i32 @b43_phy_maskset(%struct.b43_wldev* %235, i32 %236, i32 65472, i32 10)
  %238 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %239 = load i32, i32* @B43_LPPHY_TR_LOOKUP_7, align 4
  %240 = call i32 @b43_phy_maskset(%struct.b43_wldev* %238, i32 %239, i32 49407, i32 2304)
  %241 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %242 = load i32, i32* @B43_LPPHY_TR_LOOKUP_8, align 4
  %243 = call i32 @b43_phy_maskset(%struct.b43_wldev* %241, i32 %242, i32 65472, i32 10)
  %244 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %245 = load i32, i32* @B43_LPPHY_TR_LOOKUP_8, align 4
  %246 = call i32 @b43_phy_maskset(%struct.b43_wldev* %244, i32 %245, i32 49407, i32 2816)
  br label %357

247:                                              ; preds = %191, %175
  %248 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %249 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = call i64 @b43_current_band(i32 %250)
  %252 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %267, label %254

254:                                              ; preds = %247
  %255 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %256 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %292

260:                                              ; preds = %254
  %261 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %262 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @B43_BFL_FEM, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %292

267:                                              ; preds = %260, %247
  %268 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %269 = load i32, i32* @B43_LPPHY_TR_LOOKUP_1, align 4
  %270 = call i32 @b43_phy_maskset(%struct.b43_wldev* %268, i32 %269, i32 65472, i32 1)
  %271 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %272 = load i32, i32* @B43_LPPHY_TR_LOOKUP_1, align 4
  %273 = call i32 @b43_phy_maskset(%struct.b43_wldev* %271, i32 %272, i32 49407, i32 1024)
  %274 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %275 = load i32, i32* @B43_LPPHY_TR_LOOKUP_2, align 4
  %276 = call i32 @b43_phy_maskset(%struct.b43_wldev* %274, i32 %275, i32 65472, i32 1)
  %277 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %278 = load i32, i32* @B43_LPPHY_TR_LOOKUP_2, align 4
  %279 = call i32 @b43_phy_maskset(%struct.b43_wldev* %277, i32 %278, i32 49407, i32 1280)
  %280 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %281 = load i32, i32* @B43_LPPHY_TR_LOOKUP_3, align 4
  %282 = call i32 @b43_phy_maskset(%struct.b43_wldev* %280, i32 %281, i32 65472, i32 2)
  %283 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %284 = load i32, i32* @B43_LPPHY_TR_LOOKUP_3, align 4
  %285 = call i32 @b43_phy_maskset(%struct.b43_wldev* %283, i32 %284, i32 49407, i32 2048)
  %286 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %287 = load i32, i32* @B43_LPPHY_TR_LOOKUP_4, align 4
  %288 = call i32 @b43_phy_maskset(%struct.b43_wldev* %286, i32 %287, i32 65472, i32 2)
  %289 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %290 = load i32, i32* @B43_LPPHY_TR_LOOKUP_4, align 4
  %291 = call i32 @b43_phy_maskset(%struct.b43_wldev* %289, i32 %290, i32 49407, i32 2560)
  br label %356

292:                                              ; preds = %260, %254
  %293 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %294 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = icmp eq i32 %296, 1
  br i1 %297, label %305, label %298

298:                                              ; preds = %292
  %299 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %300 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @B43_BFL_FEM, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %330

305:                                              ; preds = %298, %292
  %306 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %307 = load i32, i32* @B43_LPPHY_TR_LOOKUP_1, align 4
  %308 = call i32 @b43_phy_maskset(%struct.b43_wldev* %306, i32 %307, i32 65472, i32 4)
  %309 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %310 = load i32, i32* @B43_LPPHY_TR_LOOKUP_1, align 4
  %311 = call i32 @b43_phy_maskset(%struct.b43_wldev* %309, i32 %310, i32 49407, i32 2048)
  %312 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %313 = load i32, i32* @B43_LPPHY_TR_LOOKUP_2, align 4
  %314 = call i32 @b43_phy_maskset(%struct.b43_wldev* %312, i32 %313, i32 65472, i32 4)
  %315 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %316 = load i32, i32* @B43_LPPHY_TR_LOOKUP_2, align 4
  %317 = call i32 @b43_phy_maskset(%struct.b43_wldev* %315, i32 %316, i32 49407, i32 3072)
  %318 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %319 = load i32, i32* @B43_LPPHY_TR_LOOKUP_3, align 4
  %320 = call i32 @b43_phy_maskset(%struct.b43_wldev* %318, i32 %319, i32 65472, i32 2)
  %321 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %322 = load i32, i32* @B43_LPPHY_TR_LOOKUP_3, align 4
  %323 = call i32 @b43_phy_maskset(%struct.b43_wldev* %321, i32 %322, i32 49407, i32 256)
  %324 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %325 = load i32, i32* @B43_LPPHY_TR_LOOKUP_4, align 4
  %326 = call i32 @b43_phy_maskset(%struct.b43_wldev* %324, i32 %325, i32 65472, i32 2)
  %327 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %328 = load i32, i32* @B43_LPPHY_TR_LOOKUP_4, align 4
  %329 = call i32 @b43_phy_maskset(%struct.b43_wldev* %327, i32 %328, i32 49407, i32 768)
  br label %355

330:                                              ; preds = %298
  %331 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %332 = load i32, i32* @B43_LPPHY_TR_LOOKUP_1, align 4
  %333 = call i32 @b43_phy_maskset(%struct.b43_wldev* %331, i32 %332, i32 65472, i32 10)
  %334 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %335 = load i32, i32* @B43_LPPHY_TR_LOOKUP_1, align 4
  %336 = call i32 @b43_phy_maskset(%struct.b43_wldev* %334, i32 %335, i32 49407, i32 2304)
  %337 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %338 = load i32, i32* @B43_LPPHY_TR_LOOKUP_2, align 4
  %339 = call i32 @b43_phy_maskset(%struct.b43_wldev* %337, i32 %338, i32 65472, i32 10)
  %340 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %341 = load i32, i32* @B43_LPPHY_TR_LOOKUP_2, align 4
  %342 = call i32 @b43_phy_maskset(%struct.b43_wldev* %340, i32 %341, i32 49407, i32 2816)
  %343 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %344 = load i32, i32* @B43_LPPHY_TR_LOOKUP_3, align 4
  %345 = call i32 @b43_phy_maskset(%struct.b43_wldev* %343, i32 %344, i32 65472, i32 6)
  %346 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %347 = load i32, i32* @B43_LPPHY_TR_LOOKUP_3, align 4
  %348 = call i32 @b43_phy_maskset(%struct.b43_wldev* %346, i32 %347, i32 49407, i32 1280)
  %349 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %350 = load i32, i32* @B43_LPPHY_TR_LOOKUP_4, align 4
  %351 = call i32 @b43_phy_maskset(%struct.b43_wldev* %349, i32 %350, i32 65472, i32 6)
  %352 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %353 = load i32, i32* @B43_LPPHY_TR_LOOKUP_4, align 4
  %354 = call i32 @b43_phy_maskset(%struct.b43_wldev* %352, i32 %353, i32 49407, i32 1792)
  br label %355

355:                                              ; preds = %330, %305
  br label %356

356:                                              ; preds = %355, %267
  br label %357

357:                                              ; preds = %356, %198
  %358 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %359 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = icmp eq i32 %361, 1
  br i1 %362, label %363, label %387

363:                                              ; preds = %357
  %364 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %365 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* @B43_BFH_PAREF, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %387

370:                                              ; preds = %363
  %371 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %372 = load i32, i32* @B43_LPPHY_TR_LOOKUP_5, align 4
  %373 = load i32, i32* @B43_LPPHY_TR_LOOKUP_1, align 4
  %374 = call i32 @b43_phy_copy(%struct.b43_wldev* %371, i32 %372, i32 %373)
  %375 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %376 = load i32, i32* @B43_LPPHY_TR_LOOKUP_6, align 4
  %377 = load i32, i32* @B43_LPPHY_TR_LOOKUP_2, align 4
  %378 = call i32 @b43_phy_copy(%struct.b43_wldev* %375, i32 %376, i32 %377)
  %379 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %380 = load i32, i32* @B43_LPPHY_TR_LOOKUP_7, align 4
  %381 = load i32, i32* @B43_LPPHY_TR_LOOKUP_3, align 4
  %382 = call i32 @b43_phy_copy(%struct.b43_wldev* %379, i32 %380, i32 %381)
  %383 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %384 = load i32, i32* @B43_LPPHY_TR_LOOKUP_8, align 4
  %385 = load i32, i32* @B43_LPPHY_TR_LOOKUP_4, align 4
  %386 = call i32 @b43_phy_copy(%struct.b43_wldev* %383, i32 %384, i32 %385)
  br label %387

387:                                              ; preds = %370, %363, %357
  %388 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %389 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* @B43_BFH_FEM_BT, align 4
  %392 = and i32 %390, %391
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %425

394:                                              ; preds = %387
  %395 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %396 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %395, i32 0, i32 2
  %397 = load %struct.TYPE_5__*, %struct.TYPE_5__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 8
  %400 = icmp eq i32 %399, 21332
  br i1 %400, label %401, label %425

401:                                              ; preds = %394
  %402 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %403 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %402, i32 0, i32 2
  %404 = load %struct.TYPE_5__*, %struct.TYPE_5__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %404, i32 0, i32 2
  %406 = load i64, i64* %405, align 8
  %407 = load i64, i64* @SSB_CHIPPACK_BCM4712S, align 8
  %408 = icmp eq i64 %406, %407
  br i1 %408, label %409, label %425

409:                                              ; preds = %401
  %410 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %411 = load i32, i32* @B43_LPPHY_CRSGAIN_CTL, align 4
  %412 = call i32 @b43_phy_set(%struct.b43_wldev* %410, i32 %411, i32 6)
  %413 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %414 = load i32, i32* @B43_LPPHY_GPIO_SELECT, align 4
  %415 = call i32 @b43_phy_write(%struct.b43_wldev* %413, i32 %414, i32 5)
  %416 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %417 = load i32, i32* @B43_LPPHY_GPIO_OUTEN, align 4
  %418 = call i32 @b43_phy_write(%struct.b43_wldev* %416, i32 %417, i32 65535)
  %419 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %420 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %421 = call i32 @b43_hf_read(%struct.b43_wldev* %420)
  %422 = load i32, i32* @B43_HF_PR45960W, align 4
  %423 = or i32 %421, %422
  %424 = call i32 @b43_hf_write(%struct.b43_wldev* %419, i32 %423)
  br label %425

425:                                              ; preds = %409, %401, %394, %387
  %426 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %427 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 8
  %429 = call i64 @b43_current_band(i32 %428)
  %430 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %431 = icmp eq i64 %429, %430
  br i1 %431, label %432, label %457

432:                                              ; preds = %425
  %433 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %434 = load i32, i32* @B43_LPPHY_LP_PHY_CTL, align 4
  %435 = call i32 @b43_phy_set(%struct.b43_wldev* %433, i32 %434, i32 32768)
  %436 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %437 = load i32, i32* @B43_LPPHY_CRSGAIN_CTL, align 4
  %438 = call i32 @b43_phy_set(%struct.b43_wldev* %436, i32 %437, i32 64)
  %439 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %440 = load i32, i32* @B43_LPPHY_MINPWR_LEVEL, align 4
  %441 = call i32 @b43_phy_maskset(%struct.b43_wldev* %439, i32 %440, i32 255, i32 41984)
  %442 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %443 = load i32, i32* @B43_LPPHY_CRSGAIN_CTL, align 4
  %444 = call i32 @b43_phy_maskset(%struct.b43_wldev* %442, i32 %443, i32 61695, i32 2816)
  %445 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %446 = load i32, i32* @B43_LPPHY_SYNCPEAKCNT, align 4
  %447 = call i32 @b43_phy_maskset(%struct.b43_wldev* %445, i32 %446, i32 65528, i32 7)
  %448 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %449 = load i32, i32* @B43_LPPHY_DSSS_CONFIRM_CNT, align 4
  %450 = call i32 @b43_phy_maskset(%struct.b43_wldev* %448, i32 %449, i32 65528, i32 3)
  %451 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %452 = load i32, i32* @B43_LPPHY_DSSS_CONFIRM_CNT, align 4
  %453 = call i32 @b43_phy_maskset(%struct.b43_wldev* %451, i32 %452, i32 65479, i32 32)
  %454 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %455 = load i32, i32* @B43_LPPHY_IDLEAFTERPKTRXTO, align 4
  %456 = call i32 @b43_phy_mask(%struct.b43_wldev* %454, i32 %455, i32 255)
  br label %464

457:                                              ; preds = %425
  %458 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %459 = load i32, i32* @B43_LPPHY_LP_PHY_CTL, align 4
  %460 = call i32 @b43_phy_mask(%struct.b43_wldev* %458, i32 %459, i32 32767)
  %461 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %462 = load i32, i32* @B43_LPPHY_CRSGAIN_CTL, align 4
  %463 = call i32 @b43_phy_mask(%struct.b43_wldev* %461, i32 %462, i32 65471)
  br label %464

464:                                              ; preds = %457, %432
  %465 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %466 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %465, i32 0, i32 0
  %467 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = icmp eq i32 %468, 1
  br i1 %469, label %470, label %512

470:                                              ; preds = %464
  %471 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %472 = load i32, i32* @B43_LPPHY_CLIPCTRTHRESH, align 4
  %473 = call i32 @b43_phy_read(%struct.b43_wldev* %471, i32 %472)
  store i32 %473, i32* %6, align 4
  %474 = load i32, i32* %6, align 4
  %475 = and i32 %474, 992
  %476 = ashr i32 %475, 5
  store i32 %476, i32* %7, align 4
  %477 = load i32, i32* %7, align 4
  %478 = shl i32 %477, 5
  %479 = load i32, i32* %7, align 4
  %480 = or i32 %479, %478
  store i32 %480, i32* %7, align 4
  %481 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %482 = load i32, i32* @B43_LPPHY_4C3, align 4
  %483 = load i32, i32* %7, align 4
  %484 = call i32 @b43_phy_write(%struct.b43_wldev* %481, i32 %482, i32 %483)
  %485 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %486 = load i32, i32* @B43_LPPHY_GAINDIRECTMISMATCH, align 4
  %487 = call i32 @b43_phy_read(%struct.b43_wldev* %485, i32 %486)
  store i32 %487, i32* %6, align 4
  %488 = load i32, i32* %6, align 4
  %489 = and i32 %488, 7936
  %490 = ashr i32 %489, 8
  store i32 %490, i32* %7, align 4
  %491 = load i32, i32* %7, align 4
  %492 = shl i32 %491, 5
  %493 = load i32, i32* %7, align 4
  %494 = or i32 %493, %492
  store i32 %494, i32* %7, align 4
  %495 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %496 = load i32, i32* @B43_LPPHY_4C4, align 4
  %497 = load i32, i32* %7, align 4
  %498 = call i32 @b43_phy_write(%struct.b43_wldev* %495, i32 %496, i32 %497)
  %499 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %500 = load i32, i32* @B43_LPPHY_VERYLOWGAINDB, align 4
  %501 = call i32 @b43_phy_read(%struct.b43_wldev* %499, i32 %500)
  store i32 %501, i32* %6, align 4
  %502 = load i32, i32* %6, align 4
  %503 = and i32 %502, 255
  store i32 %503, i32* %7, align 4
  %504 = load i32, i32* %6, align 4
  %505 = shl i32 %504, 8
  %506 = load i32, i32* %7, align 4
  %507 = or i32 %506, %505
  store i32 %507, i32* %7, align 4
  %508 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %509 = load i32, i32* @B43_LPPHY_4C5, align 4
  %510 = load i32, i32* %7, align 4
  %511 = call i32 @b43_phy_write(%struct.b43_wldev* %508, i32 %509, i32 %510)
  br label %512

512:                                              ; preds = %470, %464
  ret void
}

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @ssb_pmu_set_ldo_voltage(i32*, i32, i32) #1

declare dso_local i32 @ssb_pmu_set_ldo_paref(i32*, i32) #1

declare dso_local i32 @b43_lptab_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_LPTAB16(i32, i32) #1

declare dso_local i32 @b43_phy_copy(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_hf_write(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_hf_read(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
