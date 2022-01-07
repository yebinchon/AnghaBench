; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_move_mimo2_to_other.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_move_mimo2_to_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_lq_sta = type { i64, i32, i32, i32, %struct.iwl_scale_tbl_info*, i32 }
%struct.iwl_scale_tbl_info = type { i32, i32, i32*, i32, i32, i32, i32, %struct.iwl_rate_scale_data* }
%struct.iwl_rate_scale_data = type { i32 }
%struct.ieee80211_sta = type { %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_ht_cap = type { i32 }

@IWL_RATE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"LQ: MIMO2 toggle Antennas\0A\00", align 1
@IWL_RS_GOOD_RATIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"LQ: MIMO2 switch to SISO\0A\00", align 1
@ANT_A = common dso_local global i32 0, align 4
@ANT_B = common dso_local global i32 0, align 4
@ANT_C = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"LQ: MIMO2 toggle SGI/NGI\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"LQ: MIMO2 switch to MIMO3\0A\00", align 1
@ANT_ABC = common dso_local global i32 0, align 4
@LQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.ieee80211_sta*, i32)* @rs_move_mimo2_to_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_move_mimo2_to_other(%struct.iwl_mvm* %0, %struct.iwl_lq_sta* %1, %struct.ieee80211_sta* %2, i32 %3) #0 {
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
  %23 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %26 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %25, i32 0, i32 4
  %27 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %26, align 8
  %28 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %29 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %27, i64 %30
  store %struct.iwl_scale_tbl_info* %31, %struct.iwl_scale_tbl_info** %11, align 8
  %32 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %33 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %32, i32 0, i32 4
  %34 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %33, align 8
  %35 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %36 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %35, i32 0, i32 0
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

62:                                               ; preds = %4, %265
  %63 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %64 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %68 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %246 [
    i32 134, label %70
    i32 133, label %70
    i32 130, label %96
    i32 129, label %96
    i32 128, label %96
    i32 132, label %144
    i32 131, label %216
  ]

70:                                               ; preds = %62, %62
  %71 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %72 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* %18, align 4
  %74 = icmp sle i32 %73, 2
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %246

76:                                               ; preds = %70
  %77 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %13, align 8
  %78 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IWL_RS_GOOD_RATIO, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %246

83:                                               ; preds = %76
  %84 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %85 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %84, %struct.iwl_scale_tbl_info* %85, i32 %86)
  %88 = load i32, i32* %17, align 4
  %89 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %90 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %89, i32 0, i32 5
  %91 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %92 = call i32 @rs_toggle_antenna(i32 %88, i32* %90, %struct.iwl_scale_tbl_info* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  store i32 1, i32* %19, align 4
  br label %270

95:                                               ; preds = %83
  br label %246

96:                                               ; preds = %62, %62, %62
  %97 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %98 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %99 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %100 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %99, %struct.iwl_scale_tbl_info* %100, i32 %101)
  %103 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %104 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 130
  br i1 %106, label %107, label %111

107:                                              ; preds = %96
  %108 = load i32, i32* @ANT_A, align 4
  %109 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %110 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  br label %125

111:                                              ; preds = %96
  %112 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %113 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 129
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* @ANT_B, align 4
  %118 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %119 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 4
  br label %124

120:                                              ; preds = %111
  %121 = load i32, i32* @ANT_C, align 4
  %122 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %123 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %120, %116
  br label %125

125:                                              ; preds = %124, %107
  %126 = load i32, i32* %17, align 4
  %127 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %128 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @rs_is_valid_ant(i32 %126, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %125
  br label %246

133:                                              ; preds = %125
  %134 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %135 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %136 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %137 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @rs_switch_to_siso(%struct.iwl_mvm* %134, %struct.iwl_lq_sta* %135, %struct.ieee80211_sta* %136, %struct.iwl_scale_tbl_info* %137, i32 %138)
  store i32 %139, i32* %20, align 4
  %140 = load i32, i32* %20, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %133
  br label %270

143:                                              ; preds = %133
  br label %246

144:                                              ; preds = %62
  %145 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %146 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %144
  %150 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %14, align 8
  %151 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %149
  br label %246

157:                                              ; preds = %149, %144
  %158 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %159 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %157
  %163 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %14, align 8
  %164 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %162
  br label %246

170:                                              ; preds = %162, %157
  %171 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %172 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %171, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %173 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %174 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %175 = load i32, i32* %15, align 4
  %176 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %173, %struct.iwl_scale_tbl_info* %174, i32 %175)
  %177 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %178 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  %183 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %184 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %186 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %187 = call i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta* %185, %struct.iwl_scale_tbl_info* %186)
  %188 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %189 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %208

