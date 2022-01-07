; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rx.c_iwlagn_rx_reply_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rx.c_iwlagn_rx_reply_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i8*, %struct.iwl_rx_phy_res, i32 }
%struct.iwl_rx_phy_res = type { i32, i32, i32, i32, i32, i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_device_cmd = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_rx_status = type { i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.iwl_rx_packet = type { i32 }
%struct.iwl_rx_mpdu_res_start = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"MPDU frame without cached PHY data\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"dsp size out of range [0,20]: %d\0A\00", align 1
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
@RX_RES_PHY_FLAGS_AGG_MSK = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_DETAILS = common dso_local global i32 0, align 4
@RATE_MCS_HT_MSK = common dso_local global i32 0, align 4
@RX_FLAG_HT = common dso_local global i32 0, align 4
@RATE_MCS_HT40_MSK = common dso_local global i32 0, align 4
@RX_FLAG_40MHZ = common dso_local global i32 0, align 4
@RATE_MCS_SGI_MSK = common dso_local global i32 0, align 4
@RX_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@RATE_MCS_GF_MSK = common dso_local global i32 0, align 4
@RX_FLAG_HT_GF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_rx_cmd_buffer*, %struct.iwl_device_cmd*)* @iwlagn_rx_reply_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_rx_reply_rx(%struct.iwl_priv* %0, %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_device_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %7 = alloca %struct.iwl_device_cmd*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.ieee80211_rx_status, align 8
  %10 = alloca %struct.iwl_rx_packet*, align 8
  %11 = alloca %struct.iwl_rx_phy_res*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iwl_rx_mpdu_res_start*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %6, align 8
  store %struct.iwl_device_cmd* %2, %struct.iwl_device_cmd** %7, align 8
  %17 = bitcast %struct.ieee80211_rx_status* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 40, i1 false)
  %18 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %6, align 8
  %19 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %18)
  store %struct.iwl_rx_packet* %19, %struct.iwl_rx_packet** %10, align 8
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %21 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %26 = call i32 @IWL_ERR(%struct.iwl_priv* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %224

27:                                               ; preds = %3
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %29 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %28, i32 0, i32 2
  store %struct.iwl_rx_phy_res* %29, %struct.iwl_rx_phy_res** %11, align 8
  %30 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %10, align 8
  %31 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to %struct.iwl_rx_mpdu_res_start*
  store %struct.iwl_rx_mpdu_res_start* %34, %struct.iwl_rx_mpdu_res_start** %13, align 8
  %35 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %10, align 8
  %36 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, 4
  %40 = inttoptr i64 %39 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %40, %struct.ieee80211_hdr** %8, align 8
  %41 = load %struct.iwl_rx_mpdu_res_start*, %struct.iwl_rx_mpdu_res_start** %13, align 8
  %42 = getelementptr inbounds %struct.iwl_rx_mpdu_res_start, %struct.iwl_rx_mpdu_res_start* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le16_to_cpu(i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %10, align 8
  %46 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 4
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %49, %51
  %53 = inttoptr i64 %52 to i32*
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i8* @le32_to_cpu(i32 %56)
  %58 = call i32 @iwlagn_translate_rx_status(%struct.iwl_priv* %55, i8* %57)
  store i32 %58, i32* %15, align 4
  %59 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %11, align 8
  %60 = getelementptr inbounds %struct.iwl_rx_phy_res, %struct.iwl_rx_phy_res* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 20
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %27
  %67 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %68 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %11, align 8
  %69 = getelementptr inbounds %struct.iwl_rx_phy_res, %struct.iwl_rx_phy_res* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @IWL_DEBUG_DROP(%struct.iwl_priv* %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  store i32 0, i32* %4, align 4
  br label %224

72:                                               ; preds = %27
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @RX_RES_STATUS_NO_CRC32_ERROR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @RX_RES_STATUS_NO_RXE_OVERFLOW, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77, %72
  %83 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i8* @le32_to_cpu(i32 %84)
  %86 = call i32 @IWL_DEBUG_RX(%struct.iwl_priv* %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %85)
  store i32 0, i32* %4, align 4
  br label %224

87:                                               ; preds = %77
  %88 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %11, align 8
  %89 = getelementptr inbounds %struct.iwl_rx_phy_res, %struct.iwl_rx_phy_res* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @le32_to_cpu(i32 %90)
  %92 = ptrtoint i8* %91 to i32
  store i32 %92, i32* %16, align 4
  %93 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %11, align 8
  %94 = getelementptr inbounds %struct.iwl_rx_phy_res, %struct.iwl_rx_phy_res* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @le64_to_cpu(i32 %95)
  %97 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 3
  store i64 %96, i64* %97, align 8
  %98 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %11, align 8
  %99 = getelementptr inbounds %struct.iwl_rx_phy_res, %struct.iwl_rx_phy_res* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @RX_RES_PHY_FLAGS_BAND_24_MSK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %87
  %105 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  br label %108

106:                                              ; preds = %87
  %107 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 5
  store i32 %109, i32* %110, align 4
  %111 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %11, align 8
  %112 = getelementptr inbounds %struct.iwl_rx_phy_res, %struct.iwl_rx_phy_res* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le16_to_cpu(i32 %113)
  %115 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ieee80211_channel_to_frequency(i32 %114, i32 %116)
  %118 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 7
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* %16, align 4
  %120 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @iwlagn_hwrate_to_mac80211_idx(i32 %119, i32 %121)
  %123 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 6
  store i32 %122, i32* %123, align 8
  %124 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 1
  store i32 0, i32* %124, align 4
  %125 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %11, align 8
  %126 = getelementptr inbounds %struct.iwl_rx_phy_res, %struct.iwl_rx_phy_res* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @le32_to_cpu(i32 %127)
  %129 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %130 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  %131 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %132 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %11, align 8
  %133 = call i32 @iwlagn_calc_rssi(%struct.iwl_priv* %131, %struct.iwl_rx_phy_res* %132)
  %134 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 4
  store i32 %133, i32* %134, align 8
  %135 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %136 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @IWL_DEBUG_STATS_LIMIT(%struct.iwl_priv* %135, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %137, i64 %139)
  %141 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %11, align 8
  %142 = getelementptr inbounds %struct.iwl_rx_phy_res, %struct.iwl_rx_phy_res* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @le16_to_cpu(i32 %143)
  %145 = load i32, i32* @RX_RES_PHY_FLAGS_ANTENNA_MSK, align 4
  %146 = and i32 %144, %145
  %147 = load i32, i32* @RX_RES_PHY_FLAGS_ANTENNA_POS, align 4
  %148 = ashr i32 %146, %147
  %149 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 0
  store i32 %148, i32* %149, align 8
  %150 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %11, align 8
  %151 = getelementptr inbounds %struct.iwl_rx_phy_res, %struct.iwl_rx_phy_res* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @RX_RES_PHY_FLAGS_SHORT_PREAMBLE_MSK, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %108
  %157 = load i32, i32* @RX_FLAG_SHORTPRE, align 4
  %158 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %157
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %156, %108
  %162 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %11, align 8
  %163 = getelementptr inbounds %struct.iwl_rx_phy_res, %struct.iwl_rx_phy_res* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @RX_RES_PHY_FLAGS_AGG_MSK, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %161
  %169 = load i32, i32* @RX_FLAG_AMPDU_DETAILS, align 4
  %170 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %169
  store i32 %172, i32* %170, align 4
  %173 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %174 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 2
  store i32 %175, i32* %176, align 8
  br label %177

177:                                              ; preds = %168, %161
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = load i32, i32* @RX_FLAG_HT, align 4
  %184 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %183
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %182, %177
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* @RATE_MCS_HT40_MSK, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %187
  %193 = load i32, i32* @RX_FLAG_40MHZ, align 4
  %194 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %193
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %192, %187
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* @RATE_MCS_SGI_MSK, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %197
  %203 = load i32, i32* @RX_FLAG_SHORT_GI, align 4
  %204 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %203
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %202, %197
  %208 = load i32, i32* %16, align 4
  %209 = load i32, i32* @RATE_MCS_GF_MSK, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %207
  %213 = load i32, i32* @RX_FLAG_HT_GF, align 4
  %214 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %213
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %212, %207
  %218 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %219 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %220 = load i32, i32* %14, align 4
  %221 = load i32, i32* %15, align 4
  %222 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %6, align 8
  %223 = call i32 @iwlagn_pass_packet_to_mac80211(%struct.iwl_priv* %218, %struct.ieee80211_hdr* %219, i32 %220, i32 %221, %struct.iwl_rx_cmd_buffer* %222, %struct.ieee80211_rx_status* %9)
  store i32 0, i32* %4, align 4
  br label %224

224:                                              ; preds = %217, %82, %66, %24
  %225 = load i32, i32* %4, align 4
  ret i32 %225
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #2

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @iwlagn_translate_rx_status(%struct.iwl_priv*, i8*) #2

declare dso_local i8* @le32_to_cpu(i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @IWL_DEBUG_DROP(%struct.iwl_priv*, i8*, i32) #2

declare dso_local i32 @IWL_DEBUG_RX(%struct.iwl_priv*, i8*, i8*) #2

declare dso_local i64 @le64_to_cpu(i32) #2

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #2

declare dso_local i32 @iwlagn_hwrate_to_mac80211_idx(i32, i32) #2

declare dso_local i32 @iwlagn_calc_rssi(%struct.iwl_priv*, %struct.iwl_rx_phy_res*) #2

declare dso_local i32 @IWL_DEBUG_STATS_LIMIT(%struct.iwl_priv*, i8*, i32, i64) #2

declare dso_local i32 @iwlagn_pass_packet_to_mac80211(%struct.iwl_priv*, %struct.ieee80211_hdr*, i32, i32, %struct.iwl_rx_cmd_buffer*, %struct.ieee80211_rx_status*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
