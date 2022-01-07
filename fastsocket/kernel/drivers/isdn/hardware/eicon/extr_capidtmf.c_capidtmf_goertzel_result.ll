; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_capidtmf.c_capidtmf_goertzel_result.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_capidtmf.c_capidtmf_goertzel_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAPIDTMF_RECV_TOTAL_FREQUENCY_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*)* @capidtmf_goertzel_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @capidtmf_goertzel_result(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %349, %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @CAPIDTMF_RECV_TOTAL_FREQUENCY_COUNT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %352

18:                                               ; preds = %14
  %19 = load i64*, i64** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i64*, i64** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @CAPIDTMF_RECV_TOTAL_FREQUENCY_COUNT, align 4
  %27 = add nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %24, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  %31 = load i64*, i64** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = ashr i64 %35, 1
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp sge i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %18
  %40 = load i64, i64* %6, align 8
  %41 = shl i64 %40, 1
  %42 = load i64, i64* %8, align 8
  %43 = sub nsw i64 0, %42
  %44 = ashr i64 %43, 16
  %45 = mul nsw i64 %41, %44
  %46 = load i64, i64* %6, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i64, i64* %8, align 8
  %49 = sub nsw i64 0, %48
  %50 = and i64 %49, 65535
  %51 = trunc i64 %50 to i32
  %52 = mul nsw i32 %47, %51
  %53 = ashr i32 %52, 15
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %45, %54
  store i64 %55, i64* %6, align 8
  br label %75

56:                                               ; preds = %18
  %57 = load i64, i64* %6, align 8
  %58 = sub nsw i64 0, %57
  %59 = shl i64 %58, 1
  %60 = load i64, i64* %8, align 8
  %61 = sub nsw i64 0, %60
  %62 = ashr i64 %61, 16
  %63 = mul nsw i64 %59, %62
  %64 = load i64, i64* %6, align 8
  %65 = sub nsw i64 0, %64
  %66 = trunc i64 %65 to i32
  %67 = load i64, i64* %8, align 8
  %68 = sub nsw i64 0, %67
  %69 = and i64 %68, 65535
  %70 = trunc i64 %69 to i32
  %71 = mul nsw i32 %66, %70
  %72 = ashr i32 %71, 15
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %63, %73
  store i64 %74, i64* %6, align 8
  br label %75

75:                                               ; preds = %56, %39
  %76 = load i64, i64* %9, align 8
  %77 = icmp sge i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i64, i64* %9, align 8
  br label %83

80:                                               ; preds = %75
  %81 = load i64, i64* %9, align 8
  %82 = sub nsw i64 0, %81
  br label %83

83:                                               ; preds = %80, %78
  %84 = phi i64 [ %79, %78 ], [ %82, %80 ]
  store i64 %84, i64* %7, align 8
  %85 = load i64, i64* %6, align 8
  %86 = icmp sge i64 %85, 0
  br i1 %86, label %87, label %143

87:                                               ; preds = %83
  %88 = load i64, i64* %6, align 8
  %89 = and i64 %88, 65535
  %90 = trunc i64 %89 to i32
  %91 = load i64, i64* %7, align 8
  %92 = and i64 %91, 65535
  %93 = trunc i64 %92 to i32
  %94 = mul nsw i32 %90, %93
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = and i32 %95, 65535
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %10, align 8
  %98 = load i32, i32* %13, align 4
  %99 = ashr i32 %98, 16
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %11, align 8
  %101 = load i64, i64* %6, align 8
  %102 = ashr i64 %101, 16
  %103 = trunc i64 %102 to i32
  %104 = load i64, i64* %7, align 8
  %105 = and i64 %104, 65535
  %106 = trunc i64 %105 to i32
  %107 = mul nsw i32 %103, %106
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = and i32 %108, 65535
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %11, align 8
  %112 = add nsw i64 %111, %110
  store i64 %112, i64* %11, align 8
  %113 = load i32, i32* %13, align 4
  %114 = ashr i32 %113, 16
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %12, align 8
  %116 = load i64, i64* %6, align 8
  %117 = and i64 %116, 65535
  %118 = trunc i64 %117 to i32
  %119 = load i64, i64* %7, align 8
  %120 = ashr i64 %119, 16
  %121 = trunc i64 %120 to i32
  %122 = mul nsw i32 %118, %121
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  %124 = and i32 %123, 65535
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %11, align 8
  %127 = add nsw i64 %126, %125
  store i64 %127, i64* %11, align 8
  %128 = load i32, i32* %13, align 4
  %129 = ashr i32 %128, 16
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %12, align 8
  %132 = add nsw i64 %131, %130
  store i64 %132, i64* %12, align 8
  %133 = load i64, i64* %6, align 8
  %134 = ashr i64 %133, 16
  %135 = trunc i64 %134 to i32
  %136 = load i64, i64* %7, align 8
  %137 = ashr i64 %136, 16
  %138 = trunc i64 %137 to i32
  %139 = mul nsw i32 %135, %138
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %12, align 8
  %142 = add nsw i64 %141, %140
  store i64 %142, i64* %12, align 8
  br label %204

143:                                              ; preds = %83
  %144 = load i64, i64* %6, align 8
  %145 = sub nsw i64 0, %144
  store i64 %145, i64* %6, align 8
  %146 = load i64, i64* %6, align 8
  %147 = and i64 %146, 65535
  %148 = trunc i64 %147 to i32
  %149 = load i64, i64* %7, align 8
  %150 = and i64 %149, 65535
  %151 = trunc i64 %150 to i32
  %152 = mul nsw i32 %148, %151
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = and i32 %153, 65535
  %155 = sext i32 %154 to i64
  %156 = sub nsw i64 0, %155
  store i64 %156, i64* %10, align 8
  %157 = load i32, i32* %13, align 4
  %158 = ashr i32 %157, 16
  %159 = sext i32 %158 to i64
  %160 = sub nsw i64 0, %159
  store i64 %160, i64* %11, align 8
  %161 = load i64, i64* %6, align 8
  %162 = ashr i64 %161, 16
  %163 = trunc i64 %162 to i32
  %164 = load i64, i64* %7, align 8
  %165 = and i64 %164, 65535
  %166 = trunc i64 %165 to i32
  %167 = mul nsw i32 %163, %166
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* %13, align 4
  %169 = and i32 %168, 65535
  %170 = sext i32 %169 to i64
  %171 = load i64, i64* %11, align 8
  %172 = sub nsw i64 %171, %170
  store i64 %172, i64* %11, align 8
  %173 = load i32, i32* %13, align 4
  %174 = ashr i32 %173, 16
  %175 = sext i32 %174 to i64
  %176 = sub nsw i64 0, %175
  store i64 %176, i64* %12, align 8
  %177 = load i64, i64* %6, align 8
  %178 = and i64 %177, 65535
  %179 = trunc i64 %178 to i32
  %180 = load i64, i64* %7, align 8
  %181 = ashr i64 %180, 16
  %182 = trunc i64 %181 to i32
  %183 = mul nsw i32 %179, %182
  store i32 %183, i32* %13, align 4
  %184 = load i32, i32* %13, align 4
  %185 = and i32 %184, 65535
  %186 = sext i32 %185 to i64
  %187 = load i64, i64* %11, align 8
  %188 = sub nsw i64 %187, %186
  store i64 %188, i64* %11, align 8
  %189 = load i32, i32* %13, align 4
  %190 = ashr i32 %189, 16
  %191 = sext i32 %190 to i64
  %192 = load i64, i64* %12, align 8
  %193 = sub nsw i64 %192, %191
  store i64 %193, i64* %12, align 8
  %194 = load i64, i64* %6, align 8
  %195 = ashr i64 %194, 16
  %196 = trunc i64 %195 to i32
  %197 = load i64, i64* %7, align 8
  %198 = ashr i64 %197, 16
  %199 = trunc i64 %198 to i32
  %200 = mul nsw i32 %196, %199
  %201 = sext i32 %200 to i64
  %202 = load i64, i64* %12, align 8
  %203 = sub nsw i64 %202, %201
  store i64 %203, i64* %12, align 8
  br label %204

204:                                              ; preds = %143, %87
  %205 = load i64, i64* %9, align 8
  %206 = icmp slt i64 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %204
  %208 = load i64, i64* %10, align 8
  %209 = sub nsw i64 0, %208
  store i64 %209, i64* %10, align 8
  %210 = load i64, i64* %11, align 8
  %211 = sub nsw i64 0, %210
  store i64 %211, i64* %11, align 8
  %212 = load i64, i64* %12, align 8
  %213 = sub nsw i64 0, %212
  store i64 %213, i64* %12, align 8
  br label %214

214:                                              ; preds = %207, %204
  %215 = load i64, i64* %8, align 8
  %216 = icmp sge i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %214
  %218 = load i64, i64* %8, align 8
  br label %222

219:                                              ; preds = %214
  %220 = load i64, i64* %8, align 8
  %221 = sub nsw i64 0, %220
  br label %222

222:                                              ; preds = %219, %217
  %223 = phi i64 [ %218, %217 ], [ %221, %219 ]
  store i64 %223, i64* %6, align 8
  %224 = load i64, i64* %6, align 8
  %225 = and i64 %224, 65535
  %226 = trunc i64 %225 to i32
  %227 = load i64, i64* %6, align 8
  %228 = and i64 %227, 65535
  %229 = trunc i64 %228 to i32
  %230 = mul nsw i32 %226, %229
  store i32 %230, i32* %13, align 4
  %231 = load i32, i32* %13, align 4
  %232 = and i32 %231, 65535
  %233 = sext i32 %232 to i64
  %234 = load i64, i64* %10, align 8
  %235 = add nsw i64 %234, %233
  store i64 %235, i64* %10, align 8
  %236 = load i32, i32* %13, align 4
  %237 = ashr i32 %236, 16
  %238 = sext i32 %237 to i64
  %239 = load i64, i64* %11, align 8
  %240 = add nsw i64 %239, %238
  store i64 %240, i64* %11, align 8
  %241 = load i64, i64* %6, align 8
  %242 = ashr i64 %241, 16
  %243 = trunc i64 %242 to i32
  %244 = load i64, i64* %6, align 8
  %245 = and i64 %244, 65535
  %246 = trunc i64 %245 to i32
  %247 = mul nsw i32 %243, %246
  store i32 %247, i32* %13, align 4
  %248 = load i32, i32* %13, align 4
  %249 = and i32 %248, 65535
  %250 = shl i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = load i64, i64* %11, align 8
  %253 = add nsw i64 %252, %251
  store i64 %253, i64* %11, align 8
  %254 = load i32, i32* %13, align 4
  %255 = ashr i32 %254, 16
  %256 = shl i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = load i64, i64* %12, align 8
  %259 = add nsw i64 %258, %257
  store i64 %259, i64* %12, align 8
  %260 = load i64, i64* %6, align 8
  %261 = ashr i64 %260, 16
  %262 = trunc i64 %261 to i32
  %263 = load i64, i64* %6, align 8
  %264 = ashr i64 %263, 16
  %265 = trunc i64 %264 to i32
  %266 = mul nsw i32 %262, %265
  %267 = sext i32 %266 to i64
  %268 = load i64, i64* %12, align 8
  %269 = add nsw i64 %268, %267
  store i64 %269, i64* %12, align 8
  %270 = load i64, i64* %9, align 8
  %271 = icmp sge i64 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %222
  %273 = load i64, i64* %9, align 8
  br label %277

274:                                              ; preds = %222
  %275 = load i64, i64* %9, align 8
  %276 = sub nsw i64 0, %275
  br label %277

277:                                              ; preds = %274, %272
  %278 = phi i64 [ %273, %272 ], [ %276, %274 ]
  store i64 %278, i64* %6, align 8
  %279 = load i64, i64* %6, align 8
  %280 = and i64 %279, 65535
  %281 = trunc i64 %280 to i32
  %282 = load i64, i64* %6, align 8
  %283 = and i64 %282, 65535
  %284 = trunc i64 %283 to i32
  %285 = mul nsw i32 %281, %284
  store i32 %285, i32* %13, align 4
  %286 = load i32, i32* %13, align 4
  %287 = and i32 %286, 65535
  %288 = sext i32 %287 to i64
  %289 = load i64, i64* %10, align 8
  %290 = add nsw i64 %289, %288
  store i64 %290, i64* %10, align 8
  %291 = load i32, i32* %13, align 4
  %292 = ashr i32 %291, 16
  %293 = sext i32 %292 to i64
  %294 = load i64, i64* %11, align 8
  %295 = add nsw i64 %294, %293
  store i64 %295, i64* %11, align 8
  %296 = load i64, i64* %6, align 8
  %297 = ashr i64 %296, 16
  %298 = trunc i64 %297 to i32
  %299 = load i64, i64* %6, align 8
  %300 = and i64 %299, 65535
  %301 = trunc i64 %300 to i32
  %302 = mul nsw i32 %298, %301
  store i32 %302, i32* %13, align 4
  %303 = load i32, i32* %13, align 4
  %304 = and i32 %303, 65535
  %305 = shl i32 %304, 1
  %306 = sext i32 %305 to i64
  %307 = load i64, i64* %11, align 8
  %308 = add nsw i64 %307, %306
  store i64 %308, i64* %11, align 8
  %309 = load i32, i32* %13, align 4
  %310 = ashr i32 %309, 16
  %311 = shl i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = load i64, i64* %12, align 8
  %314 = add nsw i64 %313, %312
  store i64 %314, i64* %12, align 8
  %315 = load i64, i64* %6, align 8
  %316 = ashr i64 %315, 16
  %317 = trunc i64 %316 to i32
  %318 = load i64, i64* %6, align 8
  %319 = ashr i64 %318, 16
  %320 = trunc i64 %319 to i32
  %321 = mul nsw i32 %317, %320
  %322 = sext i32 %321 to i64
  %323 = load i64, i64* %12, align 8
  %324 = add nsw i64 %323, %322
  store i64 %324, i64* %12, align 8
  %325 = load i64, i64* %10, align 8
  %326 = ashr i64 %325, 16
  %327 = load i64, i64* %11, align 8
  %328 = add nsw i64 %327, %326
  store i64 %328, i64* %11, align 8
  %329 = load i64, i64* %11, align 8
  %330 = ashr i64 %329, 16
  %331 = load i64, i64* %12, align 8
  %332 = add nsw i64 %331, %330
  store i64 %332, i64* %12, align 8
  %333 = load i64, i64* %10, align 8
  %334 = and i64 %333, 65535
  %335 = load i64, i64* %11, align 8
  %336 = shl i64 %335, 16
  %337 = or i64 %334, %336
  %338 = load i64*, i64** %3, align 8
  %339 = load i32, i32* %5, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i64, i64* %338, i64 %340
  store i64 %337, i64* %341, align 8
  %342 = load i64, i64* %12, align 8
  %343 = load i64*, i64** %3, align 8
  %344 = load i32, i32* %5, align 4
  %345 = load i32, i32* @CAPIDTMF_RECV_TOTAL_FREQUENCY_COUNT, align 4
  %346 = add nsw i32 %344, %345
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i64, i64* %343, i64 %347
  store i64 %342, i64* %348, align 8
  br label %349

349:                                              ; preds = %277
  %350 = load i32, i32* %5, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %5, align 4
  br label %14

352:                                              ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
