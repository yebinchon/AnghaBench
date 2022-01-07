; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_twofish_common.c_twofish_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_twofish_common.c_twofish_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.twofish_ctx = type { i32 }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@calc_sb_tbl = common dso_local global i32* null, align 8
@w = common dso_local global i32 0, align 4
@q0 = common dso_local global i32* null, align 8
@q1 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twofish_setkey(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.twofish_ctx*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %32 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %33 = call %struct.twofish_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %32)
  store %struct.twofish_ctx* %33, %struct.twofish_ctx** %8, align 8
  %34 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %35 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %34, i32 0, i32 0
  store i32* %35, i32** %9, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %36 = load i32, i32* %7, align 4
  %37 = urem i32 %36, 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %3
  %40 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %500

46:                                               ; preds = %3
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @CALC_S(i32 %47, i32 %48, i32 %49, i32 %50, i32 0, i32 0, i32 45, i32 1, i32 45)
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %18, align 4
  %56 = call i32 @CALC_S(i32 %52, i32 %53, i32 %54, i32 %55, i32 1, i32 45, i32 164, i32 68, i32 138)
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %18, align 4
  %61 = call i32 @CALC_S(i32 %57, i32 %58, i32 %59, i32 %60, i32 2, i32 138, i32 213, i32 191, i32 209)
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %18, align 4
  %66 = call i32 @CALC_S(i32 %62, i32 %63, i32 %64, i32 %65, i32 3, i32 209, i32 127, i32 61, i32 153)
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %18, align 4
  %71 = call i32 @CALC_S(i32 %67, i32 %68, i32 %69, i32 %70, i32 4, i32 153, i32 70, i32 102, i32 150)
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* %18, align 4
  %76 = call i32 @CALC_S(i32 %72, i32 %73, i32 %74, i32 %75, i32 5, i32 150, i32 60, i32 91, i32 237)
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %18, align 4
  %81 = call i32 @CALC_S(i32 %77, i32 %78, i32 %79, i32 %80, i32 6, i32 237, i32 55, i32 79, i32 224)
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %18, align 4
  %86 = call i32 @CALC_S(i32 %82, i32 %83, i32 %84, i32 %85, i32 7, i32 224, i32 208, i32 140, i32 23)
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %22, align 4
  %91 = call i32 @CALC_S(i32 %87, i32 %88, i32 %89, i32 %90, i32 8, i32 0, i32 45, i32 1, i32 45)
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* %22, align 4
  %96 = call i32 @CALC_S(i32 %92, i32 %93, i32 %94, i32 %95, i32 9, i32 45, i32 164, i32 68, i32 138)
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* %22, align 4
  %101 = call i32 @CALC_S(i32 %97, i32 %98, i32 %99, i32 %100, i32 10, i32 138, i32 213, i32 191, i32 209)
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* %21, align 4
  %105 = load i32, i32* %22, align 4
  %106 = call i32 @CALC_S(i32 %102, i32 %103, i32 %104, i32 %105, i32 11, i32 209, i32 127, i32 61, i32 153)
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %22, align 4
  %111 = call i32 @CALC_S(i32 %107, i32 %108, i32 %109, i32 %110, i32 12, i32 153, i32 70, i32 102, i32 150)
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* %21, align 4
  %115 = load i32, i32* %22, align 4
  %116 = call i32 @CALC_S(i32 %112, i32 %113, i32 %114, i32 %115, i32 13, i32 150, i32 60, i32 91, i32 237)
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* %22, align 4
  %121 = call i32 @CALC_S(i32 %117, i32 %118, i32 %119, i32 %120, i32 14, i32 237, i32 55, i32 79, i32 224)
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %20, align 4
  %124 = load i32, i32* %21, align 4
  %125 = load i32, i32* %22, align 4
  %126 = call i32 @CALC_S(i32 %122, i32 %123, i32 %124, i32 %125, i32 15, i32 224, i32 208, i32 140, i32 23)
  %127 = load i32, i32* %7, align 4
  %128 = icmp eq i32 %127, 24
  br i1 %128, label %132, label %129

129:                                              ; preds = %46
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 %130, 32
  br i1 %131, label %132, label %173

