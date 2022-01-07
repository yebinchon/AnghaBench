; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rs_tx_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rs_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i64 }
%struct.ieee80211_sta = type { i64*, i64 }
%struct.sk_buff = type { i64 }
%struct.iwl_lq_sta = type { i64, i64, i32, i32, i32, i64, i64, %struct.iwl_scale_tbl_info*, %struct.iwl_link_quality_cmd, i32 }
%struct.iwl_scale_tbl_info = type { i32, i32, i32, i32, i32 }
%struct.iwl_link_quality_cmd = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.iwl_op_mode = type { i32 }
%struct.iwl_priv = type { i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.iwl_station_priv = type { %struct.iwl_rxon_context* }
%struct.iwl_rxon_context = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"get frame ack response, update rate scale window\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Station rate scaling not created yet.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Rate scaling not initialized yet.\0A\00", align 1
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IWL_FIRST_OFDM_RATE = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@RATE_MCS_CODE_MSK = common dso_local global i32 0, align 4
@IWL_RATE_9M_INDEX = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_DUP_DATA = common dso_local global i32 0, align 4
@RATE_MCS_HT_MSK = common dso_local global i32 0, align 4
@RATE_MCS_GF_MSK = common dso_local global i32 0, align 4
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
  %17 = alloca %struct.iwl_link_quality_cmd*, align 8
  %18 = alloca %struct.ieee80211_hdr*, align 8
  %19 = alloca %struct.iwl_op_mode*, align 8
  %20 = alloca %struct.iwl_priv*, align 8
  %21 = alloca %struct.ieee80211_tx_info*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.iwl_scale_tbl_info, align 4
  %25 = alloca %struct.iwl_scale_tbl_info*, align 8
  %26 = alloca %struct.iwl_scale_tbl_info*, align 8
  %27 = alloca %struct.iwl_scale_tbl_info*, align 8
  %28 = alloca %struct.iwl_station_priv*, align 8
  %29 = alloca %struct.iwl_rxon_context*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = bitcast i8* %30 to %struct.iwl_lq_sta*
  store %struct.iwl_lq_sta* %31, %struct.iwl_lq_sta** %16, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %35, %struct.ieee80211_hdr** %18, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = bitcast i8* %36 to %struct.iwl_op_mode*
  store %struct.iwl_op_mode* %37, %struct.iwl_op_mode** %19, align 8
  %38 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %19, align 8
  %39 = call %struct.iwl_priv* @IWL_OP_MODE_GET_DVM(%struct.iwl_op_mode* %38)
  store %struct.iwl_priv* %39, %struct.iwl_priv** %20, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %41 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %40)
  store %struct.ieee80211_tx_info* %41, %struct.ieee80211_tx_info** %21, align 8
  %42 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %43 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = bitcast i8* %45 to %struct.iwl_station_priv*
  store %struct.iwl_station_priv* %46, %struct.iwl_station_priv** %28, align 8
  %47 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %28, align 8
  %48 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %47, i32 0, i32 0
  %49 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %48, align 8
  store %struct.iwl_rxon_context* %49, %struct.iwl_rxon_context** %29, align 8
  %50 = load %struct.iwl_priv*, %struct.iwl_priv** %20, align 8
  %51 = call i32 @IWL_DEBUG_RATE_LIMIT(%struct.iwl_priv* %50, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %53 = icmp ne %struct.iwl_lq_sta* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %5
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %20, align 8
  %56 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %562

57:                                               ; preds = %5
  %58 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %59 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load %struct.iwl_priv*, %struct.iwl_priv** %20, align 8
  %64 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %562

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %18, align 8
  %68 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ieee80211_is_data(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %74 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72, %66
  br label %562

80:                                               ; preds = %72
  %81 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %82 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %89 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @IEEE80211_TX_STAT_AMPDU, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %87
  br label %562

95:                                               ; preds = %87, %80
  %96 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %97 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %96, i32 0, i32 8
  store %struct.iwl_link_quality_cmd* %97, %struct.iwl_link_quality_cmd** %17, align 8
  %98 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %17, align 8
  %99 = getelementptr inbounds %struct.iwl_link_quality_cmd, %struct.iwl_link_quality_cmd* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le32_to_cpu(i32 %103)
  store i32 %104, i32* %23, align 4
  %105 = load i32, i32* %23, align 4
  %106 = load %struct.iwl_priv*, %struct.iwl_priv** %20, align 8
  %107 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @rs_get_tbl_info_from_mcs(i32 %105, i64 %108, %struct.iwl_scale_tbl_info* %24, i32* %13)
  %110 = load %struct.iwl_priv*, %struct.iwl_priv** %20, align 8
  %111 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %95
  %116 = load i32, i32* @IWL_FIRST_OFDM_RATE, align 4
  %117 = load i32, i32* %13, align 4
  %118 = sub nsw i32 %117, %116
  store i32 %118, i32* %13, align 4
  br label %119

119:                                              ; preds = %115, %95
  %120 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %121 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %22, align 4
  %127 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %128 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %22, align 4
  %135 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %161

138:                                              ; preds = %119
  %139 = load i32, i32* @RATE_MCS_CODE_MSK, align 4
  %140 = load i32, i32* %14, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* @IWL_RATE_9M_INDEX, align 4
  %144 = load i32, i32* @IWL_FIRST_OFDM_RATE, align 4
  %145 = sub nsw i32 %143, %144
  %146 = icmp sge i32 %142, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %138
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %147, %138
  %151 = load %struct.iwl_priv*, %struct.iwl_priv** %20, align 8
  %152 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load i32, i32* @IWL_FIRST_OFDM_RATE, align 4
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %14, align 4
  br label %160

160:                                              ; preds = %156, %150
  br label %161

161:                                              ; preds = %160, %119
  %162 = load i32, i32* %14, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %241, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %24, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = icmp ne i32 %166, %173
  br i1 %174, label %241, label %175

175:                                              ; preds = %164
  %176 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %24, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %22, align 4
  %179 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  %182 = xor i1 %181, true
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i32
  %185 = icmp ne i32 %177, %184
  br i1 %185, label %241, label %186

186:                                              ; preds = %175
  %187 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %24, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %22, align 4
  %190 = load i32, i32* @IEEE80211_TX_RC_DUP_DATA, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = icmp ne i32 %188, %195
  br i1 %196, label %241, label %197

197:                                              ; preds = %186
  %198 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %24, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %201 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %199, %203
  br i1 %204, label %241, label %205

205:                                              ; preds = %197
  %206 = load i32, i32* %23, align 4
  %207 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  %210 = xor i1 %209, true
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  %213 = load i32, i32* %22, align 4
  %214 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  %217 = xor i1 %216, true
  %218 = xor i1 %217, true
  %219 = zext i1 %218 to i32
  %220 = icmp ne i32 %212, %219
  br i1 %220, label %241, label %221

221:                                              ; preds = %205
  %222 = load i32, i32* %23, align 4
  %223 = load i32, i32* @RATE_MCS_GF_MSK, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  %226 = xor i1 %225, true
  %227 = xor i1 %226, true
  %228 = zext i1 %227 to i32
  %229 = load i32, i32* %22, align 4
  %230 = load i32, i32* @IEEE80211_TX_RC_GREEN_FIELD, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  %233 = xor i1 %232, true
  %234 = xor i1 %233, true
  %235 = zext i1 %234 to i32
  %236 = icmp ne i32 %228, %235
  br i1 %236, label %241, label %237

237:                                              ; preds = %221
  %238 = load i32, i32* %13, align 4
  %239 = load i32, i32* %14, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %241, label %266

241:                                              ; preds = %237, %221, %205, %197, %186, %175, %164, %161
  %242 = load %struct.iwl_priv*, %struct.iwl_priv** %20, align 8
  %243 = load i32, i32* %14, align 4
  %244 = load i32, i32* %13, align 4
  %245 = load i32, i32* %23, align 4
  %246 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %242, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %243, i32 %244, i32 %245)
  %247 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %248 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = add nsw i64 %249, 1
  store i64 %250, i64* %248, align 8
  %251 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %252 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @IWL_MISSED_RATE_MAX, align 8
  %255 = icmp sgt i64 %253, %254
  br i1 %255, label %256, label %265

256:                                              ; preds = %241
  %257 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %258 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %257, i32 0, i32 0
  store i64 0, i64* %258, align 8
  %259 = load %struct.iwl_priv*, %struct.iwl_priv** %20, align 8
  %260 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %29, align 8
  %261 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %262 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %261, i32 0, i32 8
  %263 = load i32, i32* @CMD_ASYNC, align 4
  %264 = call i32 @iwl_send_lq_cmd(%struct.iwl_priv* %259, %struct.iwl_rxon_context* %260, %struct.iwl_link_quality_cmd* %262, i32 %263, i32 0)
  br label %265

265:                                              ; preds = %256, %241
  br label %562

266:                                              ; preds = %237
  %267 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %268 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %267, i32 0, i32 0
  store i64 0, i64* %268, align 8
  br label %269

269:                                              ; preds = %266
  %270 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %271 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %270, i32 0, i32 7
  %272 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %271, align 8
  %273 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %274 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %272, i64 %275
  %277 = call i64 @table_type_matches(%struct.iwl_scale_tbl_info* %24, %struct.iwl_scale_tbl_info* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %295

279:                                              ; preds = %269
  %280 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %281 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %280, i32 0, i32 7
  %282 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %281, align 8
  %283 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %284 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %282, i64 %285
  store %struct.iwl_scale_tbl_info* %286, %struct.iwl_scale_tbl_info** %25, align 8
  %287 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %288 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %287, i32 0, i32 7
  %289 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %288, align 8
  %290 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %291 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = sub i64 1, %292
  %294 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %289, i64 %293
  store %struct.iwl_scale_tbl_info* %294, %struct.iwl_scale_tbl_info** %26, align 8
  br label %373

295:                                              ; preds = %269
  %296 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %297 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %296, i32 0, i32 7
  %298 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %297, align 8
  %299 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %300 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = sub i64 1, %301
  %303 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %298, i64 %302
  %304 = call i64 @table_type_matches(%struct.iwl_scale_tbl_info* %24, %struct.iwl_scale_tbl_info* %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %322

306:                                              ; preds = %295
  %307 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %308 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %307, i32 0, i32 7
  %309 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %308, align 8
  %310 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %311 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = sub i64 1, %312
  %314 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %309, i64 %313
  store %struct.iwl_scale_tbl_info* %314, %struct.iwl_scale_tbl_info** %25, align 8
  %315 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %316 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %315, i32 0, i32 7
  %317 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %316, align 8
  %318 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %319 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %317, i64 %320
  store %struct.iwl_scale_tbl_info* %321, %struct.iwl_scale_tbl_info** %26, align 8
  br label %372

322:                                              ; preds = %295
  %323 = load %struct.iwl_priv*, %struct.iwl_priv** %20, align 8
  %324 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %323, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %325 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %326 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %325, i32 0, i32 7
  %327 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %326, align 8
  %328 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %329 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %327, i64 %330
  store %struct.iwl_scale_tbl_info* %331, %struct.iwl_scale_tbl_info** %27, align 8
  %332 = load %struct.iwl_priv*, %struct.iwl_priv** %20, align 8
  %333 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %27, align 8
  %334 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %27, align 8
  %337 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %27, align 8
  %340 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %332, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %335, i32 %338, i32 %341)
  %343 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %344 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %343, i32 0, i32 7
  %345 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %344, align 8
  %346 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %347 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = sub i64 1, %348
  %350 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %345, i64 %349
  store %struct.iwl_scale_tbl_info* %350, %struct.iwl_scale_tbl_info** %27, align 8
  %351 = load %struct.iwl_priv*, %struct.iwl_priv** %20, align 8
  %352 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %27, align 8
  %353 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %27, align 8
  %356 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %27, align 8
  %359 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %351, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %354, i32 %357, i32 %360)
  %362 = load %struct.iwl_priv*, %struct.iwl_priv** %20, align 8
  %363 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %24, i32 0, i32 4
  %364 = load i32, i32* %363, align 4
  %365 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %24, i32 0, i32 3
  %366 = load i32, i32* %365, align 4
  %367 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %24, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %362, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %364, i32 %366, i32 %368)
  %370 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %371 = call i32 @rs_stay_in_table(%struct.iwl_lq_sta* %370, i32 1)
  br label %522

