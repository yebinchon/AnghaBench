; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_tx_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i64 }
%struct.ieee80211_sta = type { i64* }
%struct.sk_buff = type { i64 }
%struct.iwl_lq_sta = type { i64, i64, i32, i32, i32, i64, %struct.iwl_scale_tbl_info*, %struct.iwl_lq_cmd, i32 }
%struct.iwl_scale_tbl_info = type { i32, i32, i32, i32 }
%struct.iwl_lq_cmd = type { i32* }
%struct.ieee80211_hdr = type { i32 }
%struct.iwl_op_mode = type { i32 }
%struct.iwl_mvm = type { i32 }
%struct.ieee80211_tx_info = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"get frame ack response, update rate scale window\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Station rate scaling not created yet.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Rate scaling not initialized yet.\0A\00", align 1
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IWL_FIRST_OFDM_RATE = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@RATE_HT_MCS_RATE_CODE_MSK = common dso_local global i32 0, align 4
@IWL_RATE_9M_INDEX = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@RATE_MCS_HT_MSK = common dso_local global i32 0, align 4
@RATE_HT_MCS_GF_MSK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_GREEN_FIELD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"initial rate %d does not match %d (0x%x)\0A\00", align 1
@IWL_MISSED_RATE_MAX = common dso_local global i64 0, align 8
@CMD_ASYNC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Neither active nor search matches tx rate\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"active- lq:%x, ant:%x, SGI:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"search- lq:%x, ant:%x, SGI:%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"actual- lq:%x, ant:%x, SGI:%d\0A\00", align 1
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*, %struct.sk_buff*)* @rs_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_tx_status(i8* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_sta* %2, i8* %3, %struct.sk_buff* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.iwl_lq_sta*, align 8
  %17 = alloca %struct.iwl_lq_cmd*, align 8
  %18 = alloca %struct.ieee80211_hdr*, align 8
  %19 = alloca %struct.iwl_op_mode*, align 8
  %20 = alloca %struct.iwl_mvm*, align 8
  %21 = alloca %struct.ieee80211_tx_info*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.iwl_scale_tbl_info, align 4
  %25 = alloca %struct.iwl_scale_tbl_info*, align 8
  %26 = alloca %struct.iwl_scale_tbl_info*, align 8
  %27 = alloca %struct.iwl_scale_tbl_info*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = bitcast i8* %28 to %struct.iwl_lq_sta*
  store %struct.iwl_lq_sta* %29, %struct.iwl_lq_sta** %16, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %33, %struct.ieee80211_hdr** %18, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = bitcast i8* %34 to %struct.iwl_op_mode*
  store %struct.iwl_op_mode* %35, %struct.iwl_op_mode** %19, align 8
  %36 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %19, align 8
  %37 = call %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode* %36)
  store %struct.iwl_mvm* %37, %struct.iwl_mvm** %20, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %39 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %38)
  store %struct.ieee80211_tx_info* %39, %struct.ieee80211_tx_info** %21, align 8
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %20, align 8
  %41 = call i32 @IWL_DEBUG_RATE_LIMIT(%struct.iwl_mvm* %40, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %43 = icmp ne %struct.iwl_lq_sta* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %5
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %20, align 8
  %46 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %516

47:                                               ; preds = %5
  %48 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %49 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load %struct.iwl_mvm*, %struct.iwl_mvm** %20, align 8
  %54 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %516

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %18, align 8
  %58 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ieee80211_is_data(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %64 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62, %56
  br label %516

70:                                               ; preds = %62
  %71 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %72 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %79 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @IEEE80211_TX_STAT_AMPDU, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  br label %516

85:                                               ; preds = %77, %70
  %86 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %87 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %86, i32 0, i32 7
  store %struct.iwl_lq_cmd* %87, %struct.iwl_lq_cmd** %17, align 8
  %88 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %17, align 8
  %89 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @le32_to_cpu(i32 %92)
  store i32 %93, i32* %23, align 4
  %94 = load i32, i32* %23, align 4
  %95 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %96 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @rs_get_tbl_info_from_mcs(i32 %94, i64 %97, %struct.iwl_scale_tbl_info* %24, i32* %13)
  %99 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %100 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %85
  %105 = load i32, i32* @IWL_FIRST_OFDM_RATE, align 4
  %106 = load i32, i32* %13, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %104, %85
  %109 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %110 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %22, align 4
  %116 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %117 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %22, align 4
  %124 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %108
  %128 = load i32, i32* @RATE_HT_MCS_RATE_CODE_MSK, align 4
  %129 = load i32, i32* %14, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* @IWL_RATE_9M_INDEX, align 4
  %133 = load i32, i32* @IWL_FIRST_OFDM_RATE, align 4
  %134 = sub nsw i32 %132, %133
  %135 = icmp sge i32 %131, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %127
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %14, align 4
  br label %139

139:                                              ; preds = %136, %127
  %140 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %141 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load i32, i32* @IWL_FIRST_OFDM_RATE, align 4
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %14, align 4
  br label %149

149:                                              ; preds = %145, %139
  br label %150

150:                                              ; preds = %149, %108
  %151 = load i32, i32* %14, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %219, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %24, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %22, align 4
  %157 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = icmp ne i32 %155, %162
  br i1 %163, label %219, label %164

164:                                              ; preds = %153
  %165 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %24, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = icmp ne i32 %166, %173
  br i1 %174, label %219, label %175

175:                                              ; preds = %164
  %176 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %24, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %179 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %177, %181
  br i1 %182, label %219, label %183

183:                                              ; preds = %175
  %184 = load i32, i32* %23, align 4
  %185 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = load i32, i32* %22, align 4
  %192 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  %196 = xor i1 %195, true
  %197 = zext i1 %196 to i32
  %198 = icmp ne i32 %190, %197
  br i1 %198, label %219, label %199

199:                                              ; preds = %183
  %200 = load i32, i32* %23, align 4
  %201 = load i32, i32* @RATE_HT_MCS_GF_MSK, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  %204 = xor i1 %203, true
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  %207 = load i32, i32* %22, align 4
  %208 = load i32, i32* @IEEE80211_TX_RC_GREEN_FIELD, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i32
  %214 = icmp ne i32 %206, %213
  br i1 %214, label %219, label %215

215:                                              ; preds = %199
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* %14, align 4
  %218 = icmp ne i32 %216, %217
  br i1 %218, label %219, label %243

219:                                              ; preds = %215, %199, %183, %175, %164, %153, %150
  %220 = load %struct.iwl_mvm*, %struct.iwl_mvm** %20, align 8
  %221 = load i32, i32* %14, align 4
  %222 = load i32, i32* %13, align 4
  %223 = load i32, i32* %23, align 4
  %224 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %220, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %221, i32 %222, i32 %223)
  %225 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %226 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %227, 1
  store i64 %228, i64* %226, align 8
  %229 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %230 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @IWL_MISSED_RATE_MAX, align 8
  %233 = icmp sgt i64 %231, %232
  br i1 %233, label %234, label %242

234:                                              ; preds = %219
  %235 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %236 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %235, i32 0, i32 0
  store i64 0, i64* %236, align 8
  %237 = load %struct.iwl_mvm*, %struct.iwl_mvm** %20, align 8
  %238 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %239 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %238, i32 0, i32 7
  %240 = load i32, i32* @CMD_ASYNC, align 4
  %241 = call i32 @iwl_mvm_send_lq_cmd(%struct.iwl_mvm* %237, %struct.iwl_lq_cmd* %239, i32 %240, i32 0)
  br label %242

242:                                              ; preds = %234, %219
  br label %516

243:                                              ; preds = %215
  %244 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %245 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %244, i32 0, i32 0
  store i64 0, i64* %245, align 8
  br label %246

246:                                              ; preds = %243
  %247 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %248 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %247, i32 0, i32 6
  %249 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %248, align 8
  %250 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %251 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %249, i64 %252
  %254 = call i64 @table_type_matches(%struct.iwl_scale_tbl_info* %24, %struct.iwl_scale_tbl_info* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %272

256:                                              ; preds = %246
  %257 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %258 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %257, i32 0, i32 6
  %259 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %258, align 8
  %260 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %261 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %259, i64 %262
  store %struct.iwl_scale_tbl_info* %263, %struct.iwl_scale_tbl_info** %25, align 8
  %264 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %265 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %264, i32 0, i32 6
  %266 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %265, align 8
  %267 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %268 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = sub i64 1, %269
  %271 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %266, i64 %270
  store %struct.iwl_scale_tbl_info* %271, %struct.iwl_scale_tbl_info** %26, align 8
  br label %350

272:                                              ; preds = %246
  %273 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %274 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %273, i32 0, i32 6
  %275 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %274, align 8
  %276 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %277 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = sub i64 1, %278
  %280 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %275, i64 %279
  %281 = call i64 @table_type_matches(%struct.iwl_scale_tbl_info* %24, %struct.iwl_scale_tbl_info* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %299

283:                                              ; preds = %272
  %284 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %285 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %284, i32 0, i32 6
  %286 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %285, align 8
  %287 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %288 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = sub i64 1, %289
  %291 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %286, i64 %290
  store %struct.iwl_scale_tbl_info* %291, %struct.iwl_scale_tbl_info** %25, align 8
  %292 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %293 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %292, i32 0, i32 6
  %294 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %293, align 8
  %295 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %296 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %294, i64 %297
  store %struct.iwl_scale_tbl_info* %298, %struct.iwl_scale_tbl_info** %26, align 8
  br label %349

299:                                              ; preds = %272
  %300 = load %struct.iwl_mvm*, %struct.iwl_mvm** %20, align 8
  %301 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %300, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %302 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %303 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %302, i32 0, i32 6
  %304 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %303, align 8
  %305 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %306 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %304, i64 %307
  store %struct.iwl_scale_tbl_info* %308, %struct.iwl_scale_tbl_info** %27, align 8
  %309 = load %struct.iwl_mvm*, %struct.iwl_mvm** %20, align 8
  %310 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %27, align 8
  %311 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %27, align 8
  %314 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %27, align 8
  %317 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %309, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %312, i32 %315, i32 %318)
  %320 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %321 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %320, i32 0, i32 6
  %322 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %321, align 8
  %323 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %324 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = sub i64 1, %325
  %327 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %322, i64 %326
  store %struct.iwl_scale_tbl_info* %327, %struct.iwl_scale_tbl_info** %27, align 8
  %328 = load %struct.iwl_mvm*, %struct.iwl_mvm** %20, align 8
  %329 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %27, align 8
  %330 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %27, align 8
  %333 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %27, align 8
  %336 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %328, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %331, i32 %334, i32 %337)
  %339 = load %struct.iwl_mvm*, %struct.iwl_mvm** %20, align 8
  %340 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %24, i32 0, i32 3
  %341 = load i32, i32* %340, align 4
  %342 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %24, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %24, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %339, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %341, i32 %343, i32 %345)
  %347 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %348 = call i32 @rs_stay_in_table(%struct.iwl_lq_sta* %347, i32 1)
  br label %497

