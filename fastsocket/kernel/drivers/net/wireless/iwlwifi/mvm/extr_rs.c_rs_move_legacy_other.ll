; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_move_legacy_other.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_move_legacy_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_lq_sta = type { i64, i32, i64, %struct.iwl_scale_tbl_info* }
%struct.iwl_scale_tbl_info = type { i32, i32, i32, i32, i32, %struct.iwl_rate_scale_data* }
%struct.iwl_rate_scale_data = type { i32 }
%struct.ieee80211_sta = type { i32 }

@IWL_RATE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"LQ: Legacy toggle Antenna\0A\00", align 1
@IWL_RS_GOOD_RATIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"LQ: Legacy switch to SISO\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"LQ: Legacy switch to MIMO2\0A\00", align 1
@ANT_AB = common dso_local global i32 0, align 4
@ANT_AC = common dso_local global i32 0, align 4
@ANT_BC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"LQ: Legacy switch to MIMO3\0A\00", align 1
@ANT_ABC = common dso_local global i32 0, align 4
@LQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.ieee80211_sta*, i32)* @rs_move_legacy_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_move_legacy_other(%struct.iwl_mvm* %0, %struct.iwl_lq_sta* %1, %struct.ieee80211_sta* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.iwl_lq_sta*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_scale_tbl_info*, align 8
  %11 = alloca %struct.iwl_scale_tbl_info*, align 8
  %12 = alloca %struct.iwl_rate_scale_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.iwl_lq_sta* %1, %struct.iwl_lq_sta** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %20 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %19, i32 0, i32 3
  %21 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %20, align 8
  %22 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %23 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %21, i64 %24
  store %struct.iwl_scale_tbl_info* %25, %struct.iwl_scale_tbl_info** %10, align 8
  %26 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %27 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %26, i32 0, i32 3
  %28 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %27, align 8
  %29 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %30 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 1, %31
  %33 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %28, i64 %32
  store %struct.iwl_scale_tbl_info* %33, %struct.iwl_scale_tbl_info** %11, align 8
  %34 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %35 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %34, i32 0, i32 5
  %36 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %36, i64 %38
  store %struct.iwl_rate_scale_data* %39, %struct.iwl_rate_scale_data** %12, align 8
  %40 = load i32, i32* @IWL_RATE_COUNT, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = sub i64 32, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %13, align 4
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @iwl_fw_valid_tx_ant(i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @num_of_ant(i32 %49)
  store i32 %50, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %51 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %52 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %4, %228
  %55 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %56 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %60 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %209 [
    i32 134, label %62
    i32 133, label %62
    i32 128, label %104
    i32 132, label %125
    i32 131, label %125
    i32 130, label %125
    i32 129, label %177
  ]

62:                                               ; preds = %54, %54
  %63 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %64 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %66 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 134
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %16, align 4
  %71 = icmp sle i32 %70, 1
  br i1 %71, label %80, label %72

72:                                               ; preds = %69, %62
  %73 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %74 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 133
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* %16, align 4
  %79 = icmp sle i32 %78, 2
  br i1 %79, label %80, label %81

80:                                               ; preds = %77, %69
  br label %209

81:                                               ; preds = %77, %72
  %82 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %12, align 8
  %83 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @IWL_RS_GOOD_RATIO, align 4
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %209

88:                                               ; preds = %81
  %89 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %90 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %89, %struct.iwl_scale_tbl_info* %90, i32 %91)
  %93 = load i32, i32* %15, align 4
  %94 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %95 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %94, i32 0, i32 4
  %96 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %97 = call i32 @rs_toggle_antenna(i32 %93, i32* %95, %struct.iwl_scale_tbl_info* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %88
  store i32 1, i32* %18, align 4
  %100 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %101 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %102 = call i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta* %100, %struct.iwl_scale_tbl_info* %101)
  br label %233

103:                                              ; preds = %88
  br label %209

104:                                              ; preds = %54
  %105 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %106 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %107 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %108 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %107, %struct.iwl_scale_tbl_info* %108, i32 %109)
  %111 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %112 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %111, i32 0, i32 3
  store i32 0, i32* %112, align 4
  %113 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %114 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %115 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %116 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @rs_switch_to_siso(%struct.iwl_mvm* %113, %struct.iwl_lq_sta* %114, %struct.ieee80211_sta* %115, %struct.iwl_scale_tbl_info* %116, i32 %117)
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %104
  %122 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %123 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %122, i32 0, i32 2
  store i64 0, i64* %123, align 8
  br label %233

