; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_set_freq_cal_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_set_freq_cal_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, %struct.ar9170_calibration_data_per_freq**, %struct.ar9170_calibration_data_per_freq** }
%struct.ar9170_calibration_data_per_freq = type { i32**, i32** }
%struct.ieee80211_channel = type { i32, i32 }

@AR5416_PD_GAIN_ICEPTS = common dso_local global i32 0, align 4
@AR5416_NUM_2G_CAL_PIERS = common dso_local global i32 0, align 4
@AR5416_NUM_5G_CAL_PIERS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR5416_MAX_CHAINS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*, %struct.ieee80211_channel*)* @carl9170_set_freq_cal_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_set_freq_cal_data(%struct.ar9170* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ar9170_calibration_data_per_freq*, align 8
  %18 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %19 = load i32, i32* @AR5416_PD_GAIN_ICEPTS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = mul nuw i64 2, %20
  %23 = alloca i32, i64 %22, align 16
  store i64 %20, i64* %8, align 8
  %24 = load i32, i32* @AR5416_PD_GAIN_ICEPTS, align 4
  %25 = zext i32 %24 to i64
  %26 = mul nuw i64 2, %25
  %27 = alloca i32, i64 %26, align 16
  store i64 %25, i64* %9, align 8
  store i32 0, i32* %13, align 4
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %54 [
    i32 129, label %31
    i32 128, label %42
  ]

31:                                               ; preds = %2
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 2300
  store i32 %35, i32* %14, align 4
  %36 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %37 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %6, align 8
  %40 = load i32, i32* @AR5416_NUM_2G_CAL_PIERS, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  br label %57

42:                                               ; preds = %2
  %43 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 4800
  %47 = sdiv i32 %46, 5
  store i32 %47, i32* %14, align 4
  %48 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %49 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %6, align 8
  %52 = load i32, i32* @AR5416_NUM_5G_CAL_PIERS, align 4
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %57

54:                                               ; preds = %2
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %297

57:                                               ; preds = %42, %31
  br label %58

58:                                               ; preds = %70, %57
  %59 = load i32, i32* %12, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 255
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %73

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %12, align 4
  br label %58

73:                                               ; preds = %68, %58
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %297

79:                                               ; preds = %73
  %80 = load i32, i32* %12, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @carl9170_find_freq_idx(i32 %80, i32* %81, i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %85 = call i32 @carl9170_regwrite_begin(%struct.ar9170* %84)
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %291, %79
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @AR5416_MAX_CHAINS, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %294

90:                                               ; preds = %86
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %222, %90
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @AR5416_PD_GAIN_ICEPTS, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %225

95:                                               ; preds = %91
  %96 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %97 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  switch i32 %98, label %123 [
    i32 129, label %99
    i32 128, label %111
  ]

99:                                               ; preds = %95
  %100 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %101 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = load %struct.ar9170_calibration_data_per_freq**, %struct.ar9170_calibration_data_per_freq*** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.ar9170_calibration_data_per_freq*, %struct.ar9170_calibration_data_per_freq** %103, i64 %105
  %107 = load %struct.ar9170_calibration_data_per_freq*, %struct.ar9170_calibration_data_per_freq** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.ar9170_calibration_data_per_freq, %struct.ar9170_calibration_data_per_freq* %107, i64 %109
  store %struct.ar9170_calibration_data_per_freq* %110, %struct.ar9170_calibration_data_per_freq** %17, align 8
  br label %126

111:                                              ; preds = %95
  %112 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %113 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load %struct.ar9170_calibration_data_per_freq**, %struct.ar9170_calibration_data_per_freq*** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.ar9170_calibration_data_per_freq*, %struct.ar9170_calibration_data_per_freq** %115, i64 %117
  %119 = load %struct.ar9170_calibration_data_per_freq*, %struct.ar9170_calibration_data_per_freq** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.ar9170_calibration_data_per_freq, %struct.ar9170_calibration_data_per_freq* %119, i64 %121
  store %struct.ar9170_calibration_data_per_freq* %122, %struct.ar9170_calibration_data_per_freq** %17, align 8
  br label %126

123:                                              ; preds = %95
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %297

126:                                              ; preds = %111, %99
  store i32 0, i32* %18, align 4
  br label %127

127:                                              ; preds = %218, %126
  %128 = load i32, i32* %18, align 4
  %129 = icmp slt i32 %128, 2
  br i1 %129, label %130, label %221

130:                                              ; preds = %127
  %131 = load i32, i32* %14, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ar9170_calibration_data_per_freq*, %struct.ar9170_calibration_data_per_freq** %17, align 8
  %138 = getelementptr inbounds %struct.ar9170_calibration_data_per_freq, %struct.ar9170_calibration_data_per_freq* %137, i32 0, i32 1
  %139 = load i32**, i32*** %138, align 8
  %140 = load i32, i32* %18, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %6, align 8
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.ar9170_calibration_data_per_freq*, %struct.ar9170_calibration_data_per_freq** %17, align 8
  %155 = getelementptr inbounds %struct.ar9170_calibration_data_per_freq, %struct.ar9170_calibration_data_per_freq* %154, i64 1
  %156 = getelementptr inbounds %struct.ar9170_calibration_data_per_freq, %struct.ar9170_calibration_data_per_freq* %155, i32 0, i32 1
  %157 = load i32**, i32*** %156, align 8
  %158 = load i32, i32* %18, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @carl9170_interpolate_u8(i32 %131, i32 %136, i32 %147, i32 %153, i32 %165)
  %167 = load i32, i32* %18, align 4
  %168 = sext i32 %167 to i64
  %169 = mul nsw i64 %168, %20
  %170 = getelementptr inbounds i32, i32* %23, i64 %169
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %166, i32* %173, align 4
  %174 = load i32, i32* %14, align 4
  %175 = load i32*, i32** %6, align 8
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.ar9170_calibration_data_per_freq*, %struct.ar9170_calibration_data_per_freq** %17, align 8
  %181 = getelementptr inbounds %struct.ar9170_calibration_data_per_freq, %struct.ar9170_calibration_data_per_freq* %180, i32 0, i32 0
  %182 = load i32**, i32*** %181, align 8
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32*, i32** %182, i64 %184
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %12, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %6, align 8
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.ar9170_calibration_data_per_freq*, %struct.ar9170_calibration_data_per_freq** %17, align 8
  %198 = getelementptr inbounds %struct.ar9170_calibration_data_per_freq, %struct.ar9170_calibration_data_per_freq* %197, i64 1
  %199 = getelementptr inbounds %struct.ar9170_calibration_data_per_freq, %struct.ar9170_calibration_data_per_freq* %198, i32 0, i32 0
  %200 = load i32**, i32*** %199, align 8
  %201 = load i32, i32* %18, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32*, i32** %200, i64 %202
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @carl9170_interpolate_u8(i32 %174, i32 %179, i32 %190, i32 %196, i32 %208)
  %210 = sdiv i32 %209, 2
  %211 = load i32, i32* %18, align 4
  %212 = sext i32 %211 to i64
  %213 = mul nsw i64 %212, %25
  %214 = getelementptr inbounds i32, i32* %27, i64 %213
  %215 = load i32, i32* %12, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  store i32 %210, i32* %217, align 4
  br label %218

218:                                              ; preds = %130
  %219 = load i32, i32* %18, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %18, align 4
  br label %127

221:                                              ; preds = %127
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %12, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %12, align 4
  br label %91

225:                                              ; preds = %91
  store i32 0, i32* %12, align 4
  br label %226

226:                                              ; preds = %272, %225
  %227 = load i32, i32* %12, align 4
  %228 = icmp slt i32 %227, 76
  br i1 %228, label %229, label %275

229:                                              ; preds = %226
  %230 = load i32, i32* %12, align 4
  %231 = icmp slt i32 %230, 25
  br i1 %231, label %232, label %241

232:                                              ; preds = %229
  %233 = load i32, i32* %12, align 4
  %234 = mul nsw i64 0, %25
  %235 = getelementptr inbounds i32, i32* %27, i64 %234
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  %237 = mul nsw i64 0, %20
  %238 = getelementptr inbounds i32, i32* %23, i64 %237
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  %240 = call i32 @carl9170_interpolate_val(i32 %233, i32* %236, i32* %239)
  store i32 %240, i32* %15, align 4
  br label %251

241:                                              ; preds = %229
  %242 = load i32, i32* %12, align 4
  %243 = sub nsw i32 %242, 12
  %244 = mul nsw i64 1, %25
  %245 = getelementptr inbounds i32, i32* %27, i64 %244
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  %247 = mul nsw i64 1, %20
  %248 = getelementptr inbounds i32, i32* %23, i64 %247
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  %250 = call i32 @carl9170_interpolate_val(i32 %243, i32* %246, i32* %249)
  store i32 %250, i32* %15, align 4
  br label %251

251:                                              ; preds = %241, %232
  %252 = load i32, i32* %15, align 4
  %253 = load i32, i32* %12, align 4
  %254 = and i32 %253, 3
  %255 = shl i32 %254, 3
  %256 = shl i32 %252, %255
  %257 = load i32, i32* %13, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %13, align 4
  %259 = load i32, i32* %12, align 4
  %260 = and i32 %259, 3
  %261 = icmp eq i32 %260, 3
  br i1 %261, label %262, label %271

262:                                              ; preds = %251
  %263 = load i32, i32* %10, align 4
  %264 = mul nsw i32 %263, 4096
  %265 = add nsw i32 1860224, %264
  %266 = load i32, i32* %12, align 4
  %267 = and i32 %266, -4
  %268 = add nsw i32 %265, %267
  %269 = load i32, i32* %13, align 4
  %270 = call i32 @carl9170_regwrite(i32 %268, i32 %269)
  store i32 0, i32* %13, align 4
  br label %271

271:                                              ; preds = %262, %251
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %12, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %12, align 4
  br label %226

275:                                              ; preds = %226
  store i32 19, i32* %12, align 4
  br label %276

276:                                              ; preds = %287, %275
  %277 = load i32, i32* %12, align 4
  %278 = icmp slt i32 %277, 32
  br i1 %278, label %279, label %290

279:                                              ; preds = %276
  %280 = load i32, i32* %10, align 4
  %281 = mul nsw i32 %280, 4096
  %282 = add nsw i32 1860224, %281
  %283 = load i32, i32* %12, align 4
  %284 = shl i32 %283, 2
  %285 = add nsw i32 %282, %284
  %286 = call i32 @carl9170_regwrite(i32 %285, i32 0)
  br label %287

287:                                              ; preds = %279
  %288 = load i32, i32* %12, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %12, align 4
  br label %276

290:                                              ; preds = %276
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %10, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %10, align 4
  br label %86

294:                                              ; preds = %86
  %295 = call i32 (...) @carl9170_regwrite_finish()
  %296 = call i32 (...) @carl9170_regwrite_result()
  store i32 %296, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %297

297:                                              ; preds = %294, %123, %76, %54
  %298 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %298)
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @carl9170_find_freq_idx(i32, i32*, i32) #2

declare dso_local i32 @carl9170_regwrite_begin(%struct.ar9170*) #2

declare dso_local i32 @carl9170_interpolate_u8(i32, i32, i32, i32, i32) #2

declare dso_local i32 @carl9170_interpolate_val(i32, i32*, i32*) #2

declare dso_local i32 @carl9170_regwrite(i32, i32) #2

declare dso_local i32 @carl9170_regwrite_finish(...) #2

declare dso_local i32 @carl9170_regwrite_result(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
