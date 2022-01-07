; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_rate_scale_perform.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_rate_scale_perform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_sta = type { i32*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_lq_sta = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.iwl_scale_tbl_info*, i32, i32, i64 }
%struct.iwl_scale_tbl_info = type { i32*, i64, i32, i8*, %struct.iwl_rate_scale_data* }
%struct.iwl_rate_scale_data = type { i64, i32, i32, i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.iwl_mvm_sta = type { %struct.iwl_mvm_tid_data* }
%struct.iwl_mvm_tid_data = type { i64 }

@IWL_RATE_INVALID = common dso_local global i32 0, align 4
@IWL_INVALID_VALUE = common dso_local global i32 0, align 4
@IWL_MAX_TID_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"rate scale calculate new rate for skb\0A\00", align 1
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IWL_AGG_OFF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Rate scale index %d for type %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"mask 0x%04X\0A\00", align 1
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IWL_FIRST_OFDM_RATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Current Rate is not valid\0A\00", align 1
@LQ_NONE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"tbl->expected_tpt is NULL\0A\00", align 1
@IWL_RATE_MIN_FAILURE_TH = common dso_local global i64 0, align 8
@IWL_RATE_MIN_SUCCESS_TH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"LQ: still below TH. succ=%d total=%d for index %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"expected_tpt should have been calculated by now\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"LQ: SWITCHING TO NEW TABLE suc=%d cur-tpt=%d old-tpt=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"LQ: GOING BACK TO THE OLD TABLE suc=%d cur-tpt=%d old-tpt=%d\0A\00", align 1
@IWL_RATE_DECREASE_TH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [44 x i8] c"decrease rate because of low success_ratio\0A\00", align 1
@IWL_RATE_INCREASE_TH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"decrease rate because of low tpt\0A\00", align 1
@IWL_RATE_HIGH_TH = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [61 x i8] c"choose rate scale index %d action %d low %d high %d type %d\0A\00", align 1
@IWL_RATE_COUNT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [35 x i8] c"Switch current  mcs: %X index: %d\0A\00", align 1
@CMD_ASYNC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"LQ: STAY in legacy table\0A\00", align 1
@IWL_AGG_TPT_THREHOLD = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"try to aggregate tid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.sk_buff*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*)* @rs_rate_scale_perform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_rate_scale_perform(%struct.iwl_mvm* %0, %struct.sk_buff* %1, %struct.ieee80211_sta* %2, %struct.iwl_lq_sta* %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.iwl_lq_sta*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.ieee80211_hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.iwl_rate_scale_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.iwl_scale_tbl_info*, align 8
  %24 = alloca %struct.iwl_scale_tbl_info*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.iwl_mvm_sta*, align 8
  %33 = alloca %struct.iwl_mvm_tid_data*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store %struct.iwl_lq_sta* %3, %struct.iwl_lq_sta** %8, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %34)
  store %struct.ieee80211_tx_info* %35, %struct.ieee80211_tx_info** %9, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %39, %struct.ieee80211_hdr** %10, align 8
  %40 = load i32, i32* @IWL_RATE_INVALID, align 4
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* @IWL_RATE_INVALID, align 4
  store i32 %41, i32* %12, align 4
  store %struct.iwl_rate_scale_data* null, %struct.iwl_rate_scale_data** %15, align 8
  %42 = load i32, i32* @IWL_INVALID_VALUE, align 4
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* @IWL_INVALID_VALUE, align 4
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* @IWL_INVALID_VALUE, align 4
  store i32 %44, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %45 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  store i32 %45, i32* %31, align 4
  %46 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = bitcast i8* %49 to %struct.iwl_mvm_sta*
  store %struct.iwl_mvm_sta* %50, %struct.iwl_mvm_sta** %32, align 8
  %51 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %52 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %54 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ieee80211_is_data(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %4
  %59 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %60 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58, %4
  br label %855

66:                                               ; preds = %58
  %67 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %68 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %71 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %76 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %78 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %79 = call i32 @rs_tl_add_packet(%struct.iwl_lq_sta* %77, %struct.ieee80211_hdr* %78)
  store i32 %79, i32* %31, align 4
  %80 = load i32, i32* %31, align 4
  %81 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %110

83:                                               ; preds = %66
  %84 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %85 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %31, align 4
  %88 = shl i32 1, %87
  %89 = and i32 %86, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %83
  %92 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %32, align 8
  %93 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %92, i32 0, i32 0
  %94 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %93, align 8
  %95 = load i32, i32* %31, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %94, i64 %96
  store %struct.iwl_mvm_tid_data* %97, %struct.iwl_mvm_tid_data** %33, align 8
  %98 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %33, align 8
  %99 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @IWL_AGG_OFF, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %105 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %104, i32 0, i32 3
  store i32 0, i32* %105, align 4
  br label %109

106:                                              ; preds = %91
  %107 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %108 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %107, i32 0, i32 3
  store i32 1, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %103
  br label %113

110:                                              ; preds = %83, %66
  %111 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %112 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %111, i32 0, i32 3
  store i32 0, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %109
  %114 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %115 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %114, i32 0, i32 14
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %113
  %119 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %120 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %27, align 4
  br label %127

122:                                              ; preds = %113
  %123 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %124 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 1, %125
  store i32 %126, i32* %27, align 4
  br label %127

127:                                              ; preds = %122, %118
  %128 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %129 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %128, i32 0, i32 11
  %130 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %129, align 8
  %131 = load i32, i32* %27, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %130, i64 %132
  store %struct.iwl_scale_tbl_info* %133, %struct.iwl_scale_tbl_info** %23, align 8
  %134 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %135 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %134, i32 0, i32 3
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @is_legacy(i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %127
  %140 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %141 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %140, i32 0, i32 5
  store i32 0, i32* %141, align 4
  br label %147

142:                                              ; preds = %127
  %143 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %144 = call i32 @rs_use_green(%struct.ieee80211_sta* %143)
  %145 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %146 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %145, i32 0, i32 5
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %142, %139
  %148 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %149 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %26, align 4
  %151 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %152 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  store i32 %153, i32* %13, align 4
  %154 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %155 = load i32, i32* %13, align 4
  %156 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %157 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %156, i32 0, i32 3
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %154, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %155, i8* %158)
  %160 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %161 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %162 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %163 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %162, i32 0, i32 3
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @rs_get_supported_rates(%struct.iwl_lq_sta* %160, %struct.ieee80211_hdr* %161, i8* %164)
  store i32 %165, i32* %21, align 4
  %166 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %167 = load i32, i32* %21, align 4
  %168 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %166, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %167)
  %169 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %170 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %169, i32 0, i32 3
  %171 = load i8*, i8** %170, align 8
  %172 = call i64 @is_legacy(i8* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %195

174:                                              ; preds = %147
  %175 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %176 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %188

180:                                              ; preds = %174
  %181 = load i32, i32* %21, align 4
  %182 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %183 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @IWL_FIRST_OFDM_RATE, align 4
  %186 = shl i32 %184, %185
  %187 = and i32 %181, %186
  store i32 %187, i32* %25, align 4
  br label %194

188:                                              ; preds = %174
  %189 = load i32, i32* %21, align 4
  %190 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %191 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = and i32 %189, %192
  store i32 %193, i32* %25, align 4
  br label %194

194:                                              ; preds = %188, %180
  br label %197

195:                                              ; preds = %147
  %196 = load i32, i32* %21, align 4
  store i32 %196, i32* %25, align 4
  br label %197

197:                                              ; preds = %195, %194
  %198 = load i32, i32* %25, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %21, align 4
  store i32 %201, i32* %25, align 4
  br label %202

202:                                              ; preds = %200, %197
  %203 = load i32, i32* %13, align 4
  %204 = shl i32 1, %203
  %205 = load i32, i32* %25, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %240, label %208

208:                                              ; preds = %202
  %209 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %210 = call i32 @IWL_ERR(%struct.iwl_mvm* %209, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %211 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %212 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %211, i32 0, i32 14
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %239

215:                                              ; preds = %208
  %216 = load i8*, i8** @LQ_NONE, align 8
  %217 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %218 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %217, i32 0, i32 3
  store i8* %216, i8** %218, align 8
  %219 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %220 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %219, i32 0, i32 14
  store i64 0, i64* %220, align 8
  %221 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %222 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %221, i32 0, i32 11
  %223 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %222, align 8
  %224 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %225 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %223, i64 %227
  store %struct.iwl_scale_tbl_info* %228, %struct.iwl_scale_tbl_info** %23, align 8
  %229 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %230 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @iwl_hwrate_to_plcp_idx(i32 %231)
  store i32 %232, i32* %13, align 4
  %233 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %234 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %235 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %236 = load i32, i32* %13, align 4
  %237 = load i32, i32* %26, align 4
  %238 = call i32 @rs_update_rate_tbl(%struct.iwl_mvm* %233, %struct.iwl_lq_sta* %234, %struct.iwl_scale_tbl_info* %235, i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %215, %208
  br label %855

240:                                              ; preds = %202
  %241 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %242 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = icmp ne i32* %243, null
  br i1 %244, label %248, label %245

245:                                              ; preds = %240
  %246 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %247 = call i32 @IWL_ERR(%struct.iwl_mvm* %246, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %855

248:                                              ; preds = %240
  %249 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %250 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %249, i32 0, i32 7
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, -1
  br i1 %252, label %253, label %269

253:                                              ; preds = %248
  %254 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %255 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %254, i32 0, i32 7
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %13, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %259, label %269

259:                                              ; preds = %253
  %260 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %261 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %260, i32 0, i32 7
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %13, align 4
  store i32 1, i32* %22, align 4
  %263 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %264 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %263, i32 0, i32 4
  %265 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %264, align 8
  %266 = load i32, i32* %13, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %265, i64 %267
  store %struct.iwl_rate_scale_data* %268, %struct.iwl_rate_scale_data** %15, align 8
  br label %614

269:                                              ; preds = %253, %248
  %270 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %271 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %270, i32 0, i32 4
  %272 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %271, align 8
  %273 = load i32, i32* %13, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %272, i64 %274
  store %struct.iwl_rate_scale_data* %275, %struct.iwl_rate_scale_data** %15, align 8
  %276 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %15, align 8
  %277 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %15, align 8
  %280 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = sext i32 %281 to i64
  %283 = sub nsw i64 %278, %282
  store i64 %283, i64* %19, align 8
  %284 = load i64, i64* %19, align 8
  %285 = load i64, i64* @IWL_RATE_MIN_FAILURE_TH, align 8
  %286 = icmp slt i64 %284, %285
  br i1 %286, label %287, label %308

287:                                              ; preds = %269
  %288 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %15, align 8
  %289 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @IWL_RATE_MIN_SUCCESS_TH, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %308

293:                                              ; preds = %287
  %294 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %295 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %15, align 8
  %296 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %15, align 8
  %299 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i32, i32* %13, align 4
  %302 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %294, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %297, i64 %300, i32 %301)
  %303 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %304 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %15, align 8
  %305 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %304, i32 0, i32 1
  store i32 %303, i32* %305, align 8
  %306 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %307 = call i32 @rs_stay_in_table(%struct.iwl_lq_sta* %306, i32 0)
  br label %844

308:                                              ; preds = %287, %269
  %309 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %15, align 8
  %310 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %15, align 8
  %313 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %316 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %13, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = mul nsw i32 %314, %321
  %323 = add nsw i32 %322, 64
  %324 = sdiv i32 %323, 128
  %325 = icmp ne i32 %311, %324
  br i1 %325, label %326, label %344

326:                                              ; preds = %308
  %327 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %328 = call i32 @IWL_ERR(%struct.iwl_mvm* %327, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %329 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %15, align 8
  %330 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %333 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %332, i32 0, i32 0
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %13, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = mul nsw i32 %331, %338
  %340 = add nsw i32 %339, 64
  %341 = sdiv i32 %340, 128
  %342 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %15, align 8
  %343 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %342, i32 0, i32 1
  store i32 %341, i32* %343, align 8
  br label %344

344:                                              ; preds = %326, %308
  %345 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %346 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %345, i32 0, i32 14
  %347 = load i64, i64* %346, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %418

349:                                              ; preds = %344
  %350 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %15, align 8
  %351 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %354 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %353, i32 0, i32 8
  %355 = load i32, i32* %354, align 8
  %356 = icmp sgt i32 %352, %355
  br i1 %356, label %357, label %384

357:                                              ; preds = %349
  %358 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %359 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %15, align 8
  %360 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %15, align 8
  %363 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %366 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %365, i32 0, i32 8
  %367 = load i32, i32* %366, align 8
  %368 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %358, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i32 %361, i32 %364, i32 %367)
  %369 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %370 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %369, i32 0, i32 3
  %371 = load i8*, i8** %370, align 8
  %372 = call i64 @is_legacy(i8* %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %377, label %374

374:                                              ; preds = %357
  %375 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %376 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %375, i32 0, i32 9
  store i32 1, i32* %376, align 4
  br label %377

377:                                              ; preds = %374, %357
  %378 = load i32, i32* %27, align 4
  %379 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %380 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %379, i32 0, i32 4
  store i32 %378, i32* %380, align 8
  %381 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %15, align 8
  %382 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 8
  store i32 %383, i32* %16, align 4
  br label %415

384:                                              ; preds = %349
  %385 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %386 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %15, align 8
  %387 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %15, align 8
  %390 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %393 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %392, i32 0, i32 8
  %394 = load i32, i32* %393, align 8
  %395 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %385, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 %388, i32 %391, i32 %394)
  %396 = load i8*, i8** @LQ_NONE, align 8
  %397 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %398 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %397, i32 0, i32 3
  store i8* %396, i8** %398, align 8
  %399 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %400 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %399, i32 0, i32 4
  %401 = load i32, i32* %400, align 8
  store i32 %401, i32* %27, align 4
  %402 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %403 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %402, i32 0, i32 11
  %404 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %403, align 8
  %405 = load i32, i32* %27, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %404, i64 %406
  store %struct.iwl_scale_tbl_info* %407, %struct.iwl_scale_tbl_info** %23, align 8
  %408 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %409 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 8
  %411 = call i32 @iwl_hwrate_to_plcp_idx(i32 %410)
  store i32 %411, i32* %13, align 4
  %412 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %413 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %412, i32 0, i32 8
  %414 = load i32, i32* %413, align 8
  store i32 %414, i32* %16, align 4
  store i32 1, i32* %22, align 4
  br label %415

415:                                              ; preds = %384, %377
  %416 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %417 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %416, i32 0, i32 14
  store i64 0, i64* %417, align 8
  store i32 1, i32* %28, align 4
  br label %614

418:                                              ; preds = %344
  %419 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %420 = load i32, i32* %13, align 4
  %421 = load i32, i32* %25, align 4
  %422 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %423 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %422, i32 0, i32 3
  %424 = load i8*, i8** %423, align 8
  %425 = call i32 @rs_get_adjacent_rate(%struct.iwl_mvm* %419, i32 %420, i32 %421, i8* %424)
  store i32 %425, i32* %29, align 4
  %426 = load i32, i32* %29, align 4
  %427 = and i32 %426, 255
  store i32 %427, i32* %11, align 4
  %428 = load i32, i32* %29, align 4
  %429 = ashr i32 %428, 8
  %430 = and i32 %429, 255
  store i32 %430, i32* %12, align 4
  %431 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %432 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %431, i32 0, i32 7
  %433 = load i32, i32* %432, align 4
  %434 = icmp ne i32 %433, -1
  br i1 %434, label %435, label %443

435:                                              ; preds = %418
  %436 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %437 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %436, i32 0, i32 7
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* %12, align 4
  %440 = icmp slt i32 %438, %439
  br i1 %440, label %441, label %443

441:                                              ; preds = %435
  %442 = load i32, i32* @IWL_RATE_INVALID, align 4
  store i32 %442, i32* %12, align 4
  br label %443

443:                                              ; preds = %441, %435, %418
  %444 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %15, align 8
  %445 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %444, i32 0, i32 2
  %446 = load i32, i32* %445, align 4
  store i32 %446, i32* %30, align 4
  %447 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %15, align 8
  %448 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 8
  store i32 %449, i32* %16, align 4
  %450 = load i32, i32* %11, align 4
  %451 = load i32, i32* @IWL_RATE_INVALID, align 4
  %452 = icmp ne i32 %450, %451
  br i1 %452, label %453, label %462

453:                                              ; preds = %443
  %454 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %455 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %454, i32 0, i32 4
  %456 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %455, align 8
  %457 = load i32, i32* %11, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %456, i64 %458
  %460 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 8
  store i32 %461, i32* %17, align 4
  br label %462

462:                                              ; preds = %453, %443
  %463 = load i32, i32* %12, align 4
  %464 = load i32, i32* @IWL_RATE_INVALID, align 4
  %465 = icmp ne i32 %463, %464
  br i1 %465, label %466, label %475

466:                                              ; preds = %462
  %467 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %468 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %467, i32 0, i32 4
  %469 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %468, align 8
  %470 = load i32, i32* %12, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %469, i64 %471
  %473 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %472, i32 0, i32 1
  %474 = load i32, i32* %473, align 8
  store i32 %474, i32* %18, align 4
  br label %475

475:                                              ; preds = %466, %462
  store i32 0, i32* %20, align 4
  %476 = load i32, i32* %30, align 4
  %477 = load i32, i32* @IWL_RATE_DECREASE_TH, align 4
  %478 = icmp sle i32 %476, %477
  br i1 %478, label %482, label %479

479:                                              ; preds = %475
  %480 = load i32, i32* %16, align 4
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %482, label %485

482:                                              ; preds = %479, %475
  %483 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %484 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %483, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %20, align 4
  br label %563

485:                                              ; preds = %479
  %486 = load i32, i32* %17, align 4
  %487 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %488 = icmp eq i32 %486, %487
  br i1 %488, label %489, label %509

489:                                              ; preds = %485
  %490 = load i32, i32* %18, align 4
  %491 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %492 = icmp eq i32 %490, %491
  br i1 %492, label %493, label %509

493:                                              ; preds = %489
  %494 = load i32, i32* %12, align 4
  %495 = load i32, i32* @IWL_RATE_INVALID, align 4
  %496 = icmp ne i32 %494, %495
  br i1 %496, label %497, label %502

497:                                              ; preds = %493
  %498 = load i32, i32* %30, align 4
  %499 = load i32, i32* @IWL_RATE_INCREASE_TH, align 4
  %500 = icmp sge i32 %498, %499
  br i1 %500, label %501, label %502

501:                                              ; preds = %497
  store i32 1, i32* %20, align 4
  br label %508

502:                                              ; preds = %497, %493
  %503 = load i32, i32* %11, align 4
  %504 = load i32, i32* @IWL_RATE_INVALID, align 4
  %505 = icmp ne i32 %503, %504
  br i1 %505, label %506, label %507

506:                                              ; preds = %502
  store i32 0, i32* %20, align 4
  br label %507

507:                                              ; preds = %506, %502
  br label %508

508:                                              ; preds = %507, %501
  br label %562

509:                                              ; preds = %489, %485
  %510 = load i32, i32* %17, align 4
  %511 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %512 = icmp ne i32 %510, %511
  br i1 %512, label %513, label %526

513:                                              ; preds = %509
  %514 = load i32, i32* %18, align 4
  %515 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %516 = icmp ne i32 %514, %515
  br i1 %516, label %517, label %526

517:                                              ; preds = %513
  %518 = load i32, i32* %17, align 4
  %519 = load i32, i32* %16, align 4
  %520 = icmp slt i32 %518, %519
  br i1 %520, label %521, label %526

521:                                              ; preds = %517
  %522 = load i32, i32* %18, align 4
  %523 = load i32, i32* %16, align 4
  %524 = icmp slt i32 %522, %523
  br i1 %524, label %525, label %526

525:                                              ; preds = %521
  store i32 0, i32* %20, align 4
  br label %561

526:                                              ; preds = %521, %517, %513, %509
  %527 = load i32, i32* %18, align 4
  %528 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %529 = icmp ne i32 %527, %528
  br i1 %529, label %530, label %541

530:                                              ; preds = %526
  %531 = load i32, i32* %18, align 4
  %532 = load i32, i32* %16, align 4
  %533 = icmp sgt i32 %531, %532
  br i1 %533, label %534, label %539

534:                                              ; preds = %530
  %535 = load i32, i32* %30, align 4
  %536 = load i32, i32* @IWL_RATE_INCREASE_TH, align 4
  %537 = icmp sge i32 %535, %536
  br i1 %537, label %538, label %539

538:                                              ; preds = %534
  store i32 1, i32* %20, align 4
  br label %540

539:                                              ; preds = %534, %530
  store i32 0, i32* %20, align 4
  br label %540

540:                                              ; preds = %539, %538
  br label %560

541:                                              ; preds = %526
  %542 = load i32, i32* %17, align 4
  %543 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %544 = icmp ne i32 %542, %543
  br i1 %544, label %545, label %559

545:                                              ; preds = %541
  %546 = load i32, i32* %17, align 4
  %547 = load i32, i32* %16, align 4
  %548 = icmp sgt i32 %546, %547
  br i1 %548, label %549, label %552

549:                                              ; preds = %545
  %550 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %551 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %550, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %20, align 4
  br label %558

552:                                              ; preds = %545
  %553 = load i32, i32* %30, align 4
  %554 = load i32, i32* @IWL_RATE_INCREASE_TH, align 4
  %555 = icmp sge i32 %553, %554
  br i1 %555, label %556, label %557

556:                                              ; preds = %552
  store i32 1, i32* %20, align 4
  br label %557

557:                                              ; preds = %556, %552
  br label %558

558:                                              ; preds = %557, %549
  br label %559

559:                                              ; preds = %558, %541
  br label %560

560:                                              ; preds = %559, %540
  br label %561

561:                                              ; preds = %560, %525
  br label %562

562:                                              ; preds = %561, %508
  br label %563

563:                                              ; preds = %562, %482
  %564 = load i32, i32* %20, align 4
  %565 = icmp eq i32 %564, -1
  br i1 %565, label %566, label %586

566:                                              ; preds = %563
  %567 = load i32, i32* %11, align 4
  %568 = load i32, i32* @IWL_RATE_INVALID, align 4
  %569 = icmp ne i32 %567, %568
  br i1 %569, label %570, label %586

570:                                              ; preds = %566
  %571 = load i32, i32* %30, align 4
  %572 = load i32, i32* @IWL_RATE_HIGH_TH, align 4
  %573 = icmp sgt i32 %571, %572
  br i1 %573, label %585, label %574

574:                                              ; preds = %570
  %575 = load i32, i32* %16, align 4
  %576 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %577 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %576, i32 0, i32 0
  %578 = load i32*, i32** %577, align 8
  %579 = load i32, i32* %11, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds i32, i32* %578, i64 %580
  %582 = load i32, i32* %581, align 4
  %583 = mul nsw i32 100, %582
  %584 = icmp sgt i32 %575, %583
  br i1 %584, label %585, label %586

585:                                              ; preds = %574, %570
  store i32 0, i32* %20, align 4
  br label %586

586:                                              ; preds = %585, %574, %566, %563
  %587 = load i32, i32* %20, align 4
  switch i32 %587, label %603 [
    i32 -1, label %588
    i32 1, label %595
    i32 0, label %602
  ]

588:                                              ; preds = %586
  %589 = load i32, i32* %11, align 4
  %590 = load i32, i32* @IWL_RATE_INVALID, align 4
  %591 = icmp ne i32 %589, %590
  br i1 %591, label %592, label %594

592:                                              ; preds = %588
  store i32 1, i32* %22, align 4
  %593 = load i32, i32* %11, align 4
  store i32 %593, i32* %13, align 4
  br label %594

594:                                              ; preds = %592, %588
  br label %604

595:                                              ; preds = %586
  %596 = load i32, i32* %12, align 4
  %597 = load i32, i32* @IWL_RATE_INVALID, align 4
  %598 = icmp ne i32 %596, %597
  br i1 %598, label %599, label %601

599:                                              ; preds = %595
  store i32 1, i32* %22, align 4
  %600 = load i32, i32* %12, align 4
  store i32 %600, i32* %13, align 4
  br label %601

601:                                              ; preds = %599, %595
  br label %604

602:                                              ; preds = %586
  br label %603

603:                                              ; preds = %586, %602
  br label %604

604:                                              ; preds = %603, %601, %594
  %605 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %606 = load i32, i32* %13, align 4
  %607 = load i32, i32* %20, align 4
  %608 = load i32, i32* %11, align 4
  %609 = load i32, i32* %12, align 4
  %610 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %611 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %610, i32 0, i32 3
  %612 = load i8*, i8** %611, align 8
  %613 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %605, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0), i32 %606, i32 %607, i32 %608, i32 %609, i8* %612)
  br label %614

614:                                              ; preds = %604, %415, %259
  %615 = load i32, i32* %22, align 4
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %624

617:                                              ; preds = %614
  %618 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %619 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %620 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %621 = load i32, i32* %13, align 4
  %622 = load i32, i32* %26, align 4
  %623 = call i32 @rs_update_rate_tbl(%struct.iwl_mvm* %618, %struct.iwl_lq_sta* %619, %struct.iwl_scale_tbl_info* %620, i32 %621, i32 %622)
  br label %624

624:                                              ; preds = %617, %614
  %625 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %626 = call i32 @rs_stay_in_table(%struct.iwl_lq_sta* %625, i32 0)
  %627 = load i32, i32* %22, align 4
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %743, label %629

629:                                              ; preds = %624
  %630 = load i32, i32* %28, align 4
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %743, label %632

632:                                              ; preds = %629
  %633 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %634 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %633, i32 0, i32 12
  %635 = load i32, i32* %634, align 8
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %743, label %637

637:                                              ; preds = %632
  %638 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %15, align 8
  %639 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %638, i32 0, i32 0
  %640 = load i64, i64* %639, align 8
  %641 = icmp ne i64 %640, 0
  br i1 %641, label %642, label %743

642:                                              ; preds = %637
  %643 = load i32, i32* %16, align 4
  %644 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %645 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %644, i32 0, i32 8
  store i32 %643, i32* %645, align 8
  %646 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %647 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %646, i32 0, i32 3
  %648 = load i8*, i8** %647, align 8
  %649 = call i64 @is_legacy(i8* %648)
  %650 = icmp ne i64 %649, 0
  br i1 %650, label %651, label %657

651:                                              ; preds = %642
  %652 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %653 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %654 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %655 = load i32, i32* %13, align 4
  %656 = call i32 @rs_move_legacy_other(%struct.iwl_mvm* %652, %struct.iwl_lq_sta* %653, %struct.ieee80211_sta* %654, i32 %655)
  br label %689

657:                                              ; preds = %642
  %658 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %659 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %658, i32 0, i32 3
  %660 = load i8*, i8** %659, align 8
  %661 = call i64 @is_siso(i8* %660)
  %662 = icmp ne i64 %661, 0
  br i1 %662, label %663, label %669

663:                                              ; preds = %657
  %664 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %665 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %666 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %667 = load i32, i32* %13, align 4
  %668 = call i32 @rs_move_siso_to_other(%struct.iwl_mvm* %664, %struct.iwl_lq_sta* %665, %struct.ieee80211_sta* %666, i32 %667)
  br label %688

669:                                              ; preds = %657
  %670 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %671 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %670, i32 0, i32 3
  %672 = load i8*, i8** %671, align 8
  %673 = call i64 @is_mimo2(i8* %672)
  %674 = icmp ne i64 %673, 0
  br i1 %674, label %675, label %681

675:                                              ; preds = %669
  %676 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %677 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %678 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %679 = load i32, i32* %13, align 4
  %680 = call i32 @rs_move_mimo2_to_other(%struct.iwl_mvm* %676, %struct.iwl_lq_sta* %677, %struct.ieee80211_sta* %678, i32 %679)
  br label %687

681:                                              ; preds = %669
  %682 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %683 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %684 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %685 = load i32, i32* %13, align 4
  %686 = call i32 @rs_move_mimo3_to_other(%struct.iwl_mvm* %682, %struct.iwl_lq_sta* %683, %struct.ieee80211_sta* %684, i32 %685)
  br label %687

687:                                              ; preds = %681, %675
  br label %688

688:                                              ; preds = %687, %663
  br label %689

689:                                              ; preds = %688, %651
  %690 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %691 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %690, i32 0, i32 14
  %692 = load i64, i64* %691, align 8
  %693 = icmp ne i64 %692, 0
  br i1 %693, label %694, label %741

694:                                              ; preds = %689
  %695 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %696 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %695, i32 0, i32 11
  %697 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %696, align 8
  %698 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %699 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %698, i32 0, i32 4
  %700 = load i32, i32* %699, align 8
  %701 = sub nsw i32 1, %700
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %697, i64 %702
  store %struct.iwl_scale_tbl_info* %703, %struct.iwl_scale_tbl_info** %23, align 8
  store i32 0, i32* %14, align 4
  br label %704

704:                                              ; preds = %716, %694
  %705 = load i32, i32* %14, align 4
  %706 = load i32, i32* @IWL_RATE_COUNT, align 4
  %707 = icmp slt i32 %705, %706
  br i1 %707, label %708, label %719

708:                                              ; preds = %704
  %709 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %710 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %709, i32 0, i32 4
  %711 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %710, align 8
  %712 = load i32, i32* %14, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %711, i64 %713
  %715 = call i32 @rs_rate_scale_clear_window(%struct.iwl_rate_scale_data* %714)
  br label %716

716:                                              ; preds = %708
  %717 = load i32, i32* %14, align 4
  %718 = add nsw i32 %717, 1
  store i32 %718, i32* %14, align 4
  br label %704

719:                                              ; preds = %704
  %720 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %721 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %720, i32 0, i32 2
  %722 = load i32, i32* %721, align 8
  %723 = call i32 @iwl_hwrate_to_plcp_idx(i32 %722)
  store i32 %723, i32* %13, align 4
  %724 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %725 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %726 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %725, i32 0, i32 2
  %727 = load i32, i32* %726, align 8
  %728 = load i32, i32* %13, align 4
  %729 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %724, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %727, i32 %728)
  %730 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %731 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %732 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %733 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %732, i32 0, i32 2
  %734 = load i32, i32* %733, align 8
  %735 = call i32 @rs_fill_link_cmd(%struct.iwl_mvm* %730, %struct.iwl_lq_sta* %731, i32 %734)
  %736 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %737 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %738 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %737, i32 0, i32 13
  %739 = load i32, i32* @CMD_ASYNC, align 4
  %740 = call i32 @iwl_mvm_send_lq_cmd(%struct.iwl_mvm* %736, i32* %738, i32 %739, i32 0)
  br label %742

