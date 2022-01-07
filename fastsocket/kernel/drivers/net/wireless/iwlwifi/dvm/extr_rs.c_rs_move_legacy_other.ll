; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rs_move_legacy_other.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rs_move_legacy_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_lq_sta = type { i64, i32, i64, %struct.iwl_scale_tbl_info* }
%struct.iwl_scale_tbl_info = type { i32, i32, i32, i32, i32, %struct.iwl_rate_scale_data* }
%struct.iwl_rate_scale_data = type { i32 }
%struct.ieee80211_conf = type { i32 }
%struct.ieee80211_sta = type { i32 }

@IWL_RATE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid BT load %d\00", align 1
@IWL_ANT_OK_SINGLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"LQ: Legacy toggle Antenna\0A\00", align 1
@IWL_RS_GOOD_RATIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"LQ: Legacy switch to SISO\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"LQ: Legacy switch to MIMO2\0A\00", align 1
@ANT_AB = common dso_local global i32 0, align 4
@ANT_AC = common dso_local global i32 0, align 4
@ANT_BC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"LQ: Legacy switch to MIMO3\0A\00", align 1
@ANT_ABC = common dso_local global i32 0, align 4
@LQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, i32)* @rs_move_legacy_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_move_legacy_other(%struct.iwl_priv* %0, %struct.iwl_lq_sta* %1, %struct.ieee80211_conf* %2, %struct.ieee80211_sta* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_priv*, align 8
  %8 = alloca %struct.iwl_lq_sta*, align 8
  %9 = alloca %struct.ieee80211_conf*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_scale_tbl_info*, align 8
  %13 = alloca %struct.iwl_scale_tbl_info*, align 8
  %14 = alloca %struct.iwl_rate_scale_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %7, align 8
  store %struct.iwl_lq_sta* %1, %struct.iwl_lq_sta** %8, align 8
  store %struct.ieee80211_conf* %2, %struct.ieee80211_conf** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %22 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %21, i32 0, i32 3
  %23 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %24 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %25 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %23, i64 %26
  store %struct.iwl_scale_tbl_info* %27, %struct.iwl_scale_tbl_info** %12, align 8
  %28 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %29 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %28, i32 0, i32 3
  %30 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %29, align 8
  %31 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %32 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 1, %33
  %35 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %30, i64 %34
  store %struct.iwl_scale_tbl_info* %35, %struct.iwl_scale_tbl_info** %13, align 8
  %36 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %37 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %36, i32 0, i32 5
  %38 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %38, i64 %40
  store %struct.iwl_rate_scale_data* %41, %struct.iwl_rate_scale_data** %14, align 8
  %42 = load i32, i32* @IWL_RATE_COUNT, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 4, %43
  %45 = sub i64 32, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %15, align 4
  %47 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %48 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %17, align 4
  %52 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %53 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %56 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %57 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %89 [
    i32 135, label %59
    i32 136, label %60
    i32 137, label %69
    i32 138, label %69
  ]

59:                                               ; preds = %5
  br label %95

60:                                               ; preds = %5
  %61 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %62 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 133
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %67 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %66, i32 0, i32 0
  store i32 128, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %60
  br label %95

69:                                               ; preds = %5, %5
  %70 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %71 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @first_antenna(i32 %74)
  store i32 %75, i32* %17, align 4
  %76 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %77 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sge i32 %78, 133
  br i1 %79, label %80, label %88

80:                                               ; preds = %69
  %81 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %82 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 128
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %87 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %86, i32 0, i32 0
  store i32 128, i32* %87, align 8
  br label %88

88:                                               ; preds = %85, %80, %69
  br label %95

89:                                               ; preds = %5
  %90 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %91 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %92 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @IWL_ERR(%struct.iwl_priv* %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %89, %88, %68, %59
  %96 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %97 = call i32 @iwl_ht_enabled(%struct.iwl_priv* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %101 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %100, i32 0, i32 0
  store i32 134, i32* %101, align 8
  br label %116

102:                                              ; preds = %95
  %103 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %104 = call i64 @iwl_tx_ant_restriction(%struct.iwl_priv* %103)
  %105 = load i64, i64* @IWL_ANT_OK_SINGLE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %109 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp sgt i32 %110, 128
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %114 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %113, i32 0, i32 0
  store i32 128, i32* %114, align 8
  br label %115

115:                                              ; preds = %112, %107, %102
  br label %116

116:                                              ; preds = %115, %99
  %117 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %118 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %144

121:                                              ; preds = %116
  %122 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %123 = call i32 @iwl_ht_enabled(%struct.iwl_priv* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %127 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %126, i32 0, i32 0
  store i32 134, i32* %127, align 8
  br label %137

128:                                              ; preds = %121
  %129 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %130 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp sge i32 %131, 133
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %135 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %134, i32 0, i32 0
  store i32 128, i32* %135, align 8
  br label %136

136:                                              ; preds = %133, %128
  br label %137

137:                                              ; preds = %136, %125
  %138 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %139 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %138, i32 0, i32 2
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @first_antenna(i32 %142)
  store i32 %143, i32* %17, align 4
  br label %144

144:                                              ; preds = %137, %116
  %145 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %146 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* %16, align 4
  br label %148

148:                                              ; preds = %335, %144
  %149 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %150 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %150, align 8
  %153 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %154 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  switch i32 %155, label %316 [
    i32 134, label %156
    i32 133, label %156
    i32 128, label %208
    i32 132, label %230
    i32 131, label %230
    i32 130, label %230
    i32 129, label %283
  ]

156:                                              ; preds = %148, %148
  %157 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %158 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %157, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %159 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %160 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 134
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load i32, i32* %18, align 4
  %165 = icmp sle i32 %164, 1
  br i1 %165, label %174, label %166

166:                                              ; preds = %163, %156
  %167 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %168 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 133
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load i32, i32* %18, align 4
  %173 = icmp sle i32 %172, 2
  br i1 %173, label %174, label %175

174:                                              ; preds = %171, %163
  br label %316

175:                                              ; preds = %171, %166
  %176 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %14, align 8
  %177 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @IWL_RS_GOOD_RATIO, align 4
  %180 = icmp sge i32 %178, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %175
  %182 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %183 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %181
  %187 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %188 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %189, 135
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %316

192:                                              ; preds = %186, %181, %175
  %193 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %194 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %195 = load i32, i32* %15, align 4
  %196 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %193, %struct.iwl_scale_tbl_info* %194, i32 %195)
  %197 = load i32, i32* %17, align 4
  %198 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %199 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %198, i32 0, i32 4
  %200 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %201 = call i32 @rs_toggle_antenna(i32 %197, i32* %199, %struct.iwl_scale_tbl_info* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %192
  store i32 1, i32* %20, align 4
  %204 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %205 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %206 = call i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta* %204, %struct.iwl_scale_tbl_info* %205)
  br label %340

207:                                              ; preds = %192
  br label %316

208:                                              ; preds = %148
  %209 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %210 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %209, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %211 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %212 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %213 = load i32, i32* %15, align 4
  %214 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %211, %struct.iwl_scale_tbl_info* %212, i32 %213)
  %215 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %216 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %215, i32 0, i32 3
  store i32 0, i32* %216, align 4
  %217 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %218 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %219 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %220 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %221 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %222 = load i32, i32* %11, align 4
  %223 = call i32 @rs_switch_to_siso(%struct.iwl_priv* %217, %struct.iwl_lq_sta* %218, %struct.ieee80211_conf* %219, %struct.ieee80211_sta* %220, %struct.iwl_scale_tbl_info* %221, i32 %222)
  store i32 %223, i32* %19, align 4
  %224 = load i32, i32* %19, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %208
  %227 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %228 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %227, i32 0, i32 2
  store i64 0, i64* %228, align 8
  br label %340

229:                                              ; preds = %208
  br label %316

230:                                              ; preds = %148, %148, %148
  %231 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %232 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %231, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %233 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %234 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %235 = load i32, i32* %15, align 4
  %236 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %233, %struct.iwl_scale_tbl_info* %234, i32 %235)
  %237 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %238 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %237, i32 0, i32 3
  store i32 0, i32* %238, align 4
  %239 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %240 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp eq i32 %241, 132
  br i1 %242, label %243, label %247

243:                                              ; preds = %230
  %244 = load i32, i32* @ANT_AB, align 4
  %245 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %246 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %245, i32 0, i32 2
  store i32 %244, i32* %246, align 8
  br label %261

247:                                              ; preds = %230
  %248 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %249 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp eq i32 %250, 131
  br i1 %251, label %252, label %256

252:                                              ; preds = %247
  %253 = load i32, i32* @ANT_AC, align 4
  %254 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %255 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %254, i32 0, i32 2
  store i32 %253, i32* %255, align 8
  br label %260

256:                                              ; preds = %247
  %257 = load i32, i32* @ANT_BC, align 4
  %258 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %259 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 8
  br label %260

260:                                              ; preds = %256, %252
  br label %261

261:                                              ; preds = %260, %243
  %262 = load i32, i32* %17, align 4
  %263 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %264 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @rs_is_valid_ant(i32 %262, i32 %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %261
  br label %316

269:                                              ; preds = %261
  %270 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %271 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %272 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %273 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %274 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %275 = load i32, i32* %11, align 4
  %276 = call i32 @rs_switch_to_mimo2(%struct.iwl_priv* %270, %struct.iwl_lq_sta* %271, %struct.ieee80211_conf* %272, %struct.ieee80211_sta* %273, %struct.iwl_scale_tbl_info* %274, i32 %275)
  store i32 %276, i32* %19, align 4
  %277 = load i32, i32* %19, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %269
  %280 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %281 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %280, i32 0, i32 2
  store i64 0, i64* %281, align 8
  br label %340

282:                                              ; preds = %269
  br label %316

283:                                              ; preds = %148
  %284 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %285 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %284, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %286 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %287 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %288 = load i32, i32* %15, align 4
  %289 = call i32 @memcpy(%struct.iwl_scale_tbl_info* %286, %struct.iwl_scale_tbl_info* %287, i32 %288)
  %290 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %291 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %290, i32 0, i32 3
  store i32 0, i32* %291, align 4
  %292 = load i32, i32* @ANT_ABC, align 4
  %293 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %294 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %293, i32 0, i32 2
  store i32 %292, i32* %294, align 8
  %295 = load i32, i32* %17, align 4
  %296 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %297 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @rs_is_valid_ant(i32 %295, i32 %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %302, label %301

301:                                              ; preds = %283
  br label %316

302:                                              ; preds = %283
  %303 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %304 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %305 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %306 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %307 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %308 = load i32, i32* %11, align 4
  %309 = call i32 @rs_switch_to_mimo3(%struct.iwl_priv* %303, %struct.iwl_lq_sta* %304, %struct.ieee80211_conf* %305, %struct.ieee80211_sta* %306, %struct.iwl_scale_tbl_info* %307, i32 %308)
  store i32 %309, i32* %19, align 4
  %310 = load i32, i32* %19, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %315, label %312

312:                                              ; preds = %302
  %313 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %314 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %313, i32 0, i32 2
  store i64 0, i64* %314, align 8
  br label %340

315:                                              ; preds = %302
  br label %316

316:                                              ; preds = %148, %315, %301, %282, %268, %229, %207, %191, %174
  %317 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %318 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %318, align 8
  %321 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %322 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = icmp sgt i32 %323, 129
  br i1 %324, label %325, label %328

325:                                              ; preds = %316
  %326 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %327 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %326, i32 0, i32 0
  store i32 134, i32* %327, align 8
  br label %328

328:                                              ; preds = %325, %316
  %329 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %330 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* %16, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %335

334:                                              ; preds = %328
  br label %336

335:                                              ; preds = %328
  br label %148

336:                                              ; preds = %334
  %337 = load i32, i32* @LQ_NONE, align 4
  %338 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %339 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %338, i32 0, i32 1
  store i32 %337, i32* %339, align 4
  store i32 0, i32* %6, align 4
  br label %364

340:                                              ; preds = %312, %279, %226, %203
  %341 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %342 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %341, i32 0, i32 1
  store i32 1, i32* %342, align 8
  %343 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %344 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %344, align 8
  %347 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %348 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = icmp sgt i32 %349, 129
  br i1 %350, label %351, label %354

351:                                              ; preds = %340
  %352 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %353 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %352, i32 0, i32 0
  store i32 134, i32* %353, align 8
  br label %354

354:                                              ; preds = %351, %340
  %355 = load i32, i32* %20, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %363

357:                                              ; preds = %354
  %358 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %359 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %13, align 8
  %362 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %361, i32 0, i32 0
  store i32 %360, i32* %362, align 8
  br label %363

363:                                              ; preds = %357, %354
  store i32 0, i32* %6, align 4
  br label %364

364:                                              ; preds = %363, %336
  %365 = load i32, i32* %6, align 4
  ret i32 %365
}

declare dso_local i32 @first_antenna(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @iwl_ht_enabled(%struct.iwl_priv*) #1

declare dso_local i64 @iwl_tx_ant_restriction(%struct.iwl_priv*) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @memcpy(%struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_toggle_antenna(i32, i32*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_switch_to_siso(%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_is_valid_ant(i32, i32) #1

declare dso_local i32 @rs_switch_to_mimo2(%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

declare dso_local i32 @rs_switch_to_mimo3(%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
