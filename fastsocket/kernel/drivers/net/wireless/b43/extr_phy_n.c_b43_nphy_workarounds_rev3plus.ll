; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_workarounds_rev3plus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_workarounds_rev3plus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.ssb_sprom* }
%struct.ssb_sprom = type { i32 }

@__const.b43_nphy_workarounds_rev3plus.tx2rx_events = private unnamed_addr constant [8 x i32] [i32 4, i32 3, i32 6, i32 5, i32 2, i32 1, i32 8, i32 31], align 16
@__const.b43_nphy_workarounds_rev3plus.tx2rx_delays = private unnamed_addr constant [8 x i32] [i32 8, i32 4, i32 2, i32 2, i32 4, i32 4, i32 6, i32 1], align 16
@__const.b43_nphy_workarounds_rev3plus.rx2tx_events_ipa = private unnamed_addr constant [9 x i32] [i32 0, i32 1, i32 2, i32 8, i32 5, i32 6, i32 15, i32 3, i32 31], align 16
@__const.b43_nphy_workarounds_rev3plus.rx2tx_delays_ipa = private unnamed_addr constant [9 x i32] [i32 8, i32 6, i32 6, i32 4, i32 4, i32 16, i32 43, i32 1, i32 1], align 16
@__const.b43_nphy_workarounds_rev3plus.rx2tx_events = private unnamed_addr constant [9 x i32] [i32 0, i32 1, i32 2, i32 8, i32 5, i32 6, i32 3, i32 4, i32 31], align 16
@__const.b43_nphy_workarounds_rev3plus.rx2tx_delays = private unnamed_addr constant [9 x i32] [i32 8, i32 6, i32 6, i32 4, i32 4, i32 18, i32 42, i32 1, i32 1], align 16
@B43_NPHY_FORCEFRONT0 = common dso_local global i32 0, align 4
@B43_NPHY_FORCEFRONT1 = common dso_local global i32 0, align 4
@B43_NPHY_PHASETR_A0 = common dso_local global i32 0, align 4
@B43_NPHY_PHASETR_A1 = common dso_local global i32 0, align 4
@B43_NPHY_PHASETR_A2 = common dso_local global i32 0, align 4
@B43_NPHY_PHASETR_B0 = common dso_local global i32 0, align 4
@B43_NPHY_PHASETR_B1 = common dso_local global i32 0, align 4
@B43_NPHY_PHASETR_B2 = common dso_local global i32 0, align 4
@B43_NPHY_REV3_C1_CLIP_LOGAIN_B = common dso_local global i32 0, align 4
@B43_NPHY_REV3_C2_CLIP_LOGAIN_B = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_NPHY_ENDROP_TLEN = common dso_local global i32 0, align 4
@B43_NPHY_SGILTRNOFFSET = common dso_local global i32 0, align 4
@B2056_RX0 = common dso_local global i32 0, align 4
@B2056_RX_MIXA_MAST_BIAS = common dso_local global i32 0, align 4
@B2056_RX1 = common dso_local global i32 0, align 4
@B2056_RX_MIXA_BIAS_MAIN = common dso_local global i32 0, align 4
@B2056_RX_MIXA_BIAS_AUX = common dso_local global i32 0, align 4
@B2056_RX_MIXA_LOB_BIAS = common dso_local global i32 0, align 4
@B2056_RX_MIXA_CMFB_IDAC = common dso_local global i32 0, align 4
@B2056_RX_MIXG_CMFB_IDAC = common dso_local global i32 0, align 4
@B43_BFL2_APLL_WAR = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@B43_BFL2_GPLL_WAR = common dso_local global i32 0, align 4
@B2056_TX0 = common dso_local global i32 0, align 4
@B2056_TX_GMBB_IDAC = common dso_local global i32 0, align 4
@B2056_TX1 = common dso_local global i32 0, align 4
@B43_NPHY_ED_CRS40ASSERTTHRESH0 = common dso_local global i32 0, align 4
@B43_NPHY_ED_CRS40ASSERTTHRESH1 = common dso_local global i32 0, align 4
@B43_NPHY_ED_CRS40DEASSERTTHRESH1 = common dso_local global i32 0, align 4
@B43_NPHY_ED_CRS20LASSERTTHRESH0 = common dso_local global i32 0, align 4
@B43_NPHY_ED_CRS20LASSERTTHRESH1 = common dso_local global i32 0, align 4
@B43_NPHY_ED_CRS20LDEASSERTTHRESH0 = common dso_local global i32 0, align 4
@B43_NPHY_ED_CRS20LDEASSERTTHRESH1 = common dso_local global i32 0, align 4
@B43_NPHY_ED_CRS20UASSERTTHRESH0 = common dso_local global i32 0, align 4
@B43_NPHY_ED_CRS20UASSERTTHRESH1 = common dso_local global i32 0, align 4
@B43_NPHY_ED_CRS20UDEASSERTTHRESH0 = common dso_local global i32 0, align 4
@B43_NPHY_ED_CRS20UDEASSERTTHRESH1 = common dso_local global i32 0, align 4
@B43_BFL2_SINGLEANT_CCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_workarounds_rev3plus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_workarounds_rev3plus(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_n*, align 8
  %4 = alloca %struct.ssb_sprom*, align 8
  %5 = alloca [8 x i32], align 16
  %6 = alloca [8 x i32], align 16
  %7 = alloca [9 x i32], align 16
  %8 = alloca [9 x i32], align 16
  %9 = alloca [9 x i32], align 16
  %10 = alloca [9 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %14 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load %struct.b43_phy_n*, %struct.b43_phy_n** %15, align 8
  store %struct.b43_phy_n* %16, %struct.b43_phy_n** %3, align 8
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.ssb_sprom*, %struct.ssb_sprom** %20, align 8
  store %struct.ssb_sprom* %21, %struct.ssb_sprom** %4, align 8
  %22 = bitcast [8 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([8 x i32]* @__const.b43_nphy_workarounds_rev3plus.tx2rx_events to i8*), i64 32, i1 false)
  %23 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([8 x i32]* @__const.b43_nphy_workarounds_rev3plus.tx2rx_delays to i8*), i64 32, i1 false)
  %24 = bitcast [9 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([9 x i32]* @__const.b43_nphy_workarounds_rev3plus.rx2tx_events_ipa to i8*), i64 36, i1 false)
  %25 = bitcast [9 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 bitcast ([9 x i32]* @__const.b43_nphy_workarounds_rev3plus.rx2tx_delays_ipa to i8*), i64 36, i1 false)
  %26 = bitcast [9 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %26, i8* align 16 bitcast ([9 x i32]* @__const.b43_nphy_workarounds_rev3plus.rx2tx_events to i8*), i64 36, i1 false)
  %27 = bitcast [9 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 bitcast ([9 x i32]* @__const.b43_nphy_workarounds_rev3plus.rx2tx_delays to i8*), i64 36, i1 false)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = load i32, i32* @B43_NPHY_FORCEFRONT0, align 4
  %30 = call i32 @b43_phy_write(%struct.b43_wldev* %28, i32 %29, i32 504)
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %32 = load i32, i32* @B43_NPHY_FORCEFRONT1, align 4
  %33 = call i32 @b43_phy_write(%struct.b43_wldev* %31, i32 %32, i32 504)
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %35 = call i32 @B43_NTAB32(i32 30, i32 0)
  %36 = call i32 @b43_ntab_read(%struct.b43_wldev* %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = and i32 %37, 16777215
  store i32 %38, i32* %12, align 4
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = call i32 @B43_NTAB32(i32 30, i32 0)
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @b43_ntab_write(%struct.b43_wldev* %39, i32 %40, i32 %41)
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %44 = load i32, i32* @B43_NPHY_PHASETR_A0, align 4
  %45 = call i32 @b43_phy_write(%struct.b43_wldev* %43, i32 %44, i32 293)
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %47 = load i32, i32* @B43_NPHY_PHASETR_A1, align 4
  %48 = call i32 @b43_phy_write(%struct.b43_wldev* %46, i32 %47, i32 435)
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = load i32, i32* @B43_NPHY_PHASETR_A2, align 4
  %51 = call i32 @b43_phy_write(%struct.b43_wldev* %49, i32 %50, i32 261)
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %53 = load i32, i32* @B43_NPHY_PHASETR_B0, align 4
  %54 = call i32 @b43_phy_write(%struct.b43_wldev* %52, i32 %53, i32 366)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = load i32, i32* @B43_NPHY_PHASETR_B1, align 4
  %57 = call i32 @b43_phy_write(%struct.b43_wldev* %55, i32 %56, i32 205)
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %59 = load i32, i32* @B43_NPHY_PHASETR_B2, align 4
  %60 = call i32 @b43_phy_write(%struct.b43_wldev* %58, i32 %59, i32 32)
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = load i32, i32* @B43_NPHY_REV3_C1_CLIP_LOGAIN_B, align 4
  %63 = call i32 @b43_phy_write(%struct.b43_wldev* %61, i32 %62, i32 12)
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %65 = load i32, i32* @B43_NPHY_REV3_C2_CLIP_LOGAIN_B, align 4
  %66 = call i32 @b43_phy_write(%struct.b43_wldev* %64, i32 %65, i32 12)
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %71 = call i32 @ARRAY_SIZE(i32* %70)
  %72 = call i32 @b43_nphy_set_rf_sequence(%struct.b43_wldev* %67, i32 1, i32* %68, i32* %69, i32 %71)
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %74 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %1
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %78 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %79 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %80 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %81 = call i32 @ARRAY_SIZE(i32* %80)
  %82 = call i32 @b43_nphy_set_rf_sequence(%struct.b43_wldev* %77, i32 0, i32* %78, i32* %79, i32 %81)
  br label %83

83:                                               ; preds = %76, %1
  %84 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %85 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 3
  br i1 %87, label %88, label %111

88:                                               ; preds = %83
  %89 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %90 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %93 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %91, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %88
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %98 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 5
  store i32 59, i32* %101, align 4
  %102 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 6
  store i32 1, i32* %102, align 8
  %103 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 7
  store i32 31, i32* %103, align 4
  br label %104

104:                                              ; preds = %100, %96
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %106 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %107 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %108 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %109 = call i32 @ARRAY_SIZE(i32* %108)
  %110 = call i32 @b43_nphy_set_rf_sequence(%struct.b43_wldev* %105, i32 0, i32* %106, i32* %107, i32 %109)
  br label %111

111:                                              ; preds = %104, %88, %83
  %112 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %113 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @b43_current_band(i32 %114)
  %116 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 2, i32 40000
  store i32 %119, i32* %11, align 4
  %120 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %121 = load i32, i32* @B43_NPHY_ENDROP_TLEN, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @b43_phy_write(%struct.b43_wldev* %120, i32 %121, i32 %122)
  %124 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %125 = load i32, i32* @B43_NPHY_SGILTRNOFFSET, align 4
  %126 = call i32 @b43_phy_maskset(%struct.b43_wldev* %124, i32 %125, i32 61695, i32 1792)
  %127 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %128 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %111
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %134 = call i32 @B43_NTAB32(i32 16, i32 3)
  %135 = call i32 @b43_ntab_write(%struct.b43_wldev* %133, i32 %134, i32 397)
  %136 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %137 = call i32 @B43_NTAB32(i32 16, i32 127)
  %138 = call i32 @b43_ntab_write(%struct.b43_wldev* %136, i32 %137, i32 397)
  br label %146

139:                                              ; preds = %111
  %140 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %141 = call i32 @B43_NTAB32(i32 16, i32 3)
  %142 = call i32 @b43_ntab_write(%struct.b43_wldev* %140, i32 %141, i32 333)
  %143 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %144 = call i32 @B43_NTAB32(i32 16, i32 127)
  %145 = call i32 @b43_ntab_write(%struct.b43_wldev* %143, i32 %144, i32 333)
  br label %146

146:                                              ; preds = %139, %132
  %147 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %148 = call i32 @b43_nphy_gain_ctl_workarounds(%struct.b43_wldev* %147)
  %149 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %150 = call i32 @B43_NTAB16(i32 8, i32 0)
  %151 = call i32 @b43_ntab_write(%struct.b43_wldev* %149, i32 %150, i32 2)
  %152 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %153 = call i32 @B43_NTAB16(i32 8, i32 16)
  %154 = call i32 @b43_ntab_write(%struct.b43_wldev* %152, i32 %153, i32 2)
  %155 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %156 = load i32, i32* @B2056_RX0, align 4
  %157 = load i32, i32* @B2056_RX_MIXA_MAST_BIAS, align 4
  %158 = or i32 %156, %157
  %159 = call i32 @b43_radio_write(%struct.b43_wldev* %155, i32 %158, i32 0)
  %160 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %161 = load i32, i32* @B2056_RX1, align 4
  %162 = load i32, i32* @B2056_RX_MIXA_MAST_BIAS, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @b43_radio_write(%struct.b43_wldev* %160, i32 %163, i32 0)
  %165 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %166 = load i32, i32* @B2056_RX0, align 4
  %167 = load i32, i32* @B2056_RX_MIXA_BIAS_MAIN, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @b43_radio_write(%struct.b43_wldev* %165, i32 %168, i32 6)
  %170 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %171 = load i32, i32* @B2056_RX1, align 4
  %172 = load i32, i32* @B2056_RX_MIXA_BIAS_MAIN, align 4
  %173 = or i32 %171, %172
  %174 = call i32 @b43_radio_write(%struct.b43_wldev* %170, i32 %173, i32 6)
  %175 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %176 = load i32, i32* @B2056_RX0, align 4
  %177 = load i32, i32* @B2056_RX_MIXA_BIAS_AUX, align 4
  %178 = or i32 %176, %177
  %179 = call i32 @b43_radio_write(%struct.b43_wldev* %175, i32 %178, i32 7)
  %180 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %181 = load i32, i32* @B2056_RX1, align 4
  %182 = load i32, i32* @B2056_RX_MIXA_BIAS_AUX, align 4
  %183 = or i32 %181, %182
  %184 = call i32 @b43_radio_write(%struct.b43_wldev* %180, i32 %183, i32 7)
  %185 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %186 = load i32, i32* @B2056_RX0, align 4
  %187 = load i32, i32* @B2056_RX_MIXA_LOB_BIAS, align 4
  %188 = or i32 %186, %187
  %189 = call i32 @b43_radio_write(%struct.b43_wldev* %185, i32 %188, i32 136)
  %190 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %191 = load i32, i32* @B2056_RX1, align 4
  %192 = load i32, i32* @B2056_RX_MIXA_LOB_BIAS, align 4
  %193 = or i32 %191, %192
  %194 = call i32 @b43_radio_write(%struct.b43_wldev* %190, i32 %193, i32 136)
  %195 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %196 = load i32, i32* @B2056_RX0, align 4
  %197 = load i32, i32* @B2056_RX_MIXA_CMFB_IDAC, align 4
  %198 = or i32 %196, %197
  %199 = call i32 @b43_radio_write(%struct.b43_wldev* %195, i32 %198, i32 0)
  %200 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %201 = load i32, i32* @B2056_RX1, align 4
  %202 = load i32, i32* @B2056_RX_MIXA_CMFB_IDAC, align 4
  %203 = or i32 %201, %202
  %204 = call i32 @b43_radio_write(%struct.b43_wldev* %200, i32 %203, i32 0)
  %205 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %206 = load i32, i32* @B2056_RX0, align 4
  %207 = load i32, i32* @B2056_RX_MIXG_CMFB_IDAC, align 4
  %208 = or i32 %206, %207
  %209 = call i32 @b43_radio_write(%struct.b43_wldev* %205, i32 %208, i32 0)
  %210 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %211 = load i32, i32* @B2056_RX1, align 4
  %212 = load i32, i32* @B2056_RX_MIXG_CMFB_IDAC, align 4
  %213 = or i32 %211, %212
  %214 = call i32 @b43_radio_write(%struct.b43_wldev* %210, i32 %213, i32 0)
  %215 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %216 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @B43_BFL2_APLL_WAR, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %146
  %222 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %223 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = call i64 @b43_current_band(i32 %224)
  %226 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %242, label %228

228:                                              ; preds = %221, %146
  %229 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %230 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @B43_BFL2_GPLL_WAR, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %243

235:                                              ; preds = %228
  %236 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %237 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = call i64 @b43_current_band(i32 %238)
  %240 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %235, %221
  store i32 559240, i32* %12, align 4
  br label %244

243:                                              ; preds = %235, %228
  store i32 -2004318072, i32* %12, align 4
  br label %244

244:                                              ; preds = %243, %242
  %245 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %246 = call i32 @B43_NTAB32(i32 30, i32 1)
  %247 = load i32, i32* %12, align 4
  %248 = call i32 @b43_ntab_write(%struct.b43_wldev* %245, i32 %246, i32 %247)
  %249 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %250 = call i32 @B43_NTAB32(i32 30, i32 2)
  %251 = load i32, i32* %12, align 4
  %252 = call i32 @b43_ntab_write(%struct.b43_wldev* %249, i32 %250, i32 %251)
  %253 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %254 = call i32 @B43_NTAB32(i32 30, i32 3)
  %255 = load i32, i32* %12, align 4
  %256 = call i32 @b43_ntab_write(%struct.b43_wldev* %253, i32 %254, i32 %255)
  %257 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %258 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp eq i32 %260, 4
  br i1 %261, label %262, label %280

262:                                              ; preds = %244
  %263 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %264 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = call i64 @b43_current_band(i32 %265)
  %267 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %280

269:                                              ; preds = %262
  %270 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %271 = load i32, i32* @B2056_TX0, align 4
  %272 = load i32, i32* @B2056_TX_GMBB_IDAC, align 4
  %273 = or i32 %271, %272
  %274 = call i32 @b43_radio_write(%struct.b43_wldev* %270, i32 %273, i32 112)
  %275 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %276 = load i32, i32* @B2056_TX1, align 4
  %277 = load i32, i32* @B2056_TX_GMBB_IDAC, align 4
  %278 = or i32 %276, %277
  %279 = call i32 @b43_radio_write(%struct.b43_wldev* %275, i32 %278, i32 112)
  br label %280

280:                                              ; preds = %269, %262, %244
  %281 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %282 = load i32, i32* @B43_NPHY_ED_CRS40ASSERTTHRESH0, align 4
  %283 = call i32 @b43_phy_write(%struct.b43_wldev* %281, i32 %282, i32 1003)
  %284 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %285 = load i32, i32* @B43_NPHY_ED_CRS40ASSERTTHRESH1, align 4
  %286 = call i32 @b43_phy_write(%struct.b43_wldev* %284, i32 %285, i32 1003)
  %287 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %288 = load i32, i32* @B43_NPHY_ED_CRS40DEASSERTTHRESH1, align 4
  %289 = call i32 @b43_phy_write(%struct.b43_wldev* %287, i32 %288, i32 833)
  %290 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %291 = load i32, i32* @B43_NPHY_ED_CRS40DEASSERTTHRESH1, align 4
  %292 = call i32 @b43_phy_write(%struct.b43_wldev* %290, i32 %291, i32 833)
  %293 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %294 = load i32, i32* @B43_NPHY_ED_CRS20LASSERTTHRESH0, align 4
  %295 = call i32 @b43_phy_write(%struct.b43_wldev* %293, i32 %294, i32 1067)
  %296 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %297 = load i32, i32* @B43_NPHY_ED_CRS20LASSERTTHRESH1, align 4
  %298 = call i32 @b43_phy_write(%struct.b43_wldev* %296, i32 %297, i32 1067)
  %299 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %300 = load i32, i32* @B43_NPHY_ED_CRS20LDEASSERTTHRESH0, align 4
  %301 = call i32 @b43_phy_write(%struct.b43_wldev* %299, i32 %300, i32 897)
  %302 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %303 = load i32, i32* @B43_NPHY_ED_CRS20LDEASSERTTHRESH1, align 4
  %304 = call i32 @b43_phy_write(%struct.b43_wldev* %302, i32 %303, i32 897)
  %305 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %306 = load i32, i32* @B43_NPHY_ED_CRS20UASSERTTHRESH0, align 4
  %307 = call i32 @b43_phy_write(%struct.b43_wldev* %305, i32 %306, i32 1067)
  %308 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %309 = load i32, i32* @B43_NPHY_ED_CRS20UASSERTTHRESH1, align 4
  %310 = call i32 @b43_phy_write(%struct.b43_wldev* %308, i32 %309, i32 1067)
  %311 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %312 = load i32, i32* @B43_NPHY_ED_CRS20UDEASSERTTHRESH0, align 4
  %313 = call i32 @b43_phy_write(%struct.b43_wldev* %311, i32 %312, i32 897)
  %314 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %315 = load i32, i32* @B43_NPHY_ED_CRS20UDEASSERTTHRESH1, align 4
  %316 = call i32 @b43_phy_write(%struct.b43_wldev* %314, i32 %315, i32 897)
  %317 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %318 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = icmp sge i32 %320, 6
  br i1 %321, label %322, label %330

322:                                              ; preds = %280
  %323 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %324 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @B43_BFL2_SINGLEANT_CCK, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %322
  br label %330

330:                                              ; preds = %329, %322, %280
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_ntab_read(%struct.b43_wldev*, i32) #2

declare dso_local i32 @B43_NTAB32(i32, i32) #2

declare dso_local i32 @b43_ntab_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_nphy_set_rf_sequence(%struct.b43_wldev*, i32, i32*, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i64 @b43_nphy_ipa(%struct.b43_wldev*) #2

declare dso_local i64 @b43_current_band(i32) #2

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #2

declare dso_local i32 @b43_nphy_gain_ctl_workarounds(%struct.b43_wldev*) #2

declare dso_local i32 @B43_NTAB16(i32, i32) #2

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
