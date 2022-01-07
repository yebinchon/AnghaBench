; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_convert420.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_convert420.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Empty: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32)* @convert420 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert420(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %570 [
    i32 132, label %20
    i32 131, label %157
    i32 134, label %291
    i32 133, label %291
    i32 129, label %484
    i32 128, label %484
    i32 130, label %523
    i32 135, label %561
  ]

20:                                               ; preds = %5
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %7, align 8
  %23 = load i8, i8* %21, align 1
  %24 = zext i8 %23 to i32
  %25 = sub nsw i32 %24, 16
  %26 = mul nsw i32 %25, 76310
  store i32 %26, i32* %12, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = sub nsw i32 %29, 16
  %31 = mul nsw i32 %30, 76310
  store i32 %31, i32* %18, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 0, %35
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 124
  %41 = shl i32 %40, 1
  store i32 %41, i32* %15, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 0, %44
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 224
  %50 = ashr i32 %49, 4
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = sub i64 0, %54
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 3
  %60 = shl i32 %59, 6
  %61 = or i32 %50, %60
  store i32 %61, i32* %16, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, 31
  %70 = shl i32 %69, 3
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %15, align 4
  %72 = mul nsw i32 -53294, %71
  %73 = load i32, i32* %16, align 4
  %74 = mul nsw i32 104635, %73
  %75 = sub nsw i32 %72, %74
  %76 = load i32, i32* %17, align 4
  %77 = mul nsw i32 157929, %76
  %78 = add nsw i32 %75, %77
  %79 = sdiv i32 %78, 5756495
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %15, align 4
  %81 = mul nsw i32 157968, %80
  %82 = load i32, i32* %16, align 4
  %83 = mul nsw i32 132278, %82
  %84 = sub nsw i32 %81, %83
  %85 = load i32, i32* %17, align 4
  %86 = mul nsw i32 25690, %85
  %87 = sub nsw i32 %84, %86
  %88 = sdiv i32 %87, 5366159
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = mul nsw i32 104635, %89
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %13, align 4
  %92 = mul nsw i32 -25690, %91
  %93 = load i32, i32* %14, align 4
  %94 = mul nsw i32 53294, %93
  %95 = sub nsw i32 %92, %94
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %13, align 4
  %97 = mul nsw i32 132278, %96
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %98, %99
  %101 = call i32 @LIMIT(i32 %100)
  %102 = and i32 %101, 248
  %103 = shl i32 %102, 2
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %104, %105
  %107 = call i32 @LIMIT(i32 %106)
  %108 = ashr i32 %107, 3
  %109 = or i32 %103, %108
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %8, align 8
  store i8 %110, i8* %111, align 1
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %113, %114
  %116 = call i32 @LIMIT(i32 %115)
  %117 = and i32 %116, 248
  %118 = ashr i32 %117, 1
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %119, %120
  %122 = call i32 @LIMIT(i32 %121)
  %123 = ashr i32 %122, 6
  %124 = or i32 %118, %123
  %125 = trunc i32 %124 to i8
  %126 = load i8*, i8** %8, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %8, align 8
  store i8 %125, i8* %126, align 1
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %18, align 4
  %130 = add nsw i32 %128, %129
  %131 = call i32 @LIMIT(i32 %130)
  %132 = and i32 %131, 248
  %133 = shl i32 %132, 2
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %18, align 4
  %136 = add nsw i32 %134, %135
  %137 = call i32 @LIMIT(i32 %136)
  %138 = ashr i32 %137, 3
  %139 = or i32 %133, %138
  %140 = trunc i32 %139 to i8
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %8, align 8
  store i8 %140, i8* %141, align 1
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %18, align 4
  %145 = add nsw i32 %143, %144
  %146 = call i32 @LIMIT(i32 %145)
  %147 = and i32 %146, 248
  %148 = ashr i32 %147, 1
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %18, align 4
  %151 = add nsw i32 %149, %150
  %152 = call i32 @LIMIT(i32 %151)
  %153 = ashr i32 %152, 6
  %154 = or i32 %148, %153
  %155 = trunc i32 %154 to i8
  %156 = load i8*, i8** %8, align 8
  store i8 %155, i8* %156, align 1
  store i32 4, i32* %6, align 4
  br label %573

157:                                              ; preds = %5
  %158 = load i8*, i8** %7, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %7, align 8
  %160 = load i8, i8* %158, align 1
  %161 = zext i8 %160 to i32
  %162 = sub nsw i32 %161, 16
  %163 = mul nsw i32 %162, 76310
  store i32 %163, i32* %12, align 4
  %164 = load i8*, i8** %7, align 8
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = sub nsw i32 %166, 16
  %168 = mul nsw i32 %167, 76310
  store i32 %168, i32* %18, align 4
  %169 = load i8*, i8** %8, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = sub i64 0, %172
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = and i32 %176, 248
  store i32 %177, i32* %15, align 4
  %178 = load i8*, i8** %8, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = sub i64 0, %180
  %182 = getelementptr inbounds i8, i8* %178, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = and i32 %184, 224
  %186 = ashr i32 %185, 3
  %187 = load i8*, i8** %8, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 1
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = sub i64 0, %190
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = and i32 %194, 7
  %196 = shl i32 %195, 5
  %197 = or i32 %186, %196
  store i32 %197, i32* %16, align 4
  %198 = load i8*, i8** %8, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = sub i64 0, %200
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = and i32 %204, 31
  %206 = shl i32 %205, 3
  store i32 %206, i32* %17, align 4
  %207 = load i32, i32* %15, align 4
  %208 = mul nsw i32 -53294, %207
  %209 = load i32, i32* %16, align 4
  %210 = mul nsw i32 104635, %209
  %211 = sub nsw i32 %208, %210
  %212 = load i32, i32* %17, align 4
  %213 = mul nsw i32 157929, %212
  %214 = add nsw i32 %211, %213
  %215 = sdiv i32 %214, 5756495
  store i32 %215, i32* %13, align 4
  %216 = load i32, i32* %15, align 4
  %217 = mul nsw i32 157968, %216
  %218 = load i32, i32* %16, align 4
  %219 = mul nsw i32 132278, %218
  %220 = sub nsw i32 %217, %219
  %221 = load i32, i32* %17, align 4
  %222 = mul nsw i32 25690, %221
  %223 = sub nsw i32 %220, %222
  %224 = sdiv i32 %223, 5366159
  store i32 %224, i32* %14, align 4
  %225 = load i32, i32* %14, align 4
  %226 = mul nsw i32 104635, %225
  store i32 %226, i32* %15, align 4
  %227 = load i32, i32* %13, align 4
  %228 = mul nsw i32 -25690, %227
  %229 = load i32, i32* %14, align 4
  %230 = mul nsw i32 53294, %229
  %231 = sub nsw i32 %228, %230
  store i32 %231, i32* %16, align 4
  %232 = load i32, i32* %13, align 4
  %233 = mul nsw i32 132278, %232
  store i32 %233, i32* %17, align 4
  %234 = load i32, i32* %16, align 4
  %235 = load i32, i32* %12, align 4
  %236 = add nsw i32 %234, %235
  %237 = call i32 @LIMIT(i32 %236)
  %238 = and i32 %237, 252
  %239 = shl i32 %238, 3
  %240 = load i32, i32* %17, align 4
  %241 = load i32, i32* %12, align 4
  %242 = add nsw i32 %240, %241
  %243 = call i32 @LIMIT(i32 %242)
  %244 = ashr i32 %243, 3
  %245 = or i32 %239, %244
  %246 = trunc i32 %245 to i8
  %247 = load i8*, i8** %8, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %8, align 8
  store i8 %246, i8* %247, align 1
  %249 = load i32, i32* %15, align 4
  %250 = load i32, i32* %12, align 4
  %251 = add nsw i32 %249, %250
  %252 = call i32 @LIMIT(i32 %251)
  %253 = and i32 %252, 248
  %254 = load i32, i32* %16, align 4
  %255 = load i32, i32* %12, align 4
  %256 = add nsw i32 %254, %255
  %257 = call i32 @LIMIT(i32 %256)
  %258 = ashr i32 %257, 5
  %259 = or i32 %253, %258
  %260 = trunc i32 %259 to i8
  %261 = load i8*, i8** %8, align 8
  %262 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %262, i8** %8, align 8
  store i8 %260, i8* %261, align 1
  %263 = load i32, i32* %16, align 4
  %264 = load i32, i32* %18, align 4
  %265 = add nsw i32 %263, %264
  %266 = call i32 @LIMIT(i32 %265)
  %267 = and i32 %266, 252
  %268 = shl i32 %267, 3
  %269 = load i32, i32* %17, align 4
  %270 = load i32, i32* %18, align 4
  %271 = add nsw i32 %269, %270
  %272 = call i32 @LIMIT(i32 %271)
  %273 = ashr i32 %272, 3
  %274 = or i32 %268, %273
  %275 = trunc i32 %274 to i8
  %276 = load i8*, i8** %8, align 8
  %277 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %277, i8** %8, align 8
  store i8 %275, i8* %276, align 1
  %278 = load i32, i32* %15, align 4
  %279 = load i32, i32* %18, align 4
  %280 = add nsw i32 %278, %279
  %281 = call i32 @LIMIT(i32 %280)
  %282 = and i32 %281, 248
  %283 = load i32, i32* %16, align 4
  %284 = load i32, i32* %18, align 4
  %285 = add nsw i32 %283, %284
  %286 = call i32 @LIMIT(i32 %285)
  %287 = ashr i32 %286, 5
  %288 = or i32 %282, %287
  %289 = trunc i32 %288 to i8
  %290 = load i8*, i8** %8, align 8
  store i8 %289, i8* %290, align 1
  store i32 4, i32* %6, align 4
  br label %573

291:                                              ; preds = %5, %5
  %292 = load i8*, i8** %7, align 8
  %293 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %293, i8** %7, align 8
  %294 = load i8, i8* %292, align 1
  %295 = zext i8 %294 to i32
  %296 = sub nsw i32 %295, 16
  %297 = mul nsw i32 %296, 76310
  store i32 %297, i32* %12, align 4
  %298 = load i8*, i8** %7, align 8
  %299 = load i8, i8* %298, align 1
  %300 = zext i8 %299 to i32
  %301 = sub nsw i32 %300, 16
  %302 = mul nsw i32 %301, 76310
  store i32 %302, i32* %18, align 4
  %303 = load i32, i32* %11, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %329

305:                                              ; preds = %291
  %306 = load i8*, i8** %8, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 2
  %308 = load i32, i32* %10, align 4
  %309 = sext i32 %308 to i64
  %310 = sub i64 0, %309
  %311 = getelementptr inbounds i8, i8* %307, i64 %310
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i32
  store i32 %313, i32* %15, align 4
  %314 = load i8*, i8** %8, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 1
  %316 = load i32, i32* %10, align 4
  %317 = sext i32 %316 to i64
  %318 = sub i64 0, %317
  %319 = getelementptr inbounds i8, i8* %315, i64 %318
  %320 = load i8, i8* %319, align 1
  %321 = zext i8 %320 to i32
  store i32 %321, i32* %16, align 4
  %322 = load i8*, i8** %8, align 8
  %323 = load i32, i32* %10, align 4
  %324 = sext i32 %323 to i64
  %325 = sub i64 0, %324
  %326 = getelementptr inbounds i8, i8* %322, i64 %325
  %327 = load i8, i8* %326, align 1
  %328 = zext i8 %327 to i32
  store i32 %328, i32* %17, align 4
  br label %353

329:                                              ; preds = %291
  %330 = load i8*, i8** %8, align 8
  %331 = load i32, i32* %10, align 4
  %332 = sext i32 %331 to i64
  %333 = sub i64 0, %332
  %334 = getelementptr inbounds i8, i8* %330, i64 %333
  %335 = load i8, i8* %334, align 1
  %336 = zext i8 %335 to i32
  store i32 %336, i32* %15, align 4
  %337 = load i8*, i8** %8, align 8
  %338 = getelementptr inbounds i8, i8* %337, i64 1
  %339 = load i32, i32* %10, align 4
  %340 = sext i32 %339 to i64
  %341 = sub i64 0, %340
  %342 = getelementptr inbounds i8, i8* %338, i64 %341
  %343 = load i8, i8* %342, align 1
  %344 = zext i8 %343 to i32
  store i32 %344, i32* %16, align 4
  %345 = load i8*, i8** %8, align 8
  %346 = getelementptr inbounds i8, i8* %345, i64 2
  %347 = load i32, i32* %10, align 4
  %348 = sext i32 %347 to i64
  %349 = sub i64 0, %348
  %350 = getelementptr inbounds i8, i8* %346, i64 %349
  %351 = load i8, i8* %350, align 1
  %352 = zext i8 %351 to i32
  store i32 %352, i32* %17, align 4
  br label %353

353:                                              ; preds = %329, %305
  %354 = load i32, i32* %15, align 4
  %355 = mul nsw i32 -53294, %354
  %356 = load i32, i32* %16, align 4
  %357 = mul nsw i32 104635, %356
  %358 = sub nsw i32 %355, %357
  %359 = load i32, i32* %17, align 4
  %360 = mul nsw i32 157929, %359
  %361 = add nsw i32 %358, %360
  %362 = sdiv i32 %361, 5756495
  store i32 %362, i32* %13, align 4
  %363 = load i32, i32* %15, align 4
  %364 = mul nsw i32 157968, %363
  %365 = load i32, i32* %16, align 4
  %366 = mul nsw i32 132278, %365
  %367 = sub nsw i32 %364, %366
  %368 = load i32, i32* %17, align 4
  %369 = mul nsw i32 25690, %368
  %370 = sub nsw i32 %367, %369
  %371 = sdiv i32 %370, 5366159
  store i32 %371, i32* %14, align 4
  %372 = load i32, i32* %14, align 4
  %373 = mul nsw i32 104635, %372
  store i32 %373, i32* %15, align 4
  %374 = load i32, i32* %13, align 4
  %375 = mul nsw i32 -25690, %374
  %376 = load i32, i32* %14, align 4
  %377 = mul nsw i32 -53294, %376
  %378 = add nsw i32 %375, %377
  store i32 %378, i32* %16, align 4
  %379 = load i32, i32* %13, align 4
  %380 = mul nsw i32 132278, %379
  store i32 %380, i32* %17, align 4
  %381 = load i32, i32* %11, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %431

383:                                              ; preds = %353
  %384 = load i32, i32* %17, align 4
  %385 = load i32, i32* %12, align 4
  %386 = add nsw i32 %384, %385
  %387 = call i32 @LIMIT(i32 %386)
  %388 = trunc i32 %387 to i8
  %389 = load i8*, i8** %8, align 8
  %390 = getelementptr inbounds i8, i8* %389, i32 1
  store i8* %390, i8** %8, align 8
  store i8 %388, i8* %389, align 1
  %391 = load i32, i32* %16, align 4
  %392 = load i32, i32* %12, align 4
  %393 = add nsw i32 %391, %392
  %394 = call i32 @LIMIT(i32 %393)
  %395 = trunc i32 %394 to i8
  %396 = load i8*, i8** %8, align 8
  %397 = getelementptr inbounds i8, i8* %396, i32 1
  store i8* %397, i8** %8, align 8
  store i8 %395, i8* %396, align 1
  %398 = load i32, i32* %15, align 4
  %399 = load i32, i32* %12, align 4
  %400 = add nsw i32 %398, %399
  %401 = call i32 @LIMIT(i32 %400)
  %402 = trunc i32 %401 to i8
  %403 = load i8*, i8** %8, align 8
  %404 = getelementptr inbounds i8, i8* %403, i32 1
  store i8* %404, i8** %8, align 8
  store i8 %402, i8* %403, align 1
  %405 = load i32, i32* %9, align 4
  %406 = icmp eq i32 %405, 133
  br i1 %406, label %407, label %410

407:                                              ; preds = %383
  %408 = load i8*, i8** %8, align 8
  %409 = getelementptr inbounds i8, i8* %408, i32 1
  store i8* %409, i8** %8, align 8
  br label %410

410:                                              ; preds = %407, %383
  %411 = load i32, i32* %17, align 4
  %412 = load i32, i32* %18, align 4
  %413 = add nsw i32 %411, %412
  %414 = call i32 @LIMIT(i32 %413)
  %415 = trunc i32 %414 to i8
  %416 = load i8*, i8** %8, align 8
  %417 = getelementptr inbounds i8, i8* %416, i32 1
  store i8* %417, i8** %8, align 8
  store i8 %415, i8* %416, align 1
  %418 = load i32, i32* %16, align 4
  %419 = load i32, i32* %18, align 4
  %420 = add nsw i32 %418, %419
  %421 = call i32 @LIMIT(i32 %420)
  %422 = trunc i32 %421 to i8
  %423 = load i8*, i8** %8, align 8
  %424 = getelementptr inbounds i8, i8* %423, i32 1
  store i8* %424, i8** %8, align 8
  store i8 %422, i8* %423, align 1
  %425 = load i32, i32* %15, align 4
  %426 = load i32, i32* %18, align 4
  %427 = add nsw i32 %425, %426
  %428 = call i32 @LIMIT(i32 %427)
  %429 = trunc i32 %428 to i8
  %430 = load i8*, i8** %8, align 8
  store i8 %429, i8* %430, align 1
  br label %479

431:                                              ; preds = %353
  %432 = load i32, i32* %15, align 4
  %433 = load i32, i32* %12, align 4
  %434 = add nsw i32 %432, %433
  %435 = call i32 @LIMIT(i32 %434)
  %436 = trunc i32 %435 to i8
  %437 = load i8*, i8** %8, align 8
  %438 = getelementptr inbounds i8, i8* %437, i32 1
  store i8* %438, i8** %8, align 8
  store i8 %436, i8* %437, align 1
  %439 = load i32, i32* %16, align 4
  %440 = load i32, i32* %12, align 4
  %441 = add nsw i32 %439, %440
  %442 = call i32 @LIMIT(i32 %441)
  %443 = trunc i32 %442 to i8
  %444 = load i8*, i8** %8, align 8
  %445 = getelementptr inbounds i8, i8* %444, i32 1
  store i8* %445, i8** %8, align 8
  store i8 %443, i8* %444, align 1
  %446 = load i32, i32* %17, align 4
  %447 = load i32, i32* %12, align 4
  %448 = add nsw i32 %446, %447
  %449 = call i32 @LIMIT(i32 %448)
  %450 = trunc i32 %449 to i8
  %451 = load i8*, i8** %8, align 8
  %452 = getelementptr inbounds i8, i8* %451, i32 1
  store i8* %452, i8** %8, align 8
  store i8 %450, i8* %451, align 1
  %453 = load i32, i32* %9, align 4
  %454 = icmp eq i32 %453, 133
  br i1 %454, label %455, label %458

455:                                              ; preds = %431
  %456 = load i8*, i8** %8, align 8
  %457 = getelementptr inbounds i8, i8* %456, i32 1
  store i8* %457, i8** %8, align 8
  br label %458

458:                                              ; preds = %455, %431
  %459 = load i32, i32* %15, align 4
  %460 = load i32, i32* %18, align 4
  %461 = add nsw i32 %459, %460
  %462 = call i32 @LIMIT(i32 %461)
  %463 = trunc i32 %462 to i8
  %464 = load i8*, i8** %8, align 8
  %465 = getelementptr inbounds i8, i8* %464, i32 1
  store i8* %465, i8** %8, align 8
  store i8 %463, i8* %464, align 1
  %466 = load i32, i32* %16, align 4
  %467 = load i32, i32* %18, align 4
  %468 = add nsw i32 %466, %467
  %469 = call i32 @LIMIT(i32 %468)
  %470 = trunc i32 %469 to i8
  %471 = load i8*, i8** %8, align 8
  %472 = getelementptr inbounds i8, i8* %471, i32 1
  store i8* %472, i8** %8, align 8
  store i8 %470, i8* %471, align 1
  %473 = load i32, i32* %17, align 4
  %474 = load i32, i32* %18, align 4
  %475 = add nsw i32 %473, %474
  %476 = call i32 @LIMIT(i32 %475)
  %477 = trunc i32 %476 to i8
  %478 = load i8*, i8** %8, align 8
  store i8 %477, i8* %478, align 1
  br label %479

479:                                              ; preds = %458, %410
  %480 = load i32, i32* %9, align 4
  %481 = icmp eq i32 %480, 133
  br i1 %481, label %482, label %483

482:                                              ; preds = %479
  store i32 8, i32* %6, align 4
  br label %573

483:                                              ; preds = %479
  store i32 6, i32* %6, align 4
  br label %573

484:                                              ; preds = %5, %5
  %485 = load i8*, i8** %7, align 8
  %486 = getelementptr inbounds i8, i8* %485, i32 1
  store i8* %486, i8** %7, align 8
  %487 = load i8, i8* %485, align 1
  %488 = zext i8 %487 to i32
  store i32 %488, i32* %12, align 4
  %489 = load i8*, i8** %8, align 8
  %490 = getelementptr inbounds i8, i8* %489, i64 1
  %491 = load i32, i32* %10, align 4
  %492 = sext i32 %491 to i64
  %493 = sub i64 0, %492
  %494 = getelementptr inbounds i8, i8* %490, i64 %493
  %495 = load i8, i8* %494, align 1
  %496 = zext i8 %495 to i32
  store i32 %496, i32* %13, align 4
  %497 = load i8*, i8** %7, align 8
  %498 = load i8, i8* %497, align 1
  %499 = zext i8 %498 to i32
  store i32 %499, i32* %18, align 4
  %500 = load i8*, i8** %8, align 8
  %501 = getelementptr inbounds i8, i8* %500, i64 3
  %502 = load i32, i32* %10, align 4
  %503 = sext i32 %502 to i64
  %504 = sub i64 0, %503
  %505 = getelementptr inbounds i8, i8* %501, i64 %504
  %506 = load i8, i8* %505, align 1
  %507 = zext i8 %506 to i32
  store i32 %507, i32* %14, align 4
  %508 = load i32, i32* %12, align 4
  %509 = trunc i32 %508 to i8
  %510 = load i8*, i8** %8, align 8
  %511 = getelementptr inbounds i8, i8* %510, i32 1
  store i8* %511, i8** %8, align 8
  store i8 %509, i8* %510, align 1
  %512 = load i32, i32* %13, align 4
  %513 = trunc i32 %512 to i8
  %514 = load i8*, i8** %8, align 8
  %515 = getelementptr inbounds i8, i8* %514, i32 1
  store i8* %515, i8** %8, align 8
  store i8 %513, i8* %514, align 1
  %516 = load i32, i32* %18, align 4
  %517 = trunc i32 %516 to i8
  %518 = load i8*, i8** %8, align 8
  %519 = getelementptr inbounds i8, i8* %518, i32 1
  store i8* %519, i8** %8, align 8
  store i8 %517, i8* %518, align 1
  %520 = load i32, i32* %14, align 4
  %521 = trunc i32 %520 to i8
  %522 = load i8*, i8** %8, align 8
  store i8 %521, i8* %522, align 1
  store i32 4, i32* %6, align 4
  br label %573

523:                                              ; preds = %5
  %524 = load i8*, i8** %8, align 8
  %525 = load i32, i32* %10, align 4
  %526 = sext i32 %525 to i64
  %527 = sub i64 0, %526
  %528 = getelementptr inbounds i8, i8* %524, i64 %527
  %529 = load i8, i8* %528, align 1
  %530 = zext i8 %529 to i32
  store i32 %530, i32* %13, align 4
  %531 = load i8*, i8** %7, align 8
  %532 = getelementptr inbounds i8, i8* %531, i32 1
  store i8* %532, i8** %7, align 8
  %533 = load i8, i8* %531, align 1
  %534 = zext i8 %533 to i32
  store i32 %534, i32* %12, align 4
  %535 = load i8*, i8** %8, align 8
  %536 = getelementptr inbounds i8, i8* %535, i64 2
  %537 = load i32, i32* %10, align 4
  %538 = sext i32 %537 to i64
  %539 = sub i64 0, %538
  %540 = getelementptr inbounds i8, i8* %536, i64 %539
  %541 = load i8, i8* %540, align 1
  %542 = zext i8 %541 to i32
  store i32 %542, i32* %14, align 4
  %543 = load i8*, i8** %7, align 8
  %544 = load i8, i8* %543, align 1
  %545 = zext i8 %544 to i32
  store i32 %545, i32* %18, align 4
  %546 = load i32, i32* %13, align 4
  %547 = trunc i32 %546 to i8
  %548 = load i8*, i8** %8, align 8
  %549 = getelementptr inbounds i8, i8* %548, i32 1
  store i8* %549, i8** %8, align 8
  store i8 %547, i8* %548, align 1
  %550 = load i32, i32* %12, align 4
  %551 = trunc i32 %550 to i8
  %552 = load i8*, i8** %8, align 8
  %553 = getelementptr inbounds i8, i8* %552, i32 1
  store i8* %553, i8** %8, align 8
  store i8 %551, i8* %552, align 1
  %554 = load i32, i32* %14, align 4
  %555 = trunc i32 %554 to i8
  %556 = load i8*, i8** %8, align 8
  %557 = getelementptr inbounds i8, i8* %556, i32 1
  store i8* %557, i8** %8, align 8
  store i8 %555, i8* %556, align 1
  %558 = load i32, i32* %18, align 4
  %559 = trunc i32 %558 to i8
  %560 = load i8*, i8** %8, align 8
  store i8 %559, i8* %560, align 1
  store i32 4, i32* %6, align 4
  br label %573

561:                                              ; preds = %5
  %562 = load i8*, i8** %7, align 8
  %563 = getelementptr inbounds i8, i8* %562, i32 1
  store i8* %563, i8** %7, align 8
  %564 = load i8, i8* %562, align 1
  %565 = load i8*, i8** %8, align 8
  %566 = getelementptr inbounds i8, i8* %565, i32 1
  store i8* %566, i8** %8, align 8
  store i8 %564, i8* %565, align 1
  %567 = load i8*, i8** %7, align 8
  %568 = load i8, i8* %567, align 1
  %569 = load i8*, i8** %8, align 8
  store i8 %568, i8* %569, align 1
  store i32 2, i32* %6, align 4
  br label %573

570:                                              ; preds = %5
  %571 = load i32, i32* %9, align 4
  %572 = call i32 @DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %571)
  store i32 0, i32* %6, align 4
  br label %573

573:                                              ; preds = %570, %561, %523, %484, %483, %482, %157, %20
  %574 = load i32, i32* %6, align 4
  ret i32 %574
}

declare dso_local i32 @LIMIT(i32) #1

declare dso_local i32 @DBG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