741:                                              ; preds = %689
  store i32 1, i32* %28, align 4
  br label %742

742:                                              ; preds = %741, %719
  br label %743

743:                                              ; preds = %742, %637, %632, %629, %624
  %744 = load i32, i32* %28, align 4
  %745 = icmp ne i32 %744, 0
  br i1 %745, label %746, label %843

746:                                              ; preds = %743
  %747 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %748 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %747, i32 0, i32 12
  %749 = load i32, i32* %748, align 8
  %750 = icmp ne i32 %749, 0
  br i1 %750, label %843, label %751

751:                                              ; preds = %746
  %752 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %753 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %752, i32 0, i32 11
  %754 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %753, align 8
  %755 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %756 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %755, i32 0, i32 4
  %757 = load i32, i32* %756, align 8
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %754, i64 %758
  store %struct.iwl_scale_tbl_info* %759, %struct.iwl_scale_tbl_info** %24, align 8
  %760 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %24, align 8
  %761 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %760, i32 0, i32 3
  %762 = load i8*, i8** %761, align 8
  %763 = call i64 @is_legacy(i8* %762)
  %764 = icmp ne i64 %763, 0
  br i1 %764, label %765, label %785

765:                                              ; preds = %751
  %766 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %767 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %766, i32 0, i32 1
  %768 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %767, i32 0, i32 0
  %769 = load i32, i32* %768, align 8
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %785, label %771

