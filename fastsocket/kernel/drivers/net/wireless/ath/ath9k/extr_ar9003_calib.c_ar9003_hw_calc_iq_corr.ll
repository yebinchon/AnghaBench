; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_calc_iq_corr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_calc_iq_corr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Divide by 0:\0Aa0_d0=%d\0Aa0_d1=%d\0Aa2_d0=%d\0Aa1_d1=%d\0A\00", align 1
@DELPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Divide by 0: mag1=%d, mag2=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Call to ar9003_hw_solve_iq_cal() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"chain %d: mag mismatch=%d phase mismatch=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Divide by 0: mag_tx=%d, res_scale=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"tx chain %d: mag corr=%d  phase corr=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"tx chain %d: iq corr coeff=%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Divide by 0: mag_rx=%d, res_scale=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"rx chain %d: mag corr=%d  phase corr=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"rx chain %d: iq corr coeff=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32, i32*, i32*)* @ar9003_hw_calc_iq_corr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_calc_iq_corr(%struct.ath_hw* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca [4 x i32], align 16
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 32768, i32* %45, align 4
  store i32 256, i32* %46, align 4
  %50 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %51 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %50)
  store %struct.ath_common* %51, %struct.ath_common** %49, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 4095
  store i32 %55, i32* %10, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 12
  %60 = and i32 %59, 4095
  store i32 %60, i32* %11, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 24
  %65 = and i32 %64, 255
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 15
  %70 = shl i32 %69, 8
  %71 = add nsw i32 %65, %70
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp sgt i32 %72, 2048
  br i1 %73, label %74, label %79

74:                                               ; preds = %4
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 4095, %75
  %77 = add nsw i32 %76, 1
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %74, %4
  %80 = load i32, i32* %11, align 4
  %81 = icmp sgt i32 %80, 2048
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 4095, %83
  %85 = add nsw i32 %84, 1
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %82, %79
  %88 = load i32, i32* %12, align 4
  %89 = icmp sgt i32 %88, 2048
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32, i32* %12, align 4
  %92 = sub nsw i32 4095, %91
  %93 = add nsw i32 %92, 1
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %90, %87
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 4
  %100 = and i32 %99, 4095
  store i32 %100, i32* %13, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 4095
  store i32 %104, i32* %14, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 12
  %109 = and i32 %108, 4095
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp sgt i32 %110, 2048
  br i1 %111, label %112, label %117

112:                                              ; preds = %95
  %113 = load i32, i32* %13, align 4
  %114 = sub nsw i32 4095, %113
  %115 = add nsw i32 %114, 1
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %112, %95
  %118 = load i32, i32* %14, align 4
  %119 = icmp sgt i32 %118, 2048
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32, i32* %14, align 4
  %122 = sub nsw i32 4095, %121
  %123 = add nsw i32 %122, 1
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %120, %117
  %126 = load i32, i32* %15, align 4
  %127 = icmp sgt i32 %126, 2048
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i32, i32* %15, align 4
  %130 = sub nsw i32 4095, %129
  %131 = add nsw i32 %130, 1
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %15, align 4
  br label %133

133:                                              ; preds = %128, %125
  %134 = load i32*, i32** %8, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 24
  %138 = and i32 %137, 255
  %139 = load i32*, i32** %8, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 3
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 15
  %143 = shl i32 %142, 8
  %144 = add nsw i32 %138, %143
  store i32 %144, i32* %16, align 4
  %145 = load i32*, i32** %8, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 3
  %147 = load i32, i32* %146, align 4
  %148 = ashr i32 %147, 4
  %149 = and i32 %148, 4095
  store i32 %149, i32* %17, align 4
  %150 = load i32*, i32** %8, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 4
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 4095
  store i32 %153, i32* %18, align 4
  %154 = load i32, i32* %16, align 4
  %155 = icmp sgt i32 %154, 2048
  br i1 %155, label %156, label %161

156:                                              ; preds = %133
  %157 = load i32, i32* %16, align 4
  %158 = sub nsw i32 4095, %157
  %159 = add nsw i32 %158, 1
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %16, align 4
  br label %161

161:                                              ; preds = %156, %133
  %162 = load i32, i32* %17, align 4
  %163 = icmp sgt i32 %162, 2048
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load i32, i32* %17, align 4
  %166 = sub nsw i32 4095, %165
  %167 = add nsw i32 %166, 1
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %17, align 4
  br label %169