372:                                              ; preds = %306
  br label %373

373:                                              ; preds = %372, %279
  %374 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %375 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* @IEEE80211_TX_STAT_AMPDU, align 4
  %378 = and i32 %376, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %431

380:                                              ; preds = %373
  %381 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %17, align 8
  %382 = getelementptr inbounds %struct.iwl_link_quality_cmd, %struct.iwl_link_quality_cmd* %381, i32 0, i32 0
  %383 = load %struct.TYPE_8__*, %struct.TYPE_8__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i64 0
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @le32_to_cpu(i32 %386)
  store i32 %387, i32* %23, align 4
  %388 = load i32, i32* %23, align 4
  %389 = load %struct.iwl_priv*, %struct.iwl_priv** %20, align 8
  %390 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = call i32 @rs_get_tbl_info_from_mcs(i32 %388, i64 %391, %struct.iwl_scale_tbl_info* %24, i32* %13)
  %393 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %394 = load i32, i32* %13, align 4
  %395 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %396 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %400 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %399, i32 0, i32 1
  %401 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 8
  %403 = call i32 @rs_collect_tx_data(%struct.iwl_scale_tbl_info* %393, i32 %394, i32 %398, i32 %402)
  %404 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %405 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %404, i32 0, i32 6
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %430

408:                                              ; preds = %380
  %409 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %410 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 8
  %413 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %414 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 8
  %416 = add nsw i32 %415, %412
  store i32 %416, i32* %414, align 8
  %417 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %418 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %417, i32 0, i32 1
  %419 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %422 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 8
  %425 = sub nsw i32 %420, %424
  %426 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %427 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %426, i32 0, i32 3
  %428 = load i32, i32* %427, align 4
  %429 = add nsw i32 %428, %425
  store i32 %429, i32* %427, align 4
  br label %430