771:                                              ; preds = %765
  %772 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %773 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %772, i32 0, i32 10
  %774 = load i64, i64* %773, align 8
  %775 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %24, align 8
  %776 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %775, i32 0, i32 1
  %777 = load i64, i64* %776, align 8
  %778 = icmp sgt i64 %774, %777
  br i1 %778, label %779, label %785

779:                                              ; preds = %771
  %780 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %781 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %780, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %782 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %783 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %784 = call i32 @rs_set_stay_in_table(%struct.iwl_mvm* %782, i32 1, %struct.iwl_lq_sta* %783)
  br label %785

785:                                              ; preds = %779, %771, %765, %751
  %786 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %787 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %786, i32 0, i32 9
  %788 = load i32, i32* %787, align 4
  %789 = icmp ne i32 %788, 0
  br i1 %789, label %790, label %842

790:                                              ; preds = %785
  %791 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %792 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %791, i32 0, i32 10
  %793 = load i64, i64* %792, align 8
  %794 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %24, align 8
  %795 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %794, i32 0, i32 1
  %796 = load i64, i64* %795, align 8
  %797 = icmp sge i64 %793, %796
  br i1 %797, label %798, label %842

798:                                              ; preds = %790
  %799 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %800 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %799, i32 0, i32 8
  %801 = load i32, i32* %800, align 8
  %802 = load i32, i32* @IWL_AGG_TPT_THREHOLD, align 4
  %803 = icmp sgt i32 %801, %802
  br i1 %803, label %804, label %838

