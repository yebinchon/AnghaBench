; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_dsp_blowfish.c_dsp_bf_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_dsp_blowfish.c_dsp_bf_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsp = type { i32, i64*, i64*, i32*, i32* }

@dsp_audio_law2seven = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsp_bf_encrypt(%struct.dsp* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.dsp*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.dsp* %0, %struct.dsp** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load %struct.dsp*, %struct.dsp** %4, align 8
  %18 = getelementptr inbounds %struct.dsp, %struct.dsp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.dsp*, %struct.dsp** %4, align 8
  %21 = getelementptr inbounds %struct.dsp, %struct.dsp* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  store i64* %22, i64** %9, align 8
  %23 = load %struct.dsp*, %struct.dsp** %4, align 8
  %24 = getelementptr inbounds %struct.dsp, %struct.dsp* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %10, align 8
  %26 = load %struct.dsp*, %struct.dsp** %4, align 8
  %27 = getelementptr inbounds %struct.dsp, %struct.dsp* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %11, align 8
  %29 = load %struct.dsp*, %struct.dsp** %4, align 8
  %30 = getelementptr inbounds %struct.dsp, %struct.dsp* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %12, align 8
  br label %32

32:                                               ; preds = %56, %39, %3
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %343

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 9
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load i64*, i64** %5, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 %41, i64* %45, align 8
  %46 = load i64*, i64** %10, align 8
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %5, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** %5, align 8
  store i64 %51, i64* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %32

56:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  %57 = load i32*, i32** @dsp_audio_law2seven, align 8
  %58 = load i64*, i64** %9, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = shl i32 %63, 7
  %65 = load i32*, i32** @dsp_audio_law2seven, align 8
  %66 = load i64*, i64** %9, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %64, %70
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = shl i32 %72, 7
  %74 = load i32*, i32** @dsp_audio_law2seven, align 8
  %75 = load i64*, i64** %9, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 2
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %73, %79
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = shl i32 %81, 7
  %83 = load i32*, i32** @dsp_audio_law2seven, align 8
  %84 = load i64*, i64** %9, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 3
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %82, %88
  store i32 %89, i32* %13, align 4
  %90 = load i32*, i32** @dsp_audio_law2seven, align 8
  %91 = load i64*, i64** %9, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 4
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %16, align 8
  %97 = load i64, i64* %16, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %13, align 4
  %100 = shl i32 %99, 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %16, align 8
  %103 = lshr i64 %102, 3
  %104 = or i64 %101, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %14, align 4
  %107 = shl i32 %106, 7
  %108 = load i32*, i32** @dsp_audio_law2seven, align 8
  %109 = load i64*, i64** %9, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 5
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %107, %113
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = shl i32 %115, 7
  %117 = load i32*, i32** @dsp_audio_law2seven, align 8
  %118 = load i64*, i64** %9, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 6
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %116, %122
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = shl i32 %124, 7
  %126 = load i32*, i32** @dsp_audio_law2seven, align 8
  %127 = load i64*, i64** %9, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 7
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %125, %131
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %14, align 4
  %134 = shl i32 %133, 7
  %135 = load i32*, i32** @dsp_audio_law2seven, align 8
  %136 = load i64*, i64** %9, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 8
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %134, %140
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = shl i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = load i64*, i64** %9, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 0
  %147 = load i64, i64* %146, align 8
  %148 = and i64 %147, 1
  %149 = or i64 %144, %148
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @EROUND(i32 %151, i32 %152, i32 0)
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @EROUND(i32 %154, i32 %155, i32 1)
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @EROUND(i32 %157, i32 %158, i32 2)
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %14, align 4
  %162 = call i32 @EROUND(i32 %160, i32 %161, i32 3)
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @EROUND(i32 %163, i32 %164, i32 4)
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %14, align 4
  %168 = call i32 @EROUND(i32 %166, i32 %167, i32 5)
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %13, align 4
  %171 = call i32 @EROUND(i32 %169, i32 %170, i32 6)
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* %14, align 4
  %174 = call i32 @EROUND(i32 %172, i32 %173, i32 7)
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* %13, align 4
  %177 = call i32 @EROUND(i32 %175, i32 %176, i32 8)
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %14, align 4
  %180 = call i32 @EROUND(i32 %178, i32 %179, i32 9)
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @EROUND(i32 %181, i32 %182, i32 10)
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %14, align 4
  %186 = call i32 @EROUND(i32 %184, i32 %185, i32 11)
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* %13, align 4
  %189 = call i32 @EROUND(i32 %187, i32 %188, i32 12)
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* %14, align 4
  %192 = call i32 @EROUND(i32 %190, i32 %191, i32 13)
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %13, align 4
  %195 = call i32 @EROUND(i32 %193, i32 %194, i32 14)
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* %14, align 4
  %198 = call i32 @EROUND(i32 %196, i32 %197, i32 15)
  %199 = load i32*, i32** %11, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 16
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %13, align 4
  %203 = xor i32 %202, %201
  store i32 %203, i32* %13, align 4
  %204 = load i32*, i32** %11, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 17
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %14, align 4
  %208 = xor i32 %207, %206
  store i32 %208, i32* %14, align 4
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %13, align 4
  %211 = ashr i32 %210, 3
  %212 = xor i32 %209, %211
  %213 = load i32, i32* %13, align 4
  %214 = ashr i32 %213, 6
  %215 = xor i32 %212, %214
  %216 = load i32, i32* %13, align 4
  %217 = ashr i32 %216, 9
  %218 = xor i32 %215, %217
  %219 = load i32, i32* %13, align 4
  %220 = ashr i32 %219, 12
  %221 = xor i32 %218, %220
  %222 = load i32, i32* %13, align 4
  %223 = ashr i32 %222, 15
  %224 = xor i32 %221, %223
  %225 = load i32, i32* %13, align 4
  %226 = ashr i32 %225, 18
  %227 = xor i32 %224, %226
  %228 = load i32, i32* %13, align 4
  %229 = ashr i32 %228, 21
  %230 = xor i32 %227, %229
  %231 = load i32, i32* %13, align 4
  %232 = ashr i32 %231, 24
  %233 = xor i32 %230, %232
  %234 = load i32, i32* %13, align 4
  %235 = ashr i32 %234, 27
  %236 = xor i32 %233, %235
  %237 = load i32, i32* %13, align 4
  %238 = ashr i32 %237, 30
  %239 = xor i32 %236, %238
  %240 = load i32, i32* %14, align 4
  %241 = shl i32 %240, 2
  %242 = xor i32 %239, %241
  %243 = load i32, i32* %14, align 4
  %244 = ashr i32 %243, 1
  %245 = xor i32 %242, %244
  %246 = load i32, i32* %14, align 4
  %247 = ashr i32 %246, 4
  %248 = xor i32 %245, %247
  %249 = load i32, i32* %14, align 4
  %250 = ashr i32 %249, 7
  %251 = xor i32 %248, %250
  %252 = load i32, i32* %14, align 4
  %253 = ashr i32 %252, 10
  %254 = xor i32 %251, %253
  %255 = load i32, i32* %14, align 4
  %256 = ashr i32 %255, 13
  %257 = xor i32 %254, %256
  %258 = load i32, i32* %14, align 4
  %259 = ashr i32 %258, 16
  %260 = xor i32 %257, %259
  %261 = load i32, i32* %14, align 4
  %262 = ashr i32 %261, 19
  %263 = xor i32 %260, %262
  %264 = load i32, i32* %14, align 4
  %265 = ashr i32 %264, 22
  %266 = xor i32 %263, %265
  %267 = load i32, i32* %14, align 4
  %268 = ashr i32 %267, 25
  %269 = xor i32 %266, %268
  %270 = load i32, i32* %14, align 4
  %271 = ashr i32 %270, 28
  %272 = xor i32 %269, %271
  %273 = load i32, i32* %14, align 4
  %274 = ashr i32 %273, 31
  %275 = xor i32 %272, %274
  store i32 %275, i32* %15, align 4
  %276 = load i32, i32* %13, align 4
  %277 = ashr i32 %276, 25
  %278 = or i32 %277, 128
  %279 = sext i32 %278 to i64
  %280 = load i64*, i64** %10, align 8
  %281 = getelementptr inbounds i64, i64* %280, i64 0
  store i64 %279, i64* %281, align 8
  %282 = load i32, i32* %13, align 4
  %283 = ashr i32 %282, 18
  %284 = and i32 %283, 127
  %285 = sext i32 %284 to i64
  %286 = load i64*, i64** %10, align 8
  %287 = getelementptr inbounds i64, i64* %286, i64 1
  store i64 %285, i64* %287, align 8
  %288 = load i32, i32* %13, align 4
  %289 = ashr i32 %288, 11
  %290 = and i32 %289, 127
  %291 = sext i32 %290 to i64
  %292 = load i64*, i64** %10, align 8
  %293 = getelementptr inbounds i64, i64* %292, i64 2
  store i64 %291, i64* %293, align 8
  %294 = load i32, i32* %13, align 4
  %295 = ashr i32 %294, 4
  %296 = and i32 %295, 127
  %297 = sext i32 %296 to i64
  %298 = load i64*, i64** %10, align 8
  %299 = getelementptr inbounds i64, i64* %298, i64 3
  store i64 %297, i64* %299, align 8
  %300 = load i32, i32* %13, align 4
  %301 = shl i32 %300, 3
  %302 = and i32 %301, 120
  %303 = load i32, i32* %14, align 4
  %304 = ashr i32 %303, 29
  %305 = and i32 %304, 7
  %306 = or i32 %302, %305
  %307 = sext i32 %306 to i64
  %308 = load i64*, i64** %10, align 8
  %309 = getelementptr inbounds i64, i64* %308, i64 4
  store i64 %307, i64* %309, align 8
  %310 = load i32, i32* %14, align 4
  %311 = ashr i32 %310, 22
  %312 = and i32 %311, 127
  %313 = load i32, i32* %15, align 4
  %314 = shl i32 %313, 5
  %315 = and i32 %314, 128
  %316 = or i32 %312, %315
  %317 = sext i32 %316 to i64
  %318 = load i64*, i64** %10, align 8
  %319 = getelementptr inbounds i64, i64* %318, i64 5
  store i64 %317, i64* %319, align 8
  %320 = load i32, i32* %14, align 4
  %321 = ashr i32 %320, 15
  %322 = and i32 %321, 127
  %323 = load i32, i32* %15, align 4
  %324 = shl i32 %323, 6
  %325 = and i32 %324, 128
  %326 = or i32 %322, %325
  %327 = sext i32 %326 to i64
  %328 = load i64*, i64** %10, align 8
  %329 = getelementptr inbounds i64, i64* %328, i64 6
  store i64 %327, i64* %329, align 8
  %330 = load i32, i32* %14, align 4
  %331 = ashr i32 %330, 8
  %332 = and i32 %331, 127
  %333 = load i32, i32* %15, align 4
  %334 = shl i32 %333, 7
  %335 = or i32 %332, %334
  %336 = sext i32 %335 to i64
  %337 = load i64*, i64** %10, align 8
  %338 = getelementptr inbounds i64, i64* %337, i64 7
  store i64 %336, i64* %338, align 8
  %339 = load i32, i32* %14, align 4
  %340 = sext i32 %339 to i64
  %341 = load i64*, i64** %10, align 8
  %342 = getelementptr inbounds i64, i64* %341, i64 8
  store i64 %340, i64* %342, align 8
  br label %32

343:                                              ; preds = %32
  %344 = load i32, i32* %8, align 4
  %345 = load %struct.dsp*, %struct.dsp** %4, align 8
  %346 = getelementptr inbounds %struct.dsp, %struct.dsp* %345, i32 0, i32 0
  store i32 %344, i32* %346, align 8
  ret void
}

declare dso_local i32 @EROUND(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
