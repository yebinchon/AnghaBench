; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_baseband_rev2plus_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_baseband_rev2plus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { %struct.b43_phy_lp* }
%struct.b43_phy_lp = type { i32, i32, i64, i64 }

@B43_LPPHY_AFE_DAC_CTL = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_CTL = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_CTL_OVR = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_CTL_OVRVAL = common dso_local global i32 0, align 4
@B43_LPPHY_RF_OVERRIDE_0 = common dso_local global i32 0, align 4
@B43_LPPHY_RF_OVERRIDE_2 = common dso_local global i32 0, align 4
@B43_LPPHY_TR_LOOKUP_1 = common dso_local global i32 0, align 4
@B43_LPPHY_ADC_COMPENSATION_CTL = common dso_local global i32 0, align 4
@B43_LPPHY_OFDMSYNCTHRESH0 = common dso_local global i32 0, align 4
@B43_LPPHY_DCOFFSETTRANSIENT = common dso_local global i32 0, align 4
@B43_LPPHY_GAINDIRECTMISMATCH = common dso_local global i32 0, align 4
@B43_LPPHY_PREAMBLECONFIRMTO = common dso_local global i32 0, align 4
@B43_LPPHY_CRSGAIN_CTL = common dso_local global i32 0, align 4
@B43_LPPHY_CLIPTHRESH = common dso_local global i32 0, align 4
@B43_LPPHY_HIGAINDB = common dso_local global i32 0, align 4
@B43_LPPHY_PWR_THRESH1 = common dso_local global i32 0, align 4
@B43_LPPHY_VERYLOWGAINDB = common dso_local global i32 0, align 4
@B43_LPPHY_CLIPCTRTHRESH = common dso_local global i32 0, align 4
@B43_LPPHY_LOWGAINDB = common dso_local global i32 0, align 4
@B43_LPPHY_GAINMISMATCH = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_LPPHY_SYNCPEAKCNT = common dso_local global i32 0, align 4
@B43_LPPHY_MINPWR_LEVEL = common dso_local global i32 0, align 4
@B43_LPPHY_IDLEAFTERPKTRXTO = common dso_local global i32 0, align 4
@B43_LPPHY_CRS_ED_THRESH = common dso_local global i32 0, align 4
@B43_LPPHY_INPUT_PWRDB = common dso_local global i32 0, align 4
@B43_LPPHY_RESET_CTL = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_RSSI_CTL_0 = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_RSSI_CTL_1 = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_ADC_CTL_0 = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_ADC_CTL_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @lpphy_baseband_rev2plus_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_baseband_rev2plus_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_lp*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %6, align 8
  store %struct.b43_phy_lp* %7, %struct.b43_phy_lp** %3, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = load i32, i32* @B43_LPPHY_AFE_DAC_CTL, align 4
  %10 = call i32 @b43_phy_write(%struct.b43_wldev* %8, i32 %9, i32 80)
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = load i32, i32* @B43_LPPHY_AFE_CTL, align 4
  %13 = call i32 @b43_phy_write(%struct.b43_wldev* %11, i32 %12, i32 34816)
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = load i32, i32* @B43_LPPHY_AFE_CTL_OVR, align 4
  %16 = call i32 @b43_phy_write(%struct.b43_wldev* %14, i32 %15, i32 0)
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = load i32, i32* @B43_LPPHY_AFE_CTL_OVRVAL, align 4
  %19 = call i32 @b43_phy_write(%struct.b43_wldev* %17, i32 %18, i32 0)
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %22 = call i32 @b43_phy_write(%struct.b43_wldev* %20, i32 %21, i32 0)
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2, align 4
  %25 = call i32 @b43_phy_write(%struct.b43_wldev* %23, i32 %24, i32 0)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %27 = call i32 @B43_PHY_OFDM(i32 249)
  %28 = call i32 @b43_phy_write(%struct.b43_wldev* %26, i32 %27, i32 0)
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = load i32, i32* @B43_LPPHY_TR_LOOKUP_1, align 4
  %31 = call i32 @b43_phy_write(%struct.b43_wldev* %29, i32 %30, i32 0)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = load i32, i32* @B43_LPPHY_ADC_COMPENSATION_CTL, align 4
  %34 = call i32 @b43_phy_set(%struct.b43_wldev* %32, i32 %33, i32 16)
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %36 = load i32, i32* @B43_LPPHY_OFDMSYNCTHRESH0, align 4
  %37 = call i32 @b43_phy_maskset(%struct.b43_wldev* %35, i32 %36, i32 65280, i32 180)
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = load i32, i32* @B43_LPPHY_DCOFFSETTRANSIENT, align 4
  %40 = call i32 @b43_phy_maskset(%struct.b43_wldev* %38, i32 %39, i32 63743, i32 512)
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %42 = load i32, i32* @B43_LPPHY_DCOFFSETTRANSIENT, align 4
  %43 = call i32 @b43_phy_maskset(%struct.b43_wldev* %41, i32 %42, i32 65280, i32 127)
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %45 = load i32, i32* @B43_LPPHY_GAINDIRECTMISMATCH, align 4
  %46 = call i32 @b43_phy_maskset(%struct.b43_wldev* %44, i32 %45, i32 65295, i32 64)
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %48 = load i32, i32* @B43_LPPHY_PREAMBLECONFIRMTO, align 4
  %49 = call i32 @b43_phy_maskset(%struct.b43_wldev* %47, i32 %48, i32 65280, i32 2)
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %51 = load i32, i32* @B43_LPPHY_CRSGAIN_CTL, align 4
  %52 = call i32 @b43_phy_mask(%struct.b43_wldev* %50, i32 %51, i32 -16385)
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %54 = load i32, i32* @B43_LPPHY_CRSGAIN_CTL, align 4
  %55 = call i32 @b43_phy_mask(%struct.b43_wldev* %53, i32 %54, i32 -8193)
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %57 = call i32 @B43_PHY_OFDM(i32 266)
  %58 = call i32 @b43_phy_set(%struct.b43_wldev* %56, i32 %57, i32 1)
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %60 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %63, 24
  br i1 %64, label %65, label %72

