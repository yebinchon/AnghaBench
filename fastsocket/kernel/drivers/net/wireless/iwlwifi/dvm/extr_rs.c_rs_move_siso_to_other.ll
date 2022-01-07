; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rs_move_siso_to_other.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rs_move_siso_to_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_lq_sta = type { i32, i64, i32, i32, i32, %struct.iwl_scale_tbl_info* }
%struct.iwl_scale_tbl_info = type { i32, i32, i32*, i32, i32, i32, i32, %struct.iwl_rate_scale_data* }
%struct.iwl_rate_scale_data = type { i32 }
%struct.ieee80211_conf = type { i32 }
%struct.ieee80211_sta = type { %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_ht_cap = type { i32 }

@IWL_RATE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid BT load %d\00", align 1
@IWL_ANT_OK_SINGLE = common dso_local global i64 0, align 8
@IWL_LEGACY_SWITCH_ANTENNA2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"LQ: SISO toggle Antenna\0A\00", align 1
@IWL_RS_GOOD_RATIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"LQ: SISO switch to MIMO2\0A\00", align 1
@ANT_AB = common dso_local global i32 0, align 4
@ANT_AC = common dso_local global i32 0, align 4
@ANT_BC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"LQ: SISO toggle SGI/NGI\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"SGI was set in GF+SISO\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"LQ: SISO switch to MIMO3\0A\00", align 1
@ANT_ABC = common dso_local global i32 0, align 4
@IWL_LEGACY_SWITCH_MIMO3_ABC = common dso_local global i32 0, align 4
@LQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, i32)* @rs_move_siso_to_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_move_siso_to_other(%struct.iwl_priv* %0, %struct.iwl_lq_sta* %1, %struct.ieee80211_conf* %2, %struct.ieee80211_sta* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_priv*, align 8
  %8 = alloca %struct.iwl_lq_sta*, align 8
  %9 = alloca %struct.ieee80211_conf*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iwl_scale_tbl_info*, align 8
  %14 = alloca %struct.iwl_scale_tbl_info*, align 8
  %15 = alloca %struct.iwl_rate_scale_data*, align 8
  %16 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %7, align 8
  store %struct.iwl_lq_sta* %1, %struct.iwl_lq_sta** %8, align 8
  store %struct.ieee80211_conf* %2, %struct.ieee80211_conf** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store i32 %4, i32* %11, align 4
  %24 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %25 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  %27 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %28 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %27, i32 0, i32 5
  %29 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %28, align 8
  %30 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %31 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %29, i64 %32
  store %struct.iwl_scale_tbl_info* %33, %struct.iwl_scale_tbl_info** %13, align 8
  %34 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %35 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %34, i32 0, i32 5
  %36 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %35, align 8
  %37 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %38 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 1, %39
  %41 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %36, i64 %40
  store %struct.iwl_scale_tbl_info* %41, %struct.iwl_scale_tbl_info** %14, align 8
  %42 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %43 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %42, i32 0, i32 7
  %44 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %44, i64 %46
  store %struct.iwl_rate_scale_data* %47, %struct.iwl_rate_scale_data** %15, align 8
  %48 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %49 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %48, i32 0, i32 0
  store %struct.ieee80211_sta_ht_cap* %49, %struct.ieee80211_sta_ht_cap** %16, align 8
  %50 = load i32, i32* @IWL_RATE_COUNT, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = sub i64 40, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %17, align 4
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %56 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %19, align 4
  %60 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %61 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %64 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %65 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %92 [
    i32 135, label %67
    i32 136, label %68
    i32 137, label %77
    i32 138, label %77
  ]

67:                                               ; preds = %5
  br label %98

68:                                               ; preds = %5
  %69 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %70 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 133
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %75 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %74, i32 0, i32 0
  store i32 131, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %68
  br label %98

77:                                               ; preds = %5, %5
  %78 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %79 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %78, i32 0, i32 2
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @first_antenna(i32 %82)
  store i32 %83, i32* %19, align 4
  %84 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %85 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 134
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %90 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %89, i32 0, i32 0
  store i32 134, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %77
  br label %98

92:                                               ; preds = %5
  %93 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %94 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %95 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %92, %91, %76, %67
  %99 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %100 = call i64 @iwl_tx_ant_restriction(%struct.iwl_priv* %99)
  %101 = load i64, i64* @IWL_ANT_OK_SINGLE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %105 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp sgt i32 %106, 133
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %110 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %109, i32 0, i32 0
  store i32 134, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %103, %98
  %112 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %113 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %111
  %117 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %118 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %117, i32 0, i32 2
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @first_antenna(i32 %121)
  store i32 %122, i32* %19, align 4
  %123 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %124 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @IWL_LEGACY_SWITCH_ANTENNA2, align 4
  %127 = icmp sge i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %116
  %129 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %130 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %129, i32 0, i32 0
  store i32 134, i32* %130, align 8
  br label %131

131:                                              ; preds = %128, %116
  br label %132

132:                                              ; preds = %131, %111
  %133 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %134 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %18, align 4
  br label %136

136:                                              ; preds = %380, %132
  %137 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %138 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %142 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  switch i32 %143, label %360 [
    i32 134, label %144
    i32 133, label %144
    i32 131, label %193
    i32 130, label %193
    i32 129, label %193
    i32 132, label %244
    i32 128, label %329
  ]

144:                                              ; preds = %136, %136
  %145 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %146 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %145, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %147 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %148 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 134
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load i32, i32* %20, align 4
  %153 = icmp sle i32 %152, 1
  br i1 %153, label %162, label %154

154:                                              ; preds = %151, %144
  %155 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %156 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 133
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load i32, i32* %20, align 4
  %161 = icmp sle i32 %160, 2
  br i1 %161, label %162, label %163

162:                                              ; preds = %159, %151
  br label %360

163:                                              ; preds = %159, %154
  %164 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %15, align 8
  %165 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @IWL_RS_GOOD_RATIO, align 4
  %168 = icmp sge i32 %166, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %163
  %170 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %171 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %169
  %175 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %176 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 135
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %360

180:                                              ; preds = %174, %169, %163
  %181 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %182 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %183 = load i32, i32* %17, align 4
  %184 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %181, %struct.iwl_scale_tbl_info* %182, i32 %183)
  %185 = load i32, i32* %19, align 4
  %186 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %187 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %186, i32 0, i32 5
  %188 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %189 = call i32 @rs_toggle_antenna(i32 %185, i32* %187, %struct.iwl_scale_tbl_info* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %180
  store i32 1, i32* %21, align 4
  br label %385

192:                                              ; preds = %180
  br label %360

193:                                              ; preds = %136, %136, %136
  %194 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %195 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %194, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %196 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %197 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %198 = load i32, i32* %17, align 4
  %199 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %196, %struct.iwl_scale_tbl_info* %197, i32 %198)
  %200 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %201 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %200, i32 0, i32 1
  store i32 0, i32* %201, align 4
  %202 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %203 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %204, 131
  br i1 %205, label %206, label %210