349:                                              ; preds = %283
  br label %350

350:                                              ; preds = %349, %256
  %351 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %352 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @IEEE80211_TX_STAT_AMPDU, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %407

357:                                              ; preds = %350
  %358 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %17, align 8
  %359 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %358, i32 0, i32 0
  %360 = load i32*, i32** %359, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 0
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @le32_to_cpu(i32 %362)
  store i32 %363, i32* %23, align 4
  %364 = load i32, i32* %23, align 4
  %365 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %366 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %365, i32 0, i32 1
  %367 = load i64, i64* %366, align 8
  %368 = call i32 @rs_get_tbl_info_from_mcs(i32 %364, i64 %367, %struct.iwl_scale_tbl_info* %24, i32* %13)
  %369 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %370 = load i32, i32* %13, align 4
  %371 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %372 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %371, i32 0, i32 2
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %376 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %375, i32 0, i32 2
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @rs_collect_tx_data(%struct.iwl_scale_tbl_info* %369, i32 %370, i32 %374, i32 %378)
  %380 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %381 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %380, i32 0, i32 5
  %382 = load i64, i64* %381, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %406

384:                                              ; preds = %357
  %385 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %386 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %385, i32 0, i32 2
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %390 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 8
  %392 = add nsw i32 %391, %388
  store i32 %392, i32* %390, align 8
  %393 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %394 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %398 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %397, i32 0, i32 2
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 8
  %401 = sub nsw i32 %396, %400
  %402 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %403 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 4
  %405 = add nsw i32 %404, %401
  store i32 %405, i32* %403, align 4
  br label %406