132:                                              ; preds = %129, %46
  %133 = load i32, i32* %23, align 4
  %134 = load i32, i32* %24, align 4
  %135 = load i32, i32* %25, align 4
  %136 = load i32, i32* %26, align 4
  %137 = call i32 @CALC_S(i32 %133, i32 %134, i32 %135, i32 %136, i32 16, i32 0, i32 45, i32 1, i32 45)
  %138 = load i32, i32* %23, align 4
  %139 = load i32, i32* %24, align 4
  %140 = load i32, i32* %25, align 4
  %141 = load i32, i32* %26, align 4
  %142 = call i32 @CALC_S(i32 %138, i32 %139, i32 %140, i32 %141, i32 17, i32 45, i32 164, i32 68, i32 138)
  %143 = load i32, i32* %23, align 4
  %144 = load i32, i32* %24, align 4
  %145 = load i32, i32* %25, align 4
  %146 = load i32, i32* %26, align 4
  %147 = call i32 @CALC_S(i32 %143, i32 %144, i32 %145, i32 %146, i32 18, i32 138, i32 213, i32 191, i32 209)
  %148 = load i32, i32* %23, align 4
  %149 = load i32, i32* %24, align 4
  %150 = load i32, i32* %25, align 4
  %151 = load i32, i32* %26, align 4
  %152 = call i32 @CALC_S(i32 %148, i32 %149, i32 %150, i32 %151, i32 19, i32 209, i32 127, i32 61, i32 153)
  %153 = load i32, i32* %23, align 4
  %154 = load i32, i32* %24, align 4
  %155 = load i32, i32* %25, align 4
  %156 = load i32, i32* %26, align 4
  %157 = call i32 @CALC_S(i32 %153, i32 %154, i32 %155, i32 %156, i32 20, i32 153, i32 70, i32 102, i32 150)
  %158 = load i32, i32* %23, align 4
  %159 = load i32, i32* %24, align 4
  %160 = load i32, i32* %25, align 4
  %161 = load i32, i32* %26, align 4
  %162 = call i32 @CALC_S(i32 %158, i32 %159, i32 %160, i32 %161, i32 21, i32 150, i32 60, i32 91, i32 237)
  %163 = load i32, i32* %23, align 4
  %164 = load i32, i32* %24, align 4
  %165 = load i32, i32* %25, align 4
  %166 = load i32, i32* %26, align 4
  %167 = call i32 @CALC_S(i32 %163, i32 %164, i32 %165, i32 %166, i32 22, i32 237, i32 55, i32 79, i32 224)
  %168 = load i32, i32* %23, align 4
  %169 = load i32, i32* %24, align 4
  %170 = load i32, i32* %25, align 4
  %171 = load i32, i32* %26, align 4
  %172 = call i32 @CALC_S(i32 %168, i32 %169, i32 %170, i32 %171, i32 23, i32 224, i32 208, i32 140, i32 23)
  br label %173

173:                                              ; preds = %132, %129
  %174 = load i32, i32* %7, align 4
  %175 = icmp eq i32 %174, 32
  br i1 %175, label %176, label %309

176:                                              ; preds = %173
  %177 = load i32, i32* %27, align 4
  %178 = load i32, i32* %28, align 4
  %179 = load i32, i32* %29, align 4
  %180 = load i32, i32* %30, align 4
  %181 = call i32 @CALC_S(i32 %177, i32 %178, i32 %179, i32 %180, i32 24, i32 0, i32 45, i32 1, i32 45)
  %182 = load i32, i32* %27, align 4
  %183 = load i32, i32* %28, align 4
  %184 = load i32, i32* %29, align 4
  %185 = load i32, i32* %30, align 4
  %186 = call i32 @CALC_S(i32 %182, i32 %183, i32 %184, i32 %185, i32 25, i32 45, i32 164, i32 68, i32 138)
  %187 = load i32, i32* %27, align 4
  %188 = load i32, i32* %28, align 4
  %189 = load i32, i32* %29, align 4
  %190 = load i32, i32* %30, align 4
  %191 = call i32 @CALC_S(i32 %187, i32 %188, i32 %189, i32 %190, i32 26, i32 138, i32 213, i32 191, i32 209)
  %192 = load i32, i32* %27, align 4
  %193 = load i32, i32* %28, align 4
  %194 = load i32, i32* %29, align 4
  %195 = load i32, i32* %30, align 4
  %196 = call i32 @CALC_S(i32 %192, i32 %193, i32 %194, i32 %195, i32 27, i32 209, i32 127, i32 61, i32 153)
  %197 = load i32, i32* %27, align 4
  %198 = load i32, i32* %28, align 4
  %199 = load i32, i32* %29, align 4
  %200 = load i32, i32* %30, align 4
  %201 = call i32 @CALC_S(i32 %197, i32 %198, i32 %199, i32 %200, i32 28, i32 153, i32 70, i32 102, i32 150)
  %202 = load i32, i32* %27, align 4
  %203 = load i32, i32* %28, align 4
  %204 = load i32, i32* %29, align 4
  %205 = load i32, i32* %30, align 4
  %206 = call i32 @CALC_S(i32 %202, i32 %203, i32 %204, i32 %205, i32 29, i32 150, i32 60, i32 91, i32 237)
  %207 = load i32, i32* %27, align 4
  %208 = load i32, i32* %28, align 4
  %209 = load i32, i32* %29, align 4
  %210 = load i32, i32* %30, align 4
  %211 = call i32 @CALC_S(i32 %207, i32 %208, i32 %209, i32 %210, i32 30, i32 237, i32 55, i32 79, i32 224)
  %212 = load i32, i32* %27, align 4
  %213 = load i32, i32* %28, align 4
  %214 = load i32, i32* %29, align 4
  %215 = load i32, i32* %30, align 4
  %216 = call i32 @CALC_S(i32 %212, i32 %213, i32 %214, i32 %215, i32 31, i32 224, i32 208, i32 140, i32 23)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %12, align 4
  br label %217