430:                                              ; preds = %408, %380
  br label %518

431:                                              ; preds = %373
  %432 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %433 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %432, i32 0, i32 1
  %434 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %433, i32 0, i32 3
  %435 = load %struct.TYPE_9__*, %struct.TYPE_9__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %435, i64 0
  %437 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 4
  %439 = sub nsw i32 %438, 1
  store i32 %439, i32* %12, align 4
  %440 = load i32, i32* %12, align 4
  %441 = call i32 @min(i32 %440, i32 15)
  store i32 %441, i32* %12, align 4
  %442 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %443 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %446 = and i32 %444, %445
  %447 = icmp ne i32 %446, 0
  %448 = xor i1 %447, true
  %449 = xor i1 %448, true
  %450 = zext i1 %449 to i32
  store i32 %450, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %451

451:                                              ; preds = %495, %431
  %452 = load i32, i32* %15, align 4
  %453 = load i32, i32* %12, align 4
  %454 = icmp sle i32 %452, %453
  br i1 %454, label %455, label %498

455:                                              ; preds = %451
  %456 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %17, align 8
  %457 = getelementptr inbounds %struct.iwl_link_quality_cmd, %struct.iwl_link_quality_cmd* %456, i32 0, i32 0
  %458 = load %struct.TYPE_8__*, %struct.TYPE_8__** %457, align 8
  %459 = load i32, i32* %15, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %458, i64 %460
  %462 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = call i32 @le32_to_cpu(i32 %463)
  store i32 %464, i32* %23, align 4
  %465 = load i32, i32* %23, align 4
  %466 = load %struct.iwl_priv*, %struct.iwl_priv** %20, align 8
  %467 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = call i32 @rs_get_tbl_info_from_mcs(i32 %465, i64 %468, %struct.iwl_scale_tbl_info* %24, i32* %13)
  %470 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  %471 = call i64 @table_type_matches(%struct.iwl_scale_tbl_info* %24, %struct.iwl_scale_tbl_info* %470)
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %473, label %475