406:                                              ; preds = %384, %357
  br label %493

407:                                              ; preds = %350
  %408 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %409 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %408, i32 0, i32 2
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 3
  %411 = load %struct.TYPE_3__*, %struct.TYPE_3__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %411, i64 0
  %413 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 4
  %415 = sub nsw i32 %414, 1
  store i32 %415, i32* %12, align 4
  %416 = load i32, i32* %12, align 4
  %417 = call i32 @min(i32 %416, i32 15)
  store i32 %417, i32* %12, align 4
  %418 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %419 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  %424 = xor i1 %423, true
  %425 = xor i1 %424, true
  %426 = zext i1 %425 to i32
  store i32 %426, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %427

427:                                              ; preds = %470, %407
  %428 = load i32, i32* %15, align 4
  %429 = load i32, i32* %12, align 4
  %430 = icmp sle i32 %428, %429
  br i1 %430, label %431, label %473

431:                                              ; preds = %427
  %432 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %17, align 8
  %433 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %432, i32 0, i32 0
  %434 = load i32*, i32** %433, align 8
  %435 = load i32, i32* %15, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %434, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = call i32 @le32_to_cpu(i32 %438)
  store i32 %439, i32* %23, align 4
  %440 = load i32, i32* %23, align 4
  %441 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %442 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %441, i32 0, i32 1
  %443 = load i64, i64* %442, align 8
  %444 = call i32 @rs_get_tbl_info_from_mcs(i32 %440, i64 %443, %struct.iwl_scale_tbl_info* %24, i32* %13)
  %445 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %446 = call i64 @table_type_matches(%struct.iwl_scale_tbl_info* %24, %struct.iwl_scale_tbl_info* %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %450

448:                                              ; preds = %431
  %449 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  store %struct.iwl_scale_tbl_info* %449, %struct.iwl_scale_tbl_info** %27, align 8
  br label %458

450:                                              ; preds = %431
  %451 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %26, align 8
  %452 = call i64 @table_type_matches(%struct.iwl_scale_tbl_info* %24, %struct.iwl_scale_tbl_info* %451)
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %456

454:                                              ; preds = %450
  %455 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %26, align 8
  store %struct.iwl_scale_tbl_info* %455, %struct.iwl_scale_tbl_info** %27, align 8
  br label %457

456:                                              ; preds = %450
  br label %470

457:                                              ; preds = %454
  br label %458

458:                                              ; preds = %457, %448
  %459 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %27, align 8
  %460 = load i32, i32* %13, align 4
  %461 = load i32, i32* %15, align 4
  %462 = load i32, i32* %12, align 4
  %463 = icmp slt i32 %461, %462
  br i1 %463, label %464, label %465

464:                                              ; preds = %458
  br label %467

465:                                              ; preds = %458
  %466 = load i32, i32* %11, align 4
  br label %467

467:                                              ; preds = %465, %464
  %468 = phi i32 [ 0, %464 ], [ %466, %465 ]
  %469 = call i32 @rs_collect_tx_data(%struct.iwl_scale_tbl_info* %459, i32 %460, i32 1, i32 %468)
  br label %470

470:                                              ; preds = %467, %456
  %471 = load i32, i32* %15, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %15, align 4
  br label %427

473:                                              ; preds = %427
  %474 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %475 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %474, i32 0, i32 5
  %476 = load i64, i64* %475, align 8
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %492

478:                                              ; preds = %473
  %479 = load i32, i32* %11, align 4
  %480 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %481 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %480, i32 0, i32 2
  %482 = load i32, i32* %481, align 8
  %483 = add nsw i32 %482, %479
  store i32 %483, i32* %481, align 8
  %484 = load i32, i32* %12, align 4
  %485 = load i32, i32* %11, align 4
  %486 = sub nsw i32 1, %485
  %487 = add nsw i32 %484, %486
  %488 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %489 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %488, i32 0, i32 3
  %490 = load i32, i32* %489, align 4
  %491 = add nsw i32 %490, %487
  store i32 %491, i32* %489, align 4
  br label %492

492:                                              ; preds = %478, %473
  br label %493

493:                                              ; preds = %492, %406
  %494 = load i32, i32* %23, align 4
  %495 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %496 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %495, i32 0, i32 4
  store i32 %494, i32* %496, align 8
  br label %497

497:                                              ; preds = %493, %299
  %498 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %499 = icmp ne %struct.ieee80211_sta* %498, null
  br i1 %499, label %500, label %516

500:                                              ; preds = %497
  %501 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %502 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %501, i32 0, i32 0
  %503 = load i64*, i64** %502, align 8
  %504 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %505 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %504, i32 0, i32 0
  %506 = load i64, i64* %505, align 8
  %507 = getelementptr inbounds i64, i64* %503, i64 %506
  %508 = load i64, i64* %507, align 8
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %516

510:                                              ; preds = %500
  %511 = load %struct.iwl_mvm*, %struct.iwl_mvm** %20, align 8
  %512 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %513 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %514 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %515 = call i32 @rs_rate_scale_perform(%struct.iwl_mvm* %511, %struct.sk_buff* %512, %struct.ieee80211_sta* %513, %struct.iwl_lq_sta* %514)
  br label %516

516:                                              ; preds = %44, %52, %69, %84, %242, %510, %500, %497
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @IWL_DEBUG_RATE_LIMIT(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @rs_get_tbl_info_from_mcs(i32, i64, %struct.iwl_scale_tbl_info*, i32*) #1

declare dso_local i32 @iwl_mvm_send_lq_cmd(%struct.iwl_mvm*, %struct.iwl_lq_cmd*, i32, i32) #1

declare dso_local i64 @table_type_matches(%struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_stay_in_table(%struct.iwl_lq_sta*, i32) #1

declare dso_local i32 @rs_collect_tx_data(%struct.iwl_scale_tbl_info*, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @rs_rate_scale_perform(%struct.iwl_mvm*, %struct.sk_buff*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
