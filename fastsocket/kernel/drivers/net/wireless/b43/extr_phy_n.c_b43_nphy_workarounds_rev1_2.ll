; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_workarounds_rev1_2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_workarounds_rev1_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy, i32, %struct.TYPE_2__* }
%struct.b43_phy = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i64 }
%struct.TYPE_2__ = type { i64, %struct.ssb_sprom* }
%struct.ssb_sprom = type { i32 }

@__const.b43_nphy_workarounds_rev1_2.events1 = private unnamed_addr constant [7 x i32] [i32 0, i32 1, i32 2, i32 8, i32 4, i32 5, i32 3], align 16
@__const.b43_nphy_workarounds_rev1_2.delays1 = private unnamed_addr constant [7 x i32] [i32 8, i32 6, i32 6, i32 2, i32 4, i32 60, i32 1], align 16
@__const.b43_nphy_workarounds_rev1_2.events2 = private unnamed_addr constant [7 x i32] [i32 0, i32 3, i32 5, i32 4, i32 2, i32 1, i32 8], align 16
@__const.b43_nphy_workarounds_rev1_2.delays2 = private unnamed_addr constant [7 x i32] [i32 8, i32 6, i32 2, i32 4, i32 4, i32 6, i32 1], align 16
@B43_BFL2_SKWRKFEM_BRD = common dso_local global i32 0, align 4
@BCMA_BOARD_TYPE_BCM943224M93 = common dso_local global i64 0, align 8
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@B2055_C1_TX_RF_SPARE = common dso_local global i32 0, align 4
@B2055_C2_TX_RF_SPARE = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_LUT_TRSW_LO1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_LUT_TRSW_UP1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_LUT_TRSW_LO2 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_LUT_TRSW_UP2 = common dso_local global i32 0, align 4
@B43_NPHY_RXCTL = common dso_local global i32 0, align 4
@B43_HF_MLADVW = common dso_local global i32 0, align 4
@B43_NPHY_CRSCHECK2 = common dso_local global i32 0, align 4
@B43_NPHY_CRSCHECK3 = common dso_local global i32 0, align 4
@B43_NPHY_SCRAM_SIGCTL = common dso_local global i32 0, align 4
@B43_NPHY_SCRAM_SIGCTL_SCM = common dso_local global i32 0, align 4
@B43_NPHY_PHASETR_A0 = common dso_local global i32 0, align 4
@B43_NPHY_PHASETR_A1 = common dso_local global i32 0, align 4
@B43_NPHY_PHASETR_A2 = common dso_local global i32 0, align 4
@B43_NPHY_PHASETR_B0 = common dso_local global i32 0, align 4
@B43_NPHY_PHASETR_B1 = common dso_local global i32 0, align 4
@B43_NPHY_PHASETR_B2 = common dso_local global i32 0, align 4
@B43_NPHY_PIL_DW1 = common dso_local global i32 0, align 4
@B43_NPHY_PIL_DW_64QAM = common dso_local global i32 0, align 4
@B43_NPHY_TXF_20CO_S2B1 = common dso_local global i32 0, align 4
@B43_NPHY_TXF_20CO_S2B2 = common dso_local global i32 0, align 4
@B43_NPHY_TXF_20CO_S2B3 = common dso_local global i32 0, align 4
@B43_NPHY_FINERX2_CGC = common dso_local global i32 0, align 4
@B43_NPHY_FINERX2_CGC_DECGC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_workarounds_rev1_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_workarounds_rev1_2(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.ssb_sprom*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca %struct.b43_phy_n*, align 8
  %6 = alloca [7 x i32], align 16
  %7 = alloca [7 x i32], align 16
  %8 = alloca [7 x i32], align 16
  %9 = alloca [7 x i32], align 16
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.ssb_sprom*, %struct.ssb_sprom** %13, align 8
  store %struct.ssb_sprom* %14, %struct.ssb_sprom** %3, align 8
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 0
  store %struct.b43_phy* %16, %struct.b43_phy** %4, align 8
  %17 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %18 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %17, i32 0, i32 1
  %19 = load %struct.b43_phy_n*, %struct.b43_phy_n** %18, align 8
  store %struct.b43_phy_n* %19, %struct.b43_phy_n** %5, align 8
  %20 = bitcast [7 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([7 x i32]* @__const.b43_nphy_workarounds_rev1_2.events1 to i8*), i64 28, i1 false)
  %21 = bitcast [7 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([7 x i32]* @__const.b43_nphy_workarounds_rev1_2.delays1 to i8*), i64 28, i1 false)
  %22 = bitcast [7 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([7 x i32]* @__const.b43_nphy_workarounds_rev1_2.events2 to i8*), i64 28, i1 false)
  %23 = bitcast [7 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([7 x i32]* @__const.b43_nphy_workarounds_rev1_2.delays2 to i8*), i64 28, i1 false)
  %24 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %25 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @B43_BFL2_SKWRKFEM_BRD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %1
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %32 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BCMA_BOARD_TYPE_BCM943224M93, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30, %1
  %39 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  store i32 1, i32* %39, align 16
  %40 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 5
  store i32 20, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %30
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %43 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @b43_current_band(i32 %44)
  %46 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %41
  %49 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %50 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %55 = load i32, i32* @B2055_C1_TX_RF_SPARE, align 4
  %56 = call i32 @b43_radio_mask(%struct.b43_wldev* %54, i32 %55, i32 -9)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = load i32, i32* @B2055_C2_TX_RF_SPARE, align 4
  %59 = call i32 @b43_radio_mask(%struct.b43_wldev* %57, i32 %58, i32 -9)
  br label %67

60:                                               ; preds = %48, %41
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = load i32, i32* @B2055_C1_TX_RF_SPARE, align 4
  %63 = call i32 @b43_radio_set(%struct.b43_wldev* %61, i32 %62, i32 8)
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %65 = load i32, i32* @B2055_C2_TX_RF_SPARE, align 4
  %66 = call i32 @b43_radio_set(%struct.b43_wldev* %64, i32 %65, i32 8)
  br label %67

67:                                               ; preds = %60, %53
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %69 = call i32 @B43_NTAB16(i32 8, i32 0)
  %70 = call i32 @b43_ntab_write(%struct.b43_wldev* %68, i32 %69, i32 10)
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %72 = call i32 @B43_NTAB16(i32 8, i32 16)
  %73 = call i32 @b43_ntab_write(%struct.b43_wldev* %71, i32 %72, i32 10)
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %75 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %77, 3
  br i1 %78, label %79, label %86

79:                                               ; preds = %67
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %81 = call i32 @B43_NTAB16(i32 8, i32 2)
  %82 = call i32 @b43_ntab_write(%struct.b43_wldev* %80, i32 %81, i32 52650)
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %84 = call i32 @B43_NTAB16(i32 8, i32 18)
  %85 = call i32 @b43_ntab_write(%struct.b43_wldev* %83, i32 %84, i32 52650)
  br label %86

86:                                               ; preds = %79, %67
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %88 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %90, 2
  br i1 %91, label %92, label %111

92:                                               ; preds = %86
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %94 = call i32 @B43_NTAB16(i32 8, i32 8)
  %95 = call i32 @b43_ntab_write(%struct.b43_wldev* %93, i32 %94, i32 0)
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %97 = call i32 @B43_NTAB16(i32 8, i32 24)
  %98 = call i32 @b43_ntab_write(%struct.b43_wldev* %96, i32 %97, i32 0)
  %99 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %100 = call i32 @B43_NTAB16(i32 8, i32 7)
  %101 = call i32 @b43_ntab_write(%struct.b43_wldev* %99, i32 %100, i32 31403)
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %103 = call i32 @B43_NTAB16(i32 8, i32 23)
  %104 = call i32 @b43_ntab_write(%struct.b43_wldev* %102, i32 %103, i32 31403)
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %106 = call i32 @B43_NTAB16(i32 8, i32 6)
  %107 = call i32 @b43_ntab_write(%struct.b43_wldev* %105, i32 %106, i32 2048)
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %109 = call i32 @B43_NTAB16(i32 8, i32 22)
  %110 = call i32 @b43_ntab_write(%struct.b43_wldev* %108, i32 %109, i32 2048)
  br label %111

111:                                              ; preds = %92, %86
  %112 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %113 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_LO1, align 4
  %114 = call i32 @b43_phy_write(%struct.b43_wldev* %112, i32 %113, i32 728)
  %115 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %116 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_UP1, align 4
  %117 = call i32 @b43_phy_write(%struct.b43_wldev* %115, i32 %116, i32 769)
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %119 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_LO2, align 4
  %120 = call i32 @b43_phy_write(%struct.b43_wldev* %118, i32 %119, i32 728)
  %121 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %122 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_UP2, align 4
  %123 = call i32 @b43_phy_write(%struct.b43_wldev* %121, i32 %122, i32 769)
  %124 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %125 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %126 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  %127 = call i32 @b43_nphy_set_rf_sequence(%struct.b43_wldev* %124, i32 0, i32* %125, i32* %126, i32 7)
  %128 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %129 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %130 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 0
  %131 = call i32 @b43_nphy_set_rf_sequence(%struct.b43_wldev* %128, i32 1, i32* %129, i32* %130, i32 7)
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %133 = call i32 @b43_nphy_gain_ctl_workarounds(%struct.b43_wldev* %132)
  %134 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %135 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %137, 2
  br i1 %138, label %139, label %153

139:                                              ; preds = %111
  %140 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %141 = load i32, i32* @B43_NPHY_RXCTL, align 4
  %142 = call i32 @b43_phy_read(%struct.b43_wldev* %140, i32 %141)
  %143 = and i32 %142, 2
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %147 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %148 = call i32 @b43_hf_read(%struct.b43_wldev* %147)
  %149 = load i32, i32* @B43_HF_MLADVW, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @b43_hf_write(%struct.b43_wldev* %146, i32 %150)
  br label %152

152:                                              ; preds = %145, %139
  br label %167

153:                                              ; preds = %111
  %154 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %155 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 2
  br i1 %158, label %159, label %166

159:                                              ; preds = %153
  %160 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %161 = load i32, i32* @B43_NPHY_CRSCHECK2, align 4
  %162 = call i32 @b43_phy_write(%struct.b43_wldev* %160, i32 %161, i32 0)
  %163 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %164 = load i32, i32* @B43_NPHY_CRSCHECK3, align 4
  %165 = call i32 @b43_phy_write(%struct.b43_wldev* %163, i32 %164, i32 0)
  br label %166

166:                                              ; preds = %159, %153
  br label %167

167:                                              ; preds = %166, %152
  %168 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %169 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %171, 2
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %175 = load i32, i32* @B43_NPHY_SCRAM_SIGCTL, align 4
  %176 = load i32, i32* @B43_NPHY_SCRAM_SIGCTL_SCM, align 4
  %177 = xor i32 %176, -1
  %178 = call i32 @b43_phy_mask(%struct.b43_wldev* %174, i32 %175, i32 %177)
  br label %179

179:                                              ; preds = %173, %167
  %180 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %181 = load i32, i32* @B43_NPHY_PHASETR_A0, align 4
  %182 = call i32 @b43_phy_write(%struct.b43_wldev* %180, i32 %181, i32 293)
  %183 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %184 = load i32, i32* @B43_NPHY_PHASETR_A1, align 4
  %185 = call i32 @b43_phy_write(%struct.b43_wldev* %183, i32 %184, i32 435)
  %186 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %187 = load i32, i32* @B43_NPHY_PHASETR_A2, align 4
  %188 = call i32 @b43_phy_write(%struct.b43_wldev* %186, i32 %187, i32 261)
  %189 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %190 = load i32, i32* @B43_NPHY_PHASETR_B0, align 4
  %191 = call i32 @b43_phy_write(%struct.b43_wldev* %189, i32 %190, i32 366)
  %192 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %193 = load i32, i32* @B43_NPHY_PHASETR_B1, align 4
  %194 = call i32 @b43_phy_write(%struct.b43_wldev* %192, i32 %193, i32 205)
  %195 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %196 = load i32, i32* @B43_NPHY_PHASETR_B2, align 4
  %197 = call i32 @b43_phy_write(%struct.b43_wldev* %195, i32 %196, i32 32)
  %198 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %199 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp slt i32 %201, 3
  br i1 %202, label %203, label %219

203:                                              ; preds = %179
  %204 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %205 = load i32, i32* @B43_NPHY_PIL_DW1, align 4
  %206 = load i32, i32* @B43_NPHY_PIL_DW_64QAM, align 4
  %207 = xor i32 %206, -1
  %208 = and i32 %207, 65535
  %209 = call i32 @b43_phy_mask(%struct.b43_wldev* %204, i32 %205, i32 %208)
  %210 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %211 = load i32, i32* @B43_NPHY_TXF_20CO_S2B1, align 4
  %212 = call i32 @b43_phy_write(%struct.b43_wldev* %210, i32 %211, i32 181)
  %213 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %214 = load i32, i32* @B43_NPHY_TXF_20CO_S2B2, align 4
  %215 = call i32 @b43_phy_write(%struct.b43_wldev* %213, i32 %214, i32 164)
  %216 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %217 = load i32, i32* @B43_NPHY_TXF_20CO_S2B3, align 4
  %218 = call i32 @b43_phy_write(%struct.b43_wldev* %216, i32 %217, i32 0)
  br label %219

219:                                              ; preds = %203, %179
  %220 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %221 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp eq i32 %223, 2
  br i1 %224, label %225, label %230

225:                                              ; preds = %219
  %226 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %227 = load i32, i32* @B43_NPHY_FINERX2_CGC, align 4
  %228 = load i32, i32* @B43_NPHY_FINERX2_CGC_DECGC, align 4
  %229 = call i32 @b43_phy_set(%struct.b43_wldev* %226, i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %225, %219
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @b43_current_band(i32) #2

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_ntab_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @B43_NTAB16(i32, i32) #2

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_nphy_set_rf_sequence(%struct.b43_wldev*, i32, i32*, i32*, i32) #2

declare dso_local i32 @b43_nphy_gain_ctl_workarounds(%struct.b43_wldev*) #2

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_hf_write(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_hf_read(%struct.b43_wldev*) #2

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
