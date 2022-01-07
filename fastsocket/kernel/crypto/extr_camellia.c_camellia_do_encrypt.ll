; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_camellia.c_camellia_do_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_camellia.c_camellia_do_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @camellia_do_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camellia_do_encrypt(i32* %0, i32* %1, i32 %2) #0 {
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
  %11 = call i32 @SUBKEY_L(i32 0)
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = xor i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = call i32 @SUBKEY_R(i32 0)
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SUBKEY_L(i32 2)
  %29 = call i32 @SUBKEY_R(i32 2)
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %24, i32 %27, i32 %28, i32 %29, i32 %32, i32 %35, i32 %36, i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @SUBKEY_L(i32 3)
  %46 = call i32 @SUBKEY_R(i32 3)
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %41, i32 %44, i32 %45, i32 %46, i32 %49, i32 %52, i32 %53, i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @SUBKEY_L(i32 4)
  %63 = call i32 @SUBKEY_R(i32 4)
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %58, i32 %61, i32 %62, i32 %63, i32 %66, i32 %69, i32 %70, i32 %71)
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @SUBKEY_L(i32 5)
  %80 = call i32 @SUBKEY_R(i32 5)
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %75, i32 %78, i32 %79, i32 %80, i32 %83, i32 %86, i32 %87, i32 %88)
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @SUBKEY_L(i32 6)
  %97 = call i32 @SUBKEY_R(i32 6)
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %92, i32 %95, i32 %96, i32 %97, i32 %100, i32 %103, i32 %104, i32 %105)
  %107 = load i32*, i32** %5, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @SUBKEY_L(i32 7)
  %114 = call i32 @SUBKEY_R(i32 7)
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %5, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %109, i32 %112, i32 %113, i32 %114, i32 %117, i32 %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %21
  br label %125

125:                                              ; preds = %124
  %126 = load i32*, i32** %5, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %5, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %5, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 3
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @SUBKEY_L(i32 8)
  %139 = call i32 @SUBKEY_R(i32 8)
  %140 = call i32 @SUBKEY_L(i32 9)
  %141 = call i32 @SUBKEY_R(i32 9)
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_FLS to i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %128, i32 %131, i32 %134, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %125
  br label %148

148:                                              ; preds = %147
  %149 = load i32*, i32** %5, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %5, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @SUBKEY_L(i32 10)
  %156 = call i32 @SUBKEY_R(i32 10)
  %157 = load i32*, i32** %5, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %5, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %151, i32 %154, i32 %155, i32 %156, i32 %159, i32 %162, i32 %163, i32 %164)
  %166 = load i32*, i32** %5, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 2
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %5, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 3
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @SUBKEY_L(i32 11)
  %173 = call i32 @SUBKEY_R(i32 11)
  %174 = load i32*, i32** %5, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %5, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* %8, align 4
  %182 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %168, i32 %171, i32 %172, i32 %173, i32 %176, i32 %179, i32 %180, i32 %181)
  %183 = load i32*, i32** %5, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %5, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @SUBKEY_L(i32 12)
  %190 = call i32 @SUBKEY_R(i32 12)
  %191 = load i32*, i32** %5, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %5, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 3
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* %8, align 4
  %199 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %185, i32 %188, i32 %189, i32 %190, i32 %193, i32 %196, i32 %197, i32 %198)
  %200 = load i32*, i32** %5, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %5, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 3
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @SUBKEY_L(i32 13)
  %207 = call i32 @SUBKEY_R(i32 13)
  %208 = load i32*, i32** %5, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** %5, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* %8, align 4
  %216 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %202, i32 %205, i32 %206, i32 %207, i32 %210, i32 %213, i32 %214, i32 %215)
  %217 = load i32*, i32** %5, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %5, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @SUBKEY_L(i32 14)
  %224 = call i32 @SUBKEY_R(i32 14)
  %225 = load i32*, i32** %5, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 2
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** %5, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 3
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* %8, align 4
  %233 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %219, i32 %222, i32 %223, i32 %224, i32 %227, i32 %230, i32 %231, i32 %232)
  %234 = load i32*, i32** %5, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 2
  %236 = load i32, i32* %235, align 4
  %237 = load i32*, i32** %5, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 3
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @SUBKEY_L(i32 15)
  %241 = call i32 @SUBKEY_R(i32 15)
  %242 = load i32*, i32** %5, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32*, i32** %5, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %7, align 4
  %249 = load i32, i32* %8, align 4
  %250 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %236, i32 %239, i32 %240, i32 %241, i32 %244, i32 %247, i32 %248, i32 %249)
  br label %251