65:                                               ; preds = %1
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = call i32 @B43_LPTAB32(i32 17, i32 65)
  %68 = call i32 @b43_lptab_write(%struct.b43_wldev* %66, i32 %67, i32 236)
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %70 = call i32 @B43_PHY_OFDM(i32 266)
  %71 = call i32 @b43_phy_maskset(%struct.b43_wldev* %69, i32 %70, i32 65281, i32 20)
  br label %76

72:                                               ; preds = %1
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %74 = call i32 @B43_PHY_OFDM(i32 266)
  %75 = call i32 @b43_phy_maskset(%struct.b43_wldev* %73, i32 %74, i32 65281, i32 16)
  br label %76

76:                                               ; preds = %72, %65
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %78 = call i32 @B43_PHY_OFDM(i32 223)
  %79 = call i32 @b43_phy_maskset(%struct.b43_wldev* %77, i32 %78, i32 65280, i32 244)
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %81 = call i32 @B43_PHY_OFDM(i32 223)
  %82 = call i32 @b43_phy_maskset(%struct.b43_wldev* %80, i32 %81, i32 255, i32 61696)
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %84 = load i32, i32* @B43_LPPHY_CLIPTHRESH, align 4
  %85 = call i32 @b43_phy_write(%struct.b43_wldev* %83, i32 %84, i32 72)
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %87 = load i32, i32* @B43_LPPHY_HIGAINDB, align 4
  %88 = call i32 @b43_phy_maskset(%struct.b43_wldev* %86, i32 %87, i32 65280, i32 70)
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %90 = call i32 @B43_PHY_OFDM(i32 228)
  %91 = call i32 @b43_phy_maskset(%struct.b43_wldev* %89, i32 %90, i32 65280, i32 16)
  %92 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %93 = load i32, i32* @B43_LPPHY_PWR_THRESH1, align 4
  %94 = call i32 @b43_phy_maskset(%struct.b43_wldev* %92, i32 %93, i32 65520, i32 9)
  %95 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %96 = load i32, i32* @B43_LPPHY_GAINDIRECTMISMATCH, align 4
  %97 = call i32 @b43_phy_mask(%struct.b43_wldev* %95, i32 %96, i32 -16)
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %99 = load i32, i32* @B43_LPPHY_VERYLOWGAINDB, align 4
  %100 = call i32 @b43_phy_maskset(%struct.b43_wldev* %98, i32 %99, i32 255, i32 21760)
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %102 = load i32, i32* @B43_LPPHY_CLIPCTRTHRESH, align 4
  %103 = call i32 @b43_phy_maskset(%struct.b43_wldev* %101, i32 %102, i32 64543, i32 160)
  %104 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %105 = load i32, i32* @B43_LPPHY_GAINDIRECTMISMATCH, align 4
  %106 = call i32 @b43_phy_maskset(%struct.b43_wldev* %104, i32 %105, i32 57599, i32 768)
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %108 = load i32, i32* @B43_LPPHY_HIGAINDB, align 4
  %109 = call i32 @b43_phy_maskset(%struct.b43_wldev* %107, i32 %108, i32 255, i32 10752)
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %111 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 17189
  br i1 %115, label %116, label %130