217:                                              ; preds = %233, %176
  %218 = load i32, i32* %10, align 4
  %219 = icmp slt i32 %218, 256
  br i1 %219, label %220, label %240

220:                                              ; preds = %217
  %221 = load i32, i32* %10, align 4
  %222 = load i32*, i32** @calc_sb_tbl, align 8
  %223 = load i32, i32* %11, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** @calc_sb_tbl, align 8
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @CALC_SB256_2(i32 %221, i32 %226, i32 %231)
  br label %233

233:                                              ; preds = %220
  %234 = load i32, i32* %10, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %10, align 4
  %236 = load i32, i32* %11, align 4
  %237 = add nsw i32 %236, 2
  store i32 %237, i32* %11, align 4
  %238 = load i32, i32* %12, align 4
  %239 = add nsw i32 %238, 2
  store i32 %239, i32* %12, align 4
  br label %217

240:                                              ; preds = %217
  store i32 0, i32* %10, align 4
  br label %241

241:                                              ; preds = %270, %240
  %242 = load i32, i32* %10, align 4
  %243 = icmp slt i32 %242, 8
  br i1 %243, label %244, label %273

244:                                              ; preds = %241
  %245 = load i32, i32* @w, align 4
  %246 = load i32, i32* %10, align 4
  %247 = load i32*, i32** @q0, align 8
  %248 = load i32, i32* %10, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i32*, i32** @q1, align 8
  %253 = load i32, i32* %10, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load i32*, i32** @q0, align 8
  %258 = load i32, i32* %10, align 4
  %259 = add nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %257, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load i32*, i32** @q1, align 8
  %264 = load i32, i32* %10, align 4
  %265 = add nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @CALC_K256(i32 %245, i32 %246, i32 %251, i32 %256, i32 %262, i32 %268)
  br label %270

270:                                              ; preds = %244
  %271 = load i32, i32* %10, align 4
  %272 = add nsw i32 %271, 2
  store i32 %272, i32* %10, align 4
  br label %241

273:                                              ; preds = %241
  store i32 0, i32* %10, align 4
  br label %274

274:                                              ; preds = %305, %273
  %275 = load i32, i32* %10, align 4
  %276 = icmp slt i32 %275, 32
  br i1 %276, label %277, label %308

277:                                              ; preds = %274
  %278 = load i32, i32* %12, align 4
  %279 = load i32, i32* %10, align 4
  %280 = load i32*, i32** @q0, align 8
  %281 = load i32, i32* %10, align 4
  %282 = add nsw i32 %281, 8
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %280, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load i32*, i32** @q1, align 8
  %287 = load i32, i32* %10, align 4
  %288 = add nsw i32 %287, 8
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %286, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32*, i32** @q0, align 8
  %293 = load i32, i32* %10, align 4
  %294 = add nsw i32 %293, 9
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %292, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = load i32*, i32** @q1, align 8
  %299 = load i32, i32* %10, align 4
  %300 = add nsw i32 %299, 9
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %298, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @CALC_K256(i32 %278, i32 %279, i32 %285, i32 %291, i32 %297, i32 %303)
  br label %305