169:                                              ; preds = %164, %161
  %170 = load i32, i32* %18, align 4
  %171 = icmp sgt i32 %170, 2048
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load i32, i32* %18, align 4
  %174 = sub nsw i32 4095, %173
  %175 = add nsw i32 %174, 1
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %18, align 4
  br label %177

177:                                              ; preds = %172, %169
  %178 = load i32*, i32** %8, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 4
  %180 = load i32, i32* %179, align 4
  %181 = ashr i32 %180, 12
  %182 = and i32 %181, 4095
  store i32 %182, i32* %19, align 4
  %183 = load i32*, i32** %8, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 4
  %185 = load i32, i32* %184, align 4
  %186 = ashr i32 %185, 24
  %187 = and i32 %186, 255
  %188 = load i32*, i32** %8, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 5
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, 15
  %192 = shl i32 %191, 8
  %193 = add nsw i32 %187, %192
  store i32 %193, i32* %20, align 4
  %194 = load i32*, i32** %8, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 5
  %196 = load i32, i32* %195, align 4
  %197 = ashr i32 %196, 4
  %198 = and i32 %197, 4095
  store i32 %198, i32* %21, align 4
  %199 = load i32, i32* %19, align 4
  %200 = icmp sgt i32 %199, 2048
  br i1 %200, label %201, label %206

201:                                              ; preds = %177
  %202 = load i32, i32* %19, align 4
  %203 = sub nsw i32 4095, %202
  %204 = add nsw i32 %203, 1
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %19, align 4
  br label %206

206:                                              ; preds = %201, %177
  %207 = load i32, i32* %20, align 4
  %208 = icmp sgt i32 %207, 2048
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = load i32, i32* %20, align 4
  %211 = sub nsw i32 4095, %210
  %212 = add nsw i32 %211, 1
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %20, align 4
  br label %214

214:                                              ; preds = %209, %206
  %215 = load i32, i32* %21, align 4
  %216 = icmp sgt i32 %215, 2048
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = load i32, i32* %21, align 4
  %219 = sub nsw i32 4095, %218
  %220 = add nsw i32 %219, 1
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %21, align 4
  br label %222

222:                                              ; preds = %217, %214
  %223 = load i32, i32* %11, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %234, label %225

225:                                              ; preds = %222
  %226 = load i32, i32* %14, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %234, label %228

228:                                              ; preds = %225
  %229 = load i32, i32* %17, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %228
  %232 = load i32, i32* %20, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %231, %228, %225, %222
  %235 = load %struct.ath_common*, %struct.ath_common** %49, align 8
  %236 = load i32, i32* @CALIBRATE, align 4
  %237 = load i32, i32* %11, align 4
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* %17, align 4
  %240 = load i32, i32* %20, align 4
  %241 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %235, i32 %236, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %237, i32 %238, i32 %239, i32 %240)
  store i32 0, i32* %5, align 4
  br label %482

