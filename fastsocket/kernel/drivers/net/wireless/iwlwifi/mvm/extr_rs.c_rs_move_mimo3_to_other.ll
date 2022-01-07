; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_move_mimo3_to_other.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_move_mimo3_to_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_lq_sta = type { i64, i32, i32, i32, %struct.iwl_scale_tbl_info*, i32 }
%struct.iwl_scale_tbl_info = type { i32, i32, i32*, i32, i32, i32, i32, %struct.iwl_rate_scale_data* }
%struct.iwl_rate_scale_data = type { i32 }
%struct.ieee80211_sta = type { %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_ht_cap = type { i32 }

@IWL_RATE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"LQ: MIMO3 toggle Antennas\0A\00", align 1
@IWL_RS_GOOD_RATIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"LQ: MIMO3 switch to SISO\0A\00", align 1
@ANT_A = common dso_local global i32 0, align 4
@ANT_B = common dso_local global i32 0, align 4
@ANT_C = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"LQ: MIMO3 switch to MIMO2\0A\00", align 1
@ANT_AB = common dso_local global i32 0, align 4
@ANT_AC = common dso_local global i32 0, align 4
@ANT_BC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"LQ: MIMO3 toggle SGI/NGI\0A\00", align 1
@LQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.ieee80211_sta*, i32)* @rs_move_mimo3_to_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_move_mimo3_to_other(%struct.iwl_mvm* %0, %struct.iwl_lq_sta* %1, %struct.ieee80211_sta* %2, i32 %3) #0 {
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
  store i32 0, i32* %20, align 4
  %59 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %60 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %4, %285
  %63 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %64 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %68 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %266 [
    i32 136, label %70
    i32 135, label %70
    i32 130, label %96
    i32 129, label %96
    i32 128, label %96
    i32 133, label %144
    i32 132, label %144
    i32 131, label %144
    i32 134, label %194
  ]

70:                                               ; preds = %62, %62
  %71 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %72 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* %18, align 4
  %74 = icmp sle i32 %73, 3
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %266

76:                                               ; preds = %70
  %77 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %13, align 8
  %78 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IWL_RS_GOOD_RATIO, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %266

83:                                               ; preds = %76
  %84 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %85 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %84, %struct.iwl_scale_tbl_info* %85, i32 %86)
  %88 = load i32, i32* %17, align 4
  %89 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %90 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %89, i32 0, i32 4
  %91 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %92 = call i32 @rs_toggle_antenna(i32 %88, i32* %90, %struct.iwl_scale_tbl_info* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %290

95:                                               ; preds = %83
  br label %266

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
  %110 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %109, i32 0, i32 6
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
  %119 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 4
  br label %124

120:                                              ; preds = %111
  %121 = load i32, i32* @ANT_C, align 4
  %122 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %123 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %122, i32 0, i32 6
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %120, %116
  br label %125

125:                                              ; preds = %124, %107
  %126 = load i32, i32* %17, align 4
  %127 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %128 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @rs_is_valid_ant(i32 %126, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %125
  br label %266

133:                                              ; preds = %125
  %134 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %135 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %136 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %137 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @rs_switch_to_siso(%struct.iwl_mvm* %134, %struct.iwl_lq_sta* %135, %struct.ieee80211_sta* %136, %struct.iwl_scale_tbl_info* %137, i32 %138)
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* %19, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %133
  br label %290

143:                                              ; preds = %133
  br label %266

144:                                              ; preds = %62, %62, %62
  %145 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %146 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %147 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %148 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %147, %struct.iwl_scale_tbl_info* %148, i32 %149)
  %151 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %152 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %151, i32 0, i32 1
  store i32 0, i32* %152, align 4
  %153 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %154 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 133
  br i1 %156, label %157, label %161

157:                                              ; preds = %144
  %158 = load i32, i32* @ANT_AB, align 4
  %159 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %160 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %159, i32 0, i32 6
  store i32 %158, i32* %160, align 4
  br label %175

161:                                              ; preds = %144
  %162 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %163 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %164, 132
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  %167 = load i32, i32* @ANT_AC, align 4
  %168 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %169 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %168, i32 0, i32 6
  store i32 %167, i32* %169, align 4
  br label %174

170:                                              ; preds = %161
  %171 = load i32, i32* @ANT_BC, align 4
  %172 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %173 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %172, i32 0, i32 6
  store i32 %171, i32* %173, align 4
  br label %174

174:                                              ; preds = %170, %166
  br label %175

175:                                              ; preds = %174, %157
  %176 = load i32, i32* %17, align 4
  %177 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %178 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @rs_is_valid_ant(i32 %176, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %175
  br label %266

183:                                              ; preds = %175
  %184 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %185 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %186 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %187 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @rs_switch_to_mimo2(%struct.iwl_mvm* %184, %struct.iwl_lq_sta* %185, %struct.ieee80211_sta* %186, %struct.iwl_scale_tbl_info* %187, i32 %188)
  store i32 %189, i32* %19, align 4
  %190 = load i32, i32* %19, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %183
  br label %290

193:                                              ; preds = %183
  br label %266

194:                                              ; preds = %62
  %195 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %196 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %194
  %200 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %14, align 8
  %201 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %199
  br label %266

207:                                              ; preds = %199, %194
  %208 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %209 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %207
  %213 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %14, align 8
  %214 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %212
  br label %266

220:                                              ; preds = %212, %207
  %221 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %222 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %221, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %223 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %224 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %225 = load i32, i32* %15, align 4
  %226 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %223, %struct.iwl_scale_tbl_info* %224, i32 %225)
  %227 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %228 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  %233 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %234 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 4
  %235 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %236 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %237 = call i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta* %235, %struct.iwl_scale_tbl_info* %236)
  %238 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %239 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %258