804:                                              ; preds = %798
  %805 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %806 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %805, i32 0, i32 2
  %807 = load i32, i32* %806, align 8
  %808 = load i32, i32* %31, align 4
  %809 = shl i32 1, %808
  %810 = and i32 %807, %809
  %811 = icmp ne i32 %810, 0
  br i1 %811, label %812, label %838

812:                                              ; preds = %804
  %813 = load i32, i32* %31, align 4
  %814 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  %815 = icmp ne i32 %813, %814
  br i1 %815, label %816, label %838

816:                                              ; preds = %812
  %817 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %32, align 8
  %818 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %817, i32 0, i32 0
  %819 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %818, align 8
  %820 = load i32, i32* %31, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %819, i64 %821
  store %struct.iwl_mvm_tid_data* %822, %struct.iwl_mvm_tid_data** %33, align 8
  %823 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %33, align 8
  %824 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %823, i32 0, i32 0
  %825 = load i64, i64* %824, align 8
  %826 = load i64, i64* @IWL_AGG_OFF, align 8
  %827 = icmp eq i64 %825, %826
  br i1 %827, label %828, label %837

828:                                              ; preds = %816
  %829 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %830 = load i32, i32* %31, align 4
  %831 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %829, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %830)
  %832 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %833 = load i32, i32* %31, align 4
  %834 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %835 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %836 = call i32 @rs_tl_turn_on_agg(%struct.iwl_mvm* %832, i32 %833, %struct.iwl_lq_sta* %834, %struct.ieee80211_sta* %835)
  br label %837

