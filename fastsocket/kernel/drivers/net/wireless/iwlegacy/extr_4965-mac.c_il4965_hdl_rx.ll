; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_hdl_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_hdl_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { i32, %struct.il_rx_phy_res, i32 }
%struct.il_rx_phy_res = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.il_rx_buf = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_rx_status = type { i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.il_rx_pkt = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.il_rx_mpdu_res_start = type { i32 }

@N_RX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"MPDU frame without cached PHY data\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"dsp size out of range [0,20]: %d/n\00", align 1
@RX_RES_STATUS_NO_CRC32_ERROR = common dso_local global i32 0, align 4
@RX_RES_STATUS_NO_RXE_OVERFLOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Bad CRC or FIFO: 0x%08X.\0A\00", align 1
@RX_RES_PHY_FLAGS_BAND_24_MSK = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Rssi %d, TSF %llu\0A\00", align 1
@RX_RES_PHY_FLAGS_ANTENNA_MSK = common dso_local global i32 0, align 4
@RX_RES_PHY_FLAGS_ANTENNA_POS = common dso_local global i32 0, align 4
@RX_RES_PHY_FLAGS_SHORT_PREAMBLE_MSK = common dso_local global i32 0, align 4
@RX_FLAG_SHORTPRE = common dso_local global i32 0, align 4
@RATE_MCS_HT_MSK = common dso_local global i32 0, align 4
@RX_FLAG_HT = common dso_local global i32 0, align 4
@RATE_MCS_HT40_MSK = common dso_local global i32 0, align 4
@RX_FLAG_40MHZ = common dso_local global i32 0, align 4
@RATE_MCS_SGI_MSK = common dso_local global i32 0, align 4
@RX_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@RX_RES_PHY_FLAGS_AGG_MSK = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_DETAILS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.il_rx_buf*)* @il4965_hdl_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_hdl_rx(%struct.il_priv* %0, %struct.il_rx_buf* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_buf*, align 8
  %5 = alloca %struct.ieee80211_hdr*, align 8
  %6 = alloca %struct.ieee80211_rx_status, align 8
  %7 = alloca %struct.il_rx_pkt*, align 8
  %8 = alloca %struct.il_rx_phy_res*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.il_rx_mpdu_res_start*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_rx_buf* %1, %struct.il_rx_buf** %4, align 8
  %14 = bitcast %struct.ieee80211_rx_status* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 40, i1 false)
  %15 = load %struct.il_rx_buf*, %struct.il_rx_buf** %4, align 8
  %16 = call %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf* %15)
  store %struct.il_rx_pkt* %16, %struct.il_rx_pkt** %7, align 8
  %17 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %7, align 8
  %18 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @N_RX, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %65