305:                                              ; preds = %277
  %306 = load i32, i32* %10, align 4
  %307 = add nsw i32 %306, 2
  store i32 %307, i32* %10, align 4
  br label %274

308:                                              ; preds = %274
  br label %499

309:                                              ; preds = %173
  %310 = load i32, i32* %7, align 4
  %311 = icmp eq i32 %310, 24
  br i1 %311, label %312, label %405

312:                                              ; preds = %309
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %12, align 4
  br label %313

313:                                              ; preds = %329, %312
  %314 = load i32, i32* %10, align 4
  %315 = icmp slt i32 %314, 256
  br i1 %315, label %316, label %336

316:                                              ; preds = %313
  %317 = load i32, i32* %10, align 4
  %318 = load i32*, i32** @calc_sb_tbl, align 8
  %319 = load i32, i32* %11, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = load i32*, i32** @calc_sb_tbl, align 8
  %324 = load i32, i32* %12, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @CALC_SB192_2(i32 %317, i32 %322, i32 %327)
  br label %329

329:                                              ; preds = %316
  %330 = load i32, i32* %10, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %10, align 4
  %332 = load i32, i32* %11, align 4
  %333 = add nsw i32 %332, 2
  store i32 %333, i32* %11, align 4
  %334 = load i32, i32* %12, align 4
  %335 = add nsw i32 %334, 2
  store i32 %335, i32* %12, align 4
  br label %313

336:                                              ; preds = %313
  store i32 0, i32* %10, align 4
  br label %337

337:                                              ; preds = %366, %336
  %338 = load i32, i32* %10, align 4
  %339 = icmp slt i32 %338, 8
  br i1 %339, label %340, label %369

340:                                              ; preds = %337
  %341 = load i32, i32* @w, align 4
  %342 = load i32, i32* %10, align 4
  %343 = load i32*, i32** @q0, align 8
  %344 = load i32, i32* %10, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = load i32*, i32** @q1, align 8
  %349 = load i32, i32* %10, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = load i32*, i32** @q0, align 8
  %354 = load i32, i32* %10, align 4
  %355 = add nsw i32 %354, 1
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %353, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = load i32*, i32** @q1, align 8
  %360 = load i32, i32* %10, align 4
  %361 = add nsw i32 %360, 1
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %359, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @CALC_K192(i32 %341, i32 %342, i32 %347, i32 %352, i32 %358, i32 %364)
  br label %366

366:                                              ; preds = %340
  %367 = load i32, i32* %10, align 4
  %368 = add nsw i32 %367, 2
  store i32 %368, i32* %10, align 4
  br label %337

369:                                              ; preds = %337
  store i32 0, i32* %10, align 4
  br label %370

370:                                              ; preds = %401, %369
  %371 = load i32, i32* %10, align 4
  %372 = icmp slt i32 %371, 32
  br i1 %372, label %373, label %404

373:                                              ; preds = %370
  %374 = load i32, i32* %12, align 4
  %375 = load i32, i32* %10, align 4
  %376 = load i32*, i32** @q0, align 8
  %377 = load i32, i32* %10, align 4
  %378 = add nsw i32 %377, 8
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %376, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = load i32*, i32** @q1, align 8
  %383 = load i32, i32* %10, align 4
  %384 = add nsw i32 %383, 8
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %382, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = load i32*, i32** @q0, align 8
  %389 = load i32, i32* %10, align 4
  %390 = add nsw i32 %389, 9
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %388, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = load i32*, i32** @q1, align 8
  %395 = load i32, i32* %10, align 4
  %396 = add nsw i32 %395, 9
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %394, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = call i32 @CALC_K192(i32 %374, i32 %375, i32 %381, i32 %387, i32 %393, i32 %399)
  br label %401

401:                                              ; preds = %373
  %402 = load i32, i32* %10, align 4
  %403 = add nsw i32 %402, 2
  store i32 %403, i32* %10, align 4
  br label %370

404:                                              ; preds = %370
  br label %498

405:                                              ; preds = %309
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %12, align 4
  br label %406

406:                                              ; preds = %422, %405
  %407 = load i32, i32* %10, align 4
  %408 = icmp slt i32 %407, 256
  br i1 %408, label %409, label %429