251:                                              ; preds = %148
  br label %252

252:                                              ; preds = %251
  %253 = load i32*, i32** %5, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32*, i32** %5, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32*, i32** %5, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 2
  %261 = load i32, i32* %260, align 4
  %262 = load i32*, i32** %5, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 3
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @SUBKEY_L(i32 16)
  %266 = call i32 @SUBKEY_R(i32 16)
  %267 = call i32 @SUBKEY_L(i32 17)
  %268 = call i32 @SUBKEY_R(i32 17)
  %269 = load i32, i32* %9, align 4
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* %7, align 4
  %272 = load i32, i32* %8, align 4
  %273 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_FLS to i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %255, i32 %258, i32 %261, i32 %264, i32 %265, i32 %266, i32 %267, i32 %268, i32 %269, i32 %270, i32 %271, i32 %272)
  br label %274

274:                                              ; preds = %252
  br label %275

275:                                              ; preds = %274
  %276 = load i32*, i32** %5, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32*, i32** %5, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 1
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @SUBKEY_L(i32 18)
  %283 = call i32 @SUBKEY_R(i32 18)
  %284 = load i32*, i32** %5, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 2
  %286 = load i32, i32* %285, align 4
  %287 = load i32*, i32** %5, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 3
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %7, align 4
  %291 = load i32, i32* %8, align 4
  %292 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %278, i32 %281, i32 %282, i32 %283, i32 %286, i32 %289, i32 %290, i32 %291)
  %293 = load i32*, i32** %5, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 2
  %295 = load i32, i32* %294, align 4
  %296 = load i32*, i32** %5, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 3
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @SUBKEY_L(i32 19)
  %300 = call i32 @SUBKEY_R(i32 19)
  %301 = load i32*, i32** %5, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 0
  %303 = load i32, i32* %302, align 4
  %304 = load i32*, i32** %5, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 1
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %7, align 4
  %308 = load i32, i32* %8, align 4
  %309 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %295, i32 %298, i32 %299, i32 %300, i32 %303, i32 %306, i32 %307, i32 %308)
  %310 = load i32*, i32** %5, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 0
  %312 = load i32, i32* %311, align 4
  %313 = load i32*, i32** %5, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 1
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @SUBKEY_L(i32 20)
  %317 = call i32 @SUBKEY_R(i32 20)
  %318 = load i32*, i32** %5, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 2
  %320 = load i32, i32* %319, align 4
  %321 = load i32*, i32** %5, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 3
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %7, align 4
  %325 = load i32, i32* %8, align 4
  %326 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %312, i32 %315, i32 %316, i32 %317, i32 %320, i32 %323, i32 %324, i32 %325)
  %327 = load i32*, i32** %5, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 2
  %329 = load i32, i32* %328, align 4
  %330 = load i32*, i32** %5, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 3
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @SUBKEY_L(i32 21)
  %334 = call i32 @SUBKEY_R(i32 21)
  %335 = load i32*, i32** %5, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 0
  %337 = load i32, i32* %336, align 4
  %338 = load i32*, i32** %5, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 1
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* %7, align 4
  %342 = load i32, i32* %8, align 4
  %343 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %329, i32 %332, i32 %333, i32 %334, i32 %337, i32 %340, i32 %341, i32 %342)
  %344 = load i32*, i32** %5, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 0
  %346 = load i32, i32* %345, align 4
  %347 = load i32*, i32** %5, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 1
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @SUBKEY_L(i32 22)
  %351 = call i32 @SUBKEY_R(i32 22)
  %352 = load i32*, i32** %5, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 2
  %354 = load i32, i32* %353, align 4
  %355 = load i32*, i32** %5, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 3
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* %7, align 4
  %359 = load i32, i32* %8, align 4
  %360 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %346, i32 %349, i32 %350, i32 %351, i32 %354, i32 %357, i32 %358, i32 %359)
  %361 = load i32*, i32** %5, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 2
  %363 = load i32, i32* %362, align 4
  %364 = load i32*, i32** %5, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 3
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @SUBKEY_L(i32 23)
  %368 = call i32 @SUBKEY_R(i32 23)
  %369 = load i32*, i32** %5, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 0
  %371 = load i32, i32* %370, align 4
  %372 = load i32*, i32** %5, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 1
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* %7, align 4
  %376 = load i32, i32* %8, align 4
  %377 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %363, i32 %366, i32 %367, i32 %368, i32 %371, i32 %374, i32 %375, i32 %376)
  br label %378

