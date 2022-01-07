; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_move_siso_to_other.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_move_siso_to_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_lq_sta = type { i32, i64, i32, i32, i32, %struct.iwl_scale_tbl_info* }
%struct.iwl_scale_tbl_info = type { i32, i32, i32*, i32, i32, i32, i32, %struct.iwl_rate_scale_data* }
%struct.iwl_rate_scale_data = type { i32 }
%struct.ieee80211_sta = type { %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_ht_cap = type { i32 }

@IWL_RATE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"LQ: SISO toggle Antenna\0A\00", align 1
@IWL_RS_GOOD_RATIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"LQ: SISO switch to MIMO2\0A\00", align 1
@ANT_AB = common dso_local global i32 0, align 4
@ANT_AC = common dso_local global i32 0, align 4
@ANT_BC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"LQ: SISO toggle SGI/NGI\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"SGI was set in GF+SISO\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"LQ: SISO switch to MIMO3\0A\00", align 1
@ANT_ABC = common dso_local global i32 0, align 4
@IWL_LEGACY_SWITCH_MIMO3_ABC = common dso_local global i32 0, align 4
@LQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.ieee80211_sta*, i32)* @rs_move_siso_to_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_move_siso_to_other(%struct.iwl_mvm* %0, %struct.iwl_lq_sta* %1, %struct.ieee80211_sta* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.iwl_lq_sta*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iwl_scale_tbl_info*, align 8
  %12 = alloca %struct.iwl_scale_tbl_info*, align 8
  %13 = alloca %struct.iwl_rate_scale_data*, align 8
  %14 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.iwl_lq_sta* %1, %struct.iwl_lq_sta** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %23 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %26 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %25, i32 0, i32 5
  %27 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %26, align 8
  %28 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %29 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %27, i64 %30
  store %struct.iwl_scale_tbl_info* %31, %struct.iwl_scale_tbl_info** %11, align 8
  %32 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %33 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %32, i32 0, i32 5
  %34 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %33, align 8
  %35 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %36 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 1, %37
  %39 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %34, i64 %38
  store %struct.iwl_scale_tbl_info* %39, %struct.iwl_scale_tbl_info** %12, align 8
  %40 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %41 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %40, i32 0, i32 7
  %42 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %42, i64 %44
  store %struct.iwl_rate_scale_data* %45, %struct.iwl_rate_scale_data** %13, align 8
  %46 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %46, i32 0, i32 0
  store %struct.ieee80211_sta_ht_cap* %47, %struct.ieee80211_sta_ht_cap** %14, align 8
  %48 = load i32, i32* @IWL_RATE_COUNT, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 4, %49
  %51 = sub i64 40, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %15, align 4
  %53 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @iwl_fw_valid_tx_ant(i32 %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @num_of_ant(i32 %57)
  store i32 %58, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %59 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %60 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %4, %294
  %63 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %64 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %68 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %274 [
    i32 134, label %70
    i32 133, label %70
    i32 131, label %109
    i32 130, label %109
    i32 129, label %109
    i32 132, label %159
    i32 128, label %244
  ]

70:                                               ; preds = %62, %62
  %71 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %72 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %74 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 134
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* %18, align 4
  %79 = icmp sle i32 %78, 1
  br i1 %79, label %88, label %80

80:                                               ; preds = %77, %70
  %81 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %82 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 133
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* %18, align 4
  %87 = icmp sle i32 %86, 2
  br i1 %87, label %88, label %89

88:                                               ; preds = %85, %77
  br label %274

89:                                               ; preds = %85, %80
  %90 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %13, align 8
  %91 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IWL_RS_GOOD_RATIO, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %274

96:                                               ; preds = %89
  %97 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %98 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %97, %struct.iwl_scale_tbl_info* %98, i32 %99)
  %101 = load i32, i32* %17, align 4
  %102 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %103 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %102, i32 0, i32 5
  %104 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %105 = call i32 @rs_toggle_antenna(i32 %101, i32* %103, %struct.iwl_scale_tbl_info* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  store i32 1, i32* %19, align 4
  br label %299

108:                                              ; preds = %96
  br label %274

109:                                              ; preds = %62, %62, %62
  %110 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %111 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %112 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %113 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %114 = load i32, i32* %15, align 4
  %115 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %112, %struct.iwl_scale_tbl_info* %113, i32 %114)
  %116 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %117 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %116, i32 0, i32 1
  store i32 0, i32* %117, align 4
  %118 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %119 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 131
  br i1 %121, label %122, label %126

122:                                              ; preds = %109
  %123 = load i32, i32* @ANT_AB, align 4
  %124 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %125 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 4
  br label %140

126:                                              ; preds = %109
  %127 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %128 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 130
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i32, i32* @ANT_AC, align 4
  %133 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %134 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 4
  br label %139

135:                                              ; preds = %126
  %136 = load i32, i32* @ANT_BC, align 4
  %137 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %138 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %135, %131
  br label %140

140:                                              ; preds = %139, %122
  %141 = load i32, i32* %17, align 4
  %142 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %143 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @rs_is_valid_ant(i32 %141, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %140
  br label %274

148:                                              ; preds = %140
  %149 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %150 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %151 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %152 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @rs_switch_to_mimo2(%struct.iwl_mvm* %149, %struct.iwl_lq_sta* %150, %struct.ieee80211_sta* %151, %struct.iwl_scale_tbl_info* %152, i32 %153)
  store i32 %154, i32* %20, align 4
  %155 = load i32, i32* %20, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %148
  br label %299

158:                                              ; preds = %148
  br label %274

159:                                              ; preds = %62
  %160 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %161 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %172, label %164

164:                                              ; preds = %159
  %165 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %14, align 8
  %166 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %164
  br label %274

172:                                              ; preds = %164, %159
  %173 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %174 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %172
  %178 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %14, align 8
  %179 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %177
  br label %274

185:                                              ; preds = %177, %172
  %186 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %187 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %186, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %188 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %189 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %190 = load i32, i32* %15, align 4
  %191 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %188, %struct.iwl_scale_tbl_info* %189, i32 %190)
  %192 = load i32, i32* %10, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %185
  %195 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %196 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %194
  br label %274

200:                                              ; preds = %194
  %201 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %202 = call i32 @IWL_ERR(%struct.iwl_mvm* %201, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %203

203:                                              ; preds = %200
  br label %204

204:                                              ; preds = %203, %185
  %205 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %206 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  %209 = xor i1 %208, true
  %210 = zext i1 %209 to i32
  %211 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %212 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 4
  %213 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %214 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %215 = call i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta* %213, %struct.iwl_scale_tbl_info* %214)
  %216 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %217 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %236

220:                                              ; preds = %204
  %221 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %222 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = sdiv i32 %223, 100
  store i32 %224, i32* %21, align 4
  %225 = load i32, i32* %21, align 4
  %226 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %227 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = icmp sge i32 %225, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %220
  br label %274

235:                                              ; preds = %220
  br label %236

236:                                              ; preds = %235, %204
  %237 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %238 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %239 = load i32, i32* %9, align 4
  %240 = load i32, i32* %10, align 4
  %241 = call i32 @rate_n_flags_from_tbl(%struct.iwl_mvm* %237, %struct.iwl_scale_tbl_info* %238, i32 %239, i32 %240)
  %242 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %243 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %242, i32 0, i32 5
  store i32 %241, i32* %243, align 8
  store i32 1, i32* %19, align 4
  br label %299

244:                                              ; preds = %62
  %245 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %246 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %245, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %247 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %248 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %249 = load i32, i32* %15, align 4
  %250 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %247, %struct.iwl_scale_tbl_info* %248, i32 %249)
  %251 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %252 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %251, i32 0, i32 1
  store i32 0, i32* %252, align 4
  %253 = load i32, i32* @ANT_ABC, align 4
  %254 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %255 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %254, i32 0, i32 4
  store i32 %253, i32* %255, align 4
  %256 = load i32, i32* %17, align 4
  %257 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %258 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @rs_is_valid_ant(i32 %256, i32 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %244
  br label %274

263:                                              ; preds = %244
  %264 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %265 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %266 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %267 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %268 = load i32, i32* %9, align 4
  %269 = call i32 @rs_switch_to_mimo3(%struct.iwl_mvm* %264, %struct.iwl_lq_sta* %265, %struct.ieee80211_sta* %266, %struct.iwl_scale_tbl_info* %267, i32 %268)
  store i32 %269, i32* %20, align 4
  %270 = load i32, i32* %20, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %263
  br label %299

273:                                              ; preds = %263
  br label %274

274:                                              ; preds = %62, %273, %262, %234, %199, %184, %171, %158, %147, %108, %95, %88
  %275 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %276 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %276, align 8
  %279 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %280 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @IWL_LEGACY_SWITCH_MIMO3_ABC, align 4
  %283 = icmp sgt i32 %281, %282
  br i1 %283, label %284, label %287

284:                                              ; preds = %274
  %285 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %286 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %285, i32 0, i32 0
  store i32 134, i32* %286, align 8
  br label %287

287:                                              ; preds = %284, %274
  %288 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %289 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* %16, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %287
  br label %295

294:                                              ; preds = %287
  br label %62

295:                                              ; preds = %293
  %296 = load i32, i32* @LQ_NONE, align 4
  %297 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %298 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %297, i32 0, i32 3
  store i32 %296, i32* %298, align 8
  store i32 0, i32* %5, align 4
  br label %323

299:                                              ; preds = %272, %236, %157, %107
  %300 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %301 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %300, i32 0, i32 3
  store i32 1, i32* %301, align 4
  %302 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %303 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %303, align 8
  %306 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %307 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = icmp sgt i32 %308, 128
  br i1 %309, label %310, label %313

310:                                              ; preds = %299
  %311 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %312 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %311, i32 0, i32 0
  store i32 134, i32* %312, align 8
  br label %313

313:                                              ; preds = %310, %299
  %314 = load i32, i32* %19, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %322

316:                                              ; preds = %313
  %317 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %318 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %321 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %320, i32 0, i32 0
  store i32 %319, i32* %321, align 8
  br label %322

322:                                              ; preds = %316, %313
  store i32 0, i32* %5, align 4
  br label %323

323:                                              ; preds = %322, %295
  %324 = load i32, i32* %5, align 4
  ret i32 %324
}

declare dso_local i32 @iwl_fw_valid_tx_ant(i32) #1

declare dso_local i32 @num_of_ant(i32) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @memcpy(%struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_toggle_antenna(i32, i32*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_is_valid_ant(i32, i32) #1

declare dso_local i32 @rs_switch_to_mimo2(%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rate_n_flags_from_tbl(%struct.iwl_mvm*, %struct.iwl_scale_tbl_info*, i32, i32) #1

declare dso_local i32 @rs_switch_to_mimo3(%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
