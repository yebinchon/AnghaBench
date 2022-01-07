; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rx.c_iwl_mvm_rx_rx_mpdu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rx.c_iwl_mvm_rx_rx_mpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, %struct.iwl_rx_phy_info }
%struct.iwl_rx_phy_info = type { i32, i32, i32, i32, i32, i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_device_cmd = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_rx_status = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i8* }
%struct.iwl_rx_packet = type { i32 }
%struct.iwl_rx_mpdu_res_start = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Bad decryption results 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"dsp size out of range [0,20]: %d\0A\00", align 1
@RX_MPDU_RES_STATUS_CRC_OK = common dso_local global i32 0, align 4
@RX_MPDU_RES_STATUS_OVERRUN_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Bad CRC or FIFO: 0x%08X.\0A\00", align 1
@RX_RES_PHY_FLAGS_BAND_24 = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Rssi %d, TSF %llu\0A\00", align 1
@RX_RES_PHY_FLAGS_ANTENNA = common dso_local global i32 0, align 4
@RX_RES_PHY_FLAGS_ANTENNA_POS = common dso_local global i32 0, align 4
@RX_RES_PHY_FLAGS_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@RX_FLAG_SHORTPRE = common dso_local global i32 0, align 4
@RX_RES_PHY_FLAGS_AGG = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_DETAILS = common dso_local global i32 0, align 4
@RATE_MCS_CHAN_WIDTH_MSK = common dso_local global i32 0, align 4
@RX_FLAG_40MHZ = common dso_local global i32 0, align 4
@RX_FLAG_80MHZ = common dso_local global i32 0, align 4
@RX_FLAG_160MHZ = common dso_local global i32 0, align 4
@RATE_MCS_SGI_MSK = common dso_local global i32 0, align 4
@RX_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@RATE_HT_MCS_GF_MSK = common dso_local global i32 0, align 4
@RX_FLAG_HT_GF = common dso_local global i32 0, align 4
@RATE_MCS_HT_MSK = common dso_local global i32 0, align 4
@RX_FLAG_HT = common dso_local global i32 0, align 4
@RATE_HT_MCS_INDEX_MSK = common dso_local global i32 0, align 4
@RATE_MCS_VHT_MSK = common dso_local global i32 0, align 4
@RATE_VHT_MCS_NSS_MSK = common dso_local global i32 0, align 4
@RATE_VHT_MCS_NSS_POS = common dso_local global i32 0, align 4
@RATE_VHT_MCS_RATE_CODE_MSK = common dso_local global i32 0, align 4
@RX_FLAG_VHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_rx_rx_mpdu(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_device_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %7 = alloca %struct.iwl_device_cmd*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.ieee80211_rx_status, align 8
  %10 = alloca %struct.iwl_rx_packet*, align 8
  %11 = alloca %struct.iwl_rx_phy_info*, align 8
  %12 = alloca %struct.iwl_rx_mpdu_res_start*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %6, align 8
  store %struct.iwl_device_cmd* %2, %struct.iwl_device_cmd** %7, align 8
  %17 = bitcast %struct.ieee80211_rx_status* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 48, i1 false)
  %18 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %6, align 8
  %19 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %18)
  store %struct.iwl_rx_packet* %19, %struct.iwl_rx_packet** %10, align 8
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %20, i32 0, i32 1
  store %struct.iwl_rx_phy_info* %21, %struct.iwl_rx_phy_info** %11, align 8
  %22 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %10, align 8
  %23 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.iwl_rx_mpdu_res_start*
  store %struct.iwl_rx_mpdu_res_start* %26, %struct.iwl_rx_mpdu_res_start** %12, align 8
  %27 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %10, align 8
  %28 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, 4
  %32 = inttoptr i64 %31 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %32, %struct.ieee80211_hdr** %8, align 8
  %33 = load %struct.iwl_rx_mpdu_res_start*, %struct.iwl_rx_mpdu_res_start** %12, align 8
  %34 = getelementptr inbounds %struct.iwl_rx_mpdu_res_start, %struct.iwl_rx_mpdu_res_start* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le16_to_cpu(i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %10, align 8
  %38 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 4
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %41, %43
  %45 = inttoptr i64 %44 to i32*
  %46 = call i32 @le32_to_cpup(i32* %45)
  store i32 %46, i32* %16, align 4
  %47 = call i32 @memset(%struct.ieee80211_rx_status* %9, i32 0, i32 48)
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %49 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %50 = load i32, i32* %16, align 4
  %51 = call i64 @iwl_mvm_set_mac80211_rx_flag(%struct.iwl_mvm* %48, %struct.ieee80211_hdr* %49, %struct.ieee80211_rx_status* %9, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %3
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %55 = load i32, i32* %16, align 4
  %56 = call i32 @IWL_DEBUG_DROP(%struct.iwl_mvm* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i32 0, i32* %4, align 4
  br label %260

57:                                               ; preds = %3
  %58 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %11, align 8
  %59 = getelementptr inbounds %struct.iwl_rx_phy_info, %struct.iwl_rx_phy_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 20
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %67 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %11, align 8
  %68 = getelementptr inbounds %struct.iwl_rx_phy_info, %struct.iwl_rx_phy_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @IWL_DEBUG_DROP(%struct.iwl_mvm* %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  store i32 0, i32* %4, align 4
  br label %260

71:                                               ; preds = %57
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @RX_MPDU_RES_STATUS_CRC_OK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* @RX_MPDU_RES_STATUS_OVERRUN_OK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @IWL_DEBUG_RX(%struct.iwl_mvm* %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  store i32 0, i32* %4, align 4
  br label %260

85:                                               ; preds = %76
  %86 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %11, align 8
  %87 = getelementptr inbounds %struct.iwl_rx_phy_info, %struct.iwl_rx_phy_info* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @le32_to_cpu(i32 %88)
  %90 = ptrtoint i8* %89 to i32
  store i32 %90, i32* %15, align 4
  %91 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %11, align 8
  %92 = getelementptr inbounds %struct.iwl_rx_phy_info, %struct.iwl_rx_phy_info* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @le64_to_cpu(i32 %93)
  %95 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 6
  store i64 %94, i64* %95, align 8
  %96 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %11, align 8
  %97 = getelementptr inbounds %struct.iwl_rx_phy_info, %struct.iwl_rx_phy_info* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @le32_to_cpu(i32 %98)
  %100 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 9
  store i8* %99, i8** %100, align 8
  %101 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %11, align 8
  %102 = getelementptr inbounds %struct.iwl_rx_phy_info, %struct.iwl_rx_phy_info* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @RX_RES_PHY_FLAGS_BAND_24, align 4
  %105 = call i32 @cpu_to_le16(i32 %104)
  %106 = and i32 %103, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %85
  %109 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  br label %112

110:                                              ; preds = %85
  %111 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  %114 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 3
  store i32 %113, i32* %114, align 4
  %115 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %11, align 8
  %116 = getelementptr inbounds %struct.iwl_rx_phy_info, %struct.iwl_rx_phy_info* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le16_to_cpu(i32 %117)
  %119 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ieee80211_channel_to_frequency(i32 %118, i32 %120)
  %122 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 8
  store i32 %121, i32* %122, align 4
  %123 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %124 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %11, align 8
  %125 = call i32 @iwl_mvm_calc_rssi(%struct.iwl_mvm* %123, %struct.iwl_rx_phy_info* %124)
  %126 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 7
  store i32 %125, i32* %126, align 8
  %127 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %128 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 7
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @IWL_DEBUG_STATS_LIMIT(%struct.iwl_mvm* %127, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %129, i64 %131)
  %133 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %11, align 8
  %134 = getelementptr inbounds %struct.iwl_rx_phy_info, %struct.iwl_rx_phy_info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @le16_to_cpu(i32 %135)
  %137 = load i32, i32* @RX_RES_PHY_FLAGS_ANTENNA, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* @RX_RES_PHY_FLAGS_ANTENNA_POS, align 4
  %140 = ashr i32 %138, %139
  %141 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 0
  store i32 %140, i32* %141, align 8
  %142 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %11, align 8
  %143 = getelementptr inbounds %struct.iwl_rx_phy_info, %struct.iwl_rx_phy_info* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @RX_RES_PHY_FLAGS_SHORT_PREAMBLE, align 4
  %146 = call i32 @cpu_to_le16(i32 %145)
  %147 = and i32 %144, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %112
  %150 = load i32, i32* @RX_FLAG_SHORTPRE, align 4
  %151 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %150
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %149, %112
  %155 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %11, align 8
  %156 = getelementptr inbounds %struct.iwl_rx_phy_info, %struct.iwl_rx_phy_info* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @RX_RES_PHY_FLAGS_AGG, align 4
  %159 = call i32 @cpu_to_le16(i32 %158)
  %160 = and i32 %157, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %154
  %163 = load i32, i32* @RX_FLAG_AMPDU_DETAILS, align 4
  %164 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %163
  store i32 %166, i32* %164, align 8
  %167 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %168 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 5
  store i32 %169, i32* %170, align 4
  br label %171

171:                                              ; preds = %162, %154
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* @RATE_MCS_CHAN_WIDTH_MSK, align 4
  %174 = and i32 %172, %173
  switch i32 %174, label %191 [
    i32 130, label %175
    i32 129, label %176
    i32 128, label %181
    i32 131, label %186
  ]

175:                                              ; preds = %171
  br label %191

176:                                              ; preds = %171
  %177 = load i32, i32* @RX_FLAG_40MHZ, align 4
  %178 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %177
  store i32 %180, i32* %178, align 8
  br label %191

181:                                              ; preds = %171
  %182 = load i32, i32* @RX_FLAG_80MHZ, align 4
  %183 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %182
  store i32 %185, i32* %183, align 8
  br label %191

186:                                              ; preds = %171
  %187 = load i32, i32* @RX_FLAG_160MHZ, align 4
  %188 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %187
  store i32 %190, i32* %188, align 8
  br label %191

191:                                              ; preds = %171, %186, %181, %176, %175
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* @RATE_MCS_SGI_MSK, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = load i32, i32* @RX_FLAG_SHORT_GI, align 4
  %198 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %197
  store i32 %200, i32* %198, align 8
  br label %201

201:                                              ; preds = %196, %191
  %202 = load i32, i32* %15, align 4
  %203 = load i32, i32* @RATE_HT_MCS_GF_MSK, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %201
  %207 = load i32, i32* @RX_FLAG_HT_GF, align 4
  %208 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %209, %207
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %206, %201
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %225

216:                                              ; preds = %211
  %217 = load i32, i32* @RX_FLAG_HT, align 4
  %218 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %217
  store i32 %220, i32* %218, align 8
  %221 = load i32, i32* %15, align 4
  %222 = load i32, i32* @RATE_HT_MCS_INDEX_MSK, align 4
  %223 = and i32 %221, %222
  %224 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 1
  store i32 %223, i32* %224, align 4
  br label %253

225:                                              ; preds = %211
  %226 = load i32, i32* %15, align 4
  %227 = load i32, i32* @RATE_MCS_VHT_MSK, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %246

230:                                              ; preds = %225
  %231 = load i32, i32* %15, align 4
  %232 = load i32, i32* @RATE_VHT_MCS_NSS_MSK, align 4
  %233 = and i32 %231, %232
  %234 = load i32, i32* @RATE_VHT_MCS_NSS_POS, align 4
  %235 = ashr i32 %233, %234
  %236 = add nsw i32 %235, 1
  %237 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 2
  store i32 %236, i32* %237, align 8
  %238 = load i32, i32* %15, align 4
  %239 = load i32, i32* @RATE_VHT_MCS_RATE_CODE_MSK, align 4
  %240 = and i32 %238, %239
  %241 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 1
  store i32 %240, i32* %241, align 4
  %242 = load i32, i32* @RX_FLAG_VHT, align 4
  %243 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %242
  store i32 %245, i32* %243, align 8
  br label %252

246:                                              ; preds = %225
  %247 = load i32, i32* %15, align 4
  %248 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @iwl_mvm_legacy_rate_to_mac80211_idx(i32 %247, i32 %249)
  %251 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 1
  store i32 %250, i32* %251, align 4
  br label %252

252:                                              ; preds = %246, %230
  br label %253

253:                                              ; preds = %252, %216
  %254 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %255 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %256 = load i32, i32* %13, align 4
  %257 = load i32, i32* %14, align 4
  %258 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %6, align 8
  %259 = call i32 @iwl_mvm_pass_packet_to_mac80211(%struct.iwl_mvm* %254, %struct.ieee80211_hdr* %255, i32 %256, i32 %257, %struct.iwl_rx_cmd_buffer* %258, %struct.ieee80211_rx_status* %9)
  store i32 0, i32* %4, align 4
  br label %260

260:                                              ; preds = %253, %81, %65, %53
  %261 = load i32, i32* %4, align 4
  ret i32 %261
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @le32_to_cpup(i32*) #2

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #2

declare dso_local i64 @iwl_mvm_set_mac80211_rx_flag(%struct.iwl_mvm*, %struct.ieee80211_hdr*, %struct.ieee80211_rx_status*, i32) #2

declare dso_local i32 @IWL_DEBUG_DROP(%struct.iwl_mvm*, i8*, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @IWL_DEBUG_RX(%struct.iwl_mvm*, i8*, i32) #2

declare dso_local i8* @le32_to_cpu(i32) #2

declare dso_local i64 @le64_to_cpu(i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #2

declare dso_local i32 @iwl_mvm_calc_rssi(%struct.iwl_mvm*, %struct.iwl_rx_phy_info*) #2

declare dso_local i32 @IWL_DEBUG_STATS_LIMIT(%struct.iwl_mvm*, i8*, i32, i64) #2

declare dso_local i32 @iwl_mvm_legacy_rate_to_mac80211_idx(i32, i32) #2

declare dso_local i32 @iwl_mvm_pass_packet_to_mac80211(%struct.iwl_mvm*, %struct.ieee80211_hdr*, i32, i32, %struct.iwl_rx_cmd_buffer*, %struct.ieee80211_rx_status*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