116:                                              ; preds = %76
  %117 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %118 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %116
  %124 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %125 = load i32, i32* @B43_LPPHY_LOWGAINDB, align 4
  %126 = call i32 @b43_phy_maskset(%struct.b43_wldev* %124, i32 %125, i32 255, i32 8448)
  %127 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %128 = load i32, i32* @B43_LPPHY_VERYLOWGAINDB, align 4
  %129 = call i32 @b43_phy_maskset(%struct.b43_wldev* %127, i32 %128, i32 65280, i32 10)
  br label %137

130:                                              ; preds = %116, %76
  %131 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %132 = load i32, i32* @B43_LPPHY_LOWGAINDB, align 4
  %133 = call i32 @b43_phy_maskset(%struct.b43_wldev* %131, i32 %132, i32 255, i32 7680)
  %134 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %135 = load i32, i32* @B43_LPPHY_VERYLOWGAINDB, align 4
  %136 = call i32 @b43_phy_maskset(%struct.b43_wldev* %134, i32 %135, i32 65280, i32 13)
  br label %137

137:                                              ; preds = %130, %123
  %138 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %139 = call i32 @B43_PHY_OFDM(i32 254)
  %140 = call i32 @b43_phy_maskset(%struct.b43_wldev* %138, i32 %139, i32 65504, i32 31)
  %141 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %142 = call i32 @B43_PHY_OFDM(i32 255)
  %143 = call i32 @b43_phy_maskset(%struct.b43_wldev* %141, i32 %142, i32 65504, i32 12)
  %144 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %145 = call i32 @B43_PHY_OFDM(i32 256)
  %146 = call i32 @b43_phy_maskset(%struct.b43_wldev* %144, i32 %145, i32 65280, i32 25)
  %147 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %148 = call i32 @B43_PHY_OFDM(i32 255)
  %149 = call i32 @b43_phy_maskset(%struct.b43_wldev* %147, i32 %148, i32 1023, i32 15360)
  %150 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %151 = call i32 @B43_PHY_OFDM(i32 254)
  %152 = call i32 @b43_phy_maskset(%struct.b43_wldev* %150, i32 %151, i32 64543, i32 992)
  %153 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %154 = call i32 @B43_PHY_OFDM(i32 255)
  %155 = call i32 @b43_phy_maskset(%struct.b43_wldev* %153, i32 %154, i32 65504, i32 12)
  %156 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %157 = call i32 @B43_PHY_OFDM(i32 256)
  %158 = call i32 @b43_phy_maskset(%struct.b43_wldev* %156, i32 %157, i32 255, i32 6400)
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %160 = load i32, i32* @B43_LPPHY_CLIPCTRTHRESH, align 4
  %161 = call i32 @b43_phy_maskset(%struct.b43_wldev* %159, i32 %160, i32 33791, i32 22528)
  %162 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %163 = load i32, i32* @B43_LPPHY_CLIPCTRTHRESH, align 4
  %164 = call i32 @b43_phy_maskset(%struct.b43_wldev* %162, i32 %163, i32 65504, i32 18)
  %165 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %166 = load i32, i32* @B43_LPPHY_GAINMISMATCH, align 4
  %167 = call i32 @b43_phy_maskset(%struct.b43_wldev* %165, i32 %166, i32 4095, i32 36864)
  %168 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %169 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %168, i32 0, i32 0
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 17189
  br i1 %173, label %174, label %188

174:                                              ; preds = %137
  %175 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %176 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %175, i32 0, i32 0
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %174
  %182 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %183 = call i32 @B43_LPTAB16(i32 8, i32 20)
  %184 = call i32 @b43_lptab_write(%struct.b43_wldev* %182, i32 %183, i32 0)
  %185 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %186 = call i32 @B43_LPTAB16(i32 8, i32 18)
  %187 = call i32 @b43_lptab_write(%struct.b43_wldev* %185, i32 %186, i32 64)
  br label %188

188:                                              ; preds = %181, %174, %137
  %189 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %190 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = call i64 @b43_current_band(i32 %191)
  %193 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %214