473:                                              ; preds = %455
  %474 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %25, align 8
  store %struct.iwl_scale_tbl_info* %474, %struct.iwl_scale_tbl_info** %27, align 8
  br label %483

475:                                              ; preds = %455
  %476 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %26, align 8
  %477 = call i64 @table_type_matches(%struct.iwl_scale_tbl_info* %24, %struct.iwl_scale_tbl_info* %476)
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %479, label %481

479:                                              ; preds = %475
  %480 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %26, align 8
  store %struct.iwl_scale_tbl_info* %480, %struct.iwl_scale_tbl_info** %27, align 8
  br label %482

481:                                              ; preds = %475
  br label %495

482:                                              ; preds = %479
  br label %483

483:                                              ; preds = %482, %473
  %484 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %27, align 8
  %485 = load i32, i32* %13, align 4
  %486 = load i32, i32* %15, align 4
  %487 = load i32, i32* %12, align 4
  %488 = icmp slt i32 %486, %487
  br i1 %488, label %489, label %490

489:                                              ; preds = %483
  br label %492

490:                                              ; preds = %483
  %491 = load i32, i32* %11, align 4
  br label %492

492:                                              ; preds = %490, %489
  %493 = phi i32 [ 0, %489 ], [ %491, %490 ]
  %494 = call i32 @rs_collect_tx_data(%struct.iwl_scale_tbl_info* %484, i32 %485, i32 1, i32 %493)
  br label %495

495:                                              ; preds = %492, %481
  %496 = load i32, i32* %15, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %15, align 4
  br label %451

498:                                              ; preds = %451
  %499 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %500 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %499, i32 0, i32 6
  %501 = load i64, i64* %500, align 8
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %503, label %517

