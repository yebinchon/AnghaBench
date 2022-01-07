; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_des_generic.c_dkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_des_generic.c_dkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pc2 = common dso_local global i64* null, align 8
@pc1 = common dso_local global i64* null, align 8
@rs = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32*)* @dkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dkey(i64* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i64*, i64** @pc2, align 8
  store i64* %10, i64** %9, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 4
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = and i64 %15, 14
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = shl i64 %17, 4
  store i64 %18, i64* %8, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 30
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %8, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %8, align 8
  %26 = load i64*, i64** @pc1, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 5
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = and i64 %34, 14
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = shl i64 %36, 4
  store i64 %37, i64* %7, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 30
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %7, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %7, align 8
  %45 = load i64*, i64** @pc1, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %7, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 6
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = and i64 %53, 14
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = shl i64 %55, 4
  store i64 %56, i64* %6, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 30
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %6, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %6, align 8
  %64 = load i64*, i64** @pc1, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %6, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 7
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %5, align 8
  %72 = load i64, i64* %5, align 8
  %73 = and i64 %72, 14
  store i64 %73, i64* %5, align 8
  %74 = load i64, i64* %5, align 8
  %75 = shl i64 %74, 4
  store i64 %75, i64* %5, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 30
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %5, align 8
  %82 = or i64 %81, %80
  store i64 %82, i64* %5, align 8
  %83 = load i64*, i64** @pc1, align 8
  %84 = load i64, i64* %5, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %5, align 8
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i64 @PC2(i64 %87, i64 %88, i64 %89, i64 %90)
  %92 = load i64*, i64** %3, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  store i64 %91, i64* %93, align 8
  %94 = load i64*, i64** @rs, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %8, align 8
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call i64 @PC2(i64 %98, i64 %99, i64 %100, i64 %101)
  %103 = load i64*, i64** %3, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 2
  store i64 %102, i64* %104, align 8
  %105 = load i64*, i64** @rs, align 8
  %106 = load i64, i64* %7, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %7, align 8
  %109 = load i64*, i64** @rs, align 8
  %110 = load i64, i64* %6, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %6, align 8
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* %5, align 8
  %117 = call i64 @PC2(i64 %113, i64 %114, i64 %115, i64 %116)
  %118 = load i64*, i64** %3, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 4
  store i64 %117, i64* %119, align 8
  %120 = load i64*, i64** @rs, align 8
  %121 = load i64, i64* %5, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %5, align 8
  %124 = load i64*, i64** @rs, align 8
  %125 = load i64, i64* %8, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %8, align 8
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* %5, align 8
  %130 = load i64, i64* %6, align 8
  %131 = load i64, i64* %7, align 8
  %132 = call i64 @PC2(i64 %128, i64 %129, i64 %130, i64 %131)
  %133 = load i64*, i64** %3, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 6
  store i64 %132, i64* %134, align 8
  %135 = load i64*, i64** @rs, align 8
  %136 = load i64, i64* %7, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %7, align 8
  %139 = load i64*, i64** @rs, align 8
  %140 = load i64, i64* %6, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %6, align 8
  %143 = load i64, i64* %6, align 8
  %144 = load i64, i64* %7, align 8
  %145 = load i64, i64* %8, align 8
  %146 = load i64, i64* %5, align 8
  %147 = call i64 @PC2(i64 %143, i64 %144, i64 %145, i64 %146)
  %148 = load i64*, i64** %3, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 8
  store i64 %147, i64* %149, align 8
  %150 = load i64*, i64** @rs, align 8
  %151 = load i64, i64* %5, align 8
  %152 = getelementptr inbounds i64, i64* %150, i64 %151
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %5, align 8
  %154 = load i64*, i64** @rs, align 8
  %155 = load i64, i64* %8, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %8, align 8
  %158 = load i64, i64* %8, align 8
  %159 = load i64, i64* %5, align 8
  %160 = load i64, i64* %6, align 8
  %161 = load i64, i64* %7, align 8
  %162 = call i64 @PC2(i64 %158, i64 %159, i64 %160, i64 %161)
  %163 = load i64*, i64** %3, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 10
  store i64 %162, i64* %164, align 8
  %165 = load i64*, i64** @rs, align 8
  %166 = load i64, i64* %7, align 8
  %167 = getelementptr inbounds i64, i64* %165, i64 %166
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %7, align 8
  %169 = load i64*, i64** @rs, align 8
  %170 = load i64, i64* %6, align 8
  %171 = getelementptr inbounds i64, i64* %169, i64 %170
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %6, align 8
  %173 = load i64, i64* %6, align 8
  %174 = load i64, i64* %7, align 8
  %175 = load i64, i64* %8, align 8
  %176 = load i64, i64* %5, align 8
  %177 = call i64 @PC2(i64 %173, i64 %174, i64 %175, i64 %176)
  %178 = load i64*, i64** %3, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 12
  store i64 %177, i64* %179, align 8
  %180 = load i64*, i64** @rs, align 8
  %181 = load i64, i64* %5, align 8
  %182 = getelementptr inbounds i64, i64* %180, i64 %181
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %5, align 8
  %184 = load i64*, i64** @rs, align 8
  %185 = load i64, i64* %8, align 8
  %186 = getelementptr inbounds i64, i64* %184, i64 %185
  %187 = load i64, i64* %186, align 8
  store i64 %187, i64* %8, align 8
  %188 = load i64, i64* %8, align 8
  %189 = load i64, i64* %5, align 8
  %190 = load i64, i64* %6, align 8
  %191 = load i64, i64* %7, align 8
  %192 = call i64 @PC2(i64 %188, i64 %189, i64 %190, i64 %191)
  %193 = load i64*, i64** %3, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 14
  store i64 %192, i64* %194, align 8
  %195 = load i64*, i64** @rs, align 8
  %196 = load i64, i64* %7, align 8
  %197 = getelementptr inbounds i64, i64* %195, i64 %196
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %7, align 8
  %199 = load i64, i64* %7, align 8
  %200 = load i64, i64* %8, align 8
  %201 = load i64, i64* %5, align 8
  %202 = load i64, i64* %6, align 8
  %203 = call i64 @PC2(i64 %199, i64 %200, i64 %201, i64 %202)
  %204 = load i64*, i64** %3, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 16
  store i64 %203, i64* %205, align 8
  %206 = load i64*, i64** @rs, align 8
  %207 = load i64, i64* %6, align 8
  %208 = getelementptr inbounds i64, i64* %206, i64 %207
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %6, align 8
  %210 = load i64*, i64** @rs, align 8
  %211 = load i64, i64* %5, align 8
  %212 = getelementptr inbounds i64, i64* %210, i64 %211
  %213 = load i64, i64* %212, align 8
  store i64 %213, i64* %5, align 8
  %214 = load i64, i64* %5, align 8
  %215 = load i64, i64* %6, align 8
  %216 = load i64, i64* %7, align 8
  %217 = load i64, i64* %8, align 8
  %218 = call i64 @PC2(i64 %214, i64 %215, i64 %216, i64 %217)
  %219 = load i64*, i64** %3, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 18
  store i64 %218, i64* %220, align 8
  %221 = load i64*, i64** @rs, align 8
  %222 = load i64, i64* %8, align 8
  %223 = getelementptr inbounds i64, i64* %221, i64 %222
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %8, align 8
  %225 = load i64*, i64** @rs, align 8
  %226 = load i64, i64* %7, align 8
  %227 = getelementptr inbounds i64, i64* %225, i64 %226
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %7, align 8
  %229 = load i64, i64* %7, align 8
  %230 = load i64, i64* %8, align 8
  %231 = load i64, i64* %5, align 8
  %232 = load i64, i64* %6, align 8
  %233 = call i64 @PC2(i64 %229, i64 %230, i64 %231, i64 %232)
  %234 = load i64*, i64** %3, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 20
  store i64 %233, i64* %235, align 8
  %236 = load i64*, i64** @rs, align 8
  %237 = load i64, i64* %6, align 8
  %238 = getelementptr inbounds i64, i64* %236, i64 %237
  %239 = load i64, i64* %238, align 8
  store i64 %239, i64* %6, align 8
  %240 = load i64*, i64** @rs, align 8
  %241 = load i64, i64* %5, align 8
  %242 = getelementptr inbounds i64, i64* %240, i64 %241
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %5, align 8
  %244 = load i64, i64* %5, align 8
  %245 = load i64, i64* %6, align 8
  %246 = load i64, i64* %7, align 8
  %247 = load i64, i64* %8, align 8
  %248 = call i64 @PC2(i64 %244, i64 %245, i64 %246, i64 %247)
  %249 = load i64*, i64** %3, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 22
  store i64 %248, i64* %250, align 8
  %251 = load i64*, i64** @rs, align 8
  %252 = load i64, i64* %8, align 8
  %253 = getelementptr inbounds i64, i64* %251, i64 %252
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %8, align 8
  %255 = load i64*, i64** @rs, align 8
  %256 = load i64, i64* %7, align 8
  %257 = getelementptr inbounds i64, i64* %255, i64 %256
  %258 = load i64, i64* %257, align 8
  store i64 %258, i64* %7, align 8
  %259 = load i64, i64* %7, align 8
  %260 = load i64, i64* %8, align 8
  %261 = load i64, i64* %5, align 8
  %262 = load i64, i64* %6, align 8
  %263 = call i64 @PC2(i64 %259, i64 %260, i64 %261, i64 %262)
  %264 = load i64*, i64** %3, align 8
  %265 = getelementptr inbounds i64, i64* %264, i64 24
  store i64 %263, i64* %265, align 8
  %266 = load i64*, i64** @rs, align 8
  %267 = load i64, i64* %6, align 8
  %268 = getelementptr inbounds i64, i64* %266, i64 %267
  %269 = load i64, i64* %268, align 8
  store i64 %269, i64* %6, align 8
  %270 = load i64*, i64** @rs, align 8
  %271 = load i64, i64* %5, align 8
  %272 = getelementptr inbounds i64, i64* %270, i64 %271
  %273 = load i64, i64* %272, align 8
  store i64 %273, i64* %5, align 8
  %274 = load i64, i64* %5, align 8
  %275 = load i64, i64* %6, align 8
  %276 = load i64, i64* %7, align 8
  %277 = load i64, i64* %8, align 8
  %278 = call i64 @PC2(i64 %274, i64 %275, i64 %276, i64 %277)
  %279 = load i64*, i64** %3, align 8
  %280 = getelementptr inbounds i64, i64* %279, i64 26
  store i64 %278, i64* %280, align 8
  %281 = load i64*, i64** @rs, align 8
  %282 = load i64, i64* %8, align 8
  %283 = getelementptr inbounds i64, i64* %281, i64 %282
  %284 = load i64, i64* %283, align 8
  store i64 %284, i64* %8, align 8
  %285 = load i64*, i64** @rs, align 8
  %286 = load i64, i64* %7, align 8
  %287 = getelementptr inbounds i64, i64* %285, i64 %286
  %288 = load i64, i64* %287, align 8
  store i64 %288, i64* %7, align 8
  %289 = load i64, i64* %7, align 8
  %290 = load i64, i64* %8, align 8
  %291 = load i64, i64* %5, align 8
  %292 = load i64, i64* %6, align 8
  %293 = call i64 @PC2(i64 %289, i64 %290, i64 %291, i64 %292)
  %294 = load i64*, i64** %3, align 8
  %295 = getelementptr inbounds i64, i64* %294, i64 28
  store i64 %293, i64* %295, align 8
  %296 = load i64*, i64** @rs, align 8
  %297 = load i64, i64* %6, align 8
  %298 = getelementptr inbounds i64, i64* %296, i64 %297
  %299 = load i64, i64* %298, align 8
  store i64 %299, i64* %6, align 8
  %300 = load i64, i64* %6, align 8
  %301 = load i64, i64* %7, align 8
  %302 = load i64, i64* %8, align 8
  %303 = load i64, i64* %5, align 8
  %304 = call i64 @PC2(i64 %300, i64 %301, i64 %302, i64 %303)
  %305 = load i64*, i64** %3, align 8
  %306 = getelementptr inbounds i64, i64* %305, i64 30
  store i64 %304, i64* %306, align 8
  %307 = load i64*, i64** %9, align 8
  %308 = getelementptr inbounds i64, i64* %307, i64 512
  store i64* %308, i64** %9, align 8
  %309 = load i32*, i32** %4, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 0
  %311 = load i32, i32* %310, align 4
  %312 = sext i32 %311 to i64
  store i64 %312, i64* %8, align 8
  %313 = load i64, i64* %8, align 8
  %314 = and i64 %313, 224
  store i64 %314, i64* %8, align 8
  %315 = load i64, i64* %8, align 8
  %316 = lshr i64 %315, 4
  store i64 %316, i64* %8, align 8
  %317 = load i32*, i32** %4, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 4
  %319 = load i32, i32* %318, align 4
  %320 = and i32 %319, 240
  %321 = sext i32 %320 to i64
  %322 = load i64, i64* %8, align 8
  %323 = or i64 %322, %321
  store i64 %323, i64* %8, align 8
  %324 = load i64*, i64** @pc1, align 8
  %325 = load i64, i64* %8, align 8
  %326 = add i64 %325, 1
  %327 = getelementptr inbounds i64, i64* %324, i64 %326
  %328 = load i64, i64* %327, align 8
  store i64 %328, i64* %8, align 8
  %329 = load i32*, i32** %4, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 1
  %331 = load i32, i32* %330, align 4
  %332 = sext i32 %331 to i64
  store i64 %332, i64* %7, align 8
  %333 = load i64, i64* %7, align 8
  %334 = and i64 %333, 224
  store i64 %334, i64* %7, align 8
  %335 = load i64, i64* %7, align 8
  %336 = lshr i64 %335, 4
  store i64 %336, i64* %7, align 8
  %337 = load i32*, i32** %4, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 5
  %339 = load i32, i32* %338, align 4
  %340 = and i32 %339, 240
  %341 = sext i32 %340 to i64
  %342 = load i64, i64* %7, align 8
  %343 = or i64 %342, %341
  store i64 %343, i64* %7, align 8
  %344 = load i64*, i64** @pc1, align 8
  %345 = load i64, i64* %7, align 8
  %346 = add i64 %345, 1
  %347 = getelementptr inbounds i64, i64* %344, i64 %346
  %348 = load i64, i64* %347, align 8
  store i64 %348, i64* %7, align 8
  %349 = load i32*, i32** %4, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 2
  %351 = load i32, i32* %350, align 4
  %352 = sext i32 %351 to i64
  store i64 %352, i64* %6, align 8
  %353 = load i64, i64* %6, align 8
  %354 = and i64 %353, 224
  store i64 %354, i64* %6, align 8
  %355 = load i64, i64* %6, align 8
  %356 = lshr i64 %355, 4
  store i64 %356, i64* %6, align 8
  %357 = load i32*, i32** %4, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 6
  %359 = load i32, i32* %358, align 4
  %360 = and i32 %359, 240
  %361 = sext i32 %360 to i64
  %362 = load i64, i64* %6, align 8
  %363 = or i64 %362, %361
  store i64 %363, i64* %6, align 8
  %364 = load i64*, i64** @pc1, align 8
  %365 = load i64, i64* %6, align 8
  %366 = add i64 %365, 1
  %367 = getelementptr inbounds i64, i64* %364, i64 %366
  %368 = load i64, i64* %367, align 8
  store i64 %368, i64* %6, align 8
  %369 = load i32*, i32** %4, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 3
  %371 = load i32, i32* %370, align 4
  %372 = sext i32 %371 to i64
  store i64 %372, i64* %5, align 8
  %373 = load i64, i64* %5, align 8
  %374 = and i64 %373, 224
  store i64 %374, i64* %5, align 8
  %375 = load i64, i64* %5, align 8
  %376 = lshr i64 %375, 4
  store i64 %376, i64* %5, align 8
  %377 = load i32*, i32** %4, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 7
  %379 = load i32, i32* %378, align 4
  %380 = and i32 %379, 240
  %381 = sext i32 %380 to i64
  %382 = load i64, i64* %5, align 8
  %383 = or i64 %382, %381
  store i64 %383, i64* %5, align 8
  %384 = load i64*, i64** @pc1, align 8
  %385 = load i64, i64* %5, align 8
  %386 = add i64 %385, 1
  %387 = getelementptr inbounds i64, i64* %384, i64 %386
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %5, align 8
  %389 = load i64, i64* %5, align 8
  %390 = load i64, i64* %6, align 8
  %391 = load i64, i64* %7, align 8
  %392 = load i64, i64* %8, align 8
  %393 = call i64 @PC2(i64 %389, i64 %390, i64 %391, i64 %392)
  %394 = load i64*, i64** %3, align 8
  %395 = getelementptr inbounds i64, i64* %394, i64 1
  store i64 %393, i64* %395, align 8
  %396 = load i64*, i64** @rs, align 8
  %397 = load i64, i64* %8, align 8
  %398 = getelementptr inbounds i64, i64* %396, i64 %397
  %399 = load i64, i64* %398, align 8
  store i64 %399, i64* %8, align 8
  %400 = load i64, i64* %8, align 8
  %401 = load i64, i64* %5, align 8
  %402 = load i64, i64* %6, align 8
  %403 = load i64, i64* %7, align 8
  %404 = call i64 @PC2(i64 %400, i64 %401, i64 %402, i64 %403)
  %405 = load i64*, i64** %3, align 8
  %406 = getelementptr inbounds i64, i64* %405, i64 3
  store i64 %404, i64* %406, align 8
  %407 = load i64*, i64** @rs, align 8
  %408 = load i64, i64* %7, align 8
  %409 = getelementptr inbounds i64, i64* %407, i64 %408
  %410 = load i64, i64* %409, align 8
  store i64 %410, i64* %7, align 8
  %411 = load i64*, i64** @rs, align 8
  %412 = load i64, i64* %6, align 8
  %413 = getelementptr inbounds i64, i64* %411, i64 %412
  %414 = load i64, i64* %413, align 8
  store i64 %414, i64* %6, align 8
  %415 = load i64, i64* %6, align 8
  %416 = load i64, i64* %7, align 8
  %417 = load i64, i64* %8, align 8
  %418 = load i64, i64* %5, align 8
  %419 = call i64 @PC2(i64 %415, i64 %416, i64 %417, i64 %418)
  %420 = load i64*, i64** %3, align 8
  %421 = getelementptr inbounds i64, i64* %420, i64 5
  store i64 %419, i64* %421, align 8
  %422 = load i64*, i64** @rs, align 8
  %423 = load i64, i64* %5, align 8
  %424 = getelementptr inbounds i64, i64* %422, i64 %423
  %425 = load i64, i64* %424, align 8
  store i64 %425, i64* %5, align 8
  %426 = load i64*, i64** @rs, align 8
  %427 = load i64, i64* %8, align 8
  %428 = getelementptr inbounds i64, i64* %426, i64 %427
  %429 = load i64, i64* %428, align 8
  store i64 %429, i64* %8, align 8
  %430 = load i64, i64* %8, align 8
  %431 = load i64, i64* %5, align 8
  %432 = load i64, i64* %6, align 8
  %433 = load i64, i64* %7, align 8
  %434 = call i64 @PC2(i64 %430, i64 %431, i64 %432, i64 %433)
  %435 = load i64*, i64** %3, align 8
  %436 = getelementptr inbounds i64, i64* %435, i64 7
  store i64 %434, i64* %436, align 8
  %437 = load i64*, i64** @rs, align 8
  %438 = load i64, i64* %7, align 8
  %439 = getelementptr inbounds i64, i64* %437, i64 %438
  %440 = load i64, i64* %439, align 8
  store i64 %440, i64* %7, align 8
  %441 = load i64*, i64** @rs, align 8
  %442 = load i64, i64* %6, align 8
  %443 = getelementptr inbounds i64, i64* %441, i64 %442
  %444 = load i64, i64* %443, align 8
  store i64 %444, i64* %6, align 8
  %445 = load i64, i64* %6, align 8
  %446 = load i64, i64* %7, align 8
  %447 = load i64, i64* %8, align 8
  %448 = load i64, i64* %5, align 8
  %449 = call i64 @PC2(i64 %445, i64 %446, i64 %447, i64 %448)
  %450 = load i64*, i64** %3, align 8
  %451 = getelementptr inbounds i64, i64* %450, i64 9
  store i64 %449, i64* %451, align 8
  %452 = load i64*, i64** @rs, align 8
  %453 = load i64, i64* %5, align 8
  %454 = getelementptr inbounds i64, i64* %452, i64 %453
  %455 = load i64, i64* %454, align 8
  store i64 %455, i64* %5, align 8
  %456 = load i64*, i64** @rs, align 8
  %457 = load i64, i64* %8, align 8
  %458 = getelementptr inbounds i64, i64* %456, i64 %457
  %459 = load i64, i64* %458, align 8
  store i64 %459, i64* %8, align 8
  %460 = load i64, i64* %8, align 8
  %461 = load i64, i64* %5, align 8
  %462 = load i64, i64* %6, align 8
  %463 = load i64, i64* %7, align 8
  %464 = call i64 @PC2(i64 %460, i64 %461, i64 %462, i64 %463)
  %465 = load i64*, i64** %3, align 8
  %466 = getelementptr inbounds i64, i64* %465, i64 11
  store i64 %464, i64* %466, align 8
  %467 = load i64*, i64** @rs, align 8
  %468 = load i64, i64* %7, align 8
  %469 = getelementptr inbounds i64, i64* %467, i64 %468
  %470 = load i64, i64* %469, align 8
  store i64 %470, i64* %7, align 8
  %471 = load i64*, i64** @rs, align 8
  %472 = load i64, i64* %6, align 8
  %473 = getelementptr inbounds i64, i64* %471, i64 %472
  %474 = load i64, i64* %473, align 8
  store i64 %474, i64* %6, align 8
  %475 = load i64, i64* %6, align 8
  %476 = load i64, i64* %7, align 8
  %477 = load i64, i64* %8, align 8
  %478 = load i64, i64* %5, align 8
  %479 = call i64 @PC2(i64 %475, i64 %476, i64 %477, i64 %478)
  %480 = load i64*, i64** %3, align 8
  %481 = getelementptr inbounds i64, i64* %480, i64 13
  store i64 %479, i64* %481, align 8
  %482 = load i64*, i64** @rs, align 8
  %483 = load i64, i64* %5, align 8
  %484 = getelementptr inbounds i64, i64* %482, i64 %483
  %485 = load i64, i64* %484, align 8
  store i64 %485, i64* %5, align 8
  %486 = load i64*, i64** @rs, align 8
  %487 = load i64, i64* %8, align 8
  %488 = getelementptr inbounds i64, i64* %486, i64 %487
  %489 = load i64, i64* %488, align 8
  store i64 %489, i64* %8, align 8
  %490 = load i64, i64* %8, align 8
  %491 = load i64, i64* %5, align 8
  %492 = load i64, i64* %6, align 8
  %493 = load i64, i64* %7, align 8
  %494 = call i64 @PC2(i64 %490, i64 %491, i64 %492, i64 %493)
  %495 = load i64*, i64** %3, align 8
  %496 = getelementptr inbounds i64, i64* %495, i64 15
  store i64 %494, i64* %496, align 8
  %497 = load i64*, i64** @rs, align 8
  %498 = load i64, i64* %7, align 8
  %499 = getelementptr inbounds i64, i64* %497, i64 %498
  %500 = load i64, i64* %499, align 8
  store i64 %500, i64* %7, align 8
  %501 = load i64, i64* %7, align 8
  %502 = load i64, i64* %8, align 8
  %503 = load i64, i64* %5, align 8
  %504 = load i64, i64* %6, align 8
  %505 = call i64 @PC2(i64 %501, i64 %502, i64 %503, i64 %504)
  %506 = load i64*, i64** %3, align 8
  %507 = getelementptr inbounds i64, i64* %506, i64 17
  store i64 %505, i64* %507, align 8
  %508 = load i64*, i64** @rs, align 8
  %509 = load i64, i64* %6, align 8
  %510 = getelementptr inbounds i64, i64* %508, i64 %509
  %511 = load i64, i64* %510, align 8
  store i64 %511, i64* %6, align 8
  %512 = load i64*, i64** @rs, align 8
  %513 = load i64, i64* %5, align 8
  %514 = getelementptr inbounds i64, i64* %512, i64 %513
  %515 = load i64, i64* %514, align 8
  store i64 %515, i64* %5, align 8
  %516 = load i64, i64* %5, align 8
  %517 = load i64, i64* %6, align 8
  %518 = load i64, i64* %7, align 8
  %519 = load i64, i64* %8, align 8
  %520 = call i64 @PC2(i64 %516, i64 %517, i64 %518, i64 %519)
  %521 = load i64*, i64** %3, align 8
  %522 = getelementptr inbounds i64, i64* %521, i64 19
  store i64 %520, i64* %522, align 8
  %523 = load i64*, i64** @rs, align 8
  %524 = load i64, i64* %8, align 8
  %525 = getelementptr inbounds i64, i64* %523, i64 %524
  %526 = load i64, i64* %525, align 8
  store i64 %526, i64* %8, align 8
  %527 = load i64*, i64** @rs, align 8
  %528 = load i64, i64* %7, align 8
  %529 = getelementptr inbounds i64, i64* %527, i64 %528
  %530 = load i64, i64* %529, align 8
  store i64 %530, i64* %7, align 8
  %531 = load i64, i64* %7, align 8
  %532 = load i64, i64* %8, align 8
  %533 = load i64, i64* %5, align 8
  %534 = load i64, i64* %6, align 8
  %535 = call i64 @PC2(i64 %531, i64 %532, i64 %533, i64 %534)
  %536 = load i64*, i64** %3, align 8
  %537 = getelementptr inbounds i64, i64* %536, i64 21
  store i64 %535, i64* %537, align 8
  %538 = load i64*, i64** @rs, align 8
  %539 = load i64, i64* %6, align 8
  %540 = getelementptr inbounds i64, i64* %538, i64 %539
  %541 = load i64, i64* %540, align 8
  store i64 %541, i64* %6, align 8
  %542 = load i64*, i64** @rs, align 8
  %543 = load i64, i64* %5, align 8
  %544 = getelementptr inbounds i64, i64* %542, i64 %543
  %545 = load i64, i64* %544, align 8
  store i64 %545, i64* %5, align 8
  %546 = load i64, i64* %5, align 8
  %547 = load i64, i64* %6, align 8
  %548 = load i64, i64* %7, align 8
  %549 = load i64, i64* %8, align 8
  %550 = call i64 @PC2(i64 %546, i64 %547, i64 %548, i64 %549)
  %551 = load i64*, i64** %3, align 8
  %552 = getelementptr inbounds i64, i64* %551, i64 23
  store i64 %550, i64* %552, align 8
  %553 = load i64*, i64** @rs, align 8
  %554 = load i64, i64* %8, align 8
  %555 = getelementptr inbounds i64, i64* %553, i64 %554
  %556 = load i64, i64* %555, align 8
  store i64 %556, i64* %8, align 8
  %557 = load i64*, i64** @rs, align 8
  %558 = load i64, i64* %7, align 8
  %559 = getelementptr inbounds i64, i64* %557, i64 %558
  %560 = load i64, i64* %559, align 8
  store i64 %560, i64* %7, align 8
  %561 = load i64, i64* %7, align 8
  %562 = load i64, i64* %8, align 8
  %563 = load i64, i64* %5, align 8
  %564 = load i64, i64* %6, align 8
  %565 = call i64 @PC2(i64 %561, i64 %562, i64 %563, i64 %564)
  %566 = load i64*, i64** %3, align 8
  %567 = getelementptr inbounds i64, i64* %566, i64 25
  store i64 %565, i64* %567, align 8
  %568 = load i64*, i64** @rs, align 8
  %569 = load i64, i64* %6, align 8
  %570 = getelementptr inbounds i64, i64* %568, i64 %569
  %571 = load i64, i64* %570, align 8
  store i64 %571, i64* %6, align 8
  %572 = load i64*, i64** @rs, align 8
  %573 = load i64, i64* %5, align 8
  %574 = getelementptr inbounds i64, i64* %572, i64 %573
  %575 = load i64, i64* %574, align 8
  store i64 %575, i64* %5, align 8
  %576 = load i64, i64* %5, align 8
  %577 = load i64, i64* %6, align 8
  %578 = load i64, i64* %7, align 8
  %579 = load i64, i64* %8, align 8
  %580 = call i64 @PC2(i64 %576, i64 %577, i64 %578, i64 %579)
  %581 = load i64*, i64** %3, align 8
  %582 = getelementptr inbounds i64, i64* %581, i64 27
  store i64 %580, i64* %582, align 8
  %583 = load i64*, i64** @rs, align 8
  %584 = load i64, i64* %8, align 8
  %585 = getelementptr inbounds i64, i64* %583, i64 %584
  %586 = load i64, i64* %585, align 8
  store i64 %586, i64* %8, align 8
  %587 = load i64*, i64** @rs, align 8
  %588 = load i64, i64* %7, align 8
  %589 = getelementptr inbounds i64, i64* %587, i64 %588
  %590 = load i64, i64* %589, align 8
  store i64 %590, i64* %7, align 8
  %591 = load i64, i64* %7, align 8
  %592 = load i64, i64* %8, align 8
  %593 = load i64, i64* %5, align 8
  %594 = load i64, i64* %6, align 8
  %595 = call i64 @PC2(i64 %591, i64 %592, i64 %593, i64 %594)
  %596 = load i64*, i64** %3, align 8
  %597 = getelementptr inbounds i64, i64* %596, i64 29
  store i64 %595, i64* %597, align 8
  %598 = load i64*, i64** @rs, align 8
  %599 = load i64, i64* %6, align 8
  %600 = getelementptr inbounds i64, i64* %598, i64 %599
  %601 = load i64, i64* %600, align 8
  store i64 %601, i64* %6, align 8
  %602 = load i64, i64* %6, align 8
  %603 = load i64, i64* %7, align 8
  %604 = load i64, i64* %8, align 8
  %605 = load i64, i64* %5, align 8
  %606 = call i64 @PC2(i64 %602, i64 %603, i64 %604, i64 %605)
  %607 = load i64*, i64** %3, align 8
  %608 = getelementptr inbounds i64, i64* %607, i64 31
  store i64 %606, i64* %608, align 8
  store i64 0, i64* %8, align 8
  br label %609

609:                                              ; preds = %648, %2
  %610 = load i64, i64* %8, align 8
  %611 = icmp ult i64 %610, 16
  br i1 %611, label %612, label %651

612:                                              ; preds = %609
  %613 = load i64*, i64** %3, align 8
  %614 = load i64, i64* %8, align 8
  %615 = mul i64 2, %614
  %616 = getelementptr inbounds i64, i64* %613, i64 %615
  %617 = load i64, i64* %616, align 8
  store i64 %617, i64* %5, align 8
  %618 = load i64*, i64** %3, align 8
  %619 = load i64, i64* %8, align 8
  %620 = mul i64 2, %619
  %621 = add i64 %620, 1
  %622 = getelementptr inbounds i64, i64* %618, i64 %621
  %623 = load i64, i64* %622, align 8
  store i64 %623, i64* %6, align 8
  %624 = load i64, i64* %5, align 8
  %625 = load i64, i64* %6, align 8
  %626 = xor i64 %624, %625
  store i64 %626, i64* %7, align 8
  %627 = load i64, i64* %7, align 8
  %628 = and i64 %627, 4294901760
  store i64 %628, i64* %7, align 8
  %629 = load i64, i64* %7, align 8
  %630 = load i64, i64* %5, align 8
  %631 = xor i64 %630, %629
  store i64 %631, i64* %5, align 8
  %632 = load i64, i64* %7, align 8
  %633 = load i64, i64* %6, align 8
  %634 = xor i64 %633, %632
  store i64 %634, i64* %6, align 8
  %635 = load i64, i64* %6, align 8
  %636 = call i32 @ROL(i64 %635, i32 18)
  %637 = load i64, i64* %5, align 8
  %638 = load i64*, i64** %3, align 8
  %639 = load i64, i64* %8, align 8
  %640 = mul i64 2, %639
  %641 = getelementptr inbounds i64, i64* %638, i64 %640
  store i64 %637, i64* %641, align 8
  %642 = load i64, i64* %6, align 8
  %643 = load i64*, i64** %3, align 8
  %644 = load i64, i64* %8, align 8
  %645 = mul i64 2, %644
  %646 = add i64 %645, 1
  %647 = getelementptr inbounds i64, i64* %643, i64 %646
  store i64 %642, i64* %647, align 8
  br label %648

648:                                              ; preds = %612
  %649 = load i64, i64* %8, align 8
  %650 = add i64 %649, 1
  store i64 %650, i64* %8, align 8
  br label %609

651:                                              ; preds = %609
  ret void
}

declare dso_local i64 @PC2(i64, i64, i64, i64) #1

declare dso_local i32 @ROL(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