242:                                              ; preds = %231
  %243 = load i32, i32* %10, align 4
  %244 = mul nsw i32 %243, 32768
  %245 = load i32, i32* %11, align 4
  %246 = sdiv i32 %244, %245
  store i32 %246, i32* %22, align 4
  %247 = load i32, i32* %12, align 4
  %248 = mul nsw i32 %247, 32768
  %249 = load i32, i32* %11, align 4
  %250 = sdiv i32 %248, %249
  store i32 %250, i32* %26, align 4
  %251 = load i32, i32* %13, align 4
  %252 = mul nsw i32 %251, 32768
  %253 = load i32, i32* %14, align 4
  %254 = sdiv i32 %252, %253
  store i32 %254, i32* %24, align 4
  %255 = load i32, i32* %15, align 4
  %256 = mul nsw i32 %255, 32768
  %257 = load i32, i32* %14, align 4
  %258 = sdiv i32 %256, %257
  store i32 %258, i32* %28, align 4
  %259 = load i32, i32* %16, align 4
  %260 = mul nsw i32 %259, 32768
  %261 = load i32, i32* %17, align 4
  %262 = sdiv i32 %260, %261
  store i32 %262, i32* %23, align 4
  %263 = load i32, i32* %18, align 4
  %264 = mul nsw i32 %263, 32768
  %265 = load i32, i32* %17, align 4
  %266 = sdiv i32 %264, %265
  store i32 %266, i32* %27, align 4
  %267 = load i32, i32* %19, align 4
  %268 = mul nsw i32 %267, 32768
  %269 = load i32, i32* %20, align 4
  %270 = sdiv i32 %268, %269
  store i32 %270, i32* %25, align 4
  %271 = load i32, i32* %21, align 4
  %272 = mul nsw i32 %271, 32768
  %273 = load i32, i32* %20, align 4
  %274 = sdiv i32 %272, %273
  store i32 %274, i32* %29, align 4
  %275 = load i32, i32* %22, align 4
  %276 = load i32, i32* %24, align 4
  %277 = sub nsw i32 %275, %276
  %278 = mul nsw i32 %277, 256
  %279 = load i32, i32* @DELPT, align 4
  %280 = sdiv i32 %278, %279
  store i32 %280, i32* %30, align 4
  %281 = load i32, i32* %28, align 4
  %282 = load i32, i32* %26, align 4
  %283 = sub nsw i32 %281, %282
  %284 = mul nsw i32 %283, 256
  %285 = load i32, i32* @DELPT, align 4
  %286 = sdiv i32 %284, %285
  store i32 %286, i32* %31, align 4
  %287 = load i32, i32* %23, align 4
  %288 = load i32, i32* %25, align 4
  %289 = sub nsw i32 %287, %288
  %290 = mul nsw i32 %289, 256
  %291 = load i32, i32* @DELPT, align 4
  %292 = sdiv i32 %290, %291
  store i32 %292, i32* %32, align 4
  %293 = load i32, i32* %29, align 4
  %294 = load i32, i32* %27, align 4
  %295 = sub nsw i32 %293, %294
  %296 = mul nsw i32 %295, 256
  %297 = load i32, i32* @DELPT, align 4
  %298 = sdiv i32 %296, %297
  store i32 %298, i32* %33, align 4
  %299 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %300 = load i32, i32* %31, align 4
  %301 = load i32, i32* %30, align 4
  %302 = call i32 @ar9003_hw_find_mag_approx(%struct.ath_hw* %299, i32 %300, i32 %301)
  store i32 %302, i32* %47, align 4
  %303 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %304 = load i32, i32* %33, align 4
  %305 = load i32, i32* %32, align 4
  %306 = call i32 @ar9003_hw_find_mag_approx(%struct.ath_hw* %303, i32 %304, i32 %305)
  store i32 %306, i32* %48, align 4
  %307 = load i32, i32* %47, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %312, label %309

309:                                              ; preds = %242
  %310 = load i32, i32* %48, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %318

312:                                              ; preds = %309, %242
  %313 = load %struct.ath_common*, %struct.ath_common** %49, align 8
  %314 = load i32, i32* @CALIBRATE, align 4
  %315 = load i32, i32* %47, align 4
  %316 = load i32, i32* %48, align 4
  %317 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %313, i32 %314, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %315, i32 %316)
  store i32 0, i32* %5, align 4
  br label %482

318:                                              ; preds = %309
  %319 = load i32, i32* %30, align 4
  %320 = mul nsw i32 %319, 32768
  %321 = load i32, i32* %47, align 4
  %322 = sdiv i32 %320, %321
  store i32 %322, i32* %30, align 4
  %323 = load i32, i32* %31, align 4
  %324 = mul nsw i32 %323, 32768
  %325 = load i32, i32* %47, align 4
  %326 = sdiv i32 %324, %325
  store i32 %326, i32* %31, align 4
  %327 = load i32, i32* %32, align 4
  %328 = mul nsw i32 %327, 32768
  %329 = load i32, i32* %48, align 4
  %330 = sdiv i32 %328, %329
  store i32 %330, i32* %32, align 4
  %331 = load i32, i32* %33, align 4
  %332 = mul nsw i32 %331, 32768
  %333 = load i32, i32* %48, align 4
  %334 = sdiv i32 %332, %333
  store i32 %334, i32* %33, align 4
  %335 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %336 = load i32, i32* %30, align 4
  %337 = load i32, i32* %31, align 4
  %338 = load i32, i32* %32, align 4
  %339 = load i32, i32* %33, align 4
  %340 = load i32, i32* %22, align 4
  %341 = load i32, i32* %26, align 4
  %342 = load i32, i32* %23, align 4
  %343 = load i32, i32* %27, align 4
  %344 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i64 0, i64 0
  %345 = call i32 @ar9003_hw_solve_iq_cal(%struct.ath_hw* %335, i32 %336, i32 %337, i32 %338, i32 %339, i32 %340, i32 %341, i32 %342, i32 %343, i32* %344)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %351, label %347

