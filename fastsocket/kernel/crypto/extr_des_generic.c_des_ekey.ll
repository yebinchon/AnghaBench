; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_des_generic.c_des_ekey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_des_generic.c_des_ekey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pc2 = common dso_local global i64* null, align 8
@pc1 = common dso_local global i64* null, align 8
@rs = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @des_ekey(i64* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i64*, i64** @pc2, align 8
  store i64* %11, i64** %10, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 4
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = and i64 %16, 14
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = shl i64 %18, 4
  store i64 %19, i64* %8, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 30
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %8, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %8, align 8
  %27 = load i64*, i64** @pc1, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 5
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = and i64 %35, 14
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = shl i64 %37, 4
  store i64 %38, i64* %7, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 30
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %7, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = load i64*, i64** @pc1, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %7, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 6
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = and i64 %54, 14
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = shl i64 %56, 4
  store i64 %57, i64* %6, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 30
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %6, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %6, align 8
  %65 = load i64*, i64** @pc1, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %6, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 7
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %5, align 8
  %73 = load i64, i64* %5, align 8
  %74 = and i64 %73, 14
  store i64 %74, i64* %5, align 8
  %75 = load i64, i64* %5, align 8
  %76 = shl i64 %75, 4
  store i64 %76, i64* %5, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 30
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %5, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %5, align 8
  %84 = load i64*, i64** @pc1, align 8
  %85 = load i64, i64* %5, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %5, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i64 @PC2(i64 %88, i64 %89, i64 %90, i64 %91)
  %93 = load i64*, i64** %3, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 30
  store i64 %92, i64* %94, align 8
  %95 = load i64*, i64** @rs, align 8
  %96 = load i64, i64* %8, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %8, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call i64 @PC2(i64 %99, i64 %100, i64 %101, i64 %102)
  %104 = load i64*, i64** %3, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 28
  store i64 %103, i64* %105, align 8
  %106 = load i64*, i64** @rs, align 8
  %107 = load i64, i64* %7, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %7, align 8
  %110 = load i64*, i64** @rs, align 8
  %111 = load i64, i64* %6, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %6, align 8
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %5, align 8
  %118 = call i64 @PC2(i64 %114, i64 %115, i64 %116, i64 %117)
  %119 = load i64*, i64** %3, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 26
  store i64 %118, i64* %120, align 8
  %121 = load i64*, i64** @rs, align 8
  %122 = load i64, i64* %5, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %5, align 8
  %125 = load i64*, i64** @rs, align 8
  %126 = load i64, i64* %8, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %8, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* %5, align 8
  %131 = load i64, i64* %6, align 8
  %132 = load i64, i64* %7, align 8
  %133 = call i64 @PC2(i64 %129, i64 %130, i64 %131, i64 %132)
  %134 = load i64*, i64** %3, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 24
  store i64 %133, i64* %135, align 8
  %136 = load i64*, i64** @rs, align 8
  %137 = load i64, i64* %7, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %7, align 8
  %140 = load i64*, i64** @rs, align 8
  %141 = load i64, i64* %6, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %6, align 8
  %144 = load i64, i64* %6, align 8
  %145 = load i64, i64* %7, align 8
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* %5, align 8
  %148 = call i64 @PC2(i64 %144, i64 %145, i64 %146, i64 %147)
  %149 = load i64*, i64** %3, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 22
  store i64 %148, i64* %150, align 8
  %151 = load i64*, i64** @rs, align 8
  %152 = load i64, i64* %5, align 8
  %153 = getelementptr inbounds i64, i64* %151, i64 %152
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %5, align 8
  %155 = load i64*, i64** @rs, align 8
  %156 = load i64, i64* %8, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %8, align 8
  %159 = load i64, i64* %8, align 8
  %160 = load i64, i64* %5, align 8
  %161 = load i64, i64* %6, align 8
  %162 = load i64, i64* %7, align 8
  %163 = call i64 @PC2(i64 %159, i64 %160, i64 %161, i64 %162)
  %164 = load i64*, i64** %3, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 20
  store i64 %163, i64* %165, align 8
  %166 = load i64*, i64** @rs, align 8
  %167 = load i64, i64* %7, align 8
  %168 = getelementptr inbounds i64, i64* %166, i64 %167
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %7, align 8
  %170 = load i64*, i64** @rs, align 8
  %171 = load i64, i64* %6, align 8
  %172 = getelementptr inbounds i64, i64* %170, i64 %171
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %6, align 8
  %174 = load i64, i64* %6, align 8
  %175 = load i64, i64* %7, align 8
  %176 = load i64, i64* %8, align 8
  %177 = load i64, i64* %5, align 8
  %178 = call i64 @PC2(i64 %174, i64 %175, i64 %176, i64 %177)
  %179 = load i64*, i64** %3, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 18
  store i64 %178, i64* %180, align 8
  %181 = load i64*, i64** @rs, align 8
  %182 = load i64, i64* %5, align 8
  %183 = getelementptr inbounds i64, i64* %181, i64 %182
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %5, align 8
  %185 = load i64*, i64** @rs, align 8
  %186 = load i64, i64* %8, align 8
  %187 = getelementptr inbounds i64, i64* %185, i64 %186
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %8, align 8
  %189 = load i64, i64* %8, align 8
  %190 = load i64, i64* %5, align 8
  %191 = load i64, i64* %6, align 8
  %192 = load i64, i64* %7, align 8
  %193 = call i64 @PC2(i64 %189, i64 %190, i64 %191, i64 %192)
  %194 = load i64*, i64** %3, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 16
  store i64 %193, i64* %195, align 8
  %196 = load i64*, i64** @rs, align 8
  %197 = load i64, i64* %7, align 8
  %198 = getelementptr inbounds i64, i64* %196, i64 %197
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %7, align 8
  %200 = load i64, i64* %7, align 8
  %201 = load i64, i64* %8, align 8
  %202 = load i64, i64* %5, align 8
  %203 = load i64, i64* %6, align 8
  %204 = call i64 @PC2(i64 %200, i64 %201, i64 %202, i64 %203)
  %205 = load i64*, i64** %3, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 14
  store i64 %204, i64* %206, align 8
  %207 = load i64*, i64** @rs, align 8
  %208 = load i64, i64* %6, align 8
  %209 = getelementptr inbounds i64, i64* %207, i64 %208
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %6, align 8
  %211 = load i64*, i64** @rs, align 8
  %212 = load i64, i64* %5, align 8
  %213 = getelementptr inbounds i64, i64* %211, i64 %212
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %5, align 8
  %215 = load i64, i64* %5, align 8
  %216 = load i64, i64* %6, align 8
  %217 = load i64, i64* %7, align 8
  %218 = load i64, i64* %8, align 8
  %219 = call i64 @PC2(i64 %215, i64 %216, i64 %217, i64 %218)
  %220 = load i64*, i64** %3, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 12
  store i64 %219, i64* %221, align 8
  %222 = load i64*, i64** @rs, align 8
  %223 = load i64, i64* %8, align 8
  %224 = getelementptr inbounds i64, i64* %222, i64 %223
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %8, align 8
  %226 = load i64*, i64** @rs, align 8
  %227 = load i64, i64* %7, align 8
  %228 = getelementptr inbounds i64, i64* %226, i64 %227
  %229 = load i64, i64* %228, align 8
  store i64 %229, i64* %7, align 8
  %230 = load i64, i64* %7, align 8
  %231 = load i64, i64* %8, align 8
  %232 = load i64, i64* %5, align 8
  %233 = load i64, i64* %6, align 8
  %234 = call i64 @PC2(i64 %230, i64 %231, i64 %232, i64 %233)
  %235 = load i64*, i64** %3, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 10
  store i64 %234, i64* %236, align 8
  %237 = load i64*, i64** @rs, align 8
  %238 = load i64, i64* %6, align 8
  %239 = getelementptr inbounds i64, i64* %237, i64 %238
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %6, align 8
  %241 = load i64*, i64** @rs, align 8
  %242 = load i64, i64* %5, align 8
  %243 = getelementptr inbounds i64, i64* %241, i64 %242
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %5, align 8
  %245 = load i64, i64* %5, align 8
  %246 = load i64, i64* %6, align 8
  %247 = load i64, i64* %7, align 8
  %248 = load i64, i64* %8, align 8
  %249 = call i64 @PC2(i64 %245, i64 %246, i64 %247, i64 %248)
  %250 = load i64*, i64** %3, align 8
  %251 = getelementptr inbounds i64, i64* %250, i64 8
  store i64 %249, i64* %251, align 8
  %252 = load i64*, i64** @rs, align 8
  %253 = load i64, i64* %8, align 8
  %254 = getelementptr inbounds i64, i64* %252, i64 %253
  %255 = load i64, i64* %254, align 8
  store i64 %255, i64* %8, align 8
  %256 = load i64*, i64** @rs, align 8
  %257 = load i64, i64* %7, align 8
  %258 = getelementptr inbounds i64, i64* %256, i64 %257
  %259 = load i64, i64* %258, align 8
  store i64 %259, i64* %7, align 8
  %260 = load i64, i64* %7, align 8
  %261 = load i64, i64* %8, align 8
  %262 = load i64, i64* %5, align 8
  %263 = load i64, i64* %6, align 8
  %264 = call i64 @PC2(i64 %260, i64 %261, i64 %262, i64 %263)
  %265 = load i64*, i64** %3, align 8
  %266 = getelementptr inbounds i64, i64* %265, i64 6
  store i64 %264, i64* %266, align 8
  %267 = load i64*, i64** @rs, align 8
  %268 = load i64, i64* %6, align 8
  %269 = getelementptr inbounds i64, i64* %267, i64 %268
  %270 = load i64, i64* %269, align 8
  store i64 %270, i64* %6, align 8
  %271 = load i64*, i64** @rs, align 8
  %272 = load i64, i64* %5, align 8
  %273 = getelementptr inbounds i64, i64* %271, i64 %272
  %274 = load i64, i64* %273, align 8
  store i64 %274, i64* %5, align 8
  %275 = load i64, i64* %5, align 8
  %276 = load i64, i64* %6, align 8
  %277 = load i64, i64* %7, align 8
  %278 = load i64, i64* %8, align 8
  %279 = call i64 @PC2(i64 %275, i64 %276, i64 %277, i64 %278)
  %280 = load i64*, i64** %3, align 8
  %281 = getelementptr inbounds i64, i64* %280, i64 4
  store i64 %279, i64* %281, align 8
  %282 = load i64*, i64** @rs, align 8
  %283 = load i64, i64* %8, align 8
  %284 = getelementptr inbounds i64, i64* %282, i64 %283
  %285 = load i64, i64* %284, align 8
  store i64 %285, i64* %8, align 8
  %286 = load i64*, i64** @rs, align 8
  %287 = load i64, i64* %7, align 8
  %288 = getelementptr inbounds i64, i64* %286, i64 %287
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %7, align 8
  %290 = load i64, i64* %7, align 8
  %291 = load i64, i64* %8, align 8
  %292 = load i64, i64* %5, align 8
  %293 = load i64, i64* %6, align 8
  %294 = call i64 @PC2(i64 %290, i64 %291, i64 %292, i64 %293)
  %295 = load i64*, i64** %3, align 8
  %296 = getelementptr inbounds i64, i64* %295, i64 2
  store i64 %294, i64* %296, align 8
  %297 = load i64*, i64** @rs, align 8
  %298 = load i64, i64* %6, align 8
  %299 = getelementptr inbounds i64, i64* %297, i64 %298
  %300 = load i64, i64* %299, align 8
  store i64 %300, i64* %6, align 8
  %301 = load i64, i64* %6, align 8
  %302 = load i64, i64* %7, align 8
  %303 = load i64, i64* %8, align 8
  %304 = load i64, i64* %5, align 8
  %305 = call i64 @PC2(i64 %301, i64 %302, i64 %303, i64 %304)
  %306 = load i64*, i64** %3, align 8
  %307 = getelementptr inbounds i64, i64* %306, i64 0
  store i64 %305, i64* %307, align 8
  %308 = load i64, i64* %5, align 8
  %309 = load i64, i64* %7, align 8
  %310 = xor i64 %308, %309
  %311 = load i64, i64* %6, align 8
  %312 = load i64, i64* %8, align 8
  %313 = xor i64 %311, %312
  %314 = or i64 %310, %313
  %315 = load i64*, i64** @rs, align 8
  %316 = load i64, i64* %5, align 8
  %317 = getelementptr inbounds i64, i64* %315, i64 %316
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* %7, align 8
  %320 = xor i64 %318, %319
  %321 = or i64 %314, %320
  %322 = load i64, i64* %6, align 8
  %323 = load i64*, i64** @rs, align 8
  %324 = load i64, i64* %8, align 8
  %325 = getelementptr inbounds i64, i64* %323, i64 %324
  %326 = load i64, i64* %325, align 8
  %327 = xor i64 %322, %326
  %328 = or i64 %321, %327
  store i64 %328, i64* %9, align 8
  %329 = load i64*, i64** %10, align 8
  %330 = getelementptr inbounds i64, i64* %329, i64 512
  store i64* %330, i64** %10, align 8
  %331 = load i32*, i32** %4, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 0
  %333 = load i32, i32* %332, align 4
  %334 = sext i32 %333 to i64
  store i64 %334, i64* %8, align 8
  %335 = load i64, i64* %8, align 8
  %336 = and i64 %335, 224
  store i64 %336, i64* %8, align 8
  %337 = load i64, i64* %8, align 8
  %338 = lshr i64 %337, 4
  store i64 %338, i64* %8, align 8
  %339 = load i32*, i32** %4, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 4
  %341 = load i32, i32* %340, align 4
  %342 = and i32 %341, 240
  %343 = sext i32 %342 to i64
  %344 = load i64, i64* %8, align 8
  %345 = or i64 %344, %343
  store i64 %345, i64* %8, align 8
  %346 = load i64*, i64** @pc1, align 8
  %347 = load i64, i64* %8, align 8
  %348 = add i64 %347, 1
  %349 = getelementptr inbounds i64, i64* %346, i64 %348
  %350 = load i64, i64* %349, align 8
  store i64 %350, i64* %8, align 8
  %351 = load i32*, i32** %4, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 1
  %353 = load i32, i32* %352, align 4
  %354 = sext i32 %353 to i64
  store i64 %354, i64* %7, align 8
  %355 = load i64, i64* %7, align 8
  %356 = and i64 %355, 224
  store i64 %356, i64* %7, align 8
  %357 = load i64, i64* %7, align 8
  %358 = lshr i64 %357, 4
  store i64 %358, i64* %7, align 8
  %359 = load i32*, i32** %4, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 5
  %361 = load i32, i32* %360, align 4
  %362 = and i32 %361, 240
  %363 = sext i32 %362 to i64
  %364 = load i64, i64* %7, align 8
  %365 = or i64 %364, %363
  store i64 %365, i64* %7, align 8
  %366 = load i64*, i64** @pc1, align 8
  %367 = load i64, i64* %7, align 8
  %368 = add i64 %367, 1
  %369 = getelementptr inbounds i64, i64* %366, i64 %368
  %370 = load i64, i64* %369, align 8
  store i64 %370, i64* %7, align 8
  %371 = load i32*, i32** %4, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 2
  %373 = load i32, i32* %372, align 4
  %374 = sext i32 %373 to i64
  store i64 %374, i64* %6, align 8
  %375 = load i64, i64* %6, align 8
  %376 = and i64 %375, 224
  store i64 %376, i64* %6, align 8
  %377 = load i64, i64* %6, align 8
  %378 = lshr i64 %377, 4
  store i64 %378, i64* %6, align 8
  %379 = load i32*, i32** %4, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 6
  %381 = load i32, i32* %380, align 4
  %382 = and i32 %381, 240
  %383 = sext i32 %382 to i64
  %384 = load i64, i64* %6, align 8
  %385 = or i64 %384, %383
  store i64 %385, i64* %6, align 8
  %386 = load i64*, i64** @pc1, align 8
  %387 = load i64, i64* %6, align 8
  %388 = add i64 %387, 1
  %389 = getelementptr inbounds i64, i64* %386, i64 %388
  %390 = load i64, i64* %389, align 8
  store i64 %390, i64* %6, align 8
  %391 = load i32*, i32** %4, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 3
  %393 = load i32, i32* %392, align 4
  %394 = sext i32 %393 to i64
  store i64 %394, i64* %5, align 8
  %395 = load i64, i64* %5, align 8
  %396 = and i64 %395, 224
  store i64 %396, i64* %5, align 8
  %397 = load i64, i64* %5, align 8
  %398 = lshr i64 %397, 4
  store i64 %398, i64* %5, align 8
  %399 = load i32*, i32** %4, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 7
  %401 = load i32, i32* %400, align 4
  %402 = and i32 %401, 240
  %403 = sext i32 %402 to i64
  %404 = load i64, i64* %5, align 8
  %405 = or i64 %404, %403
  store i64 %405, i64* %5, align 8
  %406 = load i64*, i64** @pc1, align 8
  %407 = load i64, i64* %5, align 8
  %408 = add i64 %407, 1
  %409 = getelementptr inbounds i64, i64* %406, i64 %408
  %410 = load i64, i64* %409, align 8
  store i64 %410, i64* %5, align 8
  %411 = load i64, i64* %5, align 8
  %412 = load i64, i64* %7, align 8
  %413 = xor i64 %411, %412
  %414 = load i64, i64* %6, align 8
  %415 = load i64, i64* %8, align 8
  %416 = xor i64 %414, %415
  %417 = or i64 %413, %416
  %418 = load i64*, i64** @rs, align 8
  %419 = load i64, i64* %5, align 8
  %420 = getelementptr inbounds i64, i64* %418, i64 %419
  %421 = load i64, i64* %420, align 8
  %422 = load i64, i64* %7, align 8
  %423 = xor i64 %421, %422
  %424 = or i64 %417, %423
  %425 = load i64, i64* %6, align 8
  %426 = load i64*, i64** @rs, align 8
  %427 = load i64, i64* %8, align 8
  %428 = getelementptr inbounds i64, i64* %426, i64 %427
  %429 = load i64, i64* %428, align 8
  %430 = xor i64 %425, %429
  %431 = or i64 %424, %430
  %432 = load i64, i64* %9, align 8
  %433 = or i64 %432, %431
  store i64 %433, i64* %9, align 8
  %434 = load i64, i64* %5, align 8
  %435 = load i64, i64* %6, align 8
  %436 = load i64, i64* %7, align 8
  %437 = load i64, i64* %8, align 8
  %438 = call i64 @PC2(i64 %434, i64 %435, i64 %436, i64 %437)
  %439 = load i64*, i64** %3, align 8
  %440 = getelementptr inbounds i64, i64* %439, i64 31
  store i64 %438, i64* %440, align 8
  %441 = load i64*, i64** @rs, align 8
  %442 = load i64, i64* %8, align 8
  %443 = getelementptr inbounds i64, i64* %441, i64 %442
  %444 = load i64, i64* %443, align 8
  store i64 %444, i64* %8, align 8
  %445 = load i64, i64* %8, align 8
  %446 = load i64, i64* %5, align 8
  %447 = load i64, i64* %6, align 8
  %448 = load i64, i64* %7, align 8
  %449 = call i64 @PC2(i64 %445, i64 %446, i64 %447, i64 %448)
  %450 = load i64*, i64** %3, align 8
  %451 = getelementptr inbounds i64, i64* %450, i64 29
  store i64 %449, i64* %451, align 8
  %452 = load i64*, i64** @rs, align 8
  %453 = load i64, i64* %7, align 8
  %454 = getelementptr inbounds i64, i64* %452, i64 %453
  %455 = load i64, i64* %454, align 8
  store i64 %455, i64* %7, align 8
  %456 = load i64*, i64** @rs, align 8
  %457 = load i64, i64* %6, align 8
  %458 = getelementptr inbounds i64, i64* %456, i64 %457
  %459 = load i64, i64* %458, align 8
  store i64 %459, i64* %6, align 8
  %460 = load i64, i64* %6, align 8
  %461 = load i64, i64* %7, align 8
  %462 = load i64, i64* %8, align 8
  %463 = load i64, i64* %5, align 8
  %464 = call i64 @PC2(i64 %460, i64 %461, i64 %462, i64 %463)
  %465 = load i64*, i64** %3, align 8
  %466 = getelementptr inbounds i64, i64* %465, i64 27
  store i64 %464, i64* %466, align 8
  %467 = load i64*, i64** @rs, align 8
  %468 = load i64, i64* %5, align 8
  %469 = getelementptr inbounds i64, i64* %467, i64 %468
  %470 = load i64, i64* %469, align 8
  store i64 %470, i64* %5, align 8
  %471 = load i64*, i64** @rs, align 8
  %472 = load i64, i64* %8, align 8
  %473 = getelementptr inbounds i64, i64* %471, i64 %472
  %474 = load i64, i64* %473, align 8
  store i64 %474, i64* %8, align 8
  %475 = load i64, i64* %8, align 8
  %476 = load i64, i64* %5, align 8
  %477 = load i64, i64* %6, align 8
  %478 = load i64, i64* %7, align 8
  %479 = call i64 @PC2(i64 %475, i64 %476, i64 %477, i64 %478)
  %480 = load i64*, i64** %3, align 8
  %481 = getelementptr inbounds i64, i64* %480, i64 25
  store i64 %479, i64* %481, align 8
  %482 = load i64*, i64** @rs, align 8
  %483 = load i64, i64* %7, align 8
  %484 = getelementptr inbounds i64, i64* %482, i64 %483
  %485 = load i64, i64* %484, align 8
  store i64 %485, i64* %7, align 8
  %486 = load i64*, i64** @rs, align 8
  %487 = load i64, i64* %6, align 8
  %488 = getelementptr inbounds i64, i64* %486, i64 %487
  %489 = load i64, i64* %488, align 8
  store i64 %489, i64* %6, align 8
  %490 = load i64, i64* %6, align 8
  %491 = load i64, i64* %7, align 8
  %492 = load i64, i64* %8, align 8
  %493 = load i64, i64* %5, align 8
  %494 = call i64 @PC2(i64 %490, i64 %491, i64 %492, i64 %493)
  %495 = load i64*, i64** %3, align 8
  %496 = getelementptr inbounds i64, i64* %495, i64 23
  store i64 %494, i64* %496, align 8
  %497 = load i64*, i64** @rs, align 8
  %498 = load i64, i64* %5, align 8
  %499 = getelementptr inbounds i64, i64* %497, i64 %498
  %500 = load i64, i64* %499, align 8
  store i64 %500, i64* %5, align 8
  %501 = load i64*, i64** @rs, align 8
  %502 = load i64, i64* %8, align 8
  %503 = getelementptr inbounds i64, i64* %501, i64 %502
  %504 = load i64, i64* %503, align 8
  store i64 %504, i64* %8, align 8
  %505 = load i64, i64* %8, align 8
  %506 = load i64, i64* %5, align 8
  %507 = load i64, i64* %6, align 8
  %508 = load i64, i64* %7, align 8
  %509 = call i64 @PC2(i64 %505, i64 %506, i64 %507, i64 %508)
  %510 = load i64*, i64** %3, align 8
  %511 = getelementptr inbounds i64, i64* %510, i64 21
  store i64 %509, i64* %511, align 8
  %512 = load i64*, i64** @rs, align 8
  %513 = load i64, i64* %7, align 8
  %514 = getelementptr inbounds i64, i64* %512, i64 %513
  %515 = load i64, i64* %514, align 8
  store i64 %515, i64* %7, align 8
  %516 = load i64*, i64** @rs, align 8
  %517 = load i64, i64* %6, align 8
  %518 = getelementptr inbounds i64, i64* %516, i64 %517
  %519 = load i64, i64* %518, align 8
  store i64 %519, i64* %6, align 8
  %520 = load i64, i64* %6, align 8
  %521 = load i64, i64* %7, align 8
  %522 = load i64, i64* %8, align 8
  %523 = load i64, i64* %5, align 8
  %524 = call i64 @PC2(i64 %520, i64 %521, i64 %522, i64 %523)
  %525 = load i64*, i64** %3, align 8
  %526 = getelementptr inbounds i64, i64* %525, i64 19
  store i64 %524, i64* %526, align 8
  %527 = load i64*, i64** @rs, align 8
  %528 = load i64, i64* %5, align 8
  %529 = getelementptr inbounds i64, i64* %527, i64 %528
  %530 = load i64, i64* %529, align 8
  store i64 %530, i64* %5, align 8
  %531 = load i64*, i64** @rs, align 8
  %532 = load i64, i64* %8, align 8
  %533 = getelementptr inbounds i64, i64* %531, i64 %532
  %534 = load i64, i64* %533, align 8
  store i64 %534, i64* %8, align 8
  %535 = load i64, i64* %8, align 8
  %536 = load i64, i64* %5, align 8
  %537 = load i64, i64* %6, align 8
  %538 = load i64, i64* %7, align 8
  %539 = call i64 @PC2(i64 %535, i64 %536, i64 %537, i64 %538)
  %540 = load i64*, i64** %3, align 8
  %541 = getelementptr inbounds i64, i64* %540, i64 17
  store i64 %539, i64* %541, align 8
  %542 = load i64*, i64** @rs, align 8
  %543 = load i64, i64* %7, align 8
  %544 = getelementptr inbounds i64, i64* %542, i64 %543
  %545 = load i64, i64* %544, align 8
  store i64 %545, i64* %7, align 8
  %546 = load i64, i64* %7, align 8
  %547 = load i64, i64* %8, align 8
  %548 = load i64, i64* %5, align 8
  %549 = load i64, i64* %6, align 8
  %550 = call i64 @PC2(i64 %546, i64 %547, i64 %548, i64 %549)
  %551 = load i64*, i64** %3, align 8
  %552 = getelementptr inbounds i64, i64* %551, i64 15
  store i64 %550, i64* %552, align 8
  %553 = load i64*, i64** @rs, align 8
  %554 = load i64, i64* %6, align 8
  %555 = getelementptr inbounds i64, i64* %553, i64 %554
  %556 = load i64, i64* %555, align 8
  store i64 %556, i64* %6, align 8
  %557 = load i64*, i64** @rs, align 8
  %558 = load i64, i64* %5, align 8
  %559 = getelementptr inbounds i64, i64* %557, i64 %558
  %560 = load i64, i64* %559, align 8
  store i64 %560, i64* %5, align 8
  %561 = load i64, i64* %5, align 8
  %562 = load i64, i64* %6, align 8
  %563 = load i64, i64* %7, align 8
  %564 = load i64, i64* %8, align 8
  %565 = call i64 @PC2(i64 %561, i64 %562, i64 %563, i64 %564)
  %566 = load i64*, i64** %3, align 8
  %567 = getelementptr inbounds i64, i64* %566, i64 13
  store i64 %565, i64* %567, align 8
  %568 = load i64*, i64** @rs, align 8
  %569 = load i64, i64* %8, align 8
  %570 = getelementptr inbounds i64, i64* %568, i64 %569
  %571 = load i64, i64* %570, align 8
  store i64 %571, i64* %8, align 8
  %572 = load i64*, i64** @rs, align 8
  %573 = load i64, i64* %7, align 8
  %574 = getelementptr inbounds i64, i64* %572, i64 %573
  %575 = load i64, i64* %574, align 8
  store i64 %575, i64* %7, align 8
  %576 = load i64, i64* %7, align 8
  %577 = load i64, i64* %8, align 8
  %578 = load i64, i64* %5, align 8
  %579 = load i64, i64* %6, align 8
  %580 = call i64 @PC2(i64 %576, i64 %577, i64 %578, i64 %579)
  %581 = load i64*, i64** %3, align 8
  %582 = getelementptr inbounds i64, i64* %581, i64 11
  store i64 %580, i64* %582, align 8
  %583 = load i64*, i64** @rs, align 8
  %584 = load i64, i64* %6, align 8
  %585 = getelementptr inbounds i64, i64* %583, i64 %584
  %586 = load i64, i64* %585, align 8
  store i64 %586, i64* %6, align 8
  %587 = load i64*, i64** @rs, align 8
  %588 = load i64, i64* %5, align 8
  %589 = getelementptr inbounds i64, i64* %587, i64 %588
  %590 = load i64, i64* %589, align 8
  store i64 %590, i64* %5, align 8
  %591 = load i64, i64* %5, align 8
  %592 = load i64, i64* %6, align 8
  %593 = load i64, i64* %7, align 8
  %594 = load i64, i64* %8, align 8
  %595 = call i64 @PC2(i64 %591, i64 %592, i64 %593, i64 %594)
  %596 = load i64*, i64** %3, align 8
  %597 = getelementptr inbounds i64, i64* %596, i64 9
  store i64 %595, i64* %597, align 8
  %598 = load i64*, i64** @rs, align 8
  %599 = load i64, i64* %8, align 8
  %600 = getelementptr inbounds i64, i64* %598, i64 %599
  %601 = load i64, i64* %600, align 8
  store i64 %601, i64* %8, align 8
  %602 = load i64*, i64** @rs, align 8
  %603 = load i64, i64* %7, align 8
  %604 = getelementptr inbounds i64, i64* %602, i64 %603
  %605 = load i64, i64* %604, align 8
  store i64 %605, i64* %7, align 8
  %606 = load i64, i64* %7, align 8
  %607 = load i64, i64* %8, align 8
  %608 = load i64, i64* %5, align 8
  %609 = load i64, i64* %6, align 8
  %610 = call i64 @PC2(i64 %606, i64 %607, i64 %608, i64 %609)
  %611 = load i64*, i64** %3, align 8
  %612 = getelementptr inbounds i64, i64* %611, i64 7
  store i64 %610, i64* %612, align 8
  %613 = load i64*, i64** @rs, align 8
  %614 = load i64, i64* %6, align 8
  %615 = getelementptr inbounds i64, i64* %613, i64 %614
  %616 = load i64, i64* %615, align 8
  store i64 %616, i64* %6, align 8
  %617 = load i64*, i64** @rs, align 8
  %618 = load i64, i64* %5, align 8
  %619 = getelementptr inbounds i64, i64* %617, i64 %618
  %620 = load i64, i64* %619, align 8
  store i64 %620, i64* %5, align 8
  %621 = load i64, i64* %5, align 8
  %622 = load i64, i64* %6, align 8
  %623 = load i64, i64* %7, align 8
  %624 = load i64, i64* %8, align 8
  %625 = call i64 @PC2(i64 %621, i64 %622, i64 %623, i64 %624)
  %626 = load i64*, i64** %3, align 8
  %627 = getelementptr inbounds i64, i64* %626, i64 5
  store i64 %625, i64* %627, align 8
  %628 = load i64*, i64** @rs, align 8
  %629 = load i64, i64* %8, align 8
  %630 = getelementptr inbounds i64, i64* %628, i64 %629
  %631 = load i64, i64* %630, align 8
  store i64 %631, i64* %8, align 8
  %632 = load i64*, i64** @rs, align 8
  %633 = load i64, i64* %7, align 8
  %634 = getelementptr inbounds i64, i64* %632, i64 %633
  %635 = load i64, i64* %634, align 8
  store i64 %635, i64* %7, align 8
  %636 = load i64, i64* %7, align 8
  %637 = load i64, i64* %8, align 8
  %638 = load i64, i64* %5, align 8
  %639 = load i64, i64* %6, align 8
  %640 = call i64 @PC2(i64 %636, i64 %637, i64 %638, i64 %639)
  %641 = load i64*, i64** %3, align 8
  %642 = getelementptr inbounds i64, i64* %641, i64 3
  store i64 %640, i64* %642, align 8
  %643 = load i64*, i64** @rs, align 8
  %644 = load i64, i64* %6, align 8
  %645 = getelementptr inbounds i64, i64* %643, i64 %644
  %646 = load i64, i64* %645, align 8
  store i64 %646, i64* %6, align 8
  %647 = load i64, i64* %6, align 8
  %648 = load i64, i64* %7, align 8
  %649 = load i64, i64* %8, align 8
  %650 = load i64, i64* %5, align 8
  %651 = call i64 @PC2(i64 %647, i64 %648, i64 %649, i64 %650)
  %652 = load i64*, i64** %3, align 8
  %653 = getelementptr inbounds i64, i64* %652, i64 1
  store i64 %651, i64* %653, align 8
  store i64 0, i64* %8, align 8
  br label %654

654:                                              ; preds = %693, %2
  %655 = load i64, i64* %8, align 8
  %656 = icmp ult i64 %655, 16
  br i1 %656, label %657, label %696

657:                                              ; preds = %654
  %658 = load i64*, i64** %3, align 8
  %659 = load i64, i64* %8, align 8
  %660 = mul i64 2, %659
  %661 = getelementptr inbounds i64, i64* %658, i64 %660
  %662 = load i64, i64* %661, align 8
  store i64 %662, i64* %5, align 8
  %663 = load i64*, i64** %3, align 8
  %664 = load i64, i64* %8, align 8
  %665 = mul i64 2, %664
  %666 = add i64 %665, 1
  %667 = getelementptr inbounds i64, i64* %663, i64 %666
  %668 = load i64, i64* %667, align 8
  store i64 %668, i64* %6, align 8
  %669 = load i64, i64* %5, align 8
  %670 = load i64, i64* %6, align 8
  %671 = xor i64 %669, %670
  store i64 %671, i64* %7, align 8
  %672 = load i64, i64* %7, align 8
  %673 = and i64 %672, 4294901760
  store i64 %673, i64* %7, align 8
  %674 = load i64, i64* %7, align 8
  %675 = load i64, i64* %5, align 8
  %676 = xor i64 %675, %674
  store i64 %676, i64* %5, align 8
  %677 = load i64, i64* %7, align 8
  %678 = load i64, i64* %6, align 8
  %679 = xor i64 %678, %677
  store i64 %679, i64* %6, align 8
  %680 = load i64, i64* %6, align 8
  %681 = call i32 @ROL(i64 %680, i32 18)
  %682 = load i64, i64* %5, align 8
  %683 = load i64*, i64** %3, align 8
  %684 = load i64, i64* %8, align 8
  %685 = mul i64 2, %684
  %686 = getelementptr inbounds i64, i64* %683, i64 %685
  store i64 %682, i64* %686, align 8
  %687 = load i64, i64* %6, align 8
  %688 = load i64*, i64** %3, align 8
  %689 = load i64, i64* %8, align 8
  %690 = mul i64 2, %689
  %691 = add i64 %690, 1
  %692 = getelementptr inbounds i64, i64* %688, i64 %691
  store i64 %687, i64* %692, align 8
  br label %693

693:                                              ; preds = %657
  %694 = load i64, i64* %8, align 8
  %695 = add i64 %694, 1
  store i64 %695, i64* %8, align 8
  br label %654

696:                                              ; preds = %654
  %697 = load i64, i64* %9, align 8
  ret i64 %697
}

declare dso_local i64 @PC2(i64, i64, i64, i64) #1

declare dso_local i32 @ROL(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