124:                                              ; preds = %104
  br label %209

125:                                              ; preds = %54, %54, %54
  %126 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %127 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %126, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %128 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %129 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %128, %struct.iwl_scale_tbl_info* %129, i32 %130)
  %132 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %133 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %132, i32 0, i32 3
  store i32 0, i32* %133, align 4
  %134 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %135 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 132
  br i1 %137, label %138, label %142

138:                                              ; preds = %125
  %139 = load i32, i32* @ANT_AB, align 4
  %140 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %141 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  br label %156

142:                                              ; preds = %125
  %143 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %144 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 131
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load i32, i32* @ANT_AC, align 4
  %149 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %150 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  br label %155

151:                                              ; preds = %142
  %152 = load i32, i32* @ANT_BC, align 4
  %153 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %154 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %151, %147
  br label %156

156:                                              ; preds = %155, %138
  %157 = load i32, i32* %15, align 4
  %158 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %159 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @rs_is_valid_ant(i32 %157, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %156
  br label %209

164:                                              ; preds = %156
  %165 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %166 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %167 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %168 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @rs_switch_to_mimo2(%struct.iwl_mvm* %165, %struct.iwl_lq_sta* %166, %struct.ieee80211_sta* %167, %struct.iwl_scale_tbl_info* %168, i32 %169)
  store i32 %170, i32* %17, align 4
  %171 = load i32, i32* %17, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %164
  %174 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %175 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %174, i32 0, i32 2
  store i64 0, i64* %175, align 8
  br label %233

176:                                              ; preds = %164
  br label %209

177:                                              ; preds = %54
  %178 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %179 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %178, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %180 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %181 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %180, %struct.iwl_scale_tbl_info* %181, i32 %182)
  %184 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %185 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %184, i32 0, i32 3
  store i32 0, i32* %185, align 4
  %186 = load i32, i32* @ANT_ABC, align 4
  %187 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %188 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* %15, align 4
  %190 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %191 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @rs_is_valid_ant(i32 %189, i32 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %177
  br label %209

196:                                              ; preds = %177
  %197 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %198 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %199 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %200 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @rs_switch_to_mimo3(%struct.iwl_mvm* %197, %struct.iwl_lq_sta* %198, %struct.ieee80211_sta* %199, %struct.iwl_scale_tbl_info* %200, i32 %201)
  store i32 %202, i32* %17, align 4
  %203 = load i32, i32* %17, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %196
  %206 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %207 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %206, i32 0, i32 2
  store i64 0, i64* %207, align 8
  br label %233

208:                                              ; preds = %196
  br label %209

209:                                              ; preds = %54, %208, %195, %176, %163, %124, %103, %87, %80
  %210 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %211 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 8
  %214 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %215 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp sgt i32 %216, 129
  br i1 %217, label %218, label %221

218:                                              ; preds = %209
  %219 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %220 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %219, i32 0, i32 0
  store i32 134, i32* %220, align 8
  br label %221

221:                                              ; preds = %218, %209
  %222 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %223 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %14, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %221
  br label %229

228:                                              ; preds = %221
  br label %54

229:                                              ; preds = %227
  %230 = load i32, i32* @LQ_NONE, align 4
  %231 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %232 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 4
  store i32 0, i32* %5, align 4
  br label %257

233:                                              ; preds = %205, %173, %121, %99
  %234 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %235 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %234, i32 0, i32 1
  store i32 1, i32* %235, align 8
  %236 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %237 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 8
  %240 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %241 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp sgt i32 %242, 129
  br i1 %243, label %244, label %247

244:                                              ; preds = %233
  %245 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %246 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %245, i32 0, i32 0
  store i32 134, i32* %246, align 8
  br label %247

247:                                              ; preds = %244, %233
  %248 = load i32, i32* %18, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %247
  %251 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %252 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %255 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 8
  br label %256

256:                                              ; preds = %250, %247
  store i32 0, i32* %5, align 4
  br label %257

257:                                              ; preds = %256, %229
  %258 = load i32, i32* %5, align 4
  ret i32 %258
}

declare dso_local i32 @iwl_fw_valid_tx_ant(i32) #1

declare dso_local i32 @num_of_ant(i32) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @memcpy(%struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_toggle_antenna(i32, i32*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_switch_to_siso(%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_is_valid_ant(i32, i32) #1

declare dso_local i32 @rs_switch_to_mimo2(%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_switch_to_mimo3(%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