347:                                              ; preds = %318
  %348 = load %struct.ath_common*, %struct.ath_common** %49, align 8
  %349 = load i32, i32* @CALIBRATE, align 4
  %350 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %348, i32 %349, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %482

351:                                              ; preds = %318
  %352 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i64 0, i64 0
  %353 = load i32, i32* %352, align 16
  store i32 %353, i32* %34, align 4
  %354 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i64 0, i64 1
  %355 = load i32, i32* %354, align 4
  store i32 %355, i32* %35, align 4
  %356 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i64 0, i64 2
  %357 = load i32, i32* %356, align 8
  store i32 %357, i32* %36, align 4
  %358 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i64 0, i64 3
  %359 = load i32, i32* %358, align 4
  store i32 %359, i32* %37, align 4
  %360 = load %struct.ath_common*, %struct.ath_common** %49, align 8
  %361 = load i32, i32* @CALIBRATE, align 4
  %362 = load i32, i32* %7, align 4
  %363 = load i32, i32* %34, align 4
  %364 = sdiv i32 %363, 32768
  %365 = load i32, i32* %35, align 4
  %366 = sdiv i32 %365, 32768
  %367 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %360, i32 %361, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %362, i32 %364, i32 %366)
  %368 = load i32, i32* %34, align 4
  %369 = icmp eq i32 32768, %368
  br i1 %369, label %370, label %375

370:                                              ; preds = %351
  %371 = load %struct.ath_common*, %struct.ath_common** %49, align 8
  %372 = load i32, i32* @CALIBRATE, align 4
  %373 = load i32, i32* %34, align 4
  %374 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %371, i32 %372, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %373, i32 32768)
  store i32 0, i32* %5, align 4
  br label %482

375:                                              ; preds = %351
  %376 = load i32, i32* %34, align 4
  %377 = mul nsw i32 %376, 32768
  %378 = load i32, i32* %34, align 4
  %379 = sub nsw i32 32768, %378
  %380 = sdiv i32 %377, %379
  store i32 %380, i32* %39, align 4
  %381 = load i32, i32* %35, align 4
  %382 = sub nsw i32 0, %381
  store i32 %382, i32* %40, align 4
  %383 = load i32, i32* %39, align 4
  %384 = mul nsw i32 %383, 128
  %385 = sdiv i32 %384, 32768
  store i32 %385, i32* %43, align 4
  %386 = load i32, i32* %40, align 4
  %387 = mul nsw i32 %386, 256
  %388 = sdiv i32 %387, 32768
  store i32 %388, i32* %44, align 4
  %389 = load %struct.ath_common*, %struct.ath_common** %49, align 8
  %390 = load i32, i32* @CALIBRATE, align 4
  %391 = load i32, i32* %7, align 4
  %392 = load i32, i32* %43, align 4
  %393 = load i32, i32* %44, align 4
  %394 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %389, i32 %390, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %391, i32 %392, i32 %393)
  %395 = load i32, i32* %44, align 4
  %396 = icmp slt i32 %395, -63
  br i1 %396, label %397, label %398

397:                                              ; preds = %375
  store i32 -63, i32* %44, align 4
  br label %398

398:                                              ; preds = %397, %375
  %399 = load i32, i32* %44, align 4
  %400 = icmp sgt i32 %399, 63
  br i1 %400, label %401, label %402

401:                                              ; preds = %398
  store i32 63, i32* %44, align 4
  br label %402

402:                                              ; preds = %401, %398
  %403 = load i32, i32* %43, align 4
  %404 = icmp slt i32 %403, -63
  br i1 %404, label %405, label %406

405:                                              ; preds = %402
  store i32 -63, i32* %43, align 4
  br label %406

406:                                              ; preds = %405, %402
  %407 = load i32, i32* %43, align 4
  %408 = icmp sgt i32 %407, 63
  br i1 %408, label %409, label %410

409:                                              ; preds = %406
  store i32 63, i32* %43, align 4
  br label %410