409:                                              ; preds = %406
  %410 = load i32, i32* %10, align 4
  %411 = load i32*, i32** @calc_sb_tbl, align 8
  %412 = load i32, i32* %11, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %411, i64 %413
  %415 = load i32, i32* %414, align 4
  %416 = load i32*, i32** @calc_sb_tbl, align 8
  %417 = load i32, i32* %12, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = call i32 @CALC_SB_2(i32 %410, i32 %415, i32 %420)
  br label %422

422:                                              ; preds = %409
  %423 = load i32, i32* %10, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %10, align 4
  %425 = load i32, i32* %11, align 4
  %426 = add nsw i32 %425, 2
  store i32 %426, i32* %11, align 4
  %427 = load i32, i32* %12, align 4
  %428 = add nsw i32 %427, 2
  store i32 %428, i32* %12, align 4
  br label %406

429:                                              ; preds = %406
  store i32 0, i32* %10, align 4
  br label %430

430:                                              ; preds = %459, %429
  %431 = load i32, i32* %10, align 4
  %432 = icmp slt i32 %431, 8
  br i1 %432, label %433, label %462

433:                                              ; preds = %430
  %434 = load i32, i32* @w, align 4
  %435 = load i32, i32* %10, align 4
  %436 = load i32*, i32** @q0, align 8
  %437 = load i32, i32* %10, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = load i32*, i32** @q1, align 8
  %442 = load i32, i32* %10, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %441, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = load i32*, i32** @q0, align 8
  %447 = load i32, i32* %10, align 4
  %448 = add nsw i32 %447, 1
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32, i32* %446, i64 %449
  %451 = load i32, i32* %450, align 4
  %452 = load i32*, i32** @q1, align 8
  %453 = load i32, i32* %10, align 4
  %454 = add nsw i32 %453, 1
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i32, i32* %452, i64 %455
  %457 = load i32, i32* %456, align 4
  %458 = call i32 @CALC_K(i32 %434, i32 %435, i32 %440, i32 %445, i32 %451, i32 %457)
  br label %459

459:                                              ; preds = %433
  %460 = load i32, i32* %10, align 4
  %461 = add nsw i32 %460, 2
  store i32 %461, i32* %10, align 4
  br label %430

462:                                              ; preds = %430
  store i32 0, i32* %10, align 4
  br label %463

463:                                              ; preds = %494, %462
  %464 = load i32, i32* %10, align 4
  %465 = icmp slt i32 %464, 32
  br i1 %465, label %466, label %497

466:                                              ; preds = %463
  %467 = load i32, i32* %12, align 4
  %468 = load i32, i32* %10, align 4
  %469 = load i32*, i32** @q0, align 8
  %470 = load i32, i32* %10, align 4
  %471 = add nsw i32 %470, 8
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %469, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = load i32*, i32** @q1, align 8
  %476 = load i32, i32* %10, align 4
  %477 = add nsw i32 %476, 8
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i32, i32* %475, i64 %478
  %480 = load i32, i32* %479, align 4
  %481 = load i32*, i32** @q0, align 8
  %482 = load i32, i32* %10, align 4
  %483 = add nsw i32 %482, 9
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %481, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = load i32*, i32** @q1, align 8
  %488 = load i32, i32* %10, align 4
  %489 = add nsw i32 %488, 9
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, i32* %487, i64 %490
  %492 = load i32, i32* %491, align 4
  %493 = call i32 @CALC_K(i32 %467, i32 %468, i32 %474, i32 %480, i32 %486, i32 %492)
  br label %494

494:                                              ; preds = %466
  %495 = load i32, i32* %10, align 4
  %496 = add nsw i32 %495, 2
  store i32 %496, i32* %10, align 4
  br label %463

497:                                              ; preds = %463
  br label %498

498:                                              ; preds = %497, %404
  br label %499

499:                                              ; preds = %498, %308
  store i32 0, i32* %4, align 4
  br label %500

500:                                              ; preds = %499, %39
  %501 = load i32, i32* %4, align 4
  ret i32 %501
}

declare dso_local %struct.twofish_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @CALC_S(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CALC_SB256_2(i32, i32, i32) #1

declare dso_local i32 @CALC_K256(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CALC_SB192_2(i32, i32, i32) #1

declare dso_local i32 @CALC_K192(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CALC_SB_2(i32, i32, i32) #1

declare dso_local i32 @CALC_K(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