837:                                              ; preds = %828, %816
  br label %838

838:                                              ; preds = %837, %812, %804, %798
  %839 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %840 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %841 = call i32 @rs_set_stay_in_table(%struct.iwl_mvm* %839, i32 0, %struct.iwl_lq_sta* %840)
  br label %842

842:                                              ; preds = %838, %790, %785
  br label %843

843:                                              ; preds = %842, %746, %743
  br label %844

844:                                              ; preds = %843, %293
  %845 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %846 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %847 = load i32, i32* %13, align 4
  %848 = load i32, i32* %26, align 4
  %849 = call i32 @rate_n_flags_from_tbl(%struct.iwl_mvm* %845, %struct.iwl_scale_tbl_info* %846, i32 %847, i32 %848)
  %850 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %23, align 8
  %851 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %850, i32 0, i32 2
  store i32 %849, i32* %851, align 8
  %852 = load i32, i32* %13, align 4
  %853 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %854 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %853, i32 0, i32 6
  store i32 %852, i32* %854, align 8
  br label %855

855:                                              ; preds = %844, %245, %239, %65
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @rs_tl_add_packet(%struct.iwl_lq_sta*, %struct.ieee80211_hdr*) #1

declare dso_local i64 @is_legacy(i8*) #1

declare dso_local i32 @rs_use_green(%struct.ieee80211_sta*) #1

