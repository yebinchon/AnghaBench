; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_create_pa_curve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_create_pa_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_BIN = common dso_local global i32 0, align 4
@PAPRD_TABLE_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @create_pa_curve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_pa_curve(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
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
  %38 = alloca i32, align 4
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
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %67 = load i32, i32* @NUM_BIN, align 4
  %68 = add nsw i32 %67, 1
  %69 = zext i32 %68 to i64
  %70 = call i8* @llvm.stacksave()
  store i8* %70, i8** %11, align 8
  %71 = alloca i32, i64 %69, align 16
  store i64 %69, i64* %12, align 8
  %72 = load i32, i32* @NUM_BIN, align 4
  %73 = add nsw i32 %72, 1
  %74 = zext i32 %73 to i64
  %75 = alloca i32, i64 %74, align 16
  store i64 %74, i64* %13, align 8
  %76 = load i32, i32* @NUM_BIN, align 4
  %77 = add nsw i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = alloca i32, i64 %78, align 16
  store i64 %78, i64* %14, align 8
  %80 = load i32, i32* @NUM_BIN, align 4
  %81 = add nsw i32 %80, 1
  %82 = zext i32 %81 to i64
  %83 = alloca i32, i64 %82, align 16
  store i64 %82, i64* %15, align 8
  %84 = load i32, i32* @NUM_BIN, align 4
  %85 = add nsw i32 %84, 1
  %86 = zext i32 %85 to i64
  %87 = alloca i32, i64 %86, align 16
  store i64 %86, i64* %16, align 8
  %88 = load i32, i32* @NUM_BIN, align 4
  %89 = add nsw i32 %88, 1
  %90 = zext i32 %89 to i64
  %91 = alloca i32, i64 %90, align 16
  store i64 %90, i64* %17, align 8
  %92 = load i32, i32* @NUM_BIN, align 4
  %93 = add nsw i32 %92, 1
  %94 = zext i32 %93 to i64
  %95 = alloca i32, i64 %94, align 16
  store i64 %94, i64* %22, align 8
  %96 = load i32, i32* @NUM_BIN, align 4
  %97 = add nsw i32 %96, 1
  %98 = zext i32 %97 to i64
  %99 = alloca i32, i64 %98, align 16
  store i64 %98, i64* %24, align 8
  store i32 0, i32* %54, align 4
  store i32 16, i32* %10, align 4
  store i32 5, i32* %21, align 4
  store i32 0, i32* %20, align 4
  %100 = mul nuw i64 4, %78
  %101 = trunc i64 %100 to i32
  %102 = call i32 @memset(i32* %79, i32 0, i32 %101)
  %103 = mul nuw i64 4, %69
  %104 = trunc i64 %103 to i32
  %105 = call i32 @memset(i32* %71, i32 0, i32 %104)
  %106 = mul nuw i64 4, %74
  %107 = trunc i64 %106 to i32
  %108 = call i32 @memset(i32* %75, i32 0, i32 %107)
  %109 = mul nuw i64 4, %94
  %110 = trunc i64 %109 to i32
  %111 = call i32 @memset(i32* %95, i32 0, i32 %110)
  %112 = mul nuw i64 4, %98
  %113 = trunc i64 %112 to i32
  %114 = call i32 @memset(i32* %99, i32 0, i32 %113)
  store i32 0, i32* %55, align 4
  br label %115

115:                                              ; preds = %235, %4
  %116 = load i32, i32* %55, align 4
  %117 = load i32, i32* @NUM_BIN, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %238

119:                                              ; preds = %115
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %55, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 65535
  store i32 %125, i32* %56, align 4
  %126 = load i32, i32* %56, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ule i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  br label %235

130:                                              ; preds = %119
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %55, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = ashr i32 %135, 16
  %137 = and i32 %136, 65535
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* %55, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 2047
  %144 = shl i32 %143, 16
  %145 = or i32 %137, %144
  store i32 %145, i32* %57, align 4
  %146 = load i32*, i32** %7, align 8
  %147 = load i32, i32* %55, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = ashr i32 %150, 11
  %152 = and i32 %151, 31
  %153 = load i32*, i32** %6, align 8
  %154 = load i32, i32* %55, align 4
  %155 = add nsw i32 %154, 23
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 65535
  %160 = shl i32 %159, 5
  %161 = or i32 %152, %160
  store i32 %161, i32* %58, align 4
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %55, align 4
  %164 = add nsw i32 %163, 23
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = ashr i32 %167, 16
  %169 = and i32 %168, 65535
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* %55, align 4
  %172 = add nsw i32 %171, 23
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, 2047
  %177 = shl i32 %176, 16
  %178 = or i32 %169, %177
  store i32 %178, i32* %59, align 4
  %179 = load i32, i32* %21, align 4
  %180 = load i32, i32* %57, align 4
  %181 = shl i32 %180, %179
  store i32 %181, i32* %57, align 4
  %182 = load i32, i32* %21, align 4
  %183 = load i32, i32* %58, align 4
  %184 = shl i32 %183, %182
  store i32 %184, i32* %58, align 4
  %185 = load i32, i32* %57, align 4
  %186 = load i32, i32* %56, align 4
  %187 = add i32 %185, %186
  %188 = load i32, i32* %56, align 4
  %189 = udiv i32 %187, %188
  %190 = add i32 %189, 32
  %191 = load i32, i32* %21, align 4
  %192 = lshr i32 %190, %191
  %193 = load i32, i32* %55, align 4
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %71, i64 %195
  store i32 %192, i32* %196, align 4
  %197 = load i32, i32* %58, align 4
  %198 = load i32, i32* %56, align 4
  %199 = add i32 %197, %198
  %200 = load i32, i32* %56, align 4
  %201 = udiv i32 %199, %200
  %202 = add i32 %201, 32
  %203 = load i32, i32* %21, align 4
  %204 = lshr i32 %202, %203
  %205 = load i32, i32* %21, align 4
  %206 = shl i32 1, %205
  %207 = load i32, i32* %20, align 4
  %208 = mul nsw i32 %206, %207
  %209 = add i32 %204, %208
  %210 = add i32 %209, 16
  %211 = load i32, i32* %55, align 4
  %212 = add nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %75, i64 %213
  store i32 %210, i32* %214, align 4
  %215 = load i32, i32* %59, align 4
  %216 = icmp uge i32 %215, 67108864
  br i1 %216, label %217, label %220

217:                                              ; preds = %130
  %218 = load i32, i32* %59, align 4
  %219 = sub i32 %218, 134217728
  store i32 %219, i32* %59, align 4
  br label %220

220:                                              ; preds = %217, %130
  %221 = load i32, i32* %59, align 4
  %222 = load i32, i32* %21, align 4
  %223 = shl i32 1, %222
  %224 = mul i32 %221, %223
  %225 = load i32, i32* %56, align 4
  %226 = add i32 %224, %225
  %227 = load i32, i32* %56, align 4
  %228 = udiv i32 %226, %227
  %229 = load i32, i32* %55, align 4
  %230 = add nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %79, i64 %231
  store i32 %228, i32* %232, align 4
  %233 = load i32, i32* %20, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %20, align 4
  br label %235

235:                                              ; preds = %220, %129
  %236 = load i32, i32* %55, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %55, align 4
  br label %115

238:                                              ; preds = %115
  store i32 1, i32* %55, align 4
  br label %239

239:                                              ; preds = %249, %238
  %240 = load i32, i32* %55, align 4
  %241 = icmp slt i32 %240, 6
  br i1 %241, label %242, label %252

242:                                              ; preds = %239
  %243 = load i32, i32* %55, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %79, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %54, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* %54, align 4
  br label %249

249:                                              ; preds = %242
  %250 = load i32, i32* %55, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %55, align 4
  br label %239

252:                                              ; preds = %239
  %253 = load i32, i32* %54, align 4
  %254 = sdiv i32 %253, 5
  store i32 %254, i32* %54, align 4
  store i32 1, i32* %55, align 4
  br label %255

255:                                              ; preds = %263, %252
  %256 = load i32, i32* %55, align 4
  %257 = icmp slt i32 %256, 6
  br i1 %257, label %258, label %266

258:                                              ; preds = %255
  %259 = load i32, i32* %54, align 4
  %260 = load i32, i32* %55, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %79, i64 %261
  store i32 %259, i32* %262, align 4
  br label %263

263:                                              ; preds = %258
  %264 = load i32, i32* %55, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %55, align 4
  br label %255

266:                                              ; preds = %255
  %267 = load i32, i32* %54, align 4
  %268 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %267, i32* %268, align 16
  store i32 0, i32* %55, align 4
  br label %269

269:                                              ; preds = %280, %266
  %270 = load i32, i32* %55, align 4
  %271 = load i32, i32* %20, align 4
  %272 = icmp sle i32 %270, %271
  br i1 %272, label %273, label %283

273:                                              ; preds = %269
  %274 = load i32, i32* %54, align 4
  %275 = load i32, i32* %55, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %79, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = sub nsw i32 %278, %274
  store i32 %279, i32* %277, align 4
  br label %280

280:                                              ; preds = %273
  %281 = load i32, i32* %55, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %55, align 4
  br label %269

283:                                              ; preds = %269
  %284 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 0, i32* %284, align 16
  %285 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 0, i32* %285, align 16
  store i32 8, i32* %21, align 4
  %286 = getelementptr inbounds i32, i32* %71, i64 6
  %287 = load i32, i32* %286, align 8
  %288 = getelementptr inbounds i32, i32* %71, i64 3
  %289 = load i32, i32* %288, align 4
  %290 = icmp eq i32 %287, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %283
  store i32 0, i32* %5, align 4
  store i32 1, i32* %60, align 4
  br label %1221

292:                                              ; preds = %283
  %293 = getelementptr inbounds i32, i32* %75, i64 6
  %294 = load i32, i32* %293, align 8
  %295 = getelementptr inbounds i32, i32* %75, i64 3
  %296 = load i32, i32* %295, align 4
  %297 = sub nsw i32 %294, %296
  %298 = mul nsw i32 %297, 1
  %299 = load i32, i32* %21, align 4
  %300 = shl i32 %298, %299
  %301 = getelementptr inbounds i32, i32* %71, i64 6
  %302 = load i32, i32* %301, align 8
  %303 = getelementptr inbounds i32, i32* %71, i64 3
  %304 = load i32, i32* %303, align 4
  %305 = sub nsw i32 %302, %304
  %306 = add nsw i32 %300, %305
  %307 = getelementptr inbounds i32, i32* %71, i64 6
  %308 = load i32, i32* %307, align 8
  %309 = getelementptr inbounds i32, i32* %71, i64 3
  %310 = load i32, i32* %309, align 4
  %311 = sub nsw i32 %308, %310
  %312 = sdiv i32 %306, %311
  store i32 %312, i32* %26, align 4
  %313 = load i32, i32* %26, align 4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %292
  store i32 0, i32* %5, align 4
  store i32 1, i32* %60, align 4
  br label %1221

316:                                              ; preds = %292
  %317 = load i32, i32* %26, align 4
  %318 = getelementptr inbounds i32, i32* %71, i64 0
  %319 = load i32, i32* %318, align 16
  %320 = getelementptr inbounds i32, i32* %71, i64 3
  %321 = load i32, i32* %320, align 4
  %322 = sub nsw i32 %319, %321
  %323 = mul nsw i32 %317, %322
  %324 = load i32, i32* %21, align 4
  %325 = shl i32 1, %324
  %326 = add nsw i32 %323, %325
  %327 = load i32, i32* %21, align 4
  %328 = shl i32 1, %327
  %329 = sdiv i32 %326, %328
  %330 = getelementptr inbounds i32, i32* %75, i64 3
  %331 = load i32, i32* %330, align 4
  %332 = add nsw i32 %329, %331
  store i32 %332, i32* %27, align 4
  store i32 0, i32* %55, align 4
  br label %333

333:                                              ; preds = %347, %316
  %334 = load i32, i32* %55, align 4
  %335 = load i32, i32* %20, align 4
  %336 = icmp sle i32 %334, %335
  br i1 %336, label %337, label %350

337:                                              ; preds = %333
  %338 = load i32, i32* %55, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %75, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %27, align 4
  %343 = sub nsw i32 %341, %342
  %344 = load i32, i32* %55, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %95, i64 %345
  store i32 %343, i32* %346, align 4
  br label %347

347:                                              ; preds = %337
  %348 = load i32, i32* %55, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %55, align 4
  br label %333

350:                                              ; preds = %333
  store i32 0, i32* %55, align 4
  br label %351

351:                                              ; preds = %374, %350
  %352 = load i32, i32* %55, align 4
  %353 = icmp sle i32 %352, 3
  br i1 %353, label %354, label %377

354:                                              ; preds = %351
  %355 = load i32, i32* %55, align 4
  %356 = mul nsw i32 %355, 32
  %357 = load i32, i32* %55, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %95, i64 %358
  store i32 %356, i32* %359, align 4
  %360 = load i32, i32* %55, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %95, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = mul nsw i32 %363, 1
  %365 = load i32, i32* %21, align 4
  %366 = shl i32 %364, %365
  %367 = load i32, i32* %26, align 4
  %368 = add nsw i32 %366, %367
  %369 = load i32, i32* %26, align 4
  %370 = sdiv i32 %368, %369
  %371 = load i32, i32* %55, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %71, i64 %372
  store i32 %370, i32* %373, align 4
  br label %374

374:                                              ; preds = %354
  %375 = load i32, i32* %55, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %55, align 4
  br label %351

377:                                              ; preds = %351
  %378 = load i32, i32* %20, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %95, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %377
  store i32 0, i32* %5, align 4
  store i32 1, i32* %60, align 4
  br label %1221

384:                                              ; preds = %377
  %385 = load i32, i32* %20, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %71, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* %21, align 4
  %390 = shl i32 1, %389
  %391 = load i32, i32* %20, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %95, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = mul nsw i32 %390, %394
  %396 = load i32, i32* %26, align 4
  %397 = add nsw i32 %395, %396
  %398 = load i32, i32* %26, align 4
  %399 = sdiv i32 %397, %398
  %400 = sub nsw i32 %388, %399
  store i32 %400, i32* %23, align 4
  %401 = load i32, i32* %23, align 4
  %402 = load i32, i32* %20, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %95, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = add nsw i32 %401, %405
  %407 = load i32, i32* %20, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %95, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = sdiv i32 %406, %410
  store i32 %411, i32* %28, align 4
  %412 = load i32, i32* %28, align 4
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %384
  store i32 10, i32* %29, align 4
  br label %421

415:                                              ; preds = %384
  %416 = load i32, i32* %28, align 4
  %417 = icmp eq i32 %416, 1
  br i1 %417, label %418, label %419

418:                                              ; preds = %415
  store i32 9, i32* %29, align 4
  br label %420

419:                                              ; preds = %415
  store i32 8, i32* %29, align 4
  br label %420

420:                                              ; preds = %419, %418
  br label %421

421:                                              ; preds = %420, %414
  %422 = load i32, i32* %20, align 4
  %423 = icmp sgt i32 %422, 15
  br i1 %423, label %424, label %425

424:                                              ; preds = %421
  br label %428

425:                                              ; preds = %421
  %426 = load i32, i32* %20, align 4
  %427 = ashr i32 %426, 1
  br label %428

428:                                              ; preds = %425, %424
  %429 = phi i32 [ 7, %424 ], [ %427, %425 ]
  store i32 %429, i32* %30, align 4
  %430 = load i32, i32* %20, align 4
  %431 = load i32, i32* %30, align 4
  %432 = sub nsw i32 %430, %431
  store i32 %432, i32* %31, align 4
  store i32 8, i32* %21, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %55, align 4
  br label %433

433:                                              ; preds = %588, %428
  %434 = load i32, i32* %55, align 4
  %435 = load i32, i32* %31, align 4
  %436 = icmp sle i32 %434, %435
  br i1 %436, label %437, label %591

437:                                              ; preds = %433
  %438 = load i32, i32* %55, align 4
  %439 = load i32, i32* %30, align 4
  %440 = add nsw i32 %438, %439
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %95, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %437
  store i32 0, i32* %5, align 4
  store i32 1, i32* %60, align 4
  br label %1221

446:                                              ; preds = %437
  %447 = load i32, i32* %55, align 4
  %448 = load i32, i32* %30, align 4
  %449 = add nsw i32 %447, %448
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %71, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = load i32, i32* %21, align 4
  %454 = shl i32 1, %453
  %455 = load i32, i32* %55, align 4
  %456 = load i32, i32* %30, align 4
  %457 = add nsw i32 %455, %456
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %95, i64 %458
  %460 = load i32, i32* %459, align 4
  %461 = mul nsw i32 %454, %460
  %462 = load i32, i32* %26, align 4
  %463 = add nsw i32 %461, %462
  %464 = load i32, i32* %26, align 4
  %465 = sdiv i32 %463, %464
  %466 = sub nsw i32 %452, %465
  store i32 %466, i32* %23, align 4
  %467 = load i32, i32* %23, align 4
  %468 = load i32, i32* %29, align 4
  %469 = shl i32 1, %468
  %470 = mul nsw i32 %467, %469
  %471 = load i32, i32* %55, align 4
  %472 = load i32, i32* %30, align 4
  %473 = add nsw i32 %471, %472
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %95, i64 %474
  %476 = load i32, i32* %475, align 4
  %477 = add nsw i32 %470, %476
  %478 = load i32, i32* %55, align 4
  %479 = load i32, i32* %30, align 4
  %480 = add nsw i32 %478, %479
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %95, i64 %481
  %483 = load i32, i32* %482, align 4
  %484 = sdiv i32 %477, %483
  %485 = load i32, i32* %55, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %99, i64 %486
  store i32 %484, i32* %487, align 4
  %488 = load i32, i32* %55, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32, i32* %99, i64 %489
  %491 = load i32, i32* %490, align 4
  %492 = load i32, i32* %29, align 4
  %493 = shl i32 1, %492
  %494 = mul nsw i32 %491, %493
  %495 = load i32, i32* %55, align 4
  %496 = load i32, i32* %30, align 4
  %497 = add nsw i32 %495, %496
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i32, i32* %95, i64 %498
  %500 = load i32, i32* %499, align 4
  %501 = add nsw i32 %494, %500
  %502 = load i32, i32* %55, align 4
  %503 = load i32, i32* %30, align 4
  %504 = add nsw i32 %502, %503
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i32, i32* %95, i64 %505
  %507 = load i32, i32* %506, align 4
  %508 = sdiv i32 %501, %507
  %509 = load i32, i32* %55, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32, i32* %99, i64 %510
  store i32 %508, i32* %511, align 4
  %512 = load i32, i32* %55, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32, i32* %99, i64 %513
  %515 = load i32, i32* %514, align 4
  %516 = load i32, i32* %29, align 4
  %517 = shl i32 1, %516
  %518 = mul nsw i32 %515, %517
  %519 = load i32, i32* %55, align 4
  %520 = load i32, i32* %30, align 4
  %521 = add nsw i32 %519, %520
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i32, i32* %95, i64 %522
  %524 = load i32, i32* %523, align 4
  %525 = add nsw i32 %518, %524
  %526 = load i32, i32* %55, align 4
  %527 = load i32, i32* %30, align 4
  %528 = add nsw i32 %526, %527
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i32, i32* %95, i64 %529
  %531 = load i32, i32* %530, align 4
  %532 = sdiv i32 %525, %531
  %533 = load i32, i32* %55, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i32, i32* %99, i64 %534
  store i32 %532, i32* %535, align 4
  %536 = load i32, i32* %55, align 4
  %537 = load i32, i32* %30, align 4
  %538 = add nsw i32 %536, %537
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i32, i32* %95, i64 %539
  %541 = load i32, i32* %540, align 4
  %542 = load i32, i32* %55, align 4
  %543 = load i32, i32* %30, align 4
  %544 = add nsw i32 %542, %543
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i32, i32* %95, i64 %545
  %547 = load i32, i32* %546, align 4
  %548 = mul nsw i32 %541, %547
  %549 = load i32, i32* %21, align 4
  %550 = load i32, i32* %21, align 4
  %551 = mul nsw i32 %549, %550
  %552 = add nsw i32 %548, %551
  %553 = load i32, i32* %21, align 4
  %554 = load i32, i32* %21, align 4
  %555 = mul nsw i32 %553, %554
  %556 = sdiv i32 %552, %555
  store i32 %556, i32* %61, align 4
  %557 = load i32, i32* %55, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i32, i32* %99, i64 %558
  %560 = load i32, i32* %559, align 4
  %561 = call i32 @abs(i32 %560)
  store i32 %561, i32* %63, align 4
  %562 = load i32, i32* %63, align 4
  %563 = load i32, i32* %25, align 4
  %564 = icmp ugt i32 %562, %563
  br i1 %564, label %565, label %567

565:                                              ; preds = %446
  %566 = load i32, i32* %63, align 4
  store i32 %566, i32* %25, align 4
  br label %567

567:                                              ; preds = %565, %446
  %568 = load i32, i32* %61, align 4
  %569 = load i32, i32* %61, align 4
  %570 = mul i32 %568, %569
  store i32 %570, i32* %62, align 4
  %571 = load i32, i32* %32, align 4
  %572 = load i32, i32* %61, align 4
  %573 = add i32 %571, %572
  store i32 %573, i32* %32, align 4
  %574 = load i32, i32* %33, align 4
  %575 = load i32, i32* %62, align 4
  %576 = add i32 %574, %575
  store i32 %576, i32* %33, align 4
  %577 = load i32, i32* %61, align 4
  %578 = load i32, i32* %31, align 4
  %579 = add nsw i32 %578, 1
  %580 = mul i32 %577, %579
  %581 = load i32, i32* %55, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds i32, i32* %87, i64 %582
  store i32 %580, i32* %583, align 4
  %584 = load i32, i32* %61, align 4
  %585 = load i32, i32* %55, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i32, i32* %91, i64 %586
  store i32 %584, i32* %587, align 4
  br label %588

588:                                              ; preds = %567
  %589 = load i32, i32* %55, align 4
  %590 = add nsw i32 %589, 1
  store i32 %590, i32* %55, align 4
  br label %433

591:                                              ; preds = %433
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %55, align 4
  br label %592

592:                                              ; preds = %636, %591
  %593 = load i32, i32* %55, align 4
  %594 = load i32, i32* %31, align 4
  %595 = icmp sle i32 %593, %594
  br i1 %595, label %596, label %639

596:                                              ; preds = %592
  %597 = load i32, i32* %32, align 4
  %598 = load i32, i32* %55, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i32, i32* %87, i64 %599
  %601 = load i32, i32* %600, align 4
  %602 = sub nsw i32 %601, %597
  store i32 %602, i32* %600, align 4
  %603 = load i32, i32* %33, align 4
  %604 = load i32, i32* %32, align 4
  %605 = load i32, i32* %55, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i32, i32* %91, i64 %606
  %608 = load i32, i32* %607, align 4
  %609 = mul nsw i32 %604, %608
  %610 = sub nsw i32 %603, %609
  %611 = load i32, i32* %55, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds i32, i32* %91, i64 %612
  store i32 %610, i32* %613, align 4
  %614 = load i32, i32* %55, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds i32, i32* %87, i64 %615
  %617 = load i32, i32* %616, align 4
  %618 = call i32 @abs(i32 %617)
  store i32 %618, i32* %64, align 4
  %619 = load i32, i32* %64, align 4
  %620 = load i32, i32* %18, align 4
  %621 = icmp ugt i32 %619, %620
  br i1 %621, label %622, label %624

622:                                              ; preds = %596
  %623 = load i32, i32* %64, align 4
  store i32 %623, i32* %18, align 4
  br label %624

624:                                              ; preds = %622, %596
  %625 = load i32, i32* %55, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds i32, i32* %91, i64 %626
  %628 = load i32, i32* %627, align 4
  %629 = call i32 @abs(i32 %628)
  store i32 %629, i32* %64, align 4
  %630 = load i32, i32* %64, align 4
  %631 = load i32, i32* %19, align 4
  %632 = icmp ugt i32 %630, %631
  br i1 %632, label %633, label %635

633:                                              ; preds = %624
  %634 = load i32, i32* %64, align 4
  store i32 %634, i32* %19, align 4
  br label %635

635:                                              ; preds = %633, %624
  br label %636

636:                                              ; preds = %635
  %637 = load i32, i32* %55, align 4
  %638 = add nsw i32 %637, 1
  store i32 %638, i32* %55, align 4
  br label %592

639:                                              ; preds = %592
  %640 = load i32, i32* %25, align 4
  %641 = call i32 @find_expn(i32 %640)
  %642 = call i32 @find_proper_scale(i32 %641, i32 10)
  store i32 %642, i32* %34, align 4
  %643 = load i32, i32* %18, align 4
  %644 = call i32 @find_expn(i32 %643)
  %645 = call i32 @find_proper_scale(i32 %644, i32 10)
  store i32 %645, i32* %35, align 4
  %646 = load i32, i32* %19, align 4
  %647 = call i32 @find_expn(i32 %646)
  %648 = call i32 @find_proper_scale(i32 %647, i32 10)
  store i32 %648, i32* %36, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  store i32 0, i32* %55, align 4
  br label %649

649:                                              ; preds = %706, %639
  %650 = load i32, i32* %55, align 4
  %651 = load i32, i32* %31, align 4
  %652 = icmp sle i32 %650, %651
  br i1 %652, label %653, label %709

653:                                              ; preds = %649
  %654 = load i32, i32* %55, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds i32, i32* %99, i64 %655
  %657 = load i32, i32* %656, align 4
  %658 = load i32, i32* %34, align 4
  %659 = shl i32 1, %658
  %660 = sdiv i32 %657, %659
  %661 = load i32, i32* %55, align 4
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds i32, i32* %99, i64 %662
  store i32 %660, i32* %663, align 4
  %664 = load i32, i32* %55, align 4
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds i32, i32* %87, i64 %665
  %667 = load i32, i32* %666, align 4
  %668 = load i32, i32* %35, align 4
  %669 = shl i32 1, %668
  %670 = sdiv i32 %667, %669
  %671 = load i32, i32* %55, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds i32, i32* %87, i64 %672
  store i32 %670, i32* %673, align 4
  %674 = load i32, i32* %55, align 4
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds i32, i32* %91, i64 %675
  %677 = load i32, i32* %676, align 4
  %678 = load i32, i32* %36, align 4
  %679 = shl i32 1, %678
  %680 = sdiv i32 %677, %679
  %681 = load i32, i32* %55, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds i32, i32* %91, i64 %682
  store i32 %680, i32* %683, align 4
  %684 = load i32, i32* %37, align 4
  %685 = load i32, i32* %55, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds i32, i32* %87, i64 %686
  %688 = load i32, i32* %687, align 4
  %689 = load i32, i32* %55, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds i32, i32* %99, i64 %690
  %692 = load i32, i32* %691, align 4
  %693 = mul nsw i32 %688, %692
  %694 = add nsw i32 %684, %693
  store i32 %694, i32* %37, align 4
  %695 = load i32, i32* %38, align 4
  %696 = load i32, i32* %55, align 4
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds i32, i32* %91, i64 %697
  %699 = load i32, i32* %698, align 4
  %700 = load i32, i32* %55, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i32, i32* %99, i64 %701
  %703 = load i32, i32* %702, align 4
  %704 = mul nsw i32 %699, %703
  %705 = add nsw i32 %695, %704
  store i32 %705, i32* %38, align 4
  br label %706

706:                                              ; preds = %653
  %707 = load i32, i32* %55, align 4
  %708 = add nsw i32 %707, 1
  store i32 %708, i32* %55, align 4
  br label %649

709:                                              ; preds = %649
  %710 = load i32, i32* %33, align 4
  %711 = load i32, i32* %21, align 4
  %712 = sdiv i32 %710, %711
  %713 = load i32, i32* %31, align 4
  %714 = add nsw i32 %713, 1
  %715 = mul nsw i32 %712, %714
  %716 = load i32, i32* %32, align 4
  %717 = load i32, i32* %21, align 4
  %718 = sdiv i32 %716, %717
  %719 = load i32, i32* %32, align 4
  %720 = mul nsw i32 %718, %719
  %721 = sub nsw i32 %715, %720
  %722 = load i32, i32* %21, align 4
  %723 = mul nsw i32 %721, %722
  store i32 %723, i32* %39, align 4
  %724 = load i32, i32* %39, align 4
  %725 = call i32 @abs(i32 %724)
  %726 = call i32 @find_expn(i32 %725)
  %727 = call i32 @find_proper_scale(i32 %726, i32 10)
  store i32 %727, i32* %40, align 4
  %728 = load i32, i32* %39, align 4
  %729 = load i32, i32* %40, align 4
  %730 = shl i32 1, %729
  %731 = sdiv i32 %728, %730
  store i32 %731, i32* %39, align 4
  %732 = load i32, i32* %39, align 4
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %734, label %735

734:                                              ; preds = %709
  store i32 0, i32* %5, align 4
  store i32 1, i32* %60, align 4
  br label %1221

735:                                              ; preds = %709
  %736 = load i32, i32* %37, align 4
  %737 = call i32 @abs(i32 %736)
  %738 = call i32 @find_expn(i32 %737)
  %739 = call i32 @find_proper_scale(i32 %738, i32 10)
  store i32 %739, i32* %41, align 4
  %740 = load i32, i32* %38, align 4
  %741 = call i32 @abs(i32 %740)
  %742 = call i32 @find_expn(i32 %741)
  %743 = call i32 @find_proper_scale(i32 %742, i32 10)
  store i32 %743, i32* %42, align 4
  %744 = load i32, i32* %37, align 4
  %745 = load i32, i32* %41, align 4
  %746 = shl i32 1, %745
  %747 = sdiv i32 %744, %746
  store i32 %747, i32* %37, align 4
  %748 = load i32, i32* %38, align 4
  %749 = load i32, i32* %42, align 4
  %750 = shl i32 1, %749
  %751 = sdiv i32 %748, %750
  store i32 %751, i32* %38, align 4
  %752 = load i32, i32* %38, align 4
  %753 = shl i32 %752, 10
  %754 = load i32, i32* %39, align 4
  %755 = sdiv i32 %753, %754
  store i32 %755, i32* %43, align 4
  %756 = load i32, i32* %37, align 4
  %757 = shl i32 %756, 10
  %758 = load i32, i32* %39, align 4
  %759 = sdiv i32 %757, %758
  store i32 %759, i32* %44, align 4
  %760 = load i32, i32* %29, align 4
  %761 = mul nsw i32 3, %760
  %762 = load i32, i32* %34, align 4
  %763 = sub nsw i32 %761, %762
  %764 = load i32, i32* %35, align 4
  %765 = sub nsw i32 %763, %764
  %766 = load i32, i32* %41, align 4
  %767 = sub nsw i32 %765, %766
  %768 = add nsw i32 %767, 10
  %769 = load i32, i32* %40, align 4
  %770 = add nsw i32 %768, %769
  store i32 %770, i32* %45, align 4
  %771 = load i32, i32* %29, align 4
  %772 = mul nsw i32 3, %771
  %773 = load i32, i32* %34, align 4
  %774 = sub nsw i32 %772, %773
  %775 = load i32, i32* %36, align 4
  %776 = sub nsw i32 %774, %775
  %777 = load i32, i32* %42, align 4
  %778 = sub nsw i32 %776, %777
  %779 = add nsw i32 %778, 10
  %780 = load i32, i32* %40, align 4
  %781 = add nsw i32 %779, %780
  store i32 %781, i32* %46, align 4
  %782 = load i32, i32* %45, align 4
  %783 = sdiv i32 %782, 5
  store i32 %783, i32* %47, align 4
  %784 = load i32, i32* %46, align 4
  %785 = sdiv i32 %784, 3
  store i32 %785, i32* %48, align 4
  %786 = load i32, i32* %45, align 4
  %787 = load i32, i32* %47, align 4
  %788 = mul nsw i32 5, %787
  %789 = sub nsw i32 %786, %788
  store i32 %789, i32* %49, align 4
  %790 = load i32, i32* %46, align 4
  %791 = load i32, i32* %48, align 4
  %792 = mul nsw i32 3, %791
  %793 = sub nsw i32 %790, %792
  store i32 %793, i32* %50, align 4
  store i32 0, i32* %55, align 4
  br label %794

794:                                              ; preds = %913, %735
  %795 = load i32, i32* %55, align 4
  %796 = load i32, i32* @PAPRD_TABLE_SZ, align 4
  %797 = icmp slt i32 %795, %796
  br i1 %797, label %798, label %916

798:                                              ; preds = %794
  %799 = load i32, i32* %55, align 4
  %800 = mul nsw i32 %799, 32
  store i32 %800, i32* %53, align 4
  %801 = load i32, i32* %44, align 4
  %802 = load i32, i32* %53, align 4
  %803 = mul nsw i32 %801, %802
  %804 = ashr i32 %803, 6
  %805 = load i32, i32* %47, align 4
  %806 = ashr i32 %804, %805
  store i32 %806, i32* %51, align 4
  %807 = load i32, i32* %51, align 4
  %808 = load i32, i32* %53, align 4
  %809 = mul nsw i32 %807, %808
  %810 = load i32, i32* %47, align 4
  %811 = ashr i32 %809, %810
  store i32 %811, i32* %51, align 4
  %812 = load i32, i32* %51, align 4
  %813 = load i32, i32* %53, align 4
  %814 = mul nsw i32 %812, %813
  %815 = load i32, i32* %47, align 4
  %816 = ashr i32 %814, %815
  store i32 %816, i32* %51, align 4
  %817 = load i32, i32* %51, align 4
  %818 = load i32, i32* %53, align 4
  %819 = mul nsw i32 %817, %818
  %820 = load i32, i32* %47, align 4
  %821 = ashr i32 %819, %820
  store i32 %821, i32* %51, align 4
  %822 = load i32, i32* %51, align 4
  %823 = load i32, i32* %53, align 4
  %824 = mul nsw i32 %822, %823
  %825 = load i32, i32* %47, align 4
  %826 = ashr i32 %824, %825
  store i32 %826, i32* %51, align 4
  %827 = load i32, i32* %51, align 4
  %828 = load i32, i32* %49, align 4
  %829 = ashr i32 %827, %828
  store i32 %829, i32* %51, align 4
  %830 = load i32, i32* %43, align 4
  %831 = load i32, i32* %53, align 4
  %832 = mul nsw i32 %830, %831
  %833 = load i32, i32* %48, align 4
  %834 = ashr i32 %832, %833
  store i32 %834, i32* %52, align 4
  %835 = load i32, i32* %52, align 4
  %836 = load i32, i32* %53, align 4
  %837 = mul nsw i32 %835, %836
  %838 = load i32, i32* %48, align 4
  %839 = ashr i32 %837, %838
  store i32 %839, i32* %52, align 4
  %840 = load i32, i32* %52, align 4
  %841 = load i32, i32* %53, align 4
  %842 = mul nsw i32 %840, %841
  %843 = load i32, i32* %48, align 4
  %844 = ashr i32 %842, %843
  store i32 %844, i32* %52, align 4
  %845 = load i32, i32* %52, align 4
  %846 = load i32, i32* %50, align 4
  %847 = ashr i32 %845, %846
  store i32 %847, i32* %52, align 4
  %848 = load i32, i32* %51, align 4
  %849 = load i32, i32* %52, align 4
  %850 = add nsw i32 %848, %849
  %851 = load i32, i32* %53, align 4
  %852 = mul nsw i32 256, %851
  %853 = load i32, i32* %26, align 4
  %854 = sdiv i32 %852, %853
  %855 = add nsw i32 %850, %854
  %856 = load i32, i32* %55, align 4
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds i32, i32* %83, i64 %857
  store i32 %855, i32* %858, align 4
  %859 = load i32, i32* %55, align 4
  %860 = icmp sge i32 %859, 2
  br i1 %860, label %861, label %896

861:                                              ; preds = %798
  %862 = load i32, i32* %55, align 4
  %863 = sext i32 %862 to i64
  %864 = getelementptr inbounds i32, i32* %83, i64 %863
  %865 = load i32, i32* %864, align 4
  %866 = load i32, i32* %55, align 4
  %867 = sub nsw i32 %866, 1
  %868 = sext i32 %867 to i64
  %869 = getelementptr inbounds i32, i32* %83, i64 %868
  %870 = load i32, i32* %869, align 4
  %871 = sub nsw i32 %865, %870
  store i32 %871, i32* %53, align 4
  %872 = load i32, i32* %53, align 4
  %873 = icmp slt i32 %872, 0
  br i1 %873, label %874, label %895

874:                                              ; preds = %861
  %875 = load i32, i32* %55, align 4
  %876 = sub nsw i32 %875, 1
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds i32, i32* %83, i64 %877
  %879 = load i32, i32* %878, align 4
  %880 = load i32, i32* %55, align 4
  %881 = sub nsw i32 %880, 1
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds i32, i32* %83, i64 %882
  %884 = load i32, i32* %883, align 4
  %885 = load i32, i32* %55, align 4
  %886 = sub nsw i32 %885, 2
  %887 = sext i32 %886 to i64
  %888 = getelementptr inbounds i32, i32* %83, i64 %887
  %889 = load i32, i32* %888, align 4
  %890 = sub nsw i32 %884, %889
  %891 = add nsw i32 %879, %890
  %892 = load i32, i32* %55, align 4
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds i32, i32* %83, i64 %893
  store i32 %891, i32* %894, align 4
  br label %895

895:                                              ; preds = %874, %861
  br label %896

896:                                              ; preds = %895, %798
  %897 = load i32, i32* %55, align 4
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds i32, i32* %83, i64 %898
  %900 = load i32, i32* %899, align 4
  %901 = icmp slt i32 %900, 1400
  br i1 %901, label %902, label %907

902:                                              ; preds = %896
  %903 = load i32, i32* %55, align 4
  %904 = sext i32 %903 to i64
  %905 = getelementptr inbounds i32, i32* %83, i64 %904
  %906 = load i32, i32* %905, align 4
  br label %908

907:                                              ; preds = %896
  br label %908

908:                                              ; preds = %907, %902
  %909 = phi i32 [ %906, %902 ], [ 1400, %907 ]
  %910 = load i32, i32* %55, align 4
  %911 = sext i32 %910 to i64
  %912 = getelementptr inbounds i32, i32* %83, i64 %911
  store i32 %909, i32* %912, align 4
  br label %913

913:                                              ; preds = %908
  %914 = load i32, i32* %55, align 4
  %915 = add nsw i32 %914, 1
  store i32 %915, i32* %55, align 4
  br label %794

916:                                              ; preds = %794
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  store i32 0, i32* %55, align 4
  br label %917

917:                                              ; preds = %994, %916
  %918 = load i32, i32* %55, align 4
  %919 = load i32, i32* %31, align 4
  %920 = icmp sle i32 %918, %919
  br i1 %920, label %921, label %997

921:                                              ; preds = %917
  %922 = load i32, i32* %55, align 4
  %923 = load i32, i32* %30, align 4
  %924 = add nsw i32 %922, %923
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds i32, i32* %79, i64 %925
  %927 = load i32, i32* %926, align 4
  %928 = load i32, i32* %29, align 4
  %929 = shl i32 %927, %928
  %930 = load i32, i32* %55, align 4
  %931 = load i32, i32* %30, align 4
  %932 = add nsw i32 %930, %931
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds i32, i32* %95, i64 %933
  %935 = load i32, i32* %934, align 4
  %936 = add nsw i32 %929, %935
  %937 = load i32, i32* %55, align 4
  %938 = load i32, i32* %30, align 4
  %939 = add nsw i32 %937, %938
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds i32, i32* %95, i64 %940
  %942 = load i32, i32* %941, align 4
  %943 = sdiv i32 %936, %942
  store i32 %943, i32* %65, align 4
  %944 = load i32, i32* %65, align 4
  %945 = load i32, i32* %29, align 4
  %946 = shl i32 %944, %945
  %947 = load i32, i32* %55, align 4
  %948 = load i32, i32* %30, align 4
  %949 = add nsw i32 %947, %948
  %950 = sext i32 %949 to i64
  %951 = getelementptr inbounds i32, i32* %95, i64 %950
  %952 = load i32, i32* %951, align 4
  %953 = add nsw i32 %946, %952
  %954 = load i32, i32* %55, align 4
  %955 = load i32, i32* %30, align 4
  %956 = add nsw i32 %954, %955
  %957 = sext i32 %956 to i64
  %958 = getelementptr inbounds i32, i32* %95, i64 %957
  %959 = load i32, i32* %958, align 4
  %960 = sdiv i32 %953, %959
  store i32 %960, i32* %65, align 4
  %961 = load i32, i32* %65, align 4
  %962 = load i32, i32* %29, align 4
  %963 = shl i32 %961, %962
  %964 = load i32, i32* %55, align 4
  %965 = load i32, i32* %30, align 4
  %966 = add nsw i32 %964, %965
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds i32, i32* %95, i64 %967
  %969 = load i32, i32* %968, align 4
  %970 = add nsw i32 %963, %969
  %971 = load i32, i32* %55, align 4
  %972 = load i32, i32* %30, align 4
  %973 = add nsw i32 %971, %972
  %974 = sext i32 %973 to i64
  %975 = getelementptr inbounds i32, i32* %95, i64 %974
  %976 = load i32, i32* %975, align 4
  %977 = sdiv i32 %970, %976
  store i32 %977, i32* %65, align 4
  %978 = load i32, i32* %37, align 4
  %979 = load i32, i32* %55, align 4
  %980 = sext i32 %979 to i64
  %981 = getelementptr inbounds i32, i32* %87, i64 %980
  %982 = load i32, i32* %981, align 4
  %983 = load i32, i32* %65, align 4
  %984 = mul nsw i32 %982, %983
  %985 = add nsw i32 %978, %984
  store i32 %985, i32* %37, align 4
  %986 = load i32, i32* %38, align 4
  %987 = load i32, i32* %55, align 4
  %988 = sext i32 %987 to i64
  %989 = getelementptr inbounds i32, i32* %91, i64 %988
  %990 = load i32, i32* %989, align 4
  %991 = load i32, i32* %65, align 4
  %992 = mul nsw i32 %990, %991
  %993 = add nsw i32 %986, %992
  store i32 %993, i32* %38, align 4
  br label %994

994:                                              ; preds = %921
  %995 = load i32, i32* %55, align 4
  %996 = add nsw i32 %995, 1
  store i32 %996, i32* %55, align 4
  br label %917

997:                                              ; preds = %917
  %998 = load i32, i32* %37, align 4
  %999 = call i32 @abs(i32 %998)
  %1000 = call i32 @find_expn(i32 %999)
  %1001 = call i32 @find_proper_scale(i32 %1000, i32 10)
  store i32 %1001, i32* %41, align 4
  %1002 = load i32, i32* %38, align 4
  %1003 = call i32 @abs(i32 %1002)
  %1004 = call i32 @find_expn(i32 %1003)
  %1005 = call i32 @find_proper_scale(i32 %1004, i32 10)
  store i32 %1005, i32* %42, align 4
  %1006 = load i32, i32* %37, align 4
  %1007 = load i32, i32* %41, align 4
  %1008 = shl i32 1, %1007
  %1009 = sdiv i32 %1006, %1008
  store i32 %1009, i32* %37, align 4
  %1010 = load i32, i32* %38, align 4
  %1011 = load i32, i32* %42, align 4
  %1012 = shl i32 1, %1011
  %1013 = sdiv i32 %1010, %1012
  store i32 %1013, i32* %38, align 4
  %1014 = load i32, i32* %38, align 4
  %1015 = shl i32 %1014, 10
  %1016 = load i32, i32* %39, align 4
  %1017 = sdiv i32 %1015, %1016
  store i32 %1017, i32* %43, align 4
  %1018 = load i32, i32* %37, align 4
  %1019 = shl i32 %1018, 10
  %1020 = load i32, i32* %39, align 4
  %1021 = sdiv i32 %1019, %1020
  store i32 %1021, i32* %44, align 4
  %1022 = load i32, i32* %29, align 4
  %1023 = mul nsw i32 3, %1022
  %1024 = load i32, i32* %34, align 4
  %1025 = sub nsw i32 %1023, %1024
  %1026 = load i32, i32* %35, align 4
  %1027 = sub nsw i32 %1025, %1026
  %1028 = load i32, i32* %41, align 4
  %1029 = sub nsw i32 %1027, %1028
  %1030 = add nsw i32 %1029, 10
  %1031 = load i32, i32* %40, align 4
  %1032 = add nsw i32 %1030, %1031
  %1033 = add nsw i32 %1032, 5
  store i32 %1033, i32* %45, align 4
  %1034 = load i32, i32* %29, align 4
  %1035 = mul nsw i32 3, %1034
  %1036 = load i32, i32* %34, align 4
  %1037 = sub nsw i32 %1035, %1036
  %1038 = load i32, i32* %36, align 4
  %1039 = sub nsw i32 %1037, %1038
  %1040 = load i32, i32* %42, align 4
  %1041 = sub nsw i32 %1039, %1040
  %1042 = add nsw i32 %1041, 10
  %1043 = load i32, i32* %40, align 4
  %1044 = add nsw i32 %1042, %1043
  %1045 = add nsw i32 %1044, 5
  store i32 %1045, i32* %46, align 4
  %1046 = load i32, i32* %45, align 4
  %1047 = sdiv i32 %1046, 5
  store i32 %1047, i32* %47, align 4
  %1048 = load i32, i32* %46, align 4
  %1049 = sdiv i32 %1048, 3
  store i32 %1049, i32* %48, align 4
  %1050 = load i32, i32* %45, align 4
  %1051 = load i32, i32* %47, align 4
  %1052 = mul nsw i32 5, %1051
  %1053 = sub nsw i32 %1050, %1052
  store i32 %1053, i32* %49, align 4
  %1054 = load i32, i32* %46, align 4
  %1055 = load i32, i32* %48, align 4
  %1056 = mul nsw i32 3, %1055
  %1057 = sub nsw i32 %1054, %1056
  store i32 %1057, i32* %50, align 4
  store i32 0, i32* %55, align 4
  br label %1058

1058:                                             ; preds = %1215, %997
  %1059 = load i32, i32* %55, align 4
  %1060 = load i32, i32* @PAPRD_TABLE_SZ, align 4
  %1061 = icmp slt i32 %1059, %1060
  br i1 %1061, label %1062, label %1218

1062:                                             ; preds = %1058
  %1063 = load i32, i32* %55, align 4
  %1064 = icmp eq i32 %1063, 4
  br i1 %1064, label %1065, label %1066

1065:                                             ; preds = %1062
  br label %1215

1066:                                             ; preds = %1062
  %1067 = load i32, i32* %55, align 4
  %1068 = mul nsw i32 %1067, 32
  store i32 %1068, i32* %53, align 4
  %1069 = load i32, i32* %44, align 4
  %1070 = icmp sgt i32 %1069, 0
  br i1 %1070, label %1071, label %1083

1071:                                             ; preds = %1066
  %1072 = load i32, i32* %44, align 4
  %1073 = load i32, i32* %53, align 4
  %1074 = mul nsw i32 %1072, %1073
  %1075 = sub nsw i32 %1074, 64
  %1076 = ashr i32 %1075, 6
  %1077 = load i32, i32* %47, align 4
  %1078 = shl i32 1, %1077
  %1079 = sub nsw i32 %1076, %1078
  %1080 = load i32, i32* %47, align 4
  %1081 = shl i32 1, %1080
  %1082 = sdiv i32 %1079, %1081
  store i32 %1082, i32* %51, align 4
  br label %1095

1083:                                             ; preds = %1066
  %1084 = load i32, i32* %44, align 4
  %1085 = load i32, i32* %53, align 4
  %1086 = mul nsw i32 %1084, %1085
  %1087 = sub nsw i32 %1086, 64
  %1088 = ashr i32 %1087, 6
  %1089 = load i32, i32* %47, align 4
  %1090 = shl i32 1, %1089
  %1091 = add nsw i32 %1088, %1090
  %1092 = load i32, i32* %47, align 4
  %1093 = shl i32 1, %1092
  %1094 = sdiv i32 %1091, %1093
  store i32 %1094, i32* %51, align 4
  br label %1095

1095:                                             ; preds = %1083, %1071
  %1096 = load i32, i32* %51, align 4
  %1097 = load i32, i32* %53, align 4
  %1098 = mul nsw i32 %1096, %1097
  %1099 = load i32, i32* %47, align 4
  %1100 = shl i32 1, %1099
  %1101 = sdiv i32 %1098, %1100
  store i32 %1101, i32* %51, align 4
  %1102 = load i32, i32* %51, align 4
  %1103 = load i32, i32* %53, align 4
  %1104 = mul nsw i32 %1102, %1103
  %1105 = load i32, i32* %47, align 4
  %1106 = shl i32 1, %1105
  %1107 = sdiv i32 %1104, %1106
  store i32 %1107, i32* %51, align 4
  %1108 = load i32, i32* %51, align 4
  %1109 = load i32, i32* %53, align 4
  %1110 = mul nsw i32 %1108, %1109
  %1111 = load i32, i32* %47, align 4
  %1112 = shl i32 1, %1111
  %1113 = sdiv i32 %1110, %1112
  store i32 %1113, i32* %51, align 4
  %1114 = load i32, i32* %51, align 4
  %1115 = load i32, i32* %53, align 4
  %1116 = mul nsw i32 %1114, %1115
  %1117 = load i32, i32* %47, align 4
  %1118 = shl i32 1, %1117
  %1119 = sdiv i32 %1116, %1118
  store i32 %1119, i32* %51, align 4
  %1120 = load i32, i32* %51, align 4
  %1121 = load i32, i32* %49, align 4
  %1122 = shl i32 1, %1121
  %1123 = sdiv i32 %1120, %1122
  store i32 %1123, i32* %51, align 4
  %1124 = load i32, i32* %44, align 4
  %1125 = icmp sgt i32 %1124, 0
  br i1 %1125, label %1126, label %1136

1126:                                             ; preds = %1095
  %1127 = load i32, i32* %43, align 4
  %1128 = load i32, i32* %53, align 4
  %1129 = mul nsw i32 %1127, %1128
  %1130 = load i32, i32* %48, align 4
  %1131 = shl i32 1, %1130
  %1132 = sub nsw i32 %1129, %1131
  %1133 = load i32, i32* %48, align 4
  %1134 = shl i32 1, %1133
  %1135 = sdiv i32 %1132, %1134
  store i32 %1135, i32* %52, align 4
  br label %1146

1136:                                             ; preds = %1095
  %1137 = load i32, i32* %43, align 4
  %1138 = load i32, i32* %53, align 4
  %1139 = mul nsw i32 %1137, %1138
  %1140 = load i32, i32* %48, align 4
  %1141 = shl i32 1, %1140
  %1142 = add nsw i32 %1139, %1141
  %1143 = load i32, i32* %48, align 4
  %1144 = shl i32 1, %1143
  %1145 = sdiv i32 %1142, %1144
  store i32 %1145, i32* %52, align 4
  br label %1146

1146:                                             ; preds = %1136, %1126
  %1147 = load i32, i32* %52, align 4
  %1148 = load i32, i32* %53, align 4
  %1149 = mul nsw i32 %1147, %1148
  %1150 = load i32, i32* %48, align 4
  %1151 = shl i32 1, %1150
  %1152 = sdiv i32 %1149, %1151
  store i32 %1152, i32* %52, align 4
  %1153 = load i32, i32* %52, align 4
  %1154 = load i32, i32* %53, align 4
  %1155 = mul nsw i32 %1153, %1154
  %1156 = load i32, i32* %48, align 4
  %1157 = shl i32 1, %1156
  %1158 = sdiv i32 %1155, %1157
  store i32 %1158, i32* %52, align 4
  %1159 = load i32, i32* %52, align 4
  %1160 = load i32, i32* %50, align 4
  %1161 = shl i32 1, %1160
  %1162 = sdiv i32 %1159, %1161
  store i32 %1162, i32* %52, align 4
  %1163 = load i32, i32* %55, align 4
  %1164 = icmp slt i32 %1163, 4
  br i1 %1164, label %1165, label %1166

1165:                                             ; preds = %1146
  store i32 0, i32* %66, align 4
  br label %1179

1166:                                             ; preds = %1146
  %1167 = load i32, i32* %51, align 4
  %1168 = load i32, i32* %52, align 4
  %1169 = add nsw i32 %1167, %1168
  store i32 %1169, i32* %66, align 4
  %1170 = load i32, i32* %66, align 4
  %1171 = icmp slt i32 %1170, -150
  br i1 %1171, label %1172, label %1173

1172:                                             ; preds = %1166
  store i32 -150, i32* %66, align 4
  br label %1178

1173:                                             ; preds = %1166
  %1174 = load i32, i32* %66, align 4
  %1175 = icmp sgt i32 %1174, 150
  br i1 %1175, label %1176, label %1177

1176:                                             ; preds = %1173
  store i32 150, i32* %66, align 4
  br label %1177

1177:                                             ; preds = %1176, %1173
  br label %1178

1178:                                             ; preds = %1177, %1172
  br label %1179

1179:                                             ; preds = %1178, %1165
  %1180 = load i32, i32* %55, align 4
  %1181 = sext i32 %1180 to i64
  %1182 = getelementptr inbounds i32, i32* %83, i64 %1181
  %1183 = load i32, i32* %1182, align 4
  %1184 = and i32 %1183, 2047
  %1185 = shl i32 %1184, 11
  %1186 = load i32, i32* %66, align 4
  %1187 = and i32 %1186, 2047
  %1188 = add nsw i32 %1185, %1187
  %1189 = load i32*, i32** %8, align 8
  %1190 = load i32, i32* %55, align 4
  %1191 = sext i32 %1190 to i64
  %1192 = getelementptr inbounds i32, i32* %1189, i64 %1191
  store i32 %1188, i32* %1192, align 4
  %1193 = load i32, i32* %55, align 4
  %1194 = icmp eq i32 %1193, 5
  br i1 %1194, label %1195, label %1214

1195:                                             ; preds = %1179
  %1196 = load i32, i32* %66, align 4
  %1197 = add nsw i32 %1196, 2
  %1198 = ashr i32 %1197, 1
  store i32 %1198, i32* %66, align 4
  %1199 = load i32, i32* %55, align 4
  %1200 = sub nsw i32 %1199, 1
  %1201 = sext i32 %1200 to i64
  %1202 = getelementptr inbounds i32, i32* %83, i64 %1201
  %1203 = load i32, i32* %1202, align 4
  %1204 = and i32 %1203, 2047
  %1205 = shl i32 %1204, 11
  %1206 = load i32, i32* %66, align 4
  %1207 = and i32 %1206, 2047
  %1208 = add nsw i32 %1205, %1207
  %1209 = load i32*, i32** %8, align 8
  %1210 = load i32, i32* %55, align 4
  %1211 = sub nsw i32 %1210, 1
  %1212 = sext i32 %1211 to i64
  %1213 = getelementptr inbounds i32, i32* %1209, i64 %1212
  store i32 %1208, i32* %1213, align 4
  br label %1214

1214:                                             ; preds = %1195, %1179
  br label %1215

1215:                                             ; preds = %1214, %1065
  %1216 = load i32, i32* %55, align 4
  %1217 = add nsw i32 %1216, 1
  store i32 %1217, i32* %55, align 4
  br label %1058

1218:                                             ; preds = %1058
  %1219 = load i32, i32* %26, align 4
  %1220 = load i32*, i32** %9, align 8
  store i32 %1219, i32* %1220, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %60, align 4
  br label %1221

1221:                                             ; preds = %1218, %734, %445, %383, %315, %291
  %1222 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %1222)
  %1223 = load i32, i32* %5, align 4
  ret i32 %1223
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @abs(i32) #2

declare dso_local i32 @find_proper_scale(i32, i32) #2

declare dso_local i32 @find_expn(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
