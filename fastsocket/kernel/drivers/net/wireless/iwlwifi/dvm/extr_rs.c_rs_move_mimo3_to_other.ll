; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rs_move_mimo3_to_other.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rs_move_mimo3_to_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_lq_sta = type { i64, i32, i32, i32, %struct.iwl_scale_tbl_info*, i32 }
%struct.iwl_scale_tbl_info = type { i32, i32, i32*, i32, i32, i32, i32, %struct.iwl_rate_scale_data* }
%struct.iwl_rate_scale_data = type { i32 }
%struct.ieee80211_conf = type { i32 }
%struct.ieee80211_sta = type { %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_ht_cap = type { i32 }

@IWL_RATE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid BT load %d\00", align 1
@IWL_ANT_OK_SINGLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"LQ: MIMO3 toggle Antennas\0A\00", align 1
@IWL_RS_GOOD_RATIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"LQ: MIMO3 switch to SISO\0A\00", align 1
@ANT_A = common dso_local global i32 0, align 4
@ANT_B = common dso_local global i32 0, align 4
@ANT_C = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"LQ: MIMO3 switch to MIMO2\0A\00", align 1
@ANT_AB = common dso_local global i32 0, align 4
@ANT_AC = common dso_local global i32 0, align 4
@ANT_BC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"LQ: MIMO3 toggle SGI/NGI\0A\00", align 1
@LQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, i32)* @rs_move_mimo3_to_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_move_mimo3_to_other(%struct.iwl_priv* %0, %struct.iwl_lq_sta* %1, %struct.ieee80211_conf* %2, %struct.ieee80211_sta* %3, i32 %4) #0 {
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
  %25 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  %27 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %28 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %27, i32 0, i32 4
  %29 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %28, align 8
  %30 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %31 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %29, i64 %32
  store %struct.iwl_scale_tbl_info* %33, %struct.iwl_scale_tbl_info** %13, align 8
  %34 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %35 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %34, i32 0, i32 4
  %36 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %35, align 8
  %37 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %38 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %37, i32 0, i32 0
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
  %56 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %55, i32 0, i32 3
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %19, align 4
  %60 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %61 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %20, align 4
  store i32 0, i32* %22, align 4
  %64 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %65 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %91 [
    i32 137, label %67
    i32 139, label %68
    i32 140, label %68
    i32 138, label %77
  ]

67:                                               ; preds = %5
  br label %97

68:                                               ; preds = %5, %5
  %69 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %70 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 130
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %75 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %74, i32 0, i32 0
  store i32 130, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %68
  br label %97

77:                                               ; preds = %5
  %78 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %79 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 129
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %84 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 128
  br i1 %86, label %87, label %90

87:                                               ; preds = %82, %77
  %88 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %89 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %88, i32 0, i32 0
  store i32 130, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %82
  br label %97

91:                                               ; preds = %5
  %92 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %93 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %94 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @IWL_ERR(%struct.iwl_priv* %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %91, %90, %76, %67
  %98 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %99 = call i64 @iwl_tx_ant_restriction(%struct.iwl_priv* %98)
  %100 = load i64, i64* @IWL_ANT_OK_SINGLE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %97
  %103 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %104 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %105, 130
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %109 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp sgt i32 %110, 128
  br i1 %111, label %112, label %115

112:                                              ; preds = %107, %102
  %113 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %114 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %113, i32 0, i32 0
  store i32 130, i32* %114, align 8
  br label %115

115:                                              ; preds = %112, %107, %97
  %116 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %117 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %115
  %121 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %122 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %123, 130
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %127 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp sgt i32 %128, 128
  br i1 %129, label %130, label %133

130:                                              ; preds = %125, %120
  %131 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %132 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %131, i32 0, i32 0
  store i32 130, i32* %132, align 8
  br label %133

133:                                              ; preds = %130, %125, %115
  %134 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %135 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %18, align 4
  br label %137

137:                                              ; preds = %362, %133
  %138 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %139 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  %142 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %143 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  switch i32 %144, label %343 [
    i32 136, label %145
    i32 135, label %145
    i32 130, label %171
    i32 129, label %171
    i32 128, label %171
    i32 133, label %220
    i32 132, label %220
    i32 131, label %220
    i32 134, label %271
  ]

145:                                              ; preds = %137, %137
  %146 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %147 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %146, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %148 = load i32, i32* %20, align 4
  %149 = icmp sle i32 %148, 3
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %343

151:                                              ; preds = %145
  %152 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %15, align 8
  %153 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @IWL_RS_GOOD_RATIO, align 4
  %156 = icmp sge i32 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %343

158:                                              ; preds = %151
  %159 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %160 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %161 = load i32, i32* %17, align 4
  %162 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %159, %struct.iwl_scale_tbl_info* %160, i32 %161)
  %163 = load i32, i32* %19, align 4
  %164 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %165 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %164, i32 0, i32 4
  %166 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %167 = call i32 @rs_toggle_antenna(i32 %163, i32* %165, %struct.iwl_scale_tbl_info* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %158
  br label %367

170:                                              ; preds = %158
  br label %343

171:                                              ; preds = %137, %137, %137
  %172 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %173 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %172, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %174 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %175 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %176 = load i32, i32* %17, align 4
  %177 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %174, %struct.iwl_scale_tbl_info* %175, i32 %176)
  %178 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %179 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 130
  br i1 %181, label %182, label %186