410:                                              ; preds = %409, %406
  %411 = load i32, i32* %43, align 4
  %412 = mul nsw i32 %411, 128
  %413 = load i32, i32* %44, align 4
  %414 = add nsw i32 %412, %413
  %415 = load i32*, i32** %9, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 0
  store i32 %414, i32* %416, align 4
  %417 = load %struct.ath_common*, %struct.ath_common** %49, align 8
  %418 = load i32, i32* @CALIBRATE, align 4
  %419 = load i32, i32* %7, align 4
  %420 = load i32*, i32** %9, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 0
  %422 = load i32, i32* %421, align 4
  %423 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %417, i32 %418, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %419, i32 %422)
  %424 = load i32, i32* %36, align 4
  %425 = sub nsw i32 0, %424
  %426 = icmp eq i32 %425, 32768
  br i1 %426, label %427, label %432

427:                                              ; preds = %410
  %428 = load %struct.ath_common*, %struct.ath_common** %49, align 8
  %429 = load i32, i32* @CALIBRATE, align 4
  %430 = load i32, i32* %36, align 4
  %431 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %428, i32 %429, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %430, i32 32768)
  store i32 0, i32* %5, align 4
  br label %482

432:                                              ; preds = %410
  %433 = load i32, i32* %36, align 4
  %434 = sub nsw i32 0, %433
  %435 = mul nsw i32 %434, 32768
  %436 = load i32, i32* %36, align 4
  %437 = add nsw i32 32768, %436
  %438 = sdiv i32 %435, %437
  store i32 %438, i32* %41, align 4
  %439 = load i32, i32* %37, align 4
  %440 = sub nsw i32 0, %439
  store i32 %440, i32* %42, align 4
  %441 = load i32, i32* %41, align 4
  %442 = mul nsw i32 %441, 128
  %443 = sdiv i32 %442, 32768
  store i32 %443, i32* %43, align 4
  %444 = load i32, i32* %42, align 4
  %445 = mul nsw i32 %444, 256
  %446 = sdiv i32 %445, 32768
  store i32 %446, i32* %44, align 4
  %447 = load %struct.ath_common*, %struct.ath_common** %49, align 8
  %448 = load i32, i32* @CALIBRATE, align 4
  %449 = load i32, i32* %7, align 4
  %450 = load i32, i32* %43, align 4
  %451 = load i32, i32* %44, align 4
  %452 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %447, i32 %448, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %449, i32 %450, i32 %451)
  %453 = load i32, i32* %44, align 4
  %454 = icmp slt i32 %453, -63
  br i1 %454, label %455, label %456

455:                                              ; preds = %432
  store i32 -63, i32* %44, align 4
  br label %456

456:                                              ; preds = %455, %432
  %457 = load i32, i32* %44, align 4
  %458 = icmp sgt i32 %457, 63
  br i1 %458, label %459, label %460

459:                                              ; preds = %456
  store i32 63, i32* %44, align 4
  br label %460

460:                                              ; preds = %459, %456
  %461 = load i32, i32* %43, align 4
  %462 = icmp slt i32 %461, -63
  br i1 %462, label %463, label %464

463:                                              ; preds = %460
  store i32 -63, i32* %43, align 4
  br label %464

464:                                              ; preds = %463, %460
  %465 = load i32, i32* %43, align 4
  %466 = icmp sgt i32 %465, 63
  br i1 %466, label %467, label %468

467:                                              ; preds = %464
  store i32 63, i32* %43, align 4
  br label %468

468:                                              ; preds = %467, %464
  %469 = load i32, i32* %43, align 4
  %470 = mul nsw i32 %469, 128
  %471 = load i32, i32* %44, align 4
  %472 = add nsw i32 %470, %471
  %473 = load i32*, i32** %9, align 8
  %474 = getelementptr inbounds i32, i32* %473, i64 1
  store i32 %472, i32* %474, align 4
  %475 = load %struct.ath_common*, %struct.ath_common** %49, align 8
  %476 = load i32, i32* @CALIBRATE, align 4
  %477 = load i32, i32* %7, align 4
  %478 = load i32*, i32** %9, align 8
  %479 = getelementptr inbounds i32, i32* %478, i64 1
  %480 = load i32, i32* %479, align 4
  %481 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %475, i32 %476, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %477, i32 %480)
  store i32 1, i32* %5, align 4
  br label %482

482:                                              ; preds = %468, %427, %370, %347, %312, %234
  %483 = load i32, i32* %5, align 4
  ret i32 %483
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @ar9003_hw_find_mag_approx(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ar9003_hw_solve_iq_cal(%struct.ath_hw*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
