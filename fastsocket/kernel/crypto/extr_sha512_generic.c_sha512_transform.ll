; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_sha512_generic.c_sha512_transform.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_sha512_generic.c_sha512_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msg_schedule = common dso_local global i32 0, align 4
@sha512_K = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32*)* @sha512_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha512_transform(i64* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  store i32* %1, i32** %4, align 8
  %17 = load i32, i32* @msg_schedule, align 4
  %18 = call i64* @get_cpu_var(i32 %17)
  store i64* %18, i64** %16, align 8
  store i32 0, i32* %15, align 4
  br label %19

19:                                               ; preds = %27, %2
  %20 = load i32, i32* %15, align 4
  %21 = icmp slt i32 %20, 16
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i32, i32* %15, align 4
  %24 = load i64*, i64** %16, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @LOAD_OP(i32 %23, i64* %24, i32* %25)
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %15, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %15, align 4
  br label %19

30:                                               ; preds = %19
  store i32 16, i32* %15, align 4
  br label %31

31:                                               ; preds = %38, %30
  %32 = load i32, i32* %15, align 4
  %33 = icmp slt i32 %32, 80
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* %15, align 4
  %36 = load i64*, i64** %16, align 8
  %37 = call i32 @BLEND_OP(i32 %35, i64* %36)
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %15, align 4
  br label %31

41:                                               ; preds = %31
  %42 = load i64*, i64** %3, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %5, align 8
  %45 = load i64*, i64** %3, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %6, align 8
  %48 = load i64*, i64** %3, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %7, align 8
  %51 = load i64*, i64** %3, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 3
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %8, align 8
  %54 = load i64*, i64** %3, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 4
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %9, align 8
  %57 = load i64*, i64** %3, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 5
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %10, align 8
  %60 = load i64*, i64** %3, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 6
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %11, align 8
  %63 = load i64*, i64** %3, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 7
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %12, align 8
  store i32 0, i32* %15, align 4
  br label %66

66:                                               ; preds = %356, %41
  %67 = load i32, i32* %15, align 4
  %68 = icmp slt i32 %67, 80
  br i1 %68, label %69, label %359

69:                                               ; preds = %66
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i64 @e1(i64 %71)
  %73 = add nsw i64 %70, %72
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i64 @Ch(i64 %74, i64 %75, i64 %76)
  %78 = add nsw i64 %73, %77
  %79 = load i64*, i64** @sha512_K, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %78, %83
  %85 = load i64*, i64** %16, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %84, %89
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %5, align 8
  %92 = call i64 @e0(i64 %91)
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i64 @Maj(i64 %93, i64 %94, i64 %95)
  %97 = add nsw i64 %92, %96
  store i64 %97, i64* %14, align 8
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* %8, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %8, align 8
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* %14, align 8
  %103 = add nsw i64 %101, %102
  store i64 %103, i64* %12, align 8
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %8, align 8
  %106 = call i64 @e1(i64 %105)
  %107 = add nsw i64 %104, %106
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* %10, align 8
  %111 = call i64 @Ch(i64 %108, i64 %109, i64 %110)
  %112 = add nsw i64 %107, %111
  %113 = load i64*, i64** @sha512_K, align 8
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %112, %118
  %120 = load i64*, i64** %16, align 8
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %120, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %119, %125
  store i64 %126, i64* %13, align 8
  %127 = load i64, i64* %12, align 8
  %128 = call i64 @e0(i64 %127)
  %129 = load i64, i64* %12, align 8
  %130 = load i64, i64* %5, align 8
  %131 = load i64, i64* %6, align 8
  %132 = call i64 @Maj(i64 %129, i64 %130, i64 %131)
  %133 = add nsw i64 %128, %132
  store i64 %133, i64* %14, align 8
  %134 = load i64, i64* %13, align 8
  %135 = load i64, i64* %7, align 8
  %136 = add nsw i64 %135, %134
  store i64 %136, i64* %7, align 8
  %137 = load i64, i64* %13, align 8
  %138 = load i64, i64* %14, align 8
  %139 = add nsw i64 %137, %138
  store i64 %139, i64* %11, align 8
  %140 = load i64, i64* %10, align 8
  %141 = load i64, i64* %7, align 8
  %142 = call i64 @e1(i64 %141)
  %143 = add nsw i64 %140, %142
  %144 = load i64, i64* %7, align 8
  %145 = load i64, i64* %8, align 8
  %146 = load i64, i64* %9, align 8
  %147 = call i64 @Ch(i64 %144, i64 %145, i64 %146)
  %148 = add nsw i64 %143, %147
  %149 = load i64*, i64** @sha512_K, align 8
  %150 = load i32, i32* %15, align 4
  %151 = add nsw i32 %150, 2
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %149, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %148, %154
  %156 = load i64*, i64** %16, align 8
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, 2
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %156, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %155, %161
  store i64 %162, i64* %13, align 8
  %163 = load i64, i64* %11, align 8
  %164 = call i64 @e0(i64 %163)
  %165 = load i64, i64* %11, align 8
  %166 = load i64, i64* %12, align 8
  %167 = load i64, i64* %5, align 8
  %168 = call i64 @Maj(i64 %165, i64 %166, i64 %167)
  %169 = add nsw i64 %164, %168
  store i64 %169, i64* %14, align 8
  %170 = load i64, i64* %13, align 8
  %171 = load i64, i64* %6, align 8
  %172 = add nsw i64 %171, %170
  store i64 %172, i64* %6, align 8
  %173 = load i64, i64* %13, align 8
  %174 = load i64, i64* %14, align 8
  %175 = add nsw i64 %173, %174
  store i64 %175, i64* %10, align 8
  %176 = load i64, i64* %9, align 8
  %177 = load i64, i64* %6, align 8
  %178 = call i64 @e1(i64 %177)
  %179 = add nsw i64 %176, %178
  %180 = load i64, i64* %6, align 8
  %181 = load i64, i64* %7, align 8
  %182 = load i64, i64* %8, align 8
  %183 = call i64 @Ch(i64 %180, i64 %181, i64 %182)
  %184 = add nsw i64 %179, %183
  %185 = load i64*, i64** @sha512_K, align 8
  %186 = load i32, i32* %15, align 4
  %187 = add nsw i32 %186, 3
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %185, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %184, %190
  %192 = load i64*, i64** %16, align 8
  %193 = load i32, i32* %15, align 4
  %194 = add nsw i32 %193, 3
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %192, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %191, %197
  store i64 %198, i64* %13, align 8
  %199 = load i64, i64* %10, align 8
  %200 = call i64 @e0(i64 %199)
  %201 = load i64, i64* %10, align 8
  %202 = load i64, i64* %11, align 8
  %203 = load i64, i64* %12, align 8
  %204 = call i64 @Maj(i64 %201, i64 %202, i64 %203)
  %205 = add nsw i64 %200, %204
  store i64 %205, i64* %14, align 8
  %206 = load i64, i64* %13, align 8
  %207 = load i64, i64* %5, align 8
  %208 = add nsw i64 %207, %206
  store i64 %208, i64* %5, align 8
  %209 = load i64, i64* %13, align 8
  %210 = load i64, i64* %14, align 8
  %211 = add nsw i64 %209, %210
  store i64 %211, i64* %9, align 8
  %212 = load i64, i64* %8, align 8
  %213 = load i64, i64* %5, align 8
  %214 = call i64 @e1(i64 %213)
  %215 = add nsw i64 %212, %214
  %216 = load i64, i64* %5, align 8
  %217 = load i64, i64* %6, align 8
  %218 = load i64, i64* %7, align 8
  %219 = call i64 @Ch(i64 %216, i64 %217, i64 %218)
  %220 = add nsw i64 %215, %219
  %221 = load i64*, i64** @sha512_K, align 8
  %222 = load i32, i32* %15, align 4
  %223 = add nsw i32 %222, 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i64, i64* %221, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %220, %226
  %228 = load i64*, i64** %16, align 8
  %229 = load i32, i32* %15, align 4
  %230 = add nsw i32 %229, 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i64, i64* %228, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %227, %233
  store i64 %234, i64* %13, align 8
  %235 = load i64, i64* %9, align 8
  %236 = call i64 @e0(i64 %235)
  %237 = load i64, i64* %9, align 8
  %238 = load i64, i64* %10, align 8
  %239 = load i64, i64* %11, align 8
  %240 = call i64 @Maj(i64 %237, i64 %238, i64 %239)
  %241 = add nsw i64 %236, %240
  store i64 %241, i64* %14, align 8
  %242 = load i64, i64* %13, align 8
  %243 = load i64, i64* %12, align 8
  %244 = add nsw i64 %243, %242
  store i64 %244, i64* %12, align 8
  %245 = load i64, i64* %13, align 8
  %246 = load i64, i64* %14, align 8
  %247 = add nsw i64 %245, %246
  store i64 %247, i64* %8, align 8
  %248 = load i64, i64* %7, align 8
  %249 = load i64, i64* %12, align 8
  %250 = call i64 @e1(i64 %249)
  %251 = add nsw i64 %248, %250
  %252 = load i64, i64* %12, align 8
  %253 = load i64, i64* %5, align 8
  %254 = load i64, i64* %6, align 8
  %255 = call i64 @Ch(i64 %252, i64 %253, i64 %254)
  %256 = add nsw i64 %251, %255
  %257 = load i64*, i64** @sha512_K, align 8
  %258 = load i32, i32* %15, align 4
  %259 = add nsw i32 %258, 5
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i64, i64* %257, i64 %260
  %262 = load i64, i64* %261, align 8
  %263 = add nsw i64 %256, %262
  %264 = load i64*, i64** %16, align 8
  %265 = load i32, i32* %15, align 4
  %266 = add nsw i32 %265, 5
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i64, i64* %264, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = add nsw i64 %263, %269
  store i64 %270, i64* %13, align 8
  %271 = load i64, i64* %8, align 8
  %272 = call i64 @e0(i64 %271)
  %273 = load i64, i64* %8, align 8
  %274 = load i64, i64* %9, align 8
  %275 = load i64, i64* %10, align 8
  %276 = call i64 @Maj(i64 %273, i64 %274, i64 %275)
  %277 = add nsw i64 %272, %276
  store i64 %277, i64* %14, align 8
  %278 = load i64, i64* %13, align 8
  %279 = load i64, i64* %11, align 8
  %280 = add nsw i64 %279, %278
  store i64 %280, i64* %11, align 8
  %281 = load i64, i64* %13, align 8
  %282 = load i64, i64* %14, align 8
  %283 = add nsw i64 %281, %282
  store i64 %283, i64* %7, align 8
  %284 = load i64, i64* %6, align 8
  %285 = load i64, i64* %11, align 8
  %286 = call i64 @e1(i64 %285)
  %287 = add nsw i64 %284, %286
  %288 = load i64, i64* %11, align 8
  %289 = load i64, i64* %12, align 8
  %290 = load i64, i64* %5, align 8
  %291 = call i64 @Ch(i64 %288, i64 %289, i64 %290)
  %292 = add nsw i64 %287, %291
  %293 = load i64*, i64** @sha512_K, align 8
  %294 = load i32, i32* %15, align 4
  %295 = add nsw i32 %294, 6
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i64, i64* %293, i64 %296
  %298 = load i64, i64* %297, align 8
  %299 = add nsw i64 %292, %298
  %300 = load i64*, i64** %16, align 8
  %301 = load i32, i32* %15, align 4
  %302 = add nsw i32 %301, 6
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i64, i64* %300, i64 %303
  %305 = load i64, i64* %304, align 8
  %306 = add nsw i64 %299, %305
  store i64 %306, i64* %13, align 8
  %307 = load i64, i64* %7, align 8
  %308 = call i64 @e0(i64 %307)
  %309 = load i64, i64* %7, align 8
  %310 = load i64, i64* %8, align 8
  %311 = load i64, i64* %9, align 8
  %312 = call i64 @Maj(i64 %309, i64 %310, i64 %311)
  %313 = add nsw i64 %308, %312
  store i64 %313, i64* %14, align 8
  %314 = load i64, i64* %13, align 8
  %315 = load i64, i64* %10, align 8
  %316 = add nsw i64 %315, %314
  store i64 %316, i64* %10, align 8
  %317 = load i64, i64* %13, align 8
  %318 = load i64, i64* %14, align 8
  %319 = add nsw i64 %317, %318
  store i64 %319, i64* %6, align 8
  %320 = load i64, i64* %5, align 8
  %321 = load i64, i64* %10, align 8
  %322 = call i64 @e1(i64 %321)
  %323 = add nsw i64 %320, %322
  %324 = load i64, i64* %10, align 8
  %325 = load i64, i64* %11, align 8
  %326 = load i64, i64* %12, align 8
  %327 = call i64 @Ch(i64 %324, i64 %325, i64 %326)
  %328 = add nsw i64 %323, %327
  %329 = load i64*, i64** @sha512_K, align 8
  %330 = load i32, i32* %15, align 4
  %331 = add nsw i32 %330, 7
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i64, i64* %329, i64 %332
  %334 = load i64, i64* %333, align 8
  %335 = add nsw i64 %328, %334
  %336 = load i64*, i64** %16, align 8
  %337 = load i32, i32* %15, align 4
  %338 = add nsw i32 %337, 7
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i64, i64* %336, i64 %339
  %341 = load i64, i64* %340, align 8
  %342 = add nsw i64 %335, %341
  store i64 %342, i64* %13, align 8
  %343 = load i64, i64* %6, align 8
  %344 = call i64 @e0(i64 %343)
  %345 = load i64, i64* %6, align 8
  %346 = load i64, i64* %7, align 8
  %347 = load i64, i64* %8, align 8
  %348 = call i64 @Maj(i64 %345, i64 %346, i64 %347)
  %349 = add nsw i64 %344, %348
  store i64 %349, i64* %14, align 8
  %350 = load i64, i64* %13, align 8
  %351 = load i64, i64* %9, align 8
  %352 = add nsw i64 %351, %350
  store i64 %352, i64* %9, align 8
  %353 = load i64, i64* %13, align 8
  %354 = load i64, i64* %14, align 8
  %355 = add nsw i64 %353, %354
  store i64 %355, i64* %5, align 8
  br label %356

356:                                              ; preds = %69
  %357 = load i32, i32* %15, align 4
  %358 = add nsw i32 %357, 8
  store i32 %358, i32* %15, align 4
  br label %66

359:                                              ; preds = %66
  %360 = load i64, i64* %5, align 8
  %361 = load i64*, i64** %3, align 8
  %362 = getelementptr inbounds i64, i64* %361, i64 0
  %363 = load i64, i64* %362, align 8
  %364 = add nsw i64 %363, %360
  store i64 %364, i64* %362, align 8
  %365 = load i64, i64* %6, align 8
  %366 = load i64*, i64** %3, align 8
  %367 = getelementptr inbounds i64, i64* %366, i64 1
  %368 = load i64, i64* %367, align 8
  %369 = add nsw i64 %368, %365
  store i64 %369, i64* %367, align 8
  %370 = load i64, i64* %7, align 8
  %371 = load i64*, i64** %3, align 8
  %372 = getelementptr inbounds i64, i64* %371, i64 2
  %373 = load i64, i64* %372, align 8
  %374 = add nsw i64 %373, %370
  store i64 %374, i64* %372, align 8
  %375 = load i64, i64* %8, align 8
  %376 = load i64*, i64** %3, align 8
  %377 = getelementptr inbounds i64, i64* %376, i64 3
  %378 = load i64, i64* %377, align 8
  %379 = add nsw i64 %378, %375
  store i64 %379, i64* %377, align 8
  %380 = load i64, i64* %9, align 8
  %381 = load i64*, i64** %3, align 8
  %382 = getelementptr inbounds i64, i64* %381, i64 4
  %383 = load i64, i64* %382, align 8
  %384 = add nsw i64 %383, %380
  store i64 %384, i64* %382, align 8
  %385 = load i64, i64* %10, align 8
  %386 = load i64*, i64** %3, align 8
  %387 = getelementptr inbounds i64, i64* %386, i64 5
  %388 = load i64, i64* %387, align 8
  %389 = add nsw i64 %388, %385
  store i64 %389, i64* %387, align 8
  %390 = load i64, i64* %11, align 8
  %391 = load i64*, i64** %3, align 8
  %392 = getelementptr inbounds i64, i64* %391, i64 6
  %393 = load i64, i64* %392, align 8
  %394 = add nsw i64 %393, %390
  store i64 %394, i64* %392, align 8
  %395 = load i64, i64* %12, align 8
  %396 = load i64*, i64** %3, align 8
  %397 = getelementptr inbounds i64, i64* %396, i64 7
  %398 = load i64, i64* %397, align 8
  %399 = add nsw i64 %398, %395
  store i64 %399, i64* %397, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  %400 = load i64*, i64** %16, align 8
  %401 = call i32 @memset(i64* %400, i32 0, i32 4)
  %402 = load i32, i32* @msg_schedule, align 4
  %403 = call i32 @put_cpu_var(i32 %402)
  ret void
}

declare dso_local i64* @get_cpu_var(i32) #1

declare dso_local i32 @LOAD_OP(i32, i64*, i32*) #1

declare dso_local i32 @BLEND_OP(i32, i64*) #1

declare dso_local i64 @e1(i64) #1

declare dso_local i64 @Ch(i64, i64, i64) #1

declare dso_local i64 @e0(i64) #1

declare dso_local i64 @Maj(i64, i64, i64) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @put_cpu_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