182:                                              ; preds = %171
  %183 = load i32, i32* @ANT_A, align 4
  %184 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %185 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %184, i32 0, i32 6
  store i32 %183, i32* %185, align 4
  br label %200

186:                                              ; preds = %171
  %187 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %188 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %189, 129
  br i1 %190, label %191, label %195

191:                                              ; preds = %186
  %192 = load i32, i32* @ANT_B, align 4
  %193 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %194 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %193, i32 0, i32 6
  store i32 %192, i32* %194, align 4
  br label %199

195:                                              ; preds = %186
  %196 = load i32, i32* @ANT_C, align 4
  %197 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %198 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %197, i32 0, i32 6
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %195, %191
  br label %200

200:                                              ; preds = %199, %182
  %201 = load i32, i32* %19, align 4
  %202 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %203 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @rs_is_valid_ant(i32 %201, i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %200
  br label %343

208:                                              ; preds = %200
  %209 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %210 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %211 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %212 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %213 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %214 = load i32, i32* %11, align 4
  %215 = call i32 @rs_switch_to_siso(%struct.iwl_priv* %209, %struct.iwl_lq_sta* %210, %struct.ieee80211_conf* %211, %struct.ieee80211_sta* %212, %struct.iwl_scale_tbl_info* %213, i32 %214)
  store i32 %215, i32* %21, align 4
  %216 = load i32, i32* %21, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %208
  br label %367

219:                                              ; preds = %208
  br label %343

220:                                              ; preds = %137, %137, %137
  %221 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %222 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %221, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %223 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %224 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %225 = load i32, i32* %17, align 4
  %226 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %223, %struct.iwl_scale_tbl_info* %224, i32 %225)
  %227 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %228 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %227, i32 0, i32 1
  store i32 0, i32* %228, align 4
  %229 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %230 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp eq i32 %231, 133
  br i1 %232, label %233, label %237

233:                                              ; preds = %220
  %234 = load i32, i32* @ANT_AB, align 4
  %235 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %236 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %235, i32 0, i32 6
  store i32 %234, i32* %236, align 4
  br label %251

237:                                              ; preds = %220
  %238 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %239 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp eq i32 %240, 132
  br i1 %241, label %242, label %246

242:                                              ; preds = %237
  %243 = load i32, i32* @ANT_AC, align 4
  %244 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %245 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %244, i32 0, i32 6
  store i32 %243, i32* %245, align 4
  br label %250

246:                                              ; preds = %237
  %247 = load i32, i32* @ANT_BC, align 4
  %248 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %249 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %248, i32 0, i32 6
  store i32 %247, i32* %249, align 4
  br label %250

250:                                              ; preds = %246, %242
  br label %251