192:                                              ; preds = %170
  %193 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %194 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = sdiv i32 %195, 100
  store i32 %196, i32* %21, align 4
  %197 = load i32, i32* %21, align 4
  %198 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %199 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = icmp sge i32 %197, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %192
  br label %246

207:                                              ; preds = %192
  br label %208

208:                                              ; preds = %207, %170
  %209 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %210 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %10, align 4
  %213 = call i32 @rate_n_flags_from_tbl(%struct.iwl_mvm* %209, %struct.iwl_scale_tbl_info* %210, i32 %211, i32 %212)
  %214 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %215 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %214, i32 0, i32 5
  store i32 %213, i32* %215, align 8
  store i32 1, i32* %19, align 4
  br label %270

216:                                              ; preds = %62
  %217 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %218 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %217, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %219 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %220 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %221 = load i32, i32* %15, align 4
  %222 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %219, %struct.iwl_scale_tbl_info* %220, i32 %221)
  %223 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %224 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %223, i32 0, i32 1
  store i32 0, i32* %224, align 4
  %225 = load i32, i32* @ANT_ABC, align 4
  %226 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %227 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %226, i32 0, i32 4
  store i32 %225, i32* %227, align 4
  %228 = load i32, i32* %17, align 4
  %229 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %230 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @rs_is_valid_ant(i32 %228, i32 %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %216
  br label %246

235:                                              ; preds = %216
  %236 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %237 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %238 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %239 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %240 = load i32, i32* %9, align 4
  %241 = call i32 @rs_switch_to_mimo3(%struct.iwl_mvm* %236, %struct.iwl_lq_sta* %237, %struct.ieee80211_sta* %238, %struct.iwl_scale_tbl_info* %239, i32 %240)
  store i32 %241, i32* %20, align 4
  %242 = load i32, i32* %20, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %235
  br label %270

245:                                              ; preds = %235
  br label %246

246:                                              ; preds = %62, %245, %234, %206, %169, %156, %143, %132, %95, %82, %75
  %247 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %248 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 8
  %251 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %252 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = icmp sgt i32 %253, 131
  br i1 %254, label %255, label %258

255:                                              ; preds = %246
  %256 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %257 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %256, i32 0, i32 0
  store i32 134, i32* %257, align 8
  br label %258

258:                                              ; preds = %255, %246
  %259 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %260 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* %16, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  br label %266

265:                                              ; preds = %258
  br label %62

266:                                              ; preds = %264
  %267 = load i32, i32* @LQ_NONE, align 4
  %268 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %269 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %268, i32 0, i32 3
  store i32 %267, i32* %269, align 8
  store i32 0, i32* %5, align 4
  br label %294

270:                                              ; preds = %244, %208, %142, %94
  %271 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %272 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %271, i32 0, i32 2
  store i32 1, i32* %272, align 4
  %273 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %274 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %274, align 8
  %277 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %278 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = icmp sgt i32 %279, 131
  br i1 %280, label %281, label %284

281:                                              ; preds = %270
  %282 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %283 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %282, i32 0, i32 0
  store i32 134, i32* %283, align 8
  br label %284

284:                                              ; preds = %281, %270
  %285 = load i32, i32* %19, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %284
  %288 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %289 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %292 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %291, i32 0, i32 0
  store i32 %290, i32* %292, align 8
  br label %293

293:                                              ; preds = %287, %284
  store i32 0, i32* %5, align 4
  br label %294

294:                                              ; preds = %293, %266
  %295 = load i32, i32* %5, align 4
  ret i32 %295
}

declare dso_local i32 @iwl_fw_valid_tx_ant(i32) #1

declare dso_local i32 @num_of_ant(i32) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @memcpy(%struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_toggle_antenna(i32, i32*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_is_valid_ant(i32, i32) #1

declare dso_local i32 @rs_switch_to_siso(%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rate_n_flags_from_tbl(%struct.iwl_mvm*, %struct.iwl_scale_tbl_info*, i32, i32) #1

declare dso_local i32 @rs_switch_to_mimo3(%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
