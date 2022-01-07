; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_diskonchip.c_doc_ecc_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_diskonchip.c_doc_ecc_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_control = type { i64*, i64* }

@NROOTS = common dso_local global i32 0, align 4
@FCR = common dso_local global i32 0, align 4
@NN = common dso_local global i32 0, align 4
@NB_DATA = common dso_local global i32 0, align 4
@SECTOR_SIZE = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rs_control*, i32*, i32*)* @doc_ecc_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doc_ecc_decode(%struct.rs_control* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rs_control*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca [4 x i64], align 16
  %14 = alloca [5 x i64], align 16
  %15 = alloca i64, align 8
  %16 = alloca [8 x i64], align 16
  %17 = alloca [4 x i64], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.rs_control* %0, %struct.rs_control** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 255
  %26 = ashr i32 %25, 0
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 5
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 3
  %31 = shl i32 %30, 8
  %32 = or i32 %26, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 %33, i64* %34, align 16
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 252
  %39 = ashr i32 %38, 2
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 15
  %44 = shl i32 %43, 6
  %45 = or i32 %39, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  store i64 %46, i64* %47, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 240
  %52 = ashr i32 %51, 4
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 63
  %57 = shl i32 %56, 4
  %58 = or i32 %52, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 2
  store i64 %59, i64* %60, align 16
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 192
  %65 = ashr i32 %64, 6
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 255
  %70 = shl i32 %69, 2
  %71 = or i32 %65, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 3
  store i64 %72, i64* %73, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %87, %3
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @NROOTS, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %83 = load i64, i64* %82, align 16
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 %85
  store i64 %83, i64* %86, align 8
  br label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %77

90:                                               ; preds = %77
  store i32 1, i32* %9, align 4
  br label %91

91:                                               ; preds = %142, %90
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @NROOTS, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %145

95:                                               ; preds = %91
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %142

102:                                              ; preds = %95
  %103 = load %struct.rs_control*, %struct.rs_control** %5, align 8
  %104 = getelementptr inbounds %struct.rs_control, %struct.rs_control* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i64, i64* %105, i64 %109
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %15, align 8
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %138, %102
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @NROOTS, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %141

116:                                              ; preds = %112
  %117 = load %struct.rs_control*, %struct.rs_control** %5, align 8
  %118 = getelementptr inbounds %struct.rs_control, %struct.rs_control* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = load %struct.rs_control*, %struct.rs_control** %5, align 8
  %121 = load i64, i64* %15, align 8
  %122 = load i32, i32* @FCR, align 4
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %122, %123
  %125 = load i32, i32* %9, align 4
  %126 = mul nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = add i64 %121, %127
  %129 = trunc i64 %128 to i32
  %130 = call i64 @rs_modnn(%struct.rs_control* %120, i32 %129)
  %131 = getelementptr inbounds i64, i64* %119, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = xor i64 %136, %132
  store i64 %137, i64* %135, align 8
  br label %138

138:                                              ; preds = %116
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %112

141:                                              ; preds = %112
  br label %142

142:                                              ; preds = %141, %101
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %91

145:                                              ; preds = %91
  store i32 0, i32* %8, align 4
  br label %146

146:                                              ; preds = %180, %145
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @NROOTS, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %183

150:                                              ; preds = %146
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [4 x i64], [4 x i64]* %17, i64 0, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %179

156:                                              ; preds = %150
  %157 = load %struct.rs_control*, %struct.rs_control** %5, align 8
  %158 = load %struct.rs_control*, %struct.rs_control** %5, align 8
  %159 = getelementptr inbounds %struct.rs_control, %struct.rs_control* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i64, i64* %160, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* @NN, align 4
  %168 = load i32, i32* @FCR, align 4
  %169 = sub nsw i32 %167, %168
  %170 = load i32, i32* %8, align 4
  %171 = sub nsw i32 %169, %170
  %172 = sext i32 %171 to i64
  %173 = add i64 %166, %172
  %174 = trunc i64 %173 to i32
  %175 = call i64 @rs_modnn(%struct.rs_control* %157, i32 %174)
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [4 x i64], [4 x i64]* %17, i64 0, i64 %177
  store i64 %175, i64* %178, align 8
  br label %179

179:                                              ; preds = %156, %150
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  br label %146

183:                                              ; preds = %146
  %184 = load %struct.rs_control*, %struct.rs_control** %5, align 8
  %185 = getelementptr inbounds [4 x i64], [4 x i64]* %17, i64 0, i64 0
  %186 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %187 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 0
  %188 = call i32 @decode_rs16(%struct.rs_control* %184, i32* null, i32* null, i32 1019, i64* %185, i32 0, i32* %186, i32 0, i64* %187)
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %10, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %183
  %192 = load i32, i32* %10, align 4
  store i32 %192, i32* %4, align 4
  br label %326

193:                                              ; preds = %183
  store i32 0, i32* %8, align 4
  br label %194

194:                                              ; preds = %313, %193
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %316

198:                                              ; preds = %194
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = sub nsw i32 1015, %202
  store i32 %203, i32* %20, align 4
  %204 = load i32, i32* %20, align 4
  %205 = load i32, i32* @NB_DATA, align 4
  %206 = icmp sge i32 %204, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %198
  %208 = load i32, i32* %20, align 4
  %209 = icmp slt i32 %208, 1019
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  br label %313

211:                                              ; preds = %207, %198
  %212 = load i32, i32* %20, align 4
  %213 = load i32, i32* @NB_DATA, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %312

215:                                              ; preds = %211
  %216 = load i32, i32* @NB_DATA, align 4
  %217 = sub nsw i32 %216, 1
  %218 = load i32, i32* %20, align 4
  %219 = sub nsw i32 %217, %218
  %220 = mul nsw i32 10, %219
  %221 = sub nsw i32 %220, 6
  store i32 %221, i32* %20, align 4
  %222 = load i32, i32* %20, align 4
  %223 = ashr i32 %222, 3
  %224 = xor i32 %223, 1
  store i32 %224, i32* %18, align 4
  %225 = load i32, i32* %20, align 4
  %226 = and i32 %225, 7
  store i32 %226, i32* %19, align 4
  %227 = load i32, i32* %18, align 4
  %228 = icmp sge i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %215
  %230 = load i32, i32* %18, align 4
  %231 = load i32, i32* @SECTOR_SIZE, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %238, label %233

233:                                              ; preds = %229, %215
  %234 = load i32, i32* %18, align 4
  %235 = load i32, i32* @SECTOR_SIZE, align 4
  %236 = add nsw i32 %235, 1
  %237 = icmp eq i32 %234, %236
  br i1 %237, label %238, label %263

238:                                              ; preds = %233, %229
  %239 = load i32, i32* %8, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* %19, align 4
  %244 = add nsw i32 2, %243
  %245 = zext i32 %244 to i64
  %246 = lshr i64 %242, %245
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %21, align 4
  %248 = load i32, i32* %21, align 4
  %249 = load i32, i32* %12, align 4
  %250 = xor i32 %249, %248
  store i32 %250, i32* %12, align 4
  %251 = load i32, i32* %18, align 4
  %252 = load i32, i32* @SECTOR_SIZE, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %262

254:                                              ; preds = %238
  %255 = load i32, i32* %21, align 4
  %256 = load i32*, i32** %6, align 8
  %257 = load i32, i32* %18, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = xor i32 %260, %255
  store i32 %261, i32* %259, align 4
  br label %262

262:                                              ; preds = %254, %238
  br label %263

263:                                              ; preds = %262, %233
  %264 = load i32, i32* %20, align 4
  %265 = ashr i32 %264, 3
  %266 = add nsw i32 %265, 1
  %267 = xor i32 %266, 1
  store i32 %267, i32* %18, align 4
  %268 = load i32, i32* %19, align 4
  %269 = add nsw i32 %268, 10
  %270 = and i32 %269, 7
  store i32 %270, i32* %19, align 4
  %271 = load i32, i32* %19, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %263
  store i32 8, i32* %19, align 4
  br label %274

274:                                              ; preds = %273, %263
  %275 = load i32, i32* %18, align 4
  %276 = icmp sge i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %274
  %278 = load i32, i32* %18, align 4
  %279 = load i32, i32* @SECTOR_SIZE, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %286, label %281

281:                                              ; preds = %277, %274
  %282 = load i32, i32* %18, align 4
  %283 = load i32, i32* @SECTOR_SIZE, align 4
  %284 = add nsw i32 %283, 1
  %285 = icmp eq i32 %282, %284
  br i1 %285, label %286, label %311

286:                                              ; preds = %281, %277
  %287 = load i32, i32* %8, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = load i32, i32* %19, align 4
  %292 = sub nsw i32 8, %291
  %293 = zext i32 %292 to i64
  %294 = shl i64 %290, %293
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %21, align 4
  %296 = load i32, i32* %21, align 4
  %297 = load i32, i32* %12, align 4
  %298 = xor i32 %297, %296
  store i32 %298, i32* %12, align 4
  %299 = load i32, i32* %18, align 4
  %300 = load i32, i32* @SECTOR_SIZE, align 4
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %302, label %310

302:                                              ; preds = %286
  %303 = load i32, i32* %21, align 4
  %304 = load i32*, i32** %6, align 8
  %305 = load i32, i32* %18, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = xor i32 %308, %303
  store i32 %309, i32* %307, align 4
  br label %310

310:                                              ; preds = %302, %286
  br label %311

311:                                              ; preds = %310, %281
  br label %312

312:                                              ; preds = %311, %211
  br label %313

313:                                              ; preds = %312, %210
  %314 = load i32, i32* %8, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %8, align 4
  br label %194

316:                                              ; preds = %194
  %317 = load i32, i32* %12, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %316
  %320 = load i32, i32* @EBADMSG, align 4
  %321 = sub nsw i32 0, %320
  br label %324

322:                                              ; preds = %316
  %323 = load i32, i32* %10, align 4
  br label %324

324:                                              ; preds = %322, %319
  %325 = phi i32 [ %321, %319 ], [ %323, %322 ]
  store i32 %325, i32* %4, align 4
  br label %326

326:                                              ; preds = %324, %191
  %327 = load i32, i32* %4, align 4
  ret i32 %327
}

declare dso_local i64 @rs_modnn(%struct.rs_control*, i32) #1

declare dso_local i32 @decode_rs16(%struct.rs_control*, i32*, i32*, i32, i64*, i32, i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