206:                                              ; preds = %193
  %207 = load i32, i32* @ANT_AB, align 4
  %208 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %209 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %208, i32 0, i32 4
  store i32 %207, i32* %209, align 4
  br label %224

210:                                              ; preds = %193
  %211 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %212 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %213, 130
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  %216 = load i32, i32* @ANT_AC, align 4
  %217 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %218 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %217, i32 0, i32 4
  store i32 %216, i32* %218, align 4
  br label %223

219:                                              ; preds = %210
  %220 = load i32, i32* @ANT_BC, align 4
  %221 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %222 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %221, i32 0, i32 4
  store i32 %220, i32* %222, align 4
  br label %223

223:                                              ; preds = %219, %215
  br label %224

224:                                              ; preds = %223, %206
  %225 = load i32, i32* %19, align 4
  %226 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %227 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @rs_is_valid_ant(i32 %225, i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %224
  br label %360

232:                                              ; preds = %224
  %233 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %234 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %235 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %236 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %237 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %238 = load i32, i32* %11, align 4
  %239 = call i32 @rs_switch_to_mimo2(%struct.iwl_priv* %233, %struct.iwl_lq_sta* %234, %struct.ieee80211_conf* %235, %struct.ieee80211_sta* %236, %struct.iwl_scale_tbl_info* %237, i32 %238)
  store i32 %239, i32* %22, align 4
  %240 = load i32, i32* %22, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %232
  br label %385

243:                                              ; preds = %232
  br label %360

244:                                              ; preds = %136
  %245 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %246 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %257, label %249

249:                                              ; preds = %244
  %250 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %16, align 8
  %251 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %257, label %256

256:                                              ; preds = %249
  br label %360

257:                                              ; preds = %249, %244
  %258 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %259 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %258, i32 0, i32 6
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %257
  %263 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %16, align 8
  %264 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %262
  br label %360

270:                                              ; preds = %262, %257
  %271 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %272 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %271, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %273 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %274 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %275 = load i32, i32* %17, align 4
  %276 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %273, %struct.iwl_scale_tbl_info* %274, i32 %275)
  %277 = load i32, i32* %12, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %289

279:                                              ; preds = %270
  %280 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %281 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %279
  br label %360

285:                                              ; preds = %279
  %286 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %287 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %286, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %288

288:                                              ; preds = %285
  br label %289

