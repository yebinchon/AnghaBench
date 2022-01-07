; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_camellia.c_camellia_do_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_camellia.c_camellia_do_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @camellia_do_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camellia_do_decrypt(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @SUBKEY_L(i32 %11)
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = xor i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @SUBKEY_R(i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 32
  br i1 %24, label %25, label %153

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SUBKEY_L(i32 31)
  %34 = call i32 @SUBKEY_R(i32 31)
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %29, i32 %32, i32 %33, i32 %34, i32 %37, i32 %40, i32 %41, i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @SUBKEY_L(i32 30)
  %51 = call i32 @SUBKEY_R(i32 30)
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %46, i32 %49, i32 %50, i32 %51, i32 %54, i32 %57, i32 %58, i32 %59)
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @SUBKEY_L(i32 29)
  %68 = call i32 @SUBKEY_R(i32 29)
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %63, i32 %66, i32 %67, i32 %68, i32 %71, i32 %74, i32 %75, i32 %76)
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @SUBKEY_L(i32 28)
  %85 = call i32 @SUBKEY_R(i32 28)
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %80, i32 %83, i32 %84, i32 %85, i32 %88, i32 %91, i32 %92, i32 %93)
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @SUBKEY_L(i32 27)
  %102 = call i32 @SUBKEY_R(i32 27)
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %97, i32 %100, i32 %101, i32 %102, i32 %105, i32 %108, i32 %109, i32 %110)
  %112 = load i32*, i32** %5, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @SUBKEY_L(i32 26)
  %119 = call i32 @SUBKEY_R(i32 26)
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %114, i32 %117, i32 %118, i32 %119, i32 %122, i32 %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %26
  br label %130

130:                                              ; preds = %129
  %131 = load i32*, i32** %5, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %5, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %5, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %5, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @SUBKEY_L(i32 25)
  %144 = call i32 @SUBKEY_R(i32 25)
  %145 = call i32 @SUBKEY_L(i32 24)
  %146 = call i32 @SUBKEY_R(i32 24)
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_FLS to i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %133, i32 %136, i32 %139, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %130
  br label %153

153:                                              ; preds = %152, %3
  br label %154

154:                                              ; preds = %153
  %155 = load i32*, i32** %5, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %5, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @SUBKEY_L(i32 23)
  %162 = call i32 @SUBKEY_R(i32 23)
  %163 = load i32*, i32** %5, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 2
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %5, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 3
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %8, align 4
  %171 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %157, i32 %160, i32 %161, i32 %162, i32 %165, i32 %168, i32 %169, i32 %170)
  %172 = load i32*, i32** %5, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %5, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 3
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @SUBKEY_L(i32 22)
  %179 = call i32 @SUBKEY_R(i32 22)
  %180 = load i32*, i32** %5, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %5, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %8, align 4
  %188 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %174, i32 %177, i32 %178, i32 %179, i32 %182, i32 %185, i32 %186, i32 %187)
  %189 = load i32*, i32** %5, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %5, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @SUBKEY_L(i32 21)
  %196 = call i32 @SUBKEY_R(i32 21)
  %197 = load i32*, i32** %5, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 2
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %5, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 3
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* %8, align 4
  %205 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %191, i32 %194, i32 %195, i32 %196, i32 %199, i32 %202, i32 %203, i32 %204)
  %206 = load i32*, i32** %5, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 2
  %208 = load i32, i32* %207, align 4
  %209 = load i32*, i32** %5, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 3
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @SUBKEY_L(i32 20)
  %213 = call i32 @SUBKEY_R(i32 20)
  %214 = load i32*, i32** %5, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %5, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* %8, align 4
  %222 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %208, i32 %211, i32 %212, i32 %213, i32 %216, i32 %219, i32 %220, i32 %221)
  %223 = load i32*, i32** %5, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %5, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @SUBKEY_L(i32 19)
  %230 = call i32 @SUBKEY_R(i32 19)
  %231 = load i32*, i32** %5, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 2
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %5, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 3
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* %8, align 4
  %239 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %225, i32 %228, i32 %229, i32 %230, i32 %233, i32 %236, i32 %237, i32 %238)
  %240 = load i32*, i32** %5, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 2
  %242 = load i32, i32* %241, align 4
  %243 = load i32*, i32** %5, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 3
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @SUBKEY_L(i32 18)
  %247 = call i32 @SUBKEY_R(i32 18)
  %248 = load i32*, i32** %5, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32*, i32** %5, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* %8, align 4
  %256 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %242, i32 %245, i32 %246, i32 %247, i32 %250, i32 %253, i32 %254, i32 %255)
  br label %257