23:                                               ; preds = %2
  %24 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %7, align 8
  %25 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to %struct.il_rx_phy_res*
  store %struct.il_rx_phy_res* %29, %struct.il_rx_phy_res** %8, align 8
  %30 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %7, align 8
  %31 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, 28
  %36 = load %struct.il_rx_phy_res*, %struct.il_rx_phy_res** %8, align 8
  %37 = getelementptr inbounds %struct.il_rx_phy_res, %struct.il_rx_phy_res* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %35, %39
  %41 = inttoptr i64 %40 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %41, %struct.ieee80211_hdr** %5, align 8
  %42 = load %struct.il_rx_phy_res*, %struct.il_rx_phy_res** %8, align 8
  %43 = getelementptr inbounds %struct.il_rx_phy_res, %struct.il_rx_phy_res* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16_to_cpu(i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %7, align 8
  %47 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, 28
  %52 = load %struct.il_rx_phy_res*, %struct.il_rx_phy_res** %8, align 8
  %53 = getelementptr inbounds %struct.il_rx_phy_res, %struct.il_rx_phy_res* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %51, %55
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %56, %58
  %60 = inttoptr i64 %59 to i32*
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i8* @le32_to_cpu(i32 %62)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %12, align 4
  br label %109

65:                                               ; preds = %2
  %66 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %67 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %65
  %72 = call i32 @IL_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %263

73:                                               ; preds = %65
  %74 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %75 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store %struct.il_rx_phy_res* %76, %struct.il_rx_phy_res** %8, align 8
  %77 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %7, align 8
  %78 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to %struct.il_rx_mpdu_res_start*
  store %struct.il_rx_mpdu_res_start* %82, %struct.il_rx_mpdu_res_start** %10, align 8
  %83 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %7, align 8
  %84 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = add i64 %87, 4
  %89 = inttoptr i64 %88 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %89, %struct.ieee80211_hdr** %5, align 8
  %90 = load %struct.il_rx_mpdu_res_start*, %struct.il_rx_mpdu_res_start** %10, align 8
  %91 = getelementptr inbounds %struct.il_rx_mpdu_res_start, %struct.il_rx_mpdu_res_start* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @le16_to_cpu(i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %7, align 8
  %95 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = add i64 %98, 4
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = add i64 %99, %101
  %103 = inttoptr i64 %102 to i32*
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %9, align 4
  %105 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i8* @le32_to_cpu(i32 %106)
  %108 = call i32 @il4965_translate_rx_status(%struct.il_priv* %105, i8* %107)
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %73, %23
  %110 = load %struct.il_rx_phy_res*, %struct.il_rx_phy_res** %8, align 8
  %111 = getelementptr inbounds %struct.il_rx_phy_res, %struct.il_rx_phy_res* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %112, 20
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %109
  %118 = load %struct.il_rx_phy_res*, %struct.il_rx_phy_res** %8, align 8
  %119 = getelementptr inbounds %struct.il_rx_phy_res, %struct.il_rx_phy_res* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @D_DROP(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  br label %263

122:                                              ; preds = %109
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @RX_RES_STATUS_NO_CRC32_ERROR, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @RX_RES_STATUS_NO_RXE_OVERFLOW, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %127, %122
  %133 = load i32, i32* %9, align 4
  %134 = call i8* @le32_to_cpu(i32 %133)
  %135 = call i32 @D_RX(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %134)
  br label %263

136:                                              ; preds = %127
  %137 = load %struct.il_rx_phy_res*, %struct.il_rx_phy_res** %8, align 8
  %138 = getelementptr inbounds %struct.il_rx_phy_res, %struct.il_rx_phy_res* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @le32_to_cpu(i32 %139)
  %141 = ptrtoint i8* %140 to i32
  store i32 %141, i32* %13, align 4
  %142 = load %struct.il_rx_phy_res*, %struct.il_rx_phy_res** %8, align 8
  %143 = getelementptr inbounds %struct.il_rx_phy_res, %struct.il_rx_phy_res* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @le64_to_cpu(i32 %144)
  %146 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 3
  store i64 %145, i64* %146, align 8
  %147 = load %struct.il_rx_phy_res*, %struct.il_rx_phy_res** %8, align 8
  %148 = getelementptr inbounds %struct.il_rx_phy_res, %struct.il_rx_phy_res* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @RX_RES_PHY_FLAGS_BAND_24_MSK, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %136
  %154 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  br label %157

155:                                              ; preds = %136
  %156 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  %159 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 5
  store i32 %158, i32* %159, align 4
  %160 = load %struct.il_rx_phy_res*, %struct.il_rx_phy_res** %8, align 8
  %161 = getelementptr inbounds %struct.il_rx_phy_res, %struct.il_rx_phy_res* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @le16_to_cpu(i32 %162)
  %164 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @ieee80211_channel_to_frequency(i32 %163, i32 %165)
  %167 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 7
  store i32 %166, i32* %167, align 4
  %168 = load i32, i32* %13, align 4
  %169 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @il4965_hwrate_to_mac80211_idx(i32 %168, i32 %170)
  %172 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 6
  store i32 %171, i32* %172, align 8
  %173 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 2
  store i32 0, i32* %173, align 8
  %174 = load %struct.il_rx_phy_res*, %struct.il_rx_phy_res** %8, align 8
  %175 = getelementptr inbounds %struct.il_rx_phy_res, %struct.il_rx_phy_res* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = call i8* @le32_to_cpu(i32 %176)
  %178 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %179 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %178, i32 0, i32 1
  store i8* %177, i8** %179, align 8
  %180 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %181 = load %struct.il_rx_phy_res*, %struct.il_rx_phy_res** %8, align 8
  %182 = call i32 @il4965_calc_rssi(%struct.il_priv* %180, %struct.il_rx_phy_res* %181)
  %183 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 4
  store i32 %182, i32* %183, align 8
  %184 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @D_STATS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %185, i64 %187)
  %189 = load %struct.il_rx_phy_res*, %struct.il_rx_phy_res** %8, align 8
  %190 = getelementptr inbounds %struct.il_rx_phy_res, %struct.il_rx_phy_res* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @le16_to_cpu(i32 %191)
  %193 = load i32, i32* @RX_RES_PHY_FLAGS_ANTENNA_MSK, align 4
  %194 = and i32 %192, %193
  %195 = load i32, i32* @RX_RES_PHY_FLAGS_ANTENNA_POS, align 4
  %196 = ashr i32 %194, %195
  %197 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 0
  store i32 %196, i32* %197, align 8
  %198 = load %struct.il_rx_phy_res*, %struct.il_rx_phy_res** %8, align 8
  %199 = getelementptr inbounds %struct.il_rx_phy_res, %struct.il_rx_phy_res* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @RX_RES_PHY_FLAGS_SHORT_PREAMBLE_MSK, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %157
  %205 = load i32, i32* @RX_FLAG_SHORTPRE, align 4
  %206 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %205
  store i32 %208, i32* %206, align 8
  br label %209

209:                                              ; preds = %204, %157
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %209
  %215 = load i32, i32* @RX_FLAG_HT, align 4
  %216 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = or i32 %217, %215
  store i32 %218, i32* %216, align 8
  br label %219

219:                                              ; preds = %214, %209
  %220 = load i32, i32* %13, align 4
  %221 = load i32, i32* @RATE_MCS_HT40_MSK, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %219
  %225 = load i32, i32* @RX_FLAG_40MHZ, align 4
  %226 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = or i32 %227, %225
  store i32 %228, i32* %226, align 8
  br label %229

229:                                              ; preds = %224, %219
  %230 = load i32, i32* %13, align 4
  %231 = load i32, i32* @RATE_MCS_SGI_MSK, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %229
  %235 = load i32, i32* @RX_FLAG_SHORT_GI, align 4
  %236 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %235
  store i32 %238, i32* %236, align 8
  br label %239

239:                                              ; preds = %234, %229
  %240 = load %struct.il_rx_phy_res*, %struct.il_rx_phy_res** %8, align 8
  %241 = getelementptr inbounds %struct.il_rx_phy_res, %struct.il_rx_phy_res* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @RX_RES_PHY_FLAGS_AGG_MSK, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %256

246:                                              ; preds = %239
  %247 = load i32, i32* @RX_FLAG_AMPDU_DETAILS, align 4
  %248 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = or i32 %249, %247
  store i32 %250, i32* %248, align 8
  %251 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %252 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 1
  store i32 %254, i32* %255, align 4
  br label %256

256:                                              ; preds = %246, %239
  %257 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %258 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %259 = load i32, i32* %11, align 4
  %260 = load i32, i32* %12, align 4
  %261 = load %struct.il_rx_buf*, %struct.il_rx_buf** %4, align 8
  %262 = call i32 @il4965_pass_packet_to_mac80211(%struct.il_priv* %257, %struct.ieee80211_hdr* %258, i32 %259, i32 %260, %struct.il_rx_buf* %261, %struct.ieee80211_rx_status* %6)
  br label %263

263:                                              ; preds = %256, %132, %117, %71
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf*) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i8* @le32_to_cpu(i32) #2

declare dso_local i32 @IL_ERR(i8*) #2

declare dso_local i32 @il4965_translate_rx_status(%struct.il_priv*, i8*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @D_DROP(i8*, i32) #2

declare dso_local i32 @D_RX(i8*, i8*) #2

declare dso_local i64 @le64_to_cpu(i32) #2

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #2

declare dso_local i32 @il4965_hwrate_to_mac80211_idx(i32, i32) #2

declare dso_local i32 @il4965_calc_rssi(%struct.il_priv*, %struct.il_rx_phy_res*) #2

declare dso_local i32 @D_STATS(i8*, i32, i64) #2

declare dso_local i32 @il4965_pass_packet_to_mac80211(%struct.il_priv*, %struct.ieee80211_hdr*, i32, i32, %struct.il_rx_buf*, %struct.ieee80211_rx_status*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