195:                                              ; preds = %188
  %196 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %197 = load i32, i32* @B43_LPPHY_CRSGAIN_CTL, align 4
  %198 = call i32 @b43_phy_set(%struct.b43_wldev* %196, i32 %197, i32 64)
  %199 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %200 = load i32, i32* @B43_LPPHY_CRSGAIN_CTL, align 4
  %201 = call i32 @b43_phy_maskset(%struct.b43_wldev* %199, i32 %200, i32 61695, i32 2816)
  %202 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %203 = load i32, i32* @B43_LPPHY_SYNCPEAKCNT, align 4
  %204 = call i32 @b43_phy_maskset(%struct.b43_wldev* %202, i32 %203, i32 65528, i32 6)
  %205 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %206 = load i32, i32* @B43_LPPHY_MINPWR_LEVEL, align 4
  %207 = call i32 @b43_phy_maskset(%struct.b43_wldev* %205, i32 %206, i32 255, i32 40192)
  %208 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %209 = load i32, i32* @B43_LPPHY_MINPWR_LEVEL, align 4
  %210 = call i32 @b43_phy_maskset(%struct.b43_wldev* %208, i32 %209, i32 65280, i32 161)
  %211 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %212 = load i32, i32* @B43_LPPHY_IDLEAFTERPKTRXTO, align 4
  %213 = call i32 @b43_phy_mask(%struct.b43_wldev* %211, i32 %212, i32 255)
  br label %218

214:                                              ; preds = %188
  %215 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %216 = load i32, i32* @B43_LPPHY_CRSGAIN_CTL, align 4
  %217 = call i32 @b43_phy_mask(%struct.b43_wldev* %215, i32 %216, i32 -65)
  br label %218

218:                                              ; preds = %214, %195
  %219 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %220 = load i32, i32* @B43_LPPHY_CRS_ED_THRESH, align 4
  %221 = call i32 @b43_phy_maskset(%struct.b43_wldev* %219, i32 %220, i32 65280, i32 179)
  %222 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %223 = load i32, i32* @B43_LPPHY_CRS_ED_THRESH, align 4
  %224 = call i32 @b43_phy_maskset(%struct.b43_wldev* %222, i32 %223, i32 255, i32 44288)
  %225 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %226 = load i32, i32* @B43_LPPHY_INPUT_PWRDB, align 4
  %227 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %228 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @b43_phy_maskset(%struct.b43_wldev* %225, i32 %226, i32 65280, i32 %229)
  %231 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %232 = load i32, i32* @B43_LPPHY_RESET_CTL, align 4
  %233 = call i32 @b43_phy_set(%struct.b43_wldev* %231, i32 %232, i32 68)
  %234 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %235 = load i32, i32* @B43_LPPHY_RESET_CTL, align 4
  %236 = call i32 @b43_phy_write(%struct.b43_wldev* %234, i32 %235, i32 128)
  %237 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %238 = load i32, i32* @B43_LPPHY_AFE_RSSI_CTL_0, align 4
  %239 = call i32 @b43_phy_write(%struct.b43_wldev* %237, i32 %238, i32 43348)
  %240 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %241 = load i32, i32* @B43_LPPHY_AFE_RSSI_CTL_1, align 4
  %242 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %243 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = trunc i64 %244 to i32
  %246 = shl i32 %245, 10
  %247 = or i32 8192, %246
  %248 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %249 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = trunc i64 %250 to i32
  %252 = shl i32 %251, 4
  %253 = or i32 %247, %252
  %254 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %255 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %253, %256
  %258 = call i32 @b43_phy_write(%struct.b43_wldev* %240, i32 %241, i32 %257)
  %259 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %260 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %259, i32 0, i32 0
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 17189
  br i1 %264, label %265, label %282

265:                                              ; preds = %218
  %266 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %267 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %266, i32 0, i32 0
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %282

272:                                              ; preds = %265
  %273 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %274 = load i32, i32* @B43_LPPHY_AFE_ADC_CTL_0, align 4
  %275 = call i32 @b43_phy_set(%struct.b43_wldev* %273, i32 %274, i32 28)
  %276 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %277 = load i32, i32* @B43_LPPHY_AFE_CTL, align 4
  %278 = call i32 @b43_phy_maskset(%struct.b43_wldev* %276, i32 %277, i32 255, i32 34816)
  %279 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %280 = load i32, i32* @B43_LPPHY_AFE_ADC_CTL_1, align 4
  %281 = call i32 @b43_phy_maskset(%struct.b43_wldev* %279, i32 %280, i32 64572, i32 1024)
  br label %282

282:                                              ; preds = %272, %265, %218
  %283 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %284 = call i32 @lpphy_save_dig_flt_state(%struct.b43_wldev* %283)
  ret void
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_PHY_OFDM(i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_lptab_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_LPTAB32(i32, i32) #1

declare dso_local i32 @B43_LPTAB16(i32, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @lpphy_save_dig_flt_state(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
