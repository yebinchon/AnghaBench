; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_docecc.c_eras_dec_rs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_docecc.c_eras_dec_rs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NN = common dso_local global i32 0, align 4
@KK = common dso_local global i32 0, align 4
@B0 = common dso_local global i32 0, align 4
@PRIM = common dso_local global i32 0, align 4
@A0 = common dso_local global i32 0, align 4
@Ldec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*, i32)* @eras_dec_rs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eras_dec_rs(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
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
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %38 = load i32, i32* @NN, align 4
  %39 = add nsw i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = load i32, i32* @NN, align 4
  %42 = add nsw i32 %41, 1
  %43 = zext i32 %42 to i64
  %44 = load i32, i32* @NN, align 4
  %45 = load i32, i32* @KK, align 4
  %46 = sub nsw i32 %44, %45
  %47 = add nsw i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = load i32, i32* @NN, align 4
  %50 = load i32, i32* @KK, align 4
  %51 = sub nsw i32 %49, %50
  %52 = zext i32 %51 to i64
  %53 = load i32, i32* @NN, align 4
  %54 = load i32, i32* @KK, align 4
  %55 = sub nsw i32 %53, %54
  %56 = zext i32 %55 to i64
  %57 = load i32, i32* @NN, align 4
  %58 = load i32, i32* @KK, align 4
  %59 = sub nsw i32 %57, %58
  %60 = add nsw i32 %59, 1
  %61 = zext i32 %60 to i64
  %62 = call i8* @llvm.stacksave()
  store i8* %62, i8** %27, align 8
  %63 = alloca i32, i64 %61, align 16
  store i64 %61, i64* %28, align 8
  %64 = load i32, i32* @NN, align 4
  %65 = load i32, i32* @KK, align 4
  %66 = sub nsw i32 %64, %65
  %67 = add nsw i32 %66, 1
  %68 = zext i32 %67 to i64
  %69 = alloca i32, i64 %68, align 16
  store i64 %68, i64* %29, align 8
  %70 = load i32, i32* @NN, align 4
  %71 = load i32, i32* @KK, align 4
  %72 = sub nsw i32 %70, %71
  %73 = add nsw i32 %72, 1
  %74 = zext i32 %73 to i64
  %75 = alloca i32, i64 %74, align 16
  store i64 %74, i64* %30, align 8
  %76 = load i32, i32* @NN, align 4
  %77 = load i32, i32* @KK, align 4
  %78 = sub nsw i32 %76, %77
  %79 = add nsw i32 %78, 1
  %80 = zext i32 %79 to i64
  %81 = alloca i32, i64 %80, align 16
  store i64 %80, i64* %31, align 8
  %82 = load i32, i32* @NN, align 4
  %83 = load i32, i32* @KK, align 4
  %84 = sub nsw i32 %82, %83
  %85 = add nsw i32 %84, 1
  %86 = zext i32 %85 to i64
  %87 = alloca i32, i64 %86, align 16
  store i64 %86, i64* %32, align 8
  %88 = load i32, i32* @NN, align 4
  %89 = load i32, i32* @KK, align 4
  %90 = sub nsw i32 %88, %89
  %91 = zext i32 %90 to i64
  %92 = alloca i32, i64 %91, align 16
  store i64 %91, i64* %33, align 8
  %93 = load i32, i32* @NN, align 4
  %94 = load i32, i32* @KK, align 4
  %95 = sub nsw i32 %93, %94
  %96 = add nsw i32 %95, 1
  %97 = zext i32 %96 to i64
  %98 = alloca i32, i64 %97, align 16
  store i64 %97, i64* %34, align 8
  %99 = load i32, i32* @NN, align 4
  %100 = load i32, i32* @KK, align 4
  %101 = sub nsw i32 %99, %100
  %102 = zext i32 %101 to i64
  %103 = alloca i32, i64 %102, align 16
  store i64 %102, i64* %35, align 8
  store i32 0, i32* %36, align 4
  store i32 0, i32* %16, align 4
  br label %104

104:                                              ; preds = %118, %6
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* @NN, align 4
  %107 = load i32, i32* @KK, align 4
  %108 = sub nsw i32 %106, %107
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %36, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %36, align 4
  br label %118

118:                                              ; preds = %110
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %16, align 4
  br label %104

121:                                              ; preds = %104
  %122 = load i32, i32* %36, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  store i32 0, i32* %37, align 4
  br label %872

125:                                              ; preds = %121
  store i32 1, i32* %16, align 4
  br label %126

126:                                              ; preds = %139, %125
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* @NN, align 4
  %129 = load i32, i32* @KK, align 4
  %130 = sub nsw i32 %128, %129
  %131 = icmp sle i32 %127, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %126
  %133 = load i32*, i32** %9, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %69, i64 %137
  store i32 %135, i32* %138, align 4
  br label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %16, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %16, align 4
  br label %126

142:                                              ; preds = %126
  store i32 1, i32* %17, align 4
  br label %143

143:                                              ; preds = %197, %142
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* @NN, align 4
  %146 = load i32, i32* @KK, align 4
  %147 = sub nsw i32 %145, %146
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %200

149:                                              ; preds = %143
  %150 = load i32*, i32** %9, align 8
  %151 = load i32, i32* %17, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  br label %197

157:                                              ; preds = %149
  %158 = load i32*, i32** %8, align 8
  %159 = load i32*, i32** %9, align 8
  %160 = load i32, i32* %17, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %158, i64 %164
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %22, align 4
  store i32 1, i32* %16, align 4
  br label %167

167:                                              ; preds = %193, %157
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* @NN, align 4
  %170 = load i32, i32* @KK, align 4
  %171 = sub nsw i32 %169, %170
  %172 = icmp sle i32 %168, %171
  br i1 %172, label %173, label %196

173:                                              ; preds = %167
  %174 = load i32*, i32** %7, align 8
  %175 = load i32, i32* %22, align 4
  %176 = load i32, i32* @B0, align 4
  %177 = load i32, i32* %16, align 4
  %178 = add nsw i32 %176, %177
  %179 = sub nsw i32 %178, 1
  %180 = load i32, i32* @PRIM, align 4
  %181 = mul nsw i32 %179, %180
  %182 = load i32, i32* %17, align 4
  %183 = mul nsw i32 %181, %182
  %184 = add nsw i32 %175, %183
  %185 = call i64 @modnn(i32 %184)
  %186 = getelementptr inbounds i32, i32* %174, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %16, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %69, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = xor i32 %191, %187
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %173
  %194 = load i32, i32* %16, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %16, align 4
  br label %167

196:                                              ; preds = %167
  br label %197

197:                                              ; preds = %196, %156
  %198 = load i32, i32* %17, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %17, align 4
  br label %143

200:                                              ; preds = %143
  store i32 1, i32* %16, align 4
  br label %201

201:                                              ; preds = %238, %200
  %202 = load i32, i32* %16, align 4
  %203 = load i32, i32* @NN, align 4
  %204 = load i32, i32* @KK, align 4
  %205 = sub nsw i32 %203, %204
  %206 = icmp sle i32 %202, %205
  br i1 %206, label %207, label %241

207:                                              ; preds = %201
  %208 = load i32*, i32** %8, align 8
  %209 = load i32, i32* %16, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %69, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %208, i64 %213
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %22, align 4
  %216 = load i32, i32* %22, align 4
  %217 = load i32, i32* @A0, align 4
  %218 = icmp ne i32 %216, %217
  br i1 %218, label %219, label %233

219:                                              ; preds = %207
  %220 = load i32, i32* %22, align 4
  %221 = load i32, i32* @KK, align 4
  %222 = mul nsw i32 2, %221
  %223 = load i32, i32* @B0, align 4
  %224 = load i32, i32* %16, align 4
  %225 = add nsw i32 %223, %224
  %226 = sub nsw i32 %225, 1
  %227 = mul nsw i32 %222, %226
  %228 = load i32, i32* @PRIM, align 4
  %229 = mul nsw i32 %227, %228
  %230 = add nsw i32 %220, %229
  %231 = call i64 @modnn(i32 %230)
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %22, align 4
  br label %233

233:                                              ; preds = %219, %207
  %234 = load i32, i32* %22, align 4
  %235 = load i32, i32* %16, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %69, i64 %236
  store i32 %234, i32* %237, align 4
  br label %238

238:                                              ; preds = %233
  %239 = load i32, i32* %16, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %16, align 4
  br label %201

241:                                              ; preds = %201
  %242 = getelementptr inbounds i32, i32* %63, i64 1
  %243 = load i32, i32* @NN, align 4
  %244 = load i32, i32* @KK, align 4
  %245 = sub nsw i32 %243, %244
  %246 = call i32 @CLEAR(i32* %242, i32 %245)
  %247 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 1, i32* %247, align 16
  %248 = load i32, i32* %12, align 4
  %249 = icmp sgt i32 %248, 0
  br i1 %249, label %250, label %315

250:                                              ; preds = %241
  %251 = load i32*, i32** %7, align 8
  %252 = load i32, i32* @PRIM, align 4
  %253 = load i32*, i32** %11, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = mul nsw i32 %252, %255
  %257 = call i64 @modnn(i32 %256)
  %258 = getelementptr inbounds i32, i32* %251, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 %259, i32* %260, align 4
  store i32 1, i32* %16, align 4
  br label %261

261:                                              ; preds = %311, %250
  %262 = load i32, i32* %16, align 4
  %263 = load i32, i32* %12, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %314

265:                                              ; preds = %261
  %266 = load i32, i32* @PRIM, align 4
  %267 = load i32*, i32** %11, align 8
  %268 = load i32, i32* %16, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = mul nsw i32 %266, %271
  %273 = call i64 @modnn(i32 %272)
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %20, align 4
  %275 = load i32, i32* %16, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %17, align 4
  br label %277

277:                                              ; preds = %307, %265
  %278 = load i32, i32* %17, align 4
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %310

280:                                              ; preds = %277
  %281 = load i32*, i32** %8, align 8
  %282 = load i32, i32* %17, align 4
  %283 = sub nsw i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %63, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %281, i64 %287
  %289 = load i32, i32* %288, align 4
  store i32 %289, i32* %22, align 4
  %290 = load i32, i32* %22, align 4
  %291 = load i32, i32* @A0, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %293, label %306

293:                                              ; preds = %280
  %294 = load i32*, i32** %7, align 8
  %295 = load i32, i32* %20, align 4
  %296 = load i32, i32* %22, align 4
  %297 = add nsw i32 %295, %296
  %298 = call i64 @modnn(i32 %297)
  %299 = getelementptr inbounds i32, i32* %294, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %17, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %63, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = xor i32 %304, %300
  store i32 %305, i32* %303, align 4
  br label %306

306:                                              ; preds = %293, %280
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %17, align 4
  %309 = add nsw i32 %308, -1
  store i32 %309, i32* %17, align 4
  br label %277

310:                                              ; preds = %277
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %16, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %16, align 4
  br label %261

314:                                              ; preds = %261
  br label %315

315:                                              ; preds = %314, %241
  store i32 0, i32* %16, align 4
  br label %316

316:                                              ; preds = %335, %315
  %317 = load i32, i32* %16, align 4
  %318 = load i32, i32* @NN, align 4
  %319 = load i32, i32* @KK, align 4
  %320 = sub nsw i32 %318, %319
  %321 = add nsw i32 %320, 1
  %322 = icmp slt i32 %317, %321
  br i1 %322, label %323, label %338

323:                                              ; preds = %316
  %324 = load i32*, i32** %8, align 8
  %325 = load i32, i32* %16, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %63, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %324, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* %16, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %75, i64 %333
  store i32 %331, i32* %334, align 4
  br label %335

335:                                              ; preds = %323
  %336 = load i32, i32* %16, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %16, align 4
  br label %316

338:                                              ; preds = %316
  %339 = load i32, i32* %12, align 4
  store i32 %339, i32* %18, align 4
  %340 = load i32, i32* %12, align 4
  store i32 %340, i32* %14, align 4
  br label %341

341:                                              ; preds = %530, %338
  %342 = load i32, i32* %18, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %18, align 4
  %344 = load i32, i32* @NN, align 4
  %345 = load i32, i32* @KK, align 4
  %346 = sub nsw i32 %344, %345
  %347 = icmp sle i32 %343, %346
  br i1 %347, label %348, label %531

348:                                              ; preds = %341
  store i32 0, i32* %26, align 4
  store i32 0, i32* %16, align 4
  br label %349

349:                                              ; preds = %391, %348
  %350 = load i32, i32* %16, align 4
  %351 = load i32, i32* %18, align 4
  %352 = icmp slt i32 %350, %351
  br i1 %352, label %353, label %394

353:                                              ; preds = %349
  %354 = load i32, i32* %16, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %63, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %390

359:                                              ; preds = %353
  %360 = load i32, i32* %18, align 4
  %361 = load i32, i32* %16, align 4
  %362 = sub nsw i32 %360, %361
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %69, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* @A0, align 4
  %367 = icmp ne i32 %365, %366
  br i1 %367, label %368, label %390

368:                                              ; preds = %359
  %369 = load i32*, i32** %7, align 8
  %370 = load i32*, i32** %8, align 8
  %371 = load i32, i32* %16, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %63, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %370, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* %18, align 4
  %379 = load i32, i32* %16, align 4
  %380 = sub nsw i32 %378, %379
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %69, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = add nsw i32 %377, %383
  %385 = call i64 @modnn(i32 %384)
  %386 = getelementptr inbounds i32, i32* %369, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = load i32, i32* %26, align 4
  %389 = xor i32 %388, %387
  store i32 %389, i32* %26, align 4
  br label %390

390:                                              ; preds = %368, %359, %353
  br label %391

391:                                              ; preds = %390
  %392 = load i32, i32* %16, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %16, align 4
  br label %349

394:                                              ; preds = %349
  %395 = load i32*, i32** %8, align 8
  %396 = load i32, i32* %26, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  store i32 %399, i32* %26, align 4
  %400 = load i32, i32* %26, align 4
  %401 = load i32, i32* @A0, align 4
  %402 = icmp eq i32 %400, %401
  br i1 %402, label %403, label %411

403:                                              ; preds = %394
  %404 = getelementptr inbounds i32, i32* %75, i64 1
  %405 = load i32, i32* @NN, align 4
  %406 = load i32, i32* @KK, align 4
  %407 = sub nsw i32 %405, %406
  %408 = call i32 @COPYDOWN(i32* %404, i32* %75, i32 %407)
  %409 = load i32, i32* @A0, align 4
  %410 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %409, i32* %410, align 16
  br label %530

411:                                              ; preds = %394
  %412 = getelementptr inbounds i32, i32* %63, i64 0
  %413 = load i32, i32* %412, align 16
  %414 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %413, i32* %414, align 16
  store i32 0, i32* %16, align 4
  br label %415

415:                                              ; preds = %460, %411
  %416 = load i32, i32* %16, align 4
  %417 = load i32, i32* @NN, align 4
  %418 = load i32, i32* @KK, align 4
  %419 = sub nsw i32 %417, %418
  %420 = icmp slt i32 %416, %419
  br i1 %420, label %421, label %463

421:                                              ; preds = %415
  %422 = load i32, i32* %16, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %75, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* @A0, align 4
  %427 = icmp ne i32 %425, %426
  br i1 %427, label %428, label %449

428:                                              ; preds = %421
  %429 = load i32, i32* %16, align 4
  %430 = add nsw i32 %429, 1
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %63, i64 %431
  %433 = load i32, i32* %432, align 4
  %434 = load i32*, i32** %7, align 8
  %435 = load i32, i32* %26, align 4
  %436 = load i32, i32* %16, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %75, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = add nsw i32 %435, %439
  %441 = call i64 @modnn(i32 %440)
  %442 = getelementptr inbounds i32, i32* %434, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = xor i32 %433, %443
  %445 = load i32, i32* %16, align 4
  %446 = add nsw i32 %445, 1
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %81, i64 %447
  store i32 %444, i32* %448, align 4
  br label %459

449:                                              ; preds = %421
  %450 = load i32, i32* %16, align 4
  %451 = add nsw i32 %450, 1
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %63, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = load i32, i32* %16, align 4
  %456 = add nsw i32 %455, 1
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %81, i64 %457
  store i32 %454, i32* %458, align 4
  br label %459

459:                                              ; preds = %449, %428
  br label %460

460:                                              ; preds = %459
  %461 = load i32, i32* %16, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %16, align 4
  br label %415

463:                                              ; preds = %415
  %464 = load i32, i32* %14, align 4
  %465 = mul nsw i32 2, %464
  %466 = load i32, i32* %18, align 4
  %467 = load i32, i32* %12, align 4
  %468 = add nsw i32 %466, %467
  %469 = sub nsw i32 %468, 1
  %470 = icmp sle i32 %465, %469
  br i1 %470, label %471, label %516

471:                                              ; preds = %463
  %472 = load i32, i32* %18, align 4
  %473 = load i32, i32* %12, align 4
  %474 = add nsw i32 %472, %473
  %475 = load i32, i32* %14, align 4
  %476 = sub nsw i32 %474, %475
  store i32 %476, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %477

477:                                              ; preds = %512, %471
  %478 = load i32, i32* %16, align 4
  %479 = load i32, i32* @NN, align 4
  %480 = load i32, i32* @KK, align 4
  %481 = sub nsw i32 %479, %480
  %482 = icmp sle i32 %478, %481
  br i1 %482, label %483, label %515

483:                                              ; preds = %477
  %484 = load i32, i32* %16, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i32, i32* %63, i64 %485
  %487 = load i32, i32* %486, align 4
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %492

489:                                              ; preds = %483
  %490 = load i32, i32* @A0, align 4
  %491 = sext i32 %490 to i64
  br label %506

492:                                              ; preds = %483
  %493 = load i32*, i32** %8, align 8
  %494 = load i32, i32* %16, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32, i32* %63, i64 %495
  %497 = load i32, i32* %496, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i32, i32* %493, i64 %498
  %500 = load i32, i32* %499, align 4
  %501 = load i32, i32* %26, align 4
  %502 = sub nsw i32 %500, %501
  %503 = load i32, i32* @NN, align 4
  %504 = add nsw i32 %502, %503
  %505 = call i64 @modnn(i32 %504)
  br label %506

506:                                              ; preds = %492, %489
  %507 = phi i64 [ %491, %489 ], [ %505, %492 ]
  %508 = trunc i64 %507 to i32
  %509 = load i32, i32* %16, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32, i32* %75, i64 %510
  store i32 %508, i32* %511, align 4
  br label %512

512:                                              ; preds = %506
  %513 = load i32, i32* %16, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %16, align 4
  br label %477

515:                                              ; preds = %477
  br label %524

516:                                              ; preds = %463
  %517 = getelementptr inbounds i32, i32* %75, i64 1
  %518 = load i32, i32* @NN, align 4
  %519 = load i32, i32* @KK, align 4
  %520 = sub nsw i32 %518, %519
  %521 = call i32 @COPYDOWN(i32* %517, i32* %75, i32 %520)
  %522 = load i32, i32* @A0, align 4
  %523 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %522, i32* %523, align 16
  br label %524

524:                                              ; preds = %516, %515
  %525 = load i32, i32* @NN, align 4
  %526 = load i32, i32* @KK, align 4
  %527 = sub nsw i32 %525, %526
  %528 = add nsw i32 %527, 1
  %529 = call i32 @COPY(i32* %63, i32* %81, i32 %528)
  br label %530

530:                                              ; preds = %524, %403
  br label %341

531:                                              ; preds = %341
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  br label %532

532:                                              ; preds = %560, %531
  %533 = load i32, i32* %16, align 4
  %534 = load i32, i32* @NN, align 4
  %535 = load i32, i32* @KK, align 4
  %536 = sub nsw i32 %534, %535
  %537 = add nsw i32 %536, 1
  %538 = icmp slt i32 %533, %537
  br i1 %538, label %539, label %563

539:                                              ; preds = %532
  %540 = load i32*, i32** %8, align 8
  %541 = load i32, i32* %16, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32, i32* %63, i64 %542
  %544 = load i32, i32* %543, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i32, i32* %540, i64 %545
  %547 = load i32, i32* %546, align 4
  %548 = load i32, i32* %16, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds i32, i32* %63, i64 %549
  store i32 %547, i32* %550, align 4
  %551 = load i32, i32* %16, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i32, i32* %63, i64 %552
  %554 = load i32, i32* %553, align 4
  %555 = load i32, i32* @A0, align 4
  %556 = icmp ne i32 %554, %555
  br i1 %556, label %557, label %559

557:                                              ; preds = %539
  %558 = load i32, i32* %16, align 4
  store i32 %558, i32* %13, align 4
  br label %559

559:                                              ; preds = %557, %539
  br label %560

560:                                              ; preds = %559
  %561 = load i32, i32* %16, align 4
  %562 = add nsw i32 %561, 1
  store i32 %562, i32* %16, align 4
  br label %532

563:                                              ; preds = %532
  %564 = getelementptr inbounds i32, i32* %98, i64 1
  %565 = getelementptr inbounds i32, i32* %63, i64 1
  %566 = load i32, i32* @NN, align 4
  %567 = load i32, i32* @KK, align 4
  %568 = sub nsw i32 %566, %567
  %569 = call i32 @COPY(i32* %564, i32* %565, i32 %568)
  store i32 0, i32* %37, align 4
  store i32 1, i32* %16, align 4
  %570 = load i32, i32* @NN, align 4
  %571 = load i32, i32* @Ldec, align 4
  %572 = sub nsw i32 %570, %571
  store i32 %572, i32* %19, align 4
  br label %573

573:                                              ; preds = %634, %563
  %574 = load i32, i32* %16, align 4
  %575 = load i32, i32* @NN, align 4
  %576 = icmp sle i32 %574, %575
  br i1 %576, label %577, label %644

577:                                              ; preds = %573
  store i32 1, i32* %21, align 4
  %578 = load i32, i32* %13, align 4
  store i32 %578, i32* %17, align 4
  br label %579

579:                                              ; preds = %612, %577
  %580 = load i32, i32* %17, align 4
  %581 = icmp sgt i32 %580, 0
  br i1 %581, label %582, label %615

582:                                              ; preds = %579
  %583 = load i32, i32* %17, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds i32, i32* %98, i64 %584
  %586 = load i32, i32* %585, align 4
  %587 = load i32, i32* @A0, align 4
  %588 = icmp ne i32 %586, %587
  br i1 %588, label %589, label %611

589:                                              ; preds = %582
  %590 = load i32, i32* %17, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i32, i32* %98, i64 %591
  %593 = load i32, i32* %592, align 4
  %594 = load i32, i32* %17, align 4
  %595 = add nsw i32 %593, %594
  %596 = call i64 @modnn(i32 %595)
  %597 = trunc i64 %596 to i32
  %598 = load i32, i32* %17, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i32, i32* %98, i64 %599
  store i32 %597, i32* %600, align 4
  %601 = load i32*, i32** %7, align 8
  %602 = load i32, i32* %17, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i32, i32* %98, i64 %603
  %605 = load i32, i32* %604, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i32, i32* %601, i64 %606
  %608 = load i32, i32* %607, align 4
  %609 = load i32, i32* %21, align 4
  %610 = xor i32 %609, %608
  store i32 %610, i32* %21, align 4
  br label %611

611:                                              ; preds = %589, %582
  br label %612

612:                                              ; preds = %611
  %613 = load i32, i32* %17, align 4
  %614 = add nsw i32 %613, -1
  store i32 %614, i32* %17, align 4
  br label %579

615:                                              ; preds = %579
  %616 = load i32, i32* %21, align 4
  %617 = icmp ne i32 %616, 0
  br i1 %617, label %618, label %619

618:                                              ; preds = %615
  br label %634

619:                                              ; preds = %615
  %620 = load i32, i32* %16, align 4
  %621 = load i32, i32* %37, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds i32, i32* %92, i64 %622
  store i32 %620, i32* %623, align 4
  %624 = load i32, i32* %19, align 4
  %625 = load i32, i32* %37, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds i32, i32* %103, i64 %626
  store i32 %624, i32* %627, align 4
  %628 = load i32, i32* %37, align 4
  %629 = add nsw i32 %628, 1
  store i32 %629, i32* %37, align 4
  %630 = load i32, i32* %13, align 4
  %631 = icmp eq i32 %629, %630
  br i1 %631, label %632, label %633

632:                                              ; preds = %619
  br label %644

633:                                              ; preds = %619
  br label %634

634:                                              ; preds = %633, %618
  %635 = load i32, i32* %16, align 4
  %636 = add nsw i32 %635, 1
  store i32 %636, i32* %16, align 4
  %637 = load i32, i32* @NN, align 4
  %638 = load i32, i32* %19, align 4
  %639 = add nsw i32 %637, %638
  %640 = load i32, i32* @Ldec, align 4
  %641 = sub nsw i32 %639, %640
  %642 = call i64 @modnn(i32 %641)
  %643 = trunc i64 %642 to i32
  store i32 %643, i32* %19, align 4
  br label %573

644:                                              ; preds = %632, %573
  %645 = load i32, i32* %13, align 4
  %646 = load i32, i32* %37, align 4
  %647 = icmp ne i32 %645, %646
  br i1 %647, label %648, label %649

648:                                              ; preds = %644
  store i32 -1, i32* %37, align 4
  br label %872

649:                                              ; preds = %644
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %650

650:                                              ; preds = %723, %649
  %651 = load i32, i32* %16, align 4
  %652 = load i32, i32* @NN, align 4
  %653 = load i32, i32* @KK, align 4
  %654 = sub nsw i32 %652, %653
  %655 = icmp slt i32 %651, %654
  br i1 %655, label %656, label %726

656:                                              ; preds = %650
  store i32 0, i32* %22, align 4
  %657 = load i32, i32* %13, align 4
  %658 = load i32, i32* %16, align 4
  %659 = icmp slt i32 %657, %658
  br i1 %659, label %660, label %662

660:                                              ; preds = %656
  %661 = load i32, i32* %13, align 4
  br label %664

662:                                              ; preds = %656
  %663 = load i32, i32* %16, align 4
  br label %664

664:                                              ; preds = %662, %660
  %665 = phi i32 [ %661, %660 ], [ %663, %662 ]
  store i32 %665, i32* %17, align 4
  br label %666

666:                                              ; preds = %706, %664
  %667 = load i32, i32* %17, align 4
  %668 = icmp sge i32 %667, 0
  br i1 %668, label %669, label %709

669:                                              ; preds = %666
  %670 = load i32, i32* %16, align 4
  %671 = add nsw i32 %670, 1
  %672 = load i32, i32* %17, align 4
  %673 = sub nsw i32 %671, %672
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds i32, i32* %69, i64 %674
  %676 = load i32, i32* %675, align 4
  %677 = load i32, i32* @A0, align 4
  %678 = icmp ne i32 %676, %677
  br i1 %678, label %679, label %705

679:                                              ; preds = %669
  %680 = load i32, i32* %17, align 4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds i32, i32* %63, i64 %681
  %683 = load i32, i32* %682, align 4
  %684 = load i32, i32* @A0, align 4
  %685 = icmp ne i32 %683, %684
  br i1 %685, label %686, label %705

686:                                              ; preds = %679
  %687 = load i32*, i32** %7, align 8
  %688 = load i32, i32* %16, align 4
  %689 = add nsw i32 %688, 1
  %690 = load i32, i32* %17, align 4
  %691 = sub nsw i32 %689, %690
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds i32, i32* %69, i64 %692
  %694 = load i32, i32* %693, align 4
  %695 = load i32, i32* %17, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds i32, i32* %63, i64 %696
  %698 = load i32, i32* %697, align 4
  %699 = add nsw i32 %694, %698
  %700 = call i64 @modnn(i32 %699)
  %701 = getelementptr inbounds i32, i32* %687, i64 %700
  %702 = load i32, i32* %701, align 4
  %703 = load i32, i32* %22, align 4
  %704 = xor i32 %703, %702
  store i32 %704, i32* %22, align 4
  br label %705

705:                                              ; preds = %686, %679, %669
  br label %706

706:                                              ; preds = %705
  %707 = load i32, i32* %17, align 4
  %708 = add nsw i32 %707, -1
  store i32 %708, i32* %17, align 4
  br label %666

709:                                              ; preds = %666
  %710 = load i32, i32* %22, align 4
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %712, label %714

712:                                              ; preds = %709
  %713 = load i32, i32* %16, align 4
  store i32 %713, i32* %15, align 4
  br label %714

714:                                              ; preds = %712, %709
  %715 = load i32*, i32** %8, align 8
  %716 = load i32, i32* %22, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds i32, i32* %715, i64 %717
  %719 = load i32, i32* %718, align 4
  %720 = load i32, i32* %16, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds i32, i32* %87, i64 %721
  store i32 %719, i32* %722, align 4
  br label %723

723:                                              ; preds = %714
  %724 = load i32, i32* %16, align 4
  %725 = add nsw i32 %724, 1
  store i32 %725, i32* %16, align 4
  br label %650

726:                                              ; preds = %650
  %727 = load i32, i32* @A0, align 4
  %728 = load i32, i32* @NN, align 4
  %729 = load i32, i32* @KK, align 4
  %730 = sub nsw i32 %728, %729
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds i32, i32* %87, i64 %731
  store i32 %727, i32* %732, align 4
  %733 = load i32, i32* %37, align 4
  %734 = sub nsw i32 %733, 1
  store i32 %734, i32* %17, align 4
  br label %735

735:                                              ; preds = %868, %726
  %736 = load i32, i32* %17, align 4
  %737 = icmp sge i32 %736, 0
  br i1 %737, label %738, label %871

738:                                              ; preds = %735
  store i32 0, i32* %23, align 4
  %739 = load i32, i32* %15, align 4
  store i32 %739, i32* %16, align 4
  br label %740

740:                                              ; preds = %769, %738
  %741 = load i32, i32* %16, align 4
  %742 = icmp sge i32 %741, 0
  br i1 %742, label %743, label %772

743:                                              ; preds = %740
  %744 = load i32, i32* %16, align 4
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds i32, i32* %87, i64 %745
  %747 = load i32, i32* %746, align 4
  %748 = load i32, i32* @A0, align 4
  %749 = icmp ne i32 %747, %748
  br i1 %749, label %750, label %768

750:                                              ; preds = %743
  %751 = load i32*, i32** %7, align 8
  %752 = load i32, i32* %16, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds i32, i32* %87, i64 %753
  %755 = load i32, i32* %754, align 4
  %756 = load i32, i32* %16, align 4
  %757 = load i32, i32* %17, align 4
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds i32, i32* %92, i64 %758
  %760 = load i32, i32* %759, align 4
  %761 = mul nsw i32 %756, %760
  %762 = add nsw i32 %755, %761
  %763 = call i64 @modnn(i32 %762)
  %764 = getelementptr inbounds i32, i32* %751, i64 %763
  %765 = load i32, i32* %764, align 4
  %766 = load i32, i32* %23, align 4
  %767 = xor i32 %766, %765
  store i32 %767, i32* %23, align 4
  br label %768

768:                                              ; preds = %750, %743
  br label %769

769:                                              ; preds = %768
  %770 = load i32, i32* %16, align 4
  %771 = add nsw i32 %770, -1
  store i32 %771, i32* %16, align 4
  br label %740

772:                                              ; preds = %740
  %773 = load i32*, i32** %7, align 8
  %774 = load i32, i32* %17, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds i32, i32* %92, i64 %775
  %777 = load i32, i32* %776, align 4
  %778 = load i32, i32* @B0, align 4
  %779 = sub nsw i32 %778, 1
  %780 = mul nsw i32 %777, %779
  %781 = load i32, i32* @NN, align 4
  %782 = add nsw i32 %780, %781
  %783 = call i64 @modnn(i32 %782)
  %784 = getelementptr inbounds i32, i32* %773, i64 %783
  %785 = load i32, i32* %784, align 4
  store i32 %785, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %786 = load i32, i32* %13, align 4
  %787 = load i32, i32* @NN, align 4
  %788 = load i32, i32* @KK, align 4
  %789 = sub nsw i32 %787, %788
  %790 = sub nsw i32 %789, 1
  %791 = call i32 @min(i32 %786, i32 %790)
  %792 = and i32 %791, -2
  store i32 %792, i32* %16, align 4
  br label %793

793:                                              ; preds = %824, %772
  %794 = load i32, i32* %16, align 4
  %795 = icmp sge i32 %794, 0
  br i1 %795, label %796, label %827

796:                                              ; preds = %793
  %797 = load i32, i32* %16, align 4
  %798 = add nsw i32 %797, 1
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds i32, i32* %63, i64 %799
  %801 = load i32, i32* %800, align 4
  %802 = load i32, i32* @A0, align 4
  %803 = icmp ne i32 %801, %802
  br i1 %803, label %804, label %823

804:                                              ; preds = %796
  %805 = load i32*, i32** %7, align 8
  %806 = load i32, i32* %16, align 4
  %807 = add nsw i32 %806, 1
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds i32, i32* %63, i64 %808
  %810 = load i32, i32* %809, align 4
  %811 = load i32, i32* %16, align 4
  %812 = load i32, i32* %17, align 4
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds i32, i32* %92, i64 %813
  %815 = load i32, i32* %814, align 4
  %816 = mul nsw i32 %811, %815
  %817 = add nsw i32 %810, %816
  %818 = call i64 @modnn(i32 %817)
  %819 = getelementptr inbounds i32, i32* %805, i64 %818
  %820 = load i32, i32* %819, align 4
  %821 = load i32, i32* %25, align 4
  %822 = xor i32 %821, %820
  store i32 %822, i32* %25, align 4
  br label %823

823:                                              ; preds = %804, %796
  br label %824

824:                                              ; preds = %823
  %825 = load i32, i32* %16, align 4
  %826 = sub nsw i32 %825, 2
  store i32 %826, i32* %16, align 4
  br label %793

827:                                              ; preds = %793
  %828 = load i32, i32* %25, align 4
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %830, label %831

830:                                              ; preds = %827
  store i32 -1, i32* %37, align 4
  br label %872

831:                                              ; preds = %827
  %832 = load i32, i32* %23, align 4
  %833 = icmp ne i32 %832, 0
  br i1 %833, label %834, label %862

834:                                              ; preds = %831
  %835 = load i32*, i32** %7, align 8
  %836 = load i32*, i32** %8, align 8
  %837 = load i32, i32* %23, align 4
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds i32, i32* %836, i64 %838
  %840 = load i32, i32* %839, align 4
  %841 = load i32*, i32** %8, align 8
  %842 = load i32, i32* %24, align 4
  %843 = sext i32 %842 to i64
  %844 = getelementptr inbounds i32, i32* %841, i64 %843
  %845 = load i32, i32* %844, align 4
  %846 = add nsw i32 %840, %845
  %847 = load i32, i32* @NN, align 4
  %848 = add nsw i32 %846, %847
  %849 = load i32*, i32** %8, align 8
  %850 = load i32, i32* %25, align 4
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds i32, i32* %849, i64 %851
  %853 = load i32, i32* %852, align 4
  %854 = sub nsw i32 %848, %853
  %855 = call i64 @modnn(i32 %854)
  %856 = getelementptr inbounds i32, i32* %835, i64 %855
  %857 = load i32, i32* %856, align 4
  %858 = load i32*, i32** %10, align 8
  %859 = load i32, i32* %17, align 4
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds i32, i32* %858, i64 %860
  store i32 %857, i32* %861, align 4
  br label %867

862:                                              ; preds = %831
  %863 = load i32*, i32** %10, align 8
  %864 = load i32, i32* %17, align 4
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds i32, i32* %863, i64 %865
  store i32 0, i32* %866, align 4
  br label %867

867:                                              ; preds = %862, %834
  br label %868

868:                                              ; preds = %867
  %869 = load i32, i32* %17, align 4
  %870 = add nsw i32 %869, -1
  store i32 %870, i32* %17, align 4
  br label %735

871:                                              ; preds = %735
  br label %872

872:                                              ; preds = %871, %830, %648, %124
  store i32 0, i32* %16, align 4
  br label %873

873:                                              ; preds = %886, %872
  %874 = load i32, i32* %16, align 4
  %875 = load i32, i32* %37, align 4
  %876 = icmp slt i32 %874, %875
  br i1 %876, label %877, label %889

877:                                              ; preds = %873
  %878 = load i32, i32* %16, align 4
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds i32, i32* %103, i64 %879
  %881 = load i32, i32* %880, align 4
  %882 = load i32*, i32** %11, align 8
  %883 = load i32, i32* %16, align 4
  %884 = sext i32 %883 to i64
  %885 = getelementptr inbounds i32, i32* %882, i64 %884
  store i32 %881, i32* %885, align 4
  br label %886

886:                                              ; preds = %877
  %887 = load i32, i32* %16, align 4
  %888 = add nsw i32 %887, 1
  store i32 %888, i32* %16, align 4
  br label %873

889:                                              ; preds = %873
  %890 = load i32, i32* %37, align 4
  %891 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %891)
  ret i32 %890
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @modnn(i32) #2

declare dso_local i32 @CLEAR(i32*, i32) #2

declare dso_local i32 @COPYDOWN(i32*, i32*, i32) #2

declare dso_local i32 @COPY(i32*, i32*, i32) #2

declare dso_local i32 @min(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
