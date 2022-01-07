; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cast5.c_cast5_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cast5.c_cast5_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.cast5_ctx = type { i32*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i32*, i32*)* @cast5_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cast5_decrypt(%struct.crypto_tfm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cast5_ctx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %17 = call %struct.cast5_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %16)
  store %struct.cast5_ctx* %17, %struct.cast5_ctx** %7, align 8
  %18 = load i32*, i32** %6, align 8
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %5, align 8
  store i32* %19, i32** %9, align 8
  %20 = load %struct.cast5_ctx*, %struct.cast5_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.cast5_ctx, %struct.cast5_ctx* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %14, align 8
  %23 = load %struct.cast5_ctx*, %struct.cast5_ctx** %7, align 8
  %24 = getelementptr inbounds %struct.cast5_ctx, %struct.cast5_ctx* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %15, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @be32_to_cpu(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @be32_to_cpu(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.cast5_ctx*, %struct.cast5_ctx** %7, align 8
  %35 = getelementptr inbounds %struct.cast5_ctx, %struct.cast5_ctx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %231, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %14, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 15
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %15, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 15
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @F1(i32 %42, i32 %45, i32 %48)
  %50 = xor i32 %41, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** %14, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 14
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %15, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 14
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @F3(i32 %54, i32 %57, i32 %60)
  %62 = xor i32 %53, %61
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32*, i32** %14, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 13
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %15, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 13
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @F2(i32 %66, i32 %69, i32 %72)
  %74 = xor i32 %65, %73
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32*, i32** %14, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 12
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %15, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 12
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @F1(i32 %78, i32 %81, i32 %84)
  %86 = xor i32 %77, %85
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32*, i32** %14, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 11
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %15, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 11
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @F3(i32 %90, i32 %93, i32 %96)
  %98 = xor i32 %89, %97
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32*, i32** %14, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 10
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %15, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 10
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @F2(i32 %102, i32 %105, i32 %108)
  %110 = xor i32 %101, %109
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32*, i32** %14, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 9
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %15, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 9
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @F1(i32 %114, i32 %117, i32 %120)
  %122 = xor i32 %113, %121
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32*, i32** %14, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 8
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %15, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 8
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @F3(i32 %126, i32 %129, i32 %132)
  %134 = xor i32 %125, %133
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load i32*, i32** %14, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 7
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %15, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 7
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @F2(i32 %138, i32 %141, i32 %144)
  %146 = xor i32 %137, %145
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %11, align 4
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32*, i32** %14, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 6
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %15, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 6
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @F1(i32 %150, i32 %153, i32 %156)
  %158 = xor i32 %149, %157
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %11, align 4
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %11, align 4
  %163 = load i32*, i32** %14, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 5
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %15, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 5
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @F3(i32 %162, i32 %165, i32 %168)
  %170 = xor i32 %161, %169
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %10, align 4
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %11, align 4
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i32*, i32** %14, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 4
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %15, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 4
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @F2(i32 %174, i32 %177, i32 %180)
  %182 = xor i32 %173, %181
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %10, align 4
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %11, align 4
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %11, align 4
  %187 = load i32*, i32** %14, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 3
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %15, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 3
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @F1(i32 %186, i32 %189, i32 %192)
  %194 = xor i32 %185, %193
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %10, align 4
  store i32 %195, i32* %12, align 4
  %196 = load i32, i32* %11, align 4
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* %11, align 4
  %199 = load i32*, i32** %14, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %15, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 2
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @F3(i32 %198, i32 %201, i32 %204)
  %206 = xor i32 %197, %205
  store i32 %206, i32* %11, align 4
  %207 = load i32, i32* %10, align 4
  store i32 %207, i32* %12, align 4
  %208 = load i32, i32* %11, align 4
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* %11, align 4
  %211 = load i32*, i32** %14, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %15, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @F2(i32 %210, i32 %213, i32 %216)
  %218 = xor i32 %209, %217
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %10, align 4
  store i32 %219, i32* %12, align 4
  %220 = load i32, i32* %11, align 4
  store i32 %220, i32* %10, align 4
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* %11, align 4
  %223 = load i32*, i32** %14, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %15, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @F1(i32 %222, i32 %225, i32 %228)
  %230 = xor i32 %221, %229
  store i32 %230, i32* %11, align 4
  br label %376

231:                                              ; preds = %3
  %232 = load i32, i32* %10, align 4
  store i32 %232, i32* %12, align 4
  %233 = load i32, i32* %11, align 4
  store i32 %233, i32* %10, align 4
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* %11, align 4
  %236 = load i32*, i32** %14, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 11
  %238 = load i32, i32* %237, align 4
  %239 = load i32*, i32** %15, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 11
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @F3(i32 %235, i32 %238, i32 %241)
  %243 = xor i32 %234, %242
  store i32 %243, i32* %11, align 4
  %244 = load i32, i32* %10, align 4
  store i32 %244, i32* %12, align 4
  %245 = load i32, i32* %11, align 4
  store i32 %245, i32* %10, align 4
  %246 = load i32, i32* %12, align 4
  %247 = load i32, i32* %11, align 4
  %248 = load i32*, i32** %14, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 10
  %250 = load i32, i32* %249, align 4
  %251 = load i32*, i32** %15, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 10
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @F2(i32 %247, i32 %250, i32 %253)
  %255 = xor i32 %246, %254
  store i32 %255, i32* %11, align 4
  %256 = load i32, i32* %10, align 4
  store i32 %256, i32* %12, align 4
  %257 = load i32, i32* %11, align 4
  store i32 %257, i32* %10, align 4
  %258 = load i32, i32* %12, align 4
  %259 = load i32, i32* %11, align 4
  %260 = load i32*, i32** %14, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 9
  %262 = load i32, i32* %261, align 4
  %263 = load i32*, i32** %15, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 9
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @F1(i32 %259, i32 %262, i32 %265)
  %267 = xor i32 %258, %266
  store i32 %267, i32* %11, align 4
  %268 = load i32, i32* %10, align 4
  store i32 %268, i32* %12, align 4
  %269 = load i32, i32* %11, align 4
  store i32 %269, i32* %10, align 4
  %270 = load i32, i32* %12, align 4
  %271 = load i32, i32* %11, align 4
  %272 = load i32*, i32** %14, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 8
  %274 = load i32, i32* %273, align 4
  %275 = load i32*, i32** %15, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 8
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @F3(i32 %271, i32 %274, i32 %277)
  %279 = xor i32 %270, %278
  store i32 %279, i32* %11, align 4
  %280 = load i32, i32* %10, align 4
  store i32 %280, i32* %12, align 4
  %281 = load i32, i32* %11, align 4
  store i32 %281, i32* %10, align 4
  %282 = load i32, i32* %12, align 4
  %283 = load i32, i32* %11, align 4
  %284 = load i32*, i32** %14, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 7
  %286 = load i32, i32* %285, align 4
  %287 = load i32*, i32** %15, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 7
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @F2(i32 %283, i32 %286, i32 %289)
  %291 = xor i32 %282, %290
  store i32 %291, i32* %11, align 4
  %292 = load i32, i32* %10, align 4
  store i32 %292, i32* %12, align 4
  %293 = load i32, i32* %11, align 4
  store i32 %293, i32* %10, align 4
  %294 = load i32, i32* %12, align 4
  %295 = load i32, i32* %11, align 4
  %296 = load i32*, i32** %14, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 6
  %298 = load i32, i32* %297, align 4
  %299 = load i32*, i32** %15, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 6
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @F1(i32 %295, i32 %298, i32 %301)
  %303 = xor i32 %294, %302
  store i32 %303, i32* %11, align 4
  %304 = load i32, i32* %10, align 4
  store i32 %304, i32* %12, align 4
  %305 = load i32, i32* %11, align 4
  store i32 %305, i32* %10, align 4
  %306 = load i32, i32* %12, align 4
  %307 = load i32, i32* %11, align 4
  %308 = load i32*, i32** %14, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 5
  %310 = load i32, i32* %309, align 4
  %311 = load i32*, i32** %15, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 5
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @F3(i32 %307, i32 %310, i32 %313)
  %315 = xor i32 %306, %314
  store i32 %315, i32* %11, align 4
  %316 = load i32, i32* %10, align 4
  store i32 %316, i32* %12, align 4
  %317 = load i32, i32* %11, align 4
  store i32 %317, i32* %10, align 4
  %318 = load i32, i32* %12, align 4
  %319 = load i32, i32* %11, align 4
  %320 = load i32*, i32** %14, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 4
  %322 = load i32, i32* %321, align 4
  %323 = load i32*, i32** %15, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 4
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @F2(i32 %319, i32 %322, i32 %325)
  %327 = xor i32 %318, %326
  store i32 %327, i32* %11, align 4
  %328 = load i32, i32* %10, align 4
  store i32 %328, i32* %12, align 4
  %329 = load i32, i32* %11, align 4
  store i32 %329, i32* %10, align 4
  %330 = load i32, i32* %12, align 4
  %331 = load i32, i32* %11, align 4
  %332 = load i32*, i32** %14, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 3
  %334 = load i32, i32* %333, align 4
  %335 = load i32*, i32** %15, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 3
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @F1(i32 %331, i32 %334, i32 %337)
  %339 = xor i32 %330, %338
  store i32 %339, i32* %11, align 4
  %340 = load i32, i32* %10, align 4
  store i32 %340, i32* %12, align 4
  %341 = load i32, i32* %11, align 4
  store i32 %341, i32* %10, align 4
  %342 = load i32, i32* %12, align 4
  %343 = load i32, i32* %11, align 4
  %344 = load i32*, i32** %14, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 2
  %346 = load i32, i32* %345, align 4
  %347 = load i32*, i32** %15, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 2
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @F3(i32 %343, i32 %346, i32 %349)
  %351 = xor i32 %342, %350
  store i32 %351, i32* %11, align 4
  %352 = load i32, i32* %10, align 4
  store i32 %352, i32* %12, align 4
  %353 = load i32, i32* %11, align 4
  store i32 %353, i32* %10, align 4
  %354 = load i32, i32* %12, align 4
  %355 = load i32, i32* %11, align 4
  %356 = load i32*, i32** %14, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 1
  %358 = load i32, i32* %357, align 4
  %359 = load i32*, i32** %15, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 1
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @F2(i32 %355, i32 %358, i32 %361)
  %363 = xor i32 %354, %362
  store i32 %363, i32* %11, align 4
  %364 = load i32, i32* %10, align 4
  store i32 %364, i32* %12, align 4
  %365 = load i32, i32* %11, align 4
  store i32 %365, i32* %10, align 4
  %366 = load i32, i32* %12, align 4
  %367 = load i32, i32* %11, align 4
  %368 = load i32*, i32** %14, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 0
  %370 = load i32, i32* %369, align 4
  %371 = load i32*, i32** %15, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 0
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @F1(i32 %367, i32 %370, i32 %373)
  %375 = xor i32 %366, %374
  store i32 %375, i32* %11, align 4
  br label %376

376:                                              ; preds = %231, %38
  %377 = load i32, i32* %11, align 4
  %378 = call i32 @cpu_to_be32(i32 %377)
  %379 = load i32*, i32** %9, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 0
  store i32 %378, i32* %380, align 4
  %381 = load i32, i32* %10, align 4
  %382 = call i32 @cpu_to_be32(i32 %381)
  %383 = load i32*, i32** %9, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 1
  store i32 %382, i32* %384, align 4
  ret void
}

declare dso_local %struct.cast5_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @F1(i32, i32, i32) #1

declare dso_local i32 @F3(i32, i32, i32) #1

declare dso_local i32 @F2(i32, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