257:                                              ; preds = %154
  br label %258

258:                                              ; preds = %257
  %259 = load i32*, i32** %5, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32*, i32** %5, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 1
  %264 = load i32, i32* %263, align 4
  %265 = load i32*, i32** %5, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 2
  %267 = load i32, i32* %266, align 4
  %268 = load i32*, i32** %5, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 3
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @SUBKEY_L(i32 17)
  %272 = call i32 @SUBKEY_R(i32 17)
  %273 = call i32 @SUBKEY_L(i32 16)
  %274 = call i32 @SUBKEY_R(i32 16)
  %275 = load i32, i32* %9, align 4
  %276 = load i32, i32* %10, align 4
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* %8, align 4
  %279 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_FLS to i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %261, i32 %264, i32 %267, i32 %270, i32 %271, i32 %272, i32 %273, i32 %274, i32 %275, i32 %276, i32 %277, i32 %278)
  br label %280

280:                                              ; preds = %258
  br label %281

281:                                              ; preds = %280
  %282 = load i32*, i32** %5, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 0
  %284 = load i32, i32* %283, align 4
  %285 = load i32*, i32** %5, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @SUBKEY_L(i32 15)
  %289 = call i32 @SUBKEY_R(i32 15)
  %290 = load i32*, i32** %5, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 2
  %292 = load i32, i32* %291, align 4
  %293 = load i32*, i32** %5, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 3
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* %7, align 4
  %297 = load i32, i32* %8, align 4
  %298 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %284, i32 %287, i32 %288, i32 %289, i32 %292, i32 %295, i32 %296, i32 %297)
  %299 = load i32*, i32** %5, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 2
  %301 = load i32, i32* %300, align 4
  %302 = load i32*, i32** %5, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 3
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @SUBKEY_L(i32 14)
  %306 = call i32 @SUBKEY_R(i32 14)
  %307 = load i32*, i32** %5, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  %309 = load i32, i32* %308, align 4
  %310 = load i32*, i32** %5, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 1
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %7, align 4
  %314 = load i32, i32* %8, align 4
  %315 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %301, i32 %304, i32 %305, i32 %306, i32 %309, i32 %312, i32 %313, i32 %314)
  %316 = load i32*, i32** %5, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32*, i32** %5, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 1
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @SUBKEY_L(i32 13)
  %323 = call i32 @SUBKEY_R(i32 13)
  %324 = load i32*, i32** %5, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 2
  %326 = load i32, i32* %325, align 4
  %327 = load i32*, i32** %5, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 3
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* %7, align 4
  %331 = load i32, i32* %8, align 4
  %332 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %318, i32 %321, i32 %322, i32 %323, i32 %326, i32 %329, i32 %330, i32 %331)
  %333 = load i32*, i32** %5, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 2
  %335 = load i32, i32* %334, align 4
  %336 = load i32*, i32** %5, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 3
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @SUBKEY_L(i32 12)
  %340 = call i32 @SUBKEY_R(i32 12)
  %341 = load i32*, i32** %5, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 0
  %343 = load i32, i32* %342, align 4
  %344 = load i32*, i32** %5, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 1
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* %7, align 4
  %348 = load i32, i32* %8, align 4
  %349 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %335, i32 %338, i32 %339, i32 %340, i32 %343, i32 %346, i32 %347, i32 %348)
  %350 = load i32*, i32** %5, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 0
  %352 = load i32, i32* %351, align 4
  %353 = load i32*, i32** %5, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 1
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @SUBKEY_L(i32 11)
  %357 = call i32 @SUBKEY_R(i32 11)
  %358 = load i32*, i32** %5, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 2
  %360 = load i32, i32* %359, align 4
  %361 = load i32*, i32** %5, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 3
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* %7, align 4
  %365 = load i32, i32* %8, align 4
  %366 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %352, i32 %355, i32 %356, i32 %357, i32 %360, i32 %363, i32 %364, i32 %365)
  %367 = load i32*, i32** %5, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 2
  %369 = load i32, i32* %368, align 4
  %370 = load i32*, i32** %5, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 3
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @SUBKEY_L(i32 10)
  %374 = call i32 @SUBKEY_R(i32 10)
  %375 = load i32*, i32** %5, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 0
  %377 = load i32, i32* %376, align 4
  %378 = load i32*, i32** %5, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 1
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* %7, align 4
  %382 = load i32, i32* %8, align 4
  %383 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %369, i32 %372, i32 %373, i32 %374, i32 %377, i32 %380, i32 %381, i32 %382)
  br label %384