242:                                              ; preds = %220
  %243 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %244 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = sdiv i32 %245, 100
  store i32 %246, i32* %21, align 4
  %247 = load i32, i32* %21, align 4
  %248 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %249 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %248, i32 0, i32 2
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %9, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = icmp sge i32 %247, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %242
  br label %266

257:                                              ; preds = %242
  br label %258

258:                                              ; preds = %257, %220
  %259 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %260 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* %10, align 4
  %263 = call i32 @rate_n_flags_from_tbl(%struct.iwl_mvm* %259, %struct.iwl_scale_tbl_info* %260, i32 %261, i32 %262)
  %264 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %265 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %264, i32 0, i32 4
  store i32 %263, i32* %265, align 4
  store i32 1, i32* %20, align 4
  br label %290

266:                                              ; preds = %62, %256, %219, %206, %193, %182, %143, %132, %95, %82, %75
  %267 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %268 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %268, align 8
  %271 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %272 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = icmp sgt i32 %273, 134
  br i1 %274, label %275, label %278

275:                                              ; preds = %266
  %276 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %277 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %276, i32 0, i32 0
  store i32 136, i32* %277, align 8
  br label %278

278:                                              ; preds = %275, %266
  %279 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %280 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %16, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %278
  br label %286

285:                                              ; preds = %278
  br label %62

286:                                              ; preds = %284
  %287 = load i32, i32* @LQ_NONE, align 4
  %288 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %289 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %288, i32 0, i32 3
  store i32 %287, i32* %289, align 8
  store i32 0, i32* %5, align 4
  br label %314

290:                                              ; preds = %258, %192, %142, %94
  %291 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %292 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %291, i32 0, i32 2
  store i32 1, i32* %292, align 4
  %293 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %294 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %294, align 8
  %297 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %298 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = icmp sgt i32 %299, 134
  br i1 %300, label %301, label %304

301:                                              ; preds = %290
  %302 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %303 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %302, i32 0, i32 0
  store i32 136, i32* %303, align 8
  br label %304

304:                                              ; preds = %301, %290
  %305 = load i32, i32* %20, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %304
  %308 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %309 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %312 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %311, i32 0, i32 0
  store i32 %310, i32* %312, align 8
  br label %313

313:                                              ; preds = %307, %304
  store i32 0, i32* %5, align 4
  br label %314

314:                                              ; preds = %313, %286
  %315 = load i32, i32* %5, align 4
  ret i32 %315
}

declare dso_local i32 @iwl_fw_valid_tx_ant(i32) #1

declare dso_local i32 @num_of_ant(i32) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @memcpy(%struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_toggle_antenna(i32, i32*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_is_valid_ant(i32, i32) #1

declare dso_local i32 @rs_switch_to_siso(%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_switch_to_mimo2(%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rate_n_flags_from_tbl(%struct.iwl_mvm*, %struct.iwl_scale_tbl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