declare dso_local i32 @rs_get_supported_rates(%struct.iwl_lq_sta*, %struct.ieee80211_hdr*, i8*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @iwl_hwrate_to_plcp_idx(i32) #1

declare dso_local i32 @rs_update_rate_tbl(%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*, i32, i32) #1

declare dso_local i32 @rs_stay_in_table(%struct.iwl_lq_sta*, i32) #1

declare dso_local i32 @rs_get_adjacent_rate(%struct.iwl_mvm*, i32, i32, i8*) #1

declare dso_local i32 @rs_move_legacy_other(%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.ieee80211_sta*, i32) #1

declare dso_local i64 @is_siso(i8*) #1

declare dso_local i32 @rs_move_siso_to_other(%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.ieee80211_sta*, i32) #1

declare dso_local i64 @is_mimo2(i8*) #1

declare dso_local i32 @rs_move_mimo2_to_other(%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @rs_move_mimo3_to_other(%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @rs_rate_scale_clear_window(%struct.iwl_rate_scale_data*) #1

declare dso_local i32 @rs_fill_link_cmd(%struct.iwl_mvm*, %struct.iwl_lq_sta*, i32) #1

declare dso_local i32 @iwl_mvm_send_lq_cmd(%struct.iwl_mvm*, i32*, i32, i32) #1

declare dso_local i32 @rs_set_stay_in_table(%struct.iwl_mvm*, i32, %struct.iwl_lq_sta*) #1

declare dso_local i32 @rs_tl_turn_on_agg(%struct.iwl_mvm*, i32, %struct.iwl_lq_sta*, %struct.ieee80211_sta*) #1

declare dso_local i32 @rate_n_flags_from_tbl(%struct.iwl_mvm*, %struct.iwl_scale_tbl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