384:                                              ; preds = %281
  br label %385

385:                                              ; preds = %384
  %386 = load i32*, i32** %5, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 0
  %388 = load i32, i32* %387, align 4
  %389 = load i32*, i32** %5, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 1
  %391 = load i32, i32* %390, align 4
  %392 = load i32*, i32** %5, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 2
  %394 = load i32, i32* %393, align 4
  %395 = load i32*, i32** %5, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 3
  %397 = load i32, i32* %396, align 4
  %398 = call i32 @SUBKEY_L(i32 9)
  %399 = call i32 @SUBKEY_R(i32 9)
  %400 = call i32 @SUBKEY_L(i32 8)
  %401 = call i32 @SUBKEY_R(i32 8)
  %402 = load i32, i32* %9, align 4
  %403 = load i32, i32* %10, align 4
  %404 = load i32, i32* %7, align 4
  %405 = load i32, i32* %8, align 4
  %406 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_FLS to i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %388, i32 %391, i32 %394, i32 %397, i32 %398, i32 %399, i32 %400, i32 %401, i32 %402, i32 %403, i32 %404, i32 %405)
  br label %407

407:                                              ; preds = %385
  br label %408

408:                                              ; preds = %407
  %409 = load i32*, i32** %5, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 0
  %411 = load i32, i32* %410, align 4
  %412 = load i32*, i32** %5, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 1
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @SUBKEY_L(i32 7)
  %416 = call i32 @SUBKEY_R(i32 7)
  %417 = load i32*, i32** %5, align 8
  %418 = getelementptr inbounds i32, i32* %417, i64 2
  %419 = load i32, i32* %418, align 4
  %420 = load i32*, i32** %5, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 3
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* %7, align 4
  %424 = load i32, i32* %8, align 4
  %425 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %411, i32 %414, i32 %415, i32 %416, i32 %419, i32 %422, i32 %423, i32 %424)
  %426 = load i32*, i32** %5, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 2
  %428 = load i32, i32* %427, align 4
  %429 = load i32*, i32** %5, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 3
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @SUBKEY_L(i32 6)
  %433 = call i32 @SUBKEY_R(i32 6)
  %434 = load i32*, i32** %5, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 0
  %436 = load i32, i32* %435, align 4
  %437 = load i32*, i32** %5, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 1
  %439 = load i32, i32* %438, align 4
  %440 = load i32, i32* %7, align 4
  %441 = load i32, i32* %8, align 4
  %442 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %428, i32 %431, i32 %432, i32 %433, i32 %436, i32 %439, i32 %440, i32 %441)
  %443 = load i32*, i32** %5, align 8
  %444 = getelementptr inbounds i32, i32* %443, i64 0
  %445 = load i32, i32* %444, align 4
  %446 = load i32*, i32** %5, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 1
  %448 = load i32, i32* %447, align 4
  %449 = call i32 @SUBKEY_L(i32 5)
  %450 = call i32 @SUBKEY_R(i32 5)
  %451 = load i32*, i32** %5, align 8
  %452 = getelementptr inbounds i32, i32* %451, i64 2
  %453 = load i32, i32* %452, align 4
  %454 = load i32*, i32** %5, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 3
  %456 = load i32, i32* %455, align 4
  %457 = load i32, i32* %7, align 4
  %458 = load i32, i32* %8, align 4
  %459 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %445, i32 %448, i32 %449, i32 %450, i32 %453, i32 %456, i32 %457, i32 %458)
  %460 = load i32*, i32** %5, align 8
  %461 = getelementptr inbounds i32, i32* %460, i64 2
  %462 = load i32, i32* %461, align 4
  %463 = load i32*, i32** %5, align 8
  %464 = getelementptr inbounds i32, i32* %463, i64 3
  %465 = load i32, i32* %464, align 4
  %466 = call i32 @SUBKEY_L(i32 4)
  %467 = call i32 @SUBKEY_R(i32 4)
  %468 = load i32*, i32** %5, align 8
  %469 = getelementptr inbounds i32, i32* %468, i64 0
  %470 = load i32, i32* %469, align 4
  %471 = load i32*, i32** %5, align 8
  %472 = getelementptr inbounds i32, i32* %471, i64 1
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* %7, align 4
  %475 = load i32, i32* %8, align 4
  %476 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %462, i32 %465, i32 %466, i32 %467, i32 %470, i32 %473, i32 %474, i32 %475)
  %477 = load i32*, i32** %5, align 8
  %478 = getelementptr inbounds i32, i32* %477, i64 0
  %479 = load i32, i32* %478, align 4
  %480 = load i32*, i32** %5, align 8
  %481 = getelementptr inbounds i32, i32* %480, i64 1
  %482 = load i32, i32* %481, align 4
  %483 = call i32 @SUBKEY_L(i32 3)
  %484 = call i32 @SUBKEY_R(i32 3)
  %485 = load i32*, i32** %5, align 8
  %486 = getelementptr inbounds i32, i32* %485, i64 2
  %487 = load i32, i32* %486, align 4
  %488 = load i32*, i32** %5, align 8
  %489 = getelementptr inbounds i32, i32* %488, i64 3
  %490 = load i32, i32* %489, align 4
  %491 = load i32, i32* %7, align 4
  %492 = load i32, i32* %8, align 4
  %493 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %479, i32 %482, i32 %483, i32 %484, i32 %487, i32 %490, i32 %491, i32 %492)
  %494 = load i32*, i32** %5, align 8
  %495 = getelementptr inbounds i32, i32* %494, i64 2
  %496 = load i32, i32* %495, align 4
  %497 = load i32*, i32** %5, align 8
  %498 = getelementptr inbounds i32, i32* %497, i64 3
  %499 = load i32, i32* %498, align 4
  %500 = call i32 @SUBKEY_L(i32 2)
  %501 = call i32 @SUBKEY_R(i32 2)
  %502 = load i32*, i32** %5, align 8
  %503 = getelementptr inbounds i32, i32* %502, i64 0
  %504 = load i32, i32* %503, align 4
  %505 = load i32*, i32** %5, align 8
  %506 = getelementptr inbounds i32, i32* %505, i64 1
  %507 = load i32, i32* %506, align 4
  %508 = load i32, i32* %7, align 4
  %509 = load i32, i32* %8, align 4
  %510 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %496, i32 %499, i32 %500, i32 %501, i32 %504, i32 %507, i32 %508, i32 %509)
  br label %511

511:                                              ; preds = %408
  %512 = call i32 @SUBKEY_L(i32 0)
  %513 = load i32*, i32** %5, align 8
  %514 = getelementptr inbounds i32, i32* %513, i64 2
  %515 = load i32, i32* %514, align 4
  %516 = xor i32 %515, %512
  store i32 %516, i32* %514, align 4
  %517 = call i32 @SUBKEY_R(i32 0)
  %518 = load i32*, i32** %5, align 8
  %519 = getelementptr inbounds i32, i32* %518, i64 3
  %520 = load i32, i32* %519, align 4
  %521 = xor i32 %520, %517
  store i32 %521, i32* %519, align 4
  ret void
}

declare dso_local i32 @SUBKEY_L(i32) #1

declare dso_local i32 @SUBKEY_R(i32) #1

declare dso_local i32 @CAMELLIA_ROUNDSM(...) #1

declare dso_local i32 @CAMELLIA_FLS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
