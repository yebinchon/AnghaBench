; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_yuvconvert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_yuvconvert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Empty: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32)* @yuvconvert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yuvconvert(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
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
  switch i32 %19, label %77 [
    i32 132, label %20
    i32 131, label %20
    i32 134, label %20
    i32 133, label %20
  ]

20:                                               ; preds = %5, %5, %5, %5
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %7, align 8
  %26 = load i8, i8* %24, align 1
  %27 = zext i8 %26 to i32
  %28 = sub nsw i32 %27, 128
  store i32 %28, i32* %13, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %7, align 8
  %31 = load i8, i8* %29, align 1
  %32 = zext i8 %31 to i32
  %33 = sub nsw i32 %32, 16
  %34 = mul nsw i32 %33, 76310
  store i32 %34, i32* %12, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %7, align 8
  %37 = load i8, i8* %35, align 1
  %38 = zext i8 %37 to i32
  %39 = sub nsw i32 %38, 128
  store i32 %39, i32* %14, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = sub nsw i32 %42, 16
  %44 = mul nsw i32 %43, 76310
  store i32 %44, i32* %18, align 4
  br label %67

45:                                               ; preds = %20
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %7, align 8
  %48 = load i8, i8* %46, align 1
  %49 = zext i8 %48 to i32
  %50 = sub nsw i32 %49, 16
  %51 = mul nsw i32 %50, 76310
  store i32 %51, i32* %12, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %7, align 8
  %54 = load i8, i8* %52, align 1
  %55 = zext i8 %54 to i32
  %56 = sub nsw i32 %55, 128
  store i32 %56, i32* %13, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  %59 = load i8, i8* %57, align 1
  %60 = zext i8 %59 to i32
  %61 = sub nsw i32 %60, 16
  %62 = mul nsw i32 %61, 76310
  store i32 %62, i32* %18, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = sub nsw i32 %65, 128
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %45, %23
  %68 = load i32, i32* %14, align 4
  %69 = mul nsw i32 104635, %68
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %13, align 4
  %71 = mul nsw i32 -25690, %70
  %72 = load i32, i32* %14, align 4
  %73 = mul nsw i32 -53294, %72
  %74 = add nsw i32 %71, %73
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %13, align 4
  %76 = mul nsw i32 132278, %75
  store i32 %76, i32* %17, align 4
  br label %93

77:                                               ; preds = %5
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  %80 = load i8, i8* %78, align 1
  %81 = zext i8 %80 to i32
  store i32 %81, i32* %12, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %7, align 8
  %84 = load i8, i8* %82, align 1
  %85 = zext i8 %84 to i32
  store i32 %85, i32* %13, align 4
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %7, align 8
  %88 = load i8, i8* %86, align 1
  %89 = zext i8 %88 to i32
  store i32 %89, i32* %18, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  store i32 %92, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %93

93:                                               ; preds = %77, %67
  %94 = load i32, i32* %9, align 4
  switch i32 %94, label %433 [
    i32 132, label %95
    i32 131, label %155
    i32 134, label %213
    i32 133, label %301
    i32 135, label %393
    i32 129, label %401
    i32 128, label %401
    i32 130, label %417
  ]

95:                                               ; preds = %93
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %96, %97
  %99 = call i32 @LIMIT(i32 %98)
  %100 = and i32 %99, 248
  %101 = shl i32 %100, 2
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %102, %103
  %105 = call i32 @LIMIT(i32 %104)
  %106 = ashr i32 %105, 3
  %107 = or i32 %101, %106
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %8, align 8
  store i8 %108, i8* %109, align 1
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %111, %112
  %114 = call i32 @LIMIT(i32 %113)
  %115 = and i32 %114, 248
  %116 = ashr i32 %115, 1
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %117, %118
  %120 = call i32 @LIMIT(i32 %119)
  %121 = ashr i32 %120, 6
  %122 = or i32 %116, %121
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %8, align 8
  store i8 %123, i8* %124, align 1
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %18, align 4
  %128 = add nsw i32 %126, %127
  %129 = call i32 @LIMIT(i32 %128)
  %130 = and i32 %129, 248
  %131 = shl i32 %130, 2
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %18, align 4
  %134 = add nsw i32 %132, %133
  %135 = call i32 @LIMIT(i32 %134)
  %136 = ashr i32 %135, 3
  %137 = or i32 %131, %136
  %138 = trunc i32 %137 to i8
  %139 = load i8*, i8** %8, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %8, align 8
  store i8 %138, i8* %139, align 1
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %18, align 4
  %143 = add nsw i32 %141, %142
  %144 = call i32 @LIMIT(i32 %143)
  %145 = and i32 %144, 248
  %146 = ashr i32 %145, 1
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %18, align 4
  %149 = add nsw i32 %147, %148
  %150 = call i32 @LIMIT(i32 %149)
  %151 = ashr i32 %150, 6
  %152 = or i32 %146, %151
  %153 = trunc i32 %152 to i8
  %154 = load i8*, i8** %8, align 8
  store i8 %153, i8* %154, align 1
  store i32 4, i32* %6, align 4
  br label %436

155:                                              ; preds = %93
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %156, %157
  %159 = call i32 @LIMIT(i32 %158)
  %160 = and i32 %159, 252
  %161 = shl i32 %160, 3
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %162, %163
  %165 = call i32 @LIMIT(i32 %164)
  %166 = ashr i32 %165, 3
  %167 = or i32 %161, %166
  %168 = trunc i32 %167 to i8
  %169 = load i8*, i8** %8, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %8, align 8
  store i8 %168, i8* %169, align 1
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %171, %172
  %174 = call i32 @LIMIT(i32 %173)
  %175 = and i32 %174, 248
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %176, %177
  %179 = call i32 @LIMIT(i32 %178)
  %180 = ashr i32 %179, 5
  %181 = or i32 %175, %180
  %182 = trunc i32 %181 to i8
  %183 = load i8*, i8** %8, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %8, align 8
  store i8 %182, i8* %183, align 1
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* %18, align 4
  %187 = add nsw i32 %185, %186
  %188 = call i32 @LIMIT(i32 %187)
  %189 = and i32 %188, 252
  %190 = shl i32 %189, 3
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* %18, align 4
  %193 = add nsw i32 %191, %192
  %194 = call i32 @LIMIT(i32 %193)
  %195 = ashr i32 %194, 3
  %196 = or i32 %190, %195
  %197 = trunc i32 %196 to i8
  %198 = load i8*, i8** %8, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %8, align 8
  store i8 %197, i8* %198, align 1
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* %18, align 4
  %202 = add nsw i32 %200, %201
  %203 = call i32 @LIMIT(i32 %202)
  %204 = and i32 %203, 248
  %205 = load i32, i32* %16, align 4
  %206 = load i32, i32* %18, align 4
  %207 = add nsw i32 %205, %206
  %208 = call i32 @LIMIT(i32 %207)
  %209 = ashr i32 %208, 5
  %210 = or i32 %204, %209
  %211 = trunc i32 %210 to i8
  %212 = load i8*, i8** %8, align 8
  store i8 %211, i8* %212, align 1
  store i32 4, i32* %6, align 4
  br label %436

213:                                              ; preds = %93
  %214 = load i32, i32* %11, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %258

216:                                              ; preds = %213
  %217 = load i32, i32* %17, align 4
  %218 = load i32, i32* %12, align 4
  %219 = add nsw i32 %217, %218
  %220 = call i32 @LIMIT(i32 %219)
  %221 = trunc i32 %220 to i8
  %222 = load i8*, i8** %8, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %8, align 8
  store i8 %221, i8* %222, align 1
  %224 = load i32, i32* %16, align 4
  %225 = load i32, i32* %12, align 4
  %226 = add nsw i32 %224, %225
  %227 = call i32 @LIMIT(i32 %226)
  %228 = trunc i32 %227 to i8
  %229 = load i8*, i8** %8, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %8, align 8
  store i8 %228, i8* %229, align 1
  %231 = load i32, i32* %15, align 4
  %232 = load i32, i32* %12, align 4
  %233 = add nsw i32 %231, %232
  %234 = call i32 @LIMIT(i32 %233)
  %235 = trunc i32 %234 to i8
  %236 = load i8*, i8** %8, align 8
  %237 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %237, i8** %8, align 8
  store i8 %235, i8* %236, align 1
  %238 = load i32, i32* %17, align 4
  %239 = load i32, i32* %18, align 4
  %240 = add nsw i32 %238, %239
  %241 = call i32 @LIMIT(i32 %240)
  %242 = trunc i32 %241 to i8
  %243 = load i8*, i8** %8, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %8, align 8
  store i8 %242, i8* %243, align 1
  %245 = load i32, i32* %16, align 4
  %246 = load i32, i32* %18, align 4
  %247 = add nsw i32 %245, %246
  %248 = call i32 @LIMIT(i32 %247)
  %249 = trunc i32 %248 to i8
  %250 = load i8*, i8** %8, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %251, i8** %8, align 8
  store i8 %249, i8* %250, align 1
  %252 = load i32, i32* %15, align 4
  %253 = load i32, i32* %18, align 4
  %254 = add nsw i32 %252, %253
  %255 = call i32 @LIMIT(i32 %254)
  %256 = trunc i32 %255 to i8
  %257 = load i8*, i8** %8, align 8
  store i8 %256, i8* %257, align 1
  br label %300

258:                                              ; preds = %213
  %259 = load i32, i32* %15, align 4
  %260 = load i32, i32* %12, align 4
  %261 = add nsw i32 %259, %260
  %262 = call i32 @LIMIT(i32 %261)
  %263 = trunc i32 %262 to i8
  %264 = load i8*, i8** %8, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %8, align 8
  store i8 %263, i8* %264, align 1
  %266 = load i32, i32* %16, align 4
  %267 = load i32, i32* %12, align 4
  %268 = add nsw i32 %266, %267
  %269 = call i32 @LIMIT(i32 %268)
  %270 = trunc i32 %269 to i8
  %271 = load i8*, i8** %8, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %8, align 8
  store i8 %270, i8* %271, align 1
  %273 = load i32, i32* %17, align 4
  %274 = load i32, i32* %12, align 4
  %275 = add nsw i32 %273, %274
  %276 = call i32 @LIMIT(i32 %275)
  %277 = trunc i32 %276 to i8
  %278 = load i8*, i8** %8, align 8
  %279 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %279, i8** %8, align 8
  store i8 %277, i8* %278, align 1
  %280 = load i32, i32* %15, align 4
  %281 = load i32, i32* %18, align 4
  %282 = add nsw i32 %280, %281
  %283 = call i32 @LIMIT(i32 %282)
  %284 = trunc i32 %283 to i8
  %285 = load i8*, i8** %8, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %8, align 8
  store i8 %284, i8* %285, align 1
  %287 = load i32, i32* %16, align 4
  %288 = load i32, i32* %18, align 4
  %289 = add nsw i32 %287, %288
  %290 = call i32 @LIMIT(i32 %289)
  %291 = trunc i32 %290 to i8
  %292 = load i8*, i8** %8, align 8
  %293 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %293, i8** %8, align 8
  store i8 %291, i8* %292, align 1
  %294 = load i32, i32* %17, align 4
  %295 = load i32, i32* %18, align 4
  %296 = add nsw i32 %294, %295
  %297 = call i32 @LIMIT(i32 %296)
  %298 = trunc i32 %297 to i8
  %299 = load i8*, i8** %8, align 8
  store i8 %298, i8* %299, align 1
  br label %300

300:                                              ; preds = %258, %216
  store i32 6, i32* %6, align 4
  br label %436

301:                                              ; preds = %93
  %302 = load i32, i32* %11, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %348

304:                                              ; preds = %301
  %305 = load i32, i32* %17, align 4
  %306 = load i32, i32* %12, align 4
  %307 = add nsw i32 %305, %306
  %308 = call i32 @LIMIT(i32 %307)
  %309 = trunc i32 %308 to i8
  %310 = load i8*, i8** %8, align 8
  %311 = getelementptr inbounds i8, i8* %310, i32 1
  store i8* %311, i8** %8, align 8
  store i8 %309, i8* %310, align 1
  %312 = load i32, i32* %16, align 4
  %313 = load i32, i32* %12, align 4
  %314 = add nsw i32 %312, %313
  %315 = call i32 @LIMIT(i32 %314)
  %316 = trunc i32 %315 to i8
  %317 = load i8*, i8** %8, align 8
  %318 = getelementptr inbounds i8, i8* %317, i32 1
  store i8* %318, i8** %8, align 8
  store i8 %316, i8* %317, align 1
  %319 = load i32, i32* %15, align 4
  %320 = load i32, i32* %12, align 4
  %321 = add nsw i32 %319, %320
  %322 = call i32 @LIMIT(i32 %321)
  %323 = trunc i32 %322 to i8
  %324 = load i8*, i8** %8, align 8
  %325 = getelementptr inbounds i8, i8* %324, i32 1
  store i8* %325, i8** %8, align 8
  store i8 %323, i8* %324, align 1
  %326 = load i8*, i8** %8, align 8
  %327 = getelementptr inbounds i8, i8* %326, i32 1
  store i8* %327, i8** %8, align 8
  %328 = load i32, i32* %17, align 4
  %329 = load i32, i32* %18, align 4
  %330 = add nsw i32 %328, %329
  %331 = call i32 @LIMIT(i32 %330)
  %332 = trunc i32 %331 to i8
  %333 = load i8*, i8** %8, align 8
  %334 = getelementptr inbounds i8, i8* %333, i32 1
  store i8* %334, i8** %8, align 8
  store i8 %332, i8* %333, align 1
  %335 = load i32, i32* %16, align 4
  %336 = load i32, i32* %18, align 4
  %337 = add nsw i32 %335, %336
  %338 = call i32 @LIMIT(i32 %337)
  %339 = trunc i32 %338 to i8
  %340 = load i8*, i8** %8, align 8
  %341 = getelementptr inbounds i8, i8* %340, i32 1
  store i8* %341, i8** %8, align 8
  store i8 %339, i8* %340, align 1
  %342 = load i32, i32* %15, align 4
  %343 = load i32, i32* %18, align 4
  %344 = add nsw i32 %342, %343
  %345 = call i32 @LIMIT(i32 %344)
  %346 = trunc i32 %345 to i8
  %347 = load i8*, i8** %8, align 8
  store i8 %346, i8* %347, align 1
  br label %392

348:                                              ; preds = %301
  %349 = load i32, i32* %15, align 4
  %350 = load i32, i32* %12, align 4
  %351 = add nsw i32 %349, %350
  %352 = call i32 @LIMIT(i32 %351)
  %353 = trunc i32 %352 to i8
  %354 = load i8*, i8** %8, align 8
  %355 = getelementptr inbounds i8, i8* %354, i32 1
  store i8* %355, i8** %8, align 8
  store i8 %353, i8* %354, align 1
  %356 = load i32, i32* %16, align 4
  %357 = load i32, i32* %12, align 4
  %358 = add nsw i32 %356, %357
  %359 = call i32 @LIMIT(i32 %358)
  %360 = trunc i32 %359 to i8
  %361 = load i8*, i8** %8, align 8
  %362 = getelementptr inbounds i8, i8* %361, i32 1
  store i8* %362, i8** %8, align 8
  store i8 %360, i8* %361, align 1
  %363 = load i32, i32* %17, align 4
  %364 = load i32, i32* %12, align 4
  %365 = add nsw i32 %363, %364
  %366 = call i32 @LIMIT(i32 %365)
  %367 = trunc i32 %366 to i8
  %368 = load i8*, i8** %8, align 8
  %369 = getelementptr inbounds i8, i8* %368, i32 1
  store i8* %369, i8** %8, align 8
  store i8 %367, i8* %368, align 1
  %370 = load i8*, i8** %8, align 8
  %371 = getelementptr inbounds i8, i8* %370, i32 1
  store i8* %371, i8** %8, align 8
  %372 = load i32, i32* %15, align 4
  %373 = load i32, i32* %18, align 4
  %374 = add nsw i32 %372, %373
  %375 = call i32 @LIMIT(i32 %374)
  %376 = trunc i32 %375 to i8
  %377 = load i8*, i8** %8, align 8
  %378 = getelementptr inbounds i8, i8* %377, i32 1
  store i8* %378, i8** %8, align 8
  store i8 %376, i8* %377, align 1
  %379 = load i32, i32* %16, align 4
  %380 = load i32, i32* %18, align 4
  %381 = add nsw i32 %379, %380
  %382 = call i32 @LIMIT(i32 %381)
  %383 = trunc i32 %382 to i8
  %384 = load i8*, i8** %8, align 8
  %385 = getelementptr inbounds i8, i8* %384, i32 1
  store i8* %385, i8** %8, align 8
  store i8 %383, i8* %384, align 1
  %386 = load i32, i32* %17, align 4
  %387 = load i32, i32* %18, align 4
  %388 = add nsw i32 %386, %387
  %389 = call i32 @LIMIT(i32 %388)
  %390 = trunc i32 %389 to i8
  %391 = load i8*, i8** %8, align 8
  store i8 %390, i8* %391, align 1
  br label %392

392:                                              ; preds = %348, %304
  store i32 8, i32* %6, align 4
  br label %436

393:                                              ; preds = %93
  %394 = load i32, i32* %12, align 4
  %395 = trunc i32 %394 to i8
  %396 = load i8*, i8** %8, align 8
  %397 = getelementptr inbounds i8, i8* %396, i32 1
  store i8* %397, i8** %8, align 8
  store i8 %395, i8* %396, align 1
  %398 = load i32, i32* %18, align 4
  %399 = trunc i32 %398 to i8
  %400 = load i8*, i8** %8, align 8
  store i8 %399, i8* %400, align 1
  store i32 2, i32* %6, align 4
  br label %436

401:                                              ; preds = %93, %93
  %402 = load i32, i32* %12, align 4
  %403 = trunc i32 %402 to i8
  %404 = load i8*, i8** %8, align 8
  %405 = getelementptr inbounds i8, i8* %404, i32 1
  store i8* %405, i8** %8, align 8
  store i8 %403, i8* %404, align 1
  %406 = load i32, i32* %13, align 4
  %407 = trunc i32 %406 to i8
  %408 = load i8*, i8** %8, align 8
  %409 = getelementptr inbounds i8, i8* %408, i32 1
  store i8* %409, i8** %8, align 8
  store i8 %407, i8* %408, align 1
  %410 = load i32, i32* %18, align 4
  %411 = trunc i32 %410 to i8
  %412 = load i8*, i8** %8, align 8
  %413 = getelementptr inbounds i8, i8* %412, i32 1
  store i8* %413, i8** %8, align 8
  store i8 %411, i8* %412, align 1
  %414 = load i32, i32* %14, align 4
  %415 = trunc i32 %414 to i8
  %416 = load i8*, i8** %8, align 8
  store i8 %415, i8* %416, align 1
  store i32 4, i32* %6, align 4
  br label %436

417:                                              ; preds = %93
  %418 = load i32, i32* %13, align 4
  %419 = trunc i32 %418 to i8
  %420 = load i8*, i8** %8, align 8
  %421 = getelementptr inbounds i8, i8* %420, i32 1
  store i8* %421, i8** %8, align 8
  store i8 %419, i8* %420, align 1
  %422 = load i32, i32* %12, align 4
  %423 = trunc i32 %422 to i8
  %424 = load i8*, i8** %8, align 8
  %425 = getelementptr inbounds i8, i8* %424, i32 1
  store i8* %425, i8** %8, align 8
  store i8 %423, i8* %424, align 1
  %426 = load i32, i32* %14, align 4
  %427 = trunc i32 %426 to i8
  %428 = load i8*, i8** %8, align 8
  %429 = getelementptr inbounds i8, i8* %428, i32 1
  store i8* %429, i8** %8, align 8
  store i8 %427, i8* %428, align 1
  %430 = load i32, i32* %18, align 4
  %431 = trunc i32 %430 to i8
  %432 = load i8*, i8** %8, align 8
  store i8 %431, i8* %432, align 1
  store i32 4, i32* %6, align 4
  br label %436

433:                                              ; preds = %93
  %434 = load i32, i32* %9, align 4
  %435 = call i32 @DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %434)
  store i32 0, i32* %6, align 4
  br label %436

436:                                              ; preds = %433, %417, %401, %393, %392, %300, %155, %95
  %437 = load i32, i32* %6, align 4
  ret i32 %437
}

declare dso_local i32 @LIMIT(i32) #1

declare dso_local i32 @DBG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