378:                                              ; preds = %275
  %379 = load i32, i32* %6, align 4
  %380 = icmp eq i32 %379, 32
  br i1 %380, label %381, label %509

381:                                              ; preds = %378
  br label %382

382:                                              ; preds = %381
  %383 = load i32*, i32** %5, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 0
  %385 = load i32, i32* %384, align 4
  %386 = load i32*, i32** %5, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 1
  %388 = load i32, i32* %387, align 4
  %389 = load i32*, i32** %5, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 2
  %391 = load i32, i32* %390, align 4
  %392 = load i32*, i32** %5, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 3
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @SUBKEY_L(i32 24)
  %396 = call i32 @SUBKEY_R(i32 24)
  %397 = call i32 @SUBKEY_L(i32 25)
  %398 = call i32 @SUBKEY_R(i32 25)
  %399 = load i32, i32* %9, align 4
  %400 = load i32, i32* %10, align 4
  %401 = load i32, i32* %7, align 4
  %402 = load i32, i32* %8, align 4
  %403 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_FLS to i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %385, i32 %388, i32 %391, i32 %394, i32 %395, i32 %396, i32 %397, i32 %398, i32 %399, i32 %400, i32 %401, i32 %402)
  br label %404

404:                                              ; preds = %382
  br label %405

405:                                              ; preds = %404
  %406 = load i32*, i32** %5, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 0
  %408 = load i32, i32* %407, align 4
  %409 = load i32*, i32** %5, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 1
  %411 = load i32, i32* %410, align 4
  %412 = call i32 @SUBKEY_L(i32 26)
  %413 = call i32 @SUBKEY_R(i32 26)
  %414 = load i32*, i32** %5, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 2
  %416 = load i32, i32* %415, align 4
  %417 = load i32*, i32** %5, align 8
  %418 = getelementptr inbounds i32, i32* %417, i64 3
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* %7, align 4
  %421 = load i32, i32* %8, align 4
  %422 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %408, i32 %411, i32 %412, i32 %413, i32 %416, i32 %419, i32 %420, i32 %421)
  %423 = load i32*, i32** %5, align 8
  %424 = getelementptr inbounds i32, i32* %423, i64 2
  %425 = load i32, i32* %424, align 4
  %426 = load i32*, i32** %5, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 3
  %428 = load i32, i32* %427, align 4
  %429 = call i32 @SUBKEY_L(i32 27)
  %430 = call i32 @SUBKEY_R(i32 27)
  %431 = load i32*, i32** %5, align 8
  %432 = getelementptr inbounds i32, i32* %431, i64 0
  %433 = load i32, i32* %432, align 4
  %434 = load i32*, i32** %5, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 1
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* %7, align 4
  %438 = load i32, i32* %8, align 4
  %439 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %425, i32 %428, i32 %429, i32 %430, i32 %433, i32 %436, i32 %437, i32 %438)
  %440 = load i32*, i32** %5, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 0
  %442 = load i32, i32* %441, align 4
  %443 = load i32*, i32** %5, align 8
  %444 = getelementptr inbounds i32, i32* %443, i64 1
  %445 = load i32, i32* %444, align 4
  %446 = call i32 @SUBKEY_L(i32 28)
  %447 = call i32 @SUBKEY_R(i32 28)
  %448 = load i32*, i32** %5, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 2
  %450 = load i32, i32* %449, align 4
  %451 = load i32*, i32** %5, align 8
  %452 = getelementptr inbounds i32, i32* %451, i64 3
  %453 = load i32, i32* %452, align 4
  %454 = load i32, i32* %7, align 4
  %455 = load i32, i32* %8, align 4
  %456 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %442, i32 %445, i32 %446, i32 %447, i32 %450, i32 %453, i32 %454, i32 %455)
  %457 = load i32*, i32** %5, align 8
  %458 = getelementptr inbounds i32, i32* %457, i64 2
  %459 = load i32, i32* %458, align 4
  %460 = load i32*, i32** %5, align 8
  %461 = getelementptr inbounds i32, i32* %460, i64 3
  %462 = load i32, i32* %461, align 4
  %463 = call i32 @SUBKEY_L(i32 29)
  %464 = call i32 @SUBKEY_R(i32 29)
  %465 = load i32*, i32** %5, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 0
  %467 = load i32, i32* %466, align 4
  %468 = load i32*, i32** %5, align 8
  %469 = getelementptr inbounds i32, i32* %468, i64 1
  %470 = load i32, i32* %469, align 4
  %471 = load i32, i32* %7, align 4
  %472 = load i32, i32* %8, align 4
  %473 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %459, i32 %462, i32 %463, i32 %464, i32 %467, i32 %470, i32 %471, i32 %472)
  %474 = load i32*, i32** %5, align 8
  %475 = getelementptr inbounds i32, i32* %474, i64 0
  %476 = load i32, i32* %475, align 4
  %477 = load i32*, i32** %5, align 8
  %478 = getelementptr inbounds i32, i32* %477, i64 1
  %479 = load i32, i32* %478, align 4
  %480 = call i32 @SUBKEY_L(i32 30)
  %481 = call i32 @SUBKEY_R(i32 30)
  %482 = load i32*, i32** %5, align 8
  %483 = getelementptr inbounds i32, i32* %482, i64 2
  %484 = load i32, i32* %483, align 4
  %485 = load i32*, i32** %5, align 8
  %486 = getelementptr inbounds i32, i32* %485, i64 3
  %487 = load i32, i32* %486, align 4
  %488 = load i32, i32* %7, align 4
  %489 = load i32, i32* %8, align 4
  %490 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %476, i32 %479, i32 %480, i32 %481, i32 %484, i32 %487, i32 %488, i32 %489)
  %491 = load i32*, i32** %5, align 8
  %492 = getelementptr inbounds i32, i32* %491, i64 2
  %493 = load i32, i32* %492, align 4
  %494 = load i32*, i32** %5, align 8
  %495 = getelementptr inbounds i32, i32* %494, i64 3
  %496 = load i32, i32* %495, align 4
  %497 = call i32 @SUBKEY_L(i32 31)
  %498 = call i32 @SUBKEY_R(i32 31)
  %499 = load i32*, i32** %5, align 8
  %500 = getelementptr inbounds i32, i32* %499, i64 0
  %501 = load i32, i32* %500, align 4
  %502 = load i32*, i32** %5, align 8
  %503 = getelementptr inbounds i32, i32* %502, i64 1
  %504 = load i32, i32* %503, align 4
  %505 = load i32, i32* %7, align 4
  %506 = load i32, i32* %8, align 4
  %507 = call i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @CAMELLIA_ROUNDSM to i32 (i32, i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %493, i32 %496, i32 %497, i32 %498, i32 %501, i32 %504, i32 %505, i32 %506)
  br label %508

508:                                              ; preds = %405
  br label %509

509:                                              ; preds = %508, %378
  %510 = load i32, i32* %6, align 4
  %511 = call i32 @SUBKEY_L(i32 %510)
  %512 = load i32*, i32** %5, align 8
  %513 = getelementptr inbounds i32, i32* %512, i64 2
  %514 = load i32, i32* %513, align 4
  %515 = xor i32 %514, %511
  store i32 %515, i32* %513, align 4
  %516 = load i32, i32* %6, align 4
  %517 = call i32 @SUBKEY_R(i32 %516)
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
