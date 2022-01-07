; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_chi_to_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_chi_to_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @chi_to_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chi_to_channel(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 255, i32* %3, align 4
  br label %439

22:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %370

28:                                               ; preds = %22
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 172
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 253, i32* %3, align 4
  br label %439

39:                                               ; preds = %33, %28
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %58, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 128
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %46, %40
  %56 = phi i1 [ false, %40 ], [ %54, %46 ]
  br i1 %56, label %57, label %61

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %40

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %61
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 128
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %67, %61
  store i32 254, i32* %3, align 4
  br label %439

76:                                               ; preds = %67
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, 200
  %81 = icmp ne i32 %80, 233
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 254, i32* %3, align 4
  br label %439

83:                                               ; preds = %76
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 64, i32* %9, align 4
  br label %90

90:                                               ; preds = %89, %83
  %91 = load i32*, i32** %4, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 64
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %137

96:                                               ; preds = %90
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %118, %96
  %101 = load i32, i32* %7, align 4
  %102 = load i32*, i32** %4, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 128
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  br label %115

115:                                              ; preds = %106, %100
  %116 = phi i1 [ false, %100 ], [ %114, %106 ]
  br i1 %116, label %117, label %121

117:                                              ; preds = %115
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %100

121:                                              ; preds = %115
  %122 = load i32, i32* %7, align 4
  %123 = load i32*, i32** %4, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %122, %125
  br i1 %126, label %135, label %127

127:                                              ; preds = %121
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 128
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %127, %121
  store i32 254, i32* %3, align 4
  br label %439

136:                                              ; preds = %127
  br label %137

137:                                              ; preds = %136, %90
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %159, %137
  %142 = load i32, i32* %7, align 4
  %143 = load i32*, i32** %4, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %141
  %148 = load i32*, i32** %4, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 128
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  br label %156

156:                                              ; preds = %147, %141
  %157 = phi i1 [ false, %141 ], [ %155, %147 ]
  br i1 %157, label %158, label %162

158:                                              ; preds = %156
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %7, align 4
  br label %141

162:                                              ; preds = %156
  %163 = load i32, i32* %7, align 4
  %164 = load i32*, i32** %4, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %163, %166
  br i1 %167, label %176, label %168

168:                                              ; preds = %162
  %169 = load i32*, i32** %4, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, 128
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %168, %162
  store i32 254, i32* %3, align 4
  br label %439

177:                                              ; preds = %168
  %178 = load i32*, i32** %4, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, 208
  %184 = icmp ne i32 %183, 211
  br i1 %184, label %185, label %186

185:                                              ; preds = %177
  store i32 254, i32* %3, align 4
  br label %439

186:                                              ; preds = %177
  %187 = load i32*, i32** %4, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = and i32 %191, 16
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %272

194:                                              ; preds = %186
  %195 = load i32*, i32** %4, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %6, align 4
  %199 = sub nsw i32 %197, %198
  %200 = icmp eq i32 %199, 4
  br i1 %200, label %201, label %202

201:                                              ; preds = %194
  store i32 0, i32* %10, align 4
  br label %212

202:                                              ; preds = %194
  %203 = load i32*, i32** %4, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %6, align 4
  %207 = sub nsw i32 %205, %206
  %208 = icmp eq i32 %207, 3
  br i1 %208, label %209, label %210

209:                                              ; preds = %202
  store i32 1, i32* %10, align 4
  br label %211

210:                                              ; preds = %202
  store i32 254, i32* %3, align 4
  br label %439

211:                                              ; preds = %209
  br label %212

212:                                              ; preds = %211, %201
  store i32 0, i32* %11, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %213

213:                                              ; preds = %262, %212
  %214 = load i32, i32* %7, align 4
  %215 = icmp slt i32 %214, 4
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  %217 = load i32, i32* %6, align 4
  %218 = load i32*, i32** %4, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp slt i32 %217, %220
  br label %222

222:                                              ; preds = %216, %213
  %223 = phi i1 [ false, %213 ], [ %221, %216 ]
  br i1 %223, label %224, label %265

224:                                              ; preds = %222
  %225 = load i32, i32* %6, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %6, align 4
  %227 = load i32, i32* %11, align 4
  %228 = add nsw i32 %227, 8
  store i32 %228, i32* %11, align 4
  %229 = load i32, i32* %8, align 4
  %230 = shl i32 %229, 8
  store i32 %230, i32* %8, align 4
  %231 = load i32*, i32** %4, align 8
  %232 = load i32, i32* %6, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %261

237:                                              ; preds = %224
  store i32 0, i32* %11, align 4
  br label %238

238:                                              ; preds = %250, %237
  %239 = load i32*, i32** %4, align 8
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %11, align 4
  %245 = shl i32 1, %244
  %246 = and i32 %243, %245
  %247 = icmp ne i32 %246, 0
  %248 = xor i1 %247, true
  br i1 %248, label %249, label %253

249:                                              ; preds = %238
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %11, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %11, align 4
  br label %238

253:                                              ; preds = %238
  %254 = load i32*, i32** %4, align 8
  %255 = load i32, i32* %6, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %8, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %8, align 4
  br label %261

261:                                              ; preds = %253, %224
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %7, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %7, align 4
  br label %213

265:                                              ; preds = %222
  %266 = load i32, i32* %10, align 4
  %267 = load i32, i32* %11, align 4
  %268 = add nsw i32 %267, %266
  store i32 %268, i32* %11, align 4
  %269 = load i32, i32* %10, align 4
  %270 = load i32, i32* %8, align 4
  %271 = shl i32 %270, %269
  store i32 %271, i32* %8, align 4
  br label %351

272:                                              ; preds = %186
  %273 = load i32, i32* %7, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %6, align 4
  %275 = load i32*, i32** %4, align 8
  %276 = load i32, i32* %6, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %279, 63
  store i32 %280, i32* %11, align 4
  %281 = load i32*, i32** %5, align 8
  %282 = icmp ne i32* %281, null
  br i1 %282, label %283, label %325

283:                                              ; preds = %272
  %284 = load i32*, i32** %4, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 0
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* %6, align 4
  %288 = sub nsw i32 %286, %287
  %289 = icmp sgt i32 %288, 30
  br i1 %289, label %290, label %291

290:                                              ; preds = %283
  store i32 254, i32* %3, align 4
  br label %439

291:                                              ; preds = %283
  store i32 0, i32* %8, align 4
  %292 = load i32, i32* %6, align 4
  store i32 %292, i32* %7, align 4
  br label %293

293:                                              ; preds = %321, %291
  %294 = load i32, i32* %7, align 4
  %295 = load i32*, i32** %4, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 0
  %297 = load i32, i32* %296, align 4
  %298 = icmp sle i32 %294, %297
  br i1 %298, label %299, label %324

299:                                              ; preds = %293
  %300 = load i32*, i32** %4, align 8
  %301 = load i32, i32* %7, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = and i32 %304, 127
  %306 = icmp sgt i32 %305, 31
  br i1 %306, label %307, label %308

307:                                              ; preds = %299
  store i32 254, i32* %3, align 4
  br label %439

308:                                              ; preds = %299
  %309 = load i32*, i32** %4, align 8
  %310 = load i32, i32* %7, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = and i32 %313, 127
  %315 = zext i32 %314 to i64
  %316 = shl i64 1, %315
  %317 = load i32, i32* %8, align 4
  %318 = sext i32 %317 to i64
  %319 = or i64 %318, %316
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* %8, align 4
  br label %321

321:                                              ; preds = %308
  %322 = load i32, i32* %7, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %7, align 4
  br label %293

324:                                              ; preds = %293
  br label %341

325:                                              ; preds = %272
  %326 = load i32, i32* %6, align 4
  %327 = load i32*, i32** %4, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 0
  %329 = load i32, i32* %328, align 4
  %330 = icmp ne i32 %326, %329
  br i1 %330, label %331, label %332

331:                                              ; preds = %325
  store i32 254, i32* %3, align 4
  br label %439

332:                                              ; preds = %325
  %333 = load i32, i32* %11, align 4
  %334 = icmp sgt i32 %333, 31
  br i1 %334, label %335, label %336

335:                                              ; preds = %332
  store i32 254, i32* %3, align 4
  br label %439

336:                                              ; preds = %332
  %337 = load i32, i32* %11, align 4
  %338 = zext i32 %337 to i64
  %339 = shl i64 1, %338
  %340 = trunc i64 %339 to i32
  store i32 %340, i32* %8, align 4
  br label %341

341:                                              ; preds = %336, %324
  %342 = load i32*, i32** %4, align 8
  %343 = load i32, i32* %6, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = and i32 %346, 64
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %341
  store i32 254, i32* %3, align 4
  br label %439

350:                                              ; preds = %341
  br label %351

351:                                              ; preds = %350, %265
  %352 = load i32*, i32** %5, align 8
  %353 = icmp ne i32* %352, null
  br i1 %353, label %354, label %357

354:                                              ; preds = %351
  %355 = load i32, i32* %8, align 4
  %356 = load i32*, i32** %5, align 8
  store i32 %355, i32* %356, align 4
  br label %366

357:                                              ; preds = %351
  %358 = load i32, i32* %8, align 4
  %359 = load i32, i32* %11, align 4
  %360 = zext i32 %359 to i64
  %361 = shl i64 1, %360
  %362 = trunc i64 %361 to i32
  %363 = icmp ne i32 %358, %362
  br i1 %363, label %364, label %365

364:                                              ; preds = %357
  store i32 254, i32* %3, align 4
  br label %439

365:                                              ; preds = %357
  br label %366

366:                                              ; preds = %365, %354
  %367 = load i32, i32* %9, align 4
  %368 = load i32, i32* %11, align 4
  %369 = or i32 %367, %368
  store i32 %369, i32* %3, align 4
  br label %439

370:                                              ; preds = %22
  store i32 1, i32* %7, align 4
  br label %371

371:                                              ; preds = %389, %370
  %372 = load i32, i32* %7, align 4
  %373 = load i32*, i32** %4, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 0
  %375 = load i32, i32* %374, align 4
  %376 = icmp slt i32 %372, %375
  br i1 %376, label %377, label %386

377:                                              ; preds = %371
  %378 = load i32*, i32** %4, align 8
  %379 = load i32, i32* %7, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = and i32 %382, 128
  %384 = icmp ne i32 %383, 0
  %385 = xor i1 %384, true
  br label %386

386:                                              ; preds = %377, %371
  %387 = phi i1 [ false, %371 ], [ %385, %377 ]
  br i1 %387, label %388, label %392

388:                                              ; preds = %386
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %7, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %7, align 4
  br label %371

392:                                              ; preds = %386
  %393 = load i32, i32* %7, align 4
  %394 = load i32*, i32** %4, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 0
  %396 = load i32, i32* %395, align 4
  %397 = icmp ne i32 %393, %396
  br i1 %397, label %406, label %398

398:                                              ; preds = %392
  %399 = load i32*, i32** %4, align 8
  %400 = load i32, i32* %7, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  %403 = load i32, i32* %402, align 4
  %404 = and i32 %403, 128
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %407, label %406

406:                                              ; preds = %398, %392
  store i32 254, i32* %3, align 4
  br label %439

407:                                              ; preds = %398
  %408 = load i32*, i32** %4, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 1
  %410 = load i32, i32* %409, align 4
  %411 = and i32 %410, 8
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %407
  store i32 64, i32* %9, align 4
  br label %414

414:                                              ; preds = %413, %407
  %415 = load i32*, i32** %4, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 1
  %417 = load i32, i32* %416, align 4
  %418 = or i32 %417, 152
  switch i32 %418, label %438 [
    i32 152, label %419
    i32 153, label %420
    i32 154, label %428
    i32 155, label %436
    i32 156, label %437
  ]

419:                                              ; preds = %414
  store i32 0, i32* %3, align 4
  br label %439

420:                                              ; preds = %414
  %421 = load i32*, i32** %5, align 8
  %422 = icmp ne i32* %421, null
  br i1 %422, label %423, label %425

423:                                              ; preds = %420
  %424 = load i32*, i32** %5, align 8
  store i32 2, i32* %424, align 4
  br label %425

425:                                              ; preds = %423, %420
  %426 = load i32, i32* %9, align 4
  %427 = or i32 %426, 1
  store i32 %427, i32* %3, align 4
  br label %439

428:                                              ; preds = %414
  %429 = load i32*, i32** %5, align 8
  %430 = icmp ne i32* %429, null
  br i1 %430, label %431, label %433

431:                                              ; preds = %428
  %432 = load i32*, i32** %5, align 8
  store i32 4, i32* %432, align 4
  br label %433

433:                                              ; preds = %431, %428
  %434 = load i32, i32* %9, align 4
  %435 = or i32 %434, 2
  store i32 %435, i32* %3, align 4
  br label %439

436:                                              ; preds = %414
  store i32 255, i32* %3, align 4
  br label %439

437:                                              ; preds = %414
  store i32 253, i32* %3, align 4
  br label %439

438:                                              ; preds = %414
  store i32 254, i32* %3, align 4
  br label %439

439:                                              ; preds = %438, %437, %436, %433, %425, %419, %406, %366, %364, %349, %335, %331, %307, %290, %210, %185, %176, %135, %82, %75, %38, %21
  %440 = load i32, i32* %3, align 4
  ret i32 %440
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