251:                                              ; preds = %250, %233
  %252 = load i32, i32* %19, align 4
  %253 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %254 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %253, i32 0, i32 6
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @rs_is_valid_ant(i32 %252, i32 %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %251
  br label %343

259:                                              ; preds = %251
  %260 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %261 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %262 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %263 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %264 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %265 = load i32, i32* %11, align 4
  %266 = call i32 @rs_switch_to_mimo2(%struct.iwl_priv* %260, %struct.iwl_lq_sta* %261, %struct.ieee80211_conf* %262, %struct.ieee80211_sta* %263, %struct.iwl_scale_tbl_info* %264, i32 %265)
  store i32 %266, i32* %21, align 4
  %267 = load i32, i32* %21, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %259
  br label %367

270:                                              ; preds = %259
  br label %343

271:                                              ; preds = %137
  %272 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %273 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 8
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %284, label %276

276:                                              ; preds = %271
  %277 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %16, align 8
  %278 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %276
  br label %343

284:                                              ; preds = %276, %271
  %285 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %286 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 8
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %297

289:                                              ; preds = %284
  %290 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %16, align 8
  %291 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %297, label %296

296:                                              ; preds = %289
  br label %343

297:                                              ; preds = %289, %284
  %298 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %299 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %298, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %300 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %301 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %302 = load i32, i32* %17, align 4
  %303 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %300, %struct.iwl_scale_tbl_info* %301, i32 %302)
  %304 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %305 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %306, 0
  %308 = xor i1 %307, true
  %309 = zext i1 %308 to i32
  %310 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %311 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %310, i32 0, i32 1
  store i32 %309, i32* %311, align 4
  %312 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %313 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %314 = call i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta* %312, %struct.iwl_scale_tbl_info* %313)
  %315 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %316 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %335

319:                                              ; preds = %297
  %320 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %321 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = sdiv i32 %322, 100
  store i32 %323, i32* %23, align 4
  %324 = load i32, i32* %23, align 4
  %325 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %326 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %325, i32 0, i32 2
  %327 = load i32*, i32** %326, align 8
  %328 = load i32, i32* %11, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = icmp sge i32 %324, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %319
  br label %343

334:                                              ; preds = %319
  br label %335

335:                                              ; preds = %334, %297
  %336 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %337 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %338 = load i32, i32* %11, align 4
  %339 = load i32, i32* %12, align 4
  %340 = call i32 @rate_n_flags_from_tbl(%struct.iwl_priv* %336, %struct.iwl_scale_tbl_info* %337, i32 %338, i32 %339)
  %341 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %342 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %341, i32 0, i32 4
  store i32 %340, i32* %342, align 4
  store i32 1, i32* %22, align 4
  br label %367

343:                                              ; preds = %137, %333, %296, %283, %270, %258, %219, %207, %170, %157, %150
  %344 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %345 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %345, align 8
  %348 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %349 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = icmp sgt i32 %350, 134
  br i1 %351, label %352, label %355

352:                                              ; preds = %343
  %353 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %354 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %353, i32 0, i32 0
  store i32 136, i32* %354, align 8
  br label %355

355:                                              ; preds = %352, %343
  %356 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %357 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* %18, align 4
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %361, label %362

361:                                              ; preds = %355
  br label %363

362:                                              ; preds = %355
  br label %137

363:                                              ; preds = %361
  %364 = load i32, i32* @LQ_NONE, align 4
  %365 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %366 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %365, i32 0, i32 3
  store i32 %364, i32* %366, align 8
  store i32 0, i32* %6, align 4
  br label %391

367:                                              ; preds = %335, %269, %218, %169
  %368 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %369 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %368, i32 0, i32 2
  store i32 1, i32* %369, align 4
  %370 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %371 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %371, align 8
  %374 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %375 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = icmp sgt i32 %376, 134
  br i1 %377, label %378, label %381

378:                                              ; preds = %367
  %379 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %380 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %379, i32 0, i32 0
  store i32 136, i32* %380, align 8
  br label %381

381:                                              ; preds = %378, %367
  %382 = load i32, i32* %22, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %390

384:                                              ; preds = %381
  %385 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %386 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %14, align 8
  %389 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %388, i32 0, i32 0
  store i32 %387, i32* %389, align 8
  br label %390

390:                                              ; preds = %384, %381
  store i32 0, i32* %6, align 4
  br label %391

391:                                              ; preds = %390, %363
  %392 = load i32, i32* %6, align 4
  ret i32 %392
}

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i64 @iwl_tx_ant_restriction(%struct.iwl_priv*) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @memcpy(%struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_toggle_antenna(i32, i32*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_is_valid_ant(i32, i32) #1

declare dso_local i32 @rs_switch_to_siso(%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_switch_to_mimo2(%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rate_n_flags_from_tbl(%struct.iwl_priv*, %struct.iwl_scale_tbl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