503:                                              ; preds = %498
  %504 = load i32, i32* %11, align 4
  %505 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %506 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %505, i32 0, i32 2
  %507 = load i32, i32* %506, align 8
  %508 = add nsw i32 %507, %504
  store i32 %508, i32* %506, align 8
  %509 = load i32, i32* %12, align 4
  %510 = load i32, i32* %11, align 4
  %511 = sub nsw i32 1, %510
  %512 = add nsw i32 %509, %511
  %513 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %514 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %513, i32 0, i32 3
  %515 = load i32, i32* %514, align 4
  %516 = add nsw i32 %515, %512
  store i32 %516, i32* %514, align 4
  br label %517

517:                                              ; preds = %503, %498
  br label %518

518:                                              ; preds = %517, %430
  %519 = load i32, i32* %23, align 4
  %520 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %521 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %520, i32 0, i32 4
  store i32 %519, i32* %521, align 8
  br label %522

522:                                              ; preds = %518, %322
  %523 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %524 = icmp ne %struct.ieee80211_sta* %523, null
  br i1 %524, label %525, label %541

525:                                              ; preds = %522
  %526 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %527 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %526, i32 0, i32 0
  %528 = load i64*, i64** %527, align 8
  %529 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %530 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %529, i32 0, i32 0
  %531 = load i64, i64* %530, align 8
  %532 = getelementptr inbounds i64, i64* %528, i64 %531
  %533 = load i64, i64* %532, align 8
  %534 = icmp ne i64 %533, 0
  br i1 %534, label %535, label %541

535:                                              ; preds = %525
  %536 = load %struct.iwl_priv*, %struct.iwl_priv** %20, align 8
  %537 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %538 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %539 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %540 = call i32 @rs_rate_scale_perform(%struct.iwl_priv* %536, %struct.sk_buff* %537, %struct.ieee80211_sta* %538, %struct.iwl_lq_sta* %539)
  br label %541

541:                                              ; preds = %535, %525, %522
  %542 = load %struct.iwl_priv*, %struct.iwl_priv** %20, align 8
  %543 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %542, i32 0, i32 2
  %544 = load %struct.TYPE_7__*, %struct.TYPE_7__** %543, align 8
  %545 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %544, i32 0, i32 0
  %546 = load %struct.TYPE_6__*, %struct.TYPE_6__** %545, align 8
  %547 = icmp ne %struct.TYPE_6__* %546, null
  br i1 %547, label %548, label %562

548:                                              ; preds = %541
  %549 = load %struct.iwl_priv*, %struct.iwl_priv** %20, align 8
  %550 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %549, i32 0, i32 2
  %551 = load %struct.TYPE_7__*, %struct.TYPE_7__** %550, align 8
  %552 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %551, i32 0, i32 0
  %553 = load %struct.TYPE_6__*, %struct.TYPE_6__** %552, align 8
  %554 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %553, i32 0, i32 0
  %555 = load i64, i64* %554, align 8
  %556 = icmp ne i64 %555, 0
  br i1 %556, label %557, label %562

557:                                              ; preds = %548
  %558 = load %struct.iwl_priv*, %struct.iwl_priv** %20, align 8
  %559 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %29, align 8
  %560 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %16, align 8
  %561 = call i32 @rs_bt_update_lq(%struct.iwl_priv* %558, %struct.iwl_rxon_context* %559, %struct.iwl_lq_sta* %560)
  br label %562

562:                                              ; preds = %54, %62, %79, %94, %265, %557, %548, %541
  ret void
}

declare dso_local %struct.iwl_priv* @IWL_OP_MODE_GET_DVM(%struct.iwl_op_mode*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @IWL_DEBUG_RATE_LIMIT(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @rs_get_tbl_info_from_mcs(i32, i64, %struct.iwl_scale_tbl_info*, i32*) #1

declare dso_local i32 @iwl_send_lq_cmd(%struct.iwl_priv*, %struct.iwl_rxon_context*, %struct.iwl_link_quality_cmd*, i32, i32) #1

declare dso_local i64 @table_type_matches(%struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_stay_in_table(%struct.iwl_lq_sta*, i32) #1

declare dso_local i32 @rs_collect_tx_data(%struct.iwl_scale_tbl_info*, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @rs_rate_scale_perform(%struct.iwl_priv*, %struct.sk_buff*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*) #1

declare dso_local i32 @rs_bt_update_lq(%struct.iwl_priv*, %struct.iwl_rxon_context*, %struct.iwl_lq_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