289:                                              ; preds = %288, %270
  %290 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %291 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, 0
  %294 = xor i1 %293, true
  %295 = zext i1 %294 to i32
  %296 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %297 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %296, i32 0, i32 1
  store i32 %295, i32* %297, align 4
  %298 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %299 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %300 = call i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta* %298, %struct.iwl_scale_tbl_info* %299)
  %301 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %302 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %321

305:                                              ; preds = %289
  %306 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %307 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = sdiv i32 %308, 100
  store i32 %309, i32* %23, align 4
  %310 = load i32, i32* %23, align 4
  %311 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %312 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %311, i32 0, i32 2
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %11, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = icmp sge i32 %310, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %305
  br label %360

320:                                              ; preds = %305
  br label %321

321:                                              ; preds = %320, %289
  %322 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %323 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %324 = load i32, i32* %11, align 4
  %325 = load i32, i32* %12, align 4
  %326 = call i32 @rate_n_flags_from_tbl(%struct.iwl_priv* %322, %struct.iwl_scale_tbl_info* %323, i32 %324, i32 %325)
  %327 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %328 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %327, i32 0, i32 5
  store i32 %326, i32* %328, align 8
  store i32 1, i32* %21, align 4
  br label %385

329:                                              ; preds = %136
  %330 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %331 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %330, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %332 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %333 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %334 = load i32, i32* %17, align 4
  %335 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %332, %struct.iwl_scale_tbl_info* %333, i32 %334)
  %336 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %337 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %336, i32 0, i32 1
  store i32 0, i32* %337, align 4
  %338 = load i32, i32* @ANT_ABC, align 4
  %339 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %340 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %339, i32 0, i32 4
  store i32 %338, i32* %340, align 4
  %341 = load i32, i32* %19, align 4
  %342 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %343 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @rs_is_valid_ant(i32 %341, i32 %344)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %348, label %347

347:                                              ; preds = %329
  br label %360

348:                                              ; preds = %329
  %349 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %350 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %351 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %352 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %353 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %354 = load i32, i32* %11, align 4
  %355 = call i32 @rs_switch_to_mimo3(%struct.iwl_priv* %349, %struct.iwl_lq_sta* %350, %struct.ieee80211_conf* %351, %struct.ieee80211_sta* %352, %struct.iwl_scale_tbl_info* %353, i32 %354)
  store i32 %355, i32* %22, align 4
  %356 = load i32, i32* %22, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %359, label %358

358:                                              ; preds = %348
  br label %385

359:                                              ; preds = %348
  br label %360

360:                                              ; preds = %136, %359, %347, %319, %284, %269, %256, %243, %231, %192, %179, %162
  %361 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %362 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %362, align 8
  %365 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %366 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @IWL_LEGACY_SWITCH_MIMO3_ABC, align 4
  %369 = icmp sgt i32 %367, %368
  br i1 %369, label %370, label %373

370:                                              ; preds = %360
  %371 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %372 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %371, i32 0, i32 0
  store i32 134, i32* %372, align 8
  br label %373

373:                                              ; preds = %370, %360
  %374 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %375 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* %18, align 4
  %378 = icmp eq i32 %376, %377
  br i1 %378, label %379, label %380

379:                                              ; preds = %373
  br label %381

380:                                              ; preds = %373
  br label %136

381:                                              ; preds = %379
  %382 = load i32, i32* @LQ_NONE, align 4
  %383 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %384 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %383, i32 0, i32 3
  store i32 %382, i32* %384, align 8
  store i32 0, i32* %6, align 4
  br label %409

385:                                              ; preds = %358, %321, %242, %191
  %386 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %387 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %386, i32 0, i32 3
  store i32 1, i32* %387, align 4
  %388 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %389 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %389, align 8
  %392 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %393 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = icmp sgt i32 %394, 128
  br i1 %395, label %396, label %399

396:                                              ; preds = %385
  %397 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %398 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %397, i32 0, i32 0
  store i32 134, i32* %398, align 8
  br label %399

399:                                              ; preds = %396, %385
  %400 = load i32, i32* %21, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %408

402:                                              ; preds = %399
  %403 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %404 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %407 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %406, i32 0, i32 0
  store i32 %405, i32* %407, align 8
  br label %408

408:                                              ; preds = %402, %399
  store i32 0, i32* %6, align 4
  br label %409

409:                                              ; preds = %408, %381
  %410 = load i32, i32* %6, align 4
  ret i32 %410
}

declare dso_local i32 @first_antenna(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i64 @iwl_tx_ant_restriction(%struct.iwl_priv*) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @memcpy(%struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_toggle_antenna(i32, i32*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_is_valid_ant(i32, i32) #1

declare dso_local i32 @rs_switch_to_mimo2(%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rate_n_flags_from_tbl(%struct.iwl_priv*, %struct.iwl_scale_tbl_info*, i32, i32) #1

declare dso_local i32 @rs_switch_to_mimo3(%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
