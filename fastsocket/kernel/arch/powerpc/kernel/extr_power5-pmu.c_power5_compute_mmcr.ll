; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power5-pmu.c_power5_compute_mmcr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power5-pmu.c_power5_compute_mmcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMCRA_SDAR_DCACHE_MISS = common dso_local global i64 0, align 8
@MMCRA_SDAR_ERAT_MISS = common dso_local global i64 0, align 8
@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@PM_BUSEVENT_MSK = common dso_local global i32 0, align 4
@PM_UNIT_SH = common dso_local global i32 0, align 4
@PM_UNIT_MSK = common dso_local global i32 0, align 4
@PM_BYTE_SH = common dso_local global i32 0, align 4
@PM_BYTE_MSK = common dso_local global i32 0, align 4
@PM_LASTUNIT = common dso_local global i32 0, align 4
@PM_ISU0_ALT = common dso_local global i32 0, align 4
@PM_ISU0 = common dso_local global i64 0, align 8
@PM_LSU1 = common dso_local global i32 0, align 4
@PM_FPU = common dso_local global i64 0, align 8
@PM_IFU = common dso_local global i64 0, align 8
@PM_ISU1 = common dso_local global i64 0, align 8
@MMCR1_TTM0SEL_SH = common dso_local global i64 0, align 8
@PM_GRS = common dso_local global i32 0, align 4
@MMCR1_TTM1SEL_SH = common dso_local global i64 0, align 8
@MMCR1_TTM3SEL_SH = common dso_local global i32 0, align 4
@MMCR1_TD_CP_DBG0SEL_SH = common dso_local global i32 0, align 4
@PM_PMCSEL_MSK = common dso_local global i32 0, align 4
@MMCR1_PMC1_ADDER_SEL_SH = common dso_local global i32 0, align 4
@PM_GRS_SH = common dso_local global i32 0, align 4
@PM_GRS_MSK = common dso_local global i32 0, align 4
@grsel_shift = common dso_local global i64* null, align 8
@MMCRA_SAMPLE_ENABLE = common dso_local global i64 0, align 8
@MMCR0_PMC1CE = common dso_local global i64 0, align 8
@MMCR0_PMCjCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64*)* @power5_compute_mmcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power5_compute_mmcr(i32* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
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
  %23 = alloca [2 x i32], align 4
  %24 = alloca [4 x i8], align 1
  %25 = alloca [16 x i8], align 16
  %26 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  %27 = load i64, i64* @MMCRA_SDAR_DCACHE_MISS, align 8
  %28 = load i64, i64* @MMCRA_SDAR_ERAT_MISS, align 8
  %29 = or i64 %27, %28
  store i64 %29, i64* %11, align 8
  store i32 0, i32* %22, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %30, 6
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %546

33:                                               ; preds = %4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 0
  %37 = call i32 @memset(i8* %36, i32 0, i32 4)
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 0
  %39 = call i32 @memset(i8* %38, i32 0, i32 16)
  store i32 0, i32* %18, align 4
  br label %40

40:                                               ; preds = %173, %33
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %176

44:                                               ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %18, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PM_PMC_SH, align 4
  %51 = ashr i32 %49, %50
  %52 = load i32, i32* @PM_PMC_MSK, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %85

56:                                               ; preds = %44
  %57 = load i32, i32* %12, align 4
  %58 = icmp ugt i32 %57, 6
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 -1, i32* %5, align 4
  br label %546

60:                                               ; preds = %56
  %61 = load i32, i32* %22, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sub i32 %62, 1
  %64 = shl i32 1, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 -1, i32* %5, align 4
  br label %546

68:                                               ; preds = %60
  %69 = load i32, i32* %12, align 4
  %70 = sub i32 %69, 1
  %71 = shl i32 1, %70
  %72 = load i32, i32* %22, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %22, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ule i32 %74, 4
  br i1 %75, label %76, label %84

76:                                               ; preds = %68
  %77 = load i32, i32* %12, align 4
  %78 = sub i32 %77, 1
  %79 = lshr i32 %78, 1
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %76, %68
  br label %85

85:                                               ; preds = %84, %44
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %18, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PM_BUSEVENT_MSK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %172

94:                                               ; preds = %85
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @PM_UNIT_SH, align 4
  %101 = ashr i32 %99, %100
  %102 = load i32, i32* @PM_UNIT_MSK, align 4
  %103 = and i32 %101, %102
  store i32 %103, i32* %13, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @PM_BYTE_SH, align 4
  %110 = ashr i32 %108, %109
  %111 = load i32, i32* @PM_BYTE_MSK, align 4
  %112 = and i32 %110, %111
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @PM_LASTUNIT, align 4
  %115 = icmp ugt i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %94
  store i32 -1, i32* %5, align 4
  br label %546

117:                                              ; preds = %94
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @PM_ISU0_ALT, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load i64, i64* @PM_ISU0, align 8
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %13, align 4
  br label %124

124:                                              ; preds = %121, %117
  %125 = load i32, i32* %14, align 4
  %126 = icmp uge i32 %125, 4
  br i1 %126, label %127, label %137

127:                                              ; preds = %124
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* @PM_LSU1, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 -1, i32* %5, align 4
  br label %546

132:                                              ; preds = %127
  %133 = load i32, i32* %13, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %14, align 4
  %136 = and i32 %135, 3
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %132, %124
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %14, align 4
  %142 = and i32 %141, 1
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %140, %137
  %148 = load i32, i32* %14, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %147
  %155 = load i32, i32* %14, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = load i32, i32* %13, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  store i32 -1, i32* %5, align 4
  br label %546

163:                                              ; preds = %154, %147
  %164 = load i32, i32* %13, align 4
  %165 = trunc i32 %164 to i8
  %166 = load i32, i32* %14, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 %167
  store i8 %165, i8* %168, align 1
  %169 = load i32, i32* %13, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 %170
  store i8 1, i8* %171, align 1
  br label %172

172:                                              ; preds = %163, %85
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %18, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %18, align 4
  br label %40

176:                                              ; preds = %40
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp ugt i32 %178, 2
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp ugt i32 %182, 2
  br i1 %183, label %184, label %185

184:                                              ; preds = %180, %176
  store i32 -1, i32* %5, align 4
  br label %546

185:                                              ; preds = %180
  %186 = load i64, i64* @PM_ISU0, align 8
  %187 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = load i64, i64* @PM_FPU, align 8
  %191 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = load i64, i64* @PM_IFU, align 8
  %195 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = or i32 %193, %197
  %199 = load i64, i64* @PM_ISU1, align 8
  %200 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = or i32 %198, %202
  %204 = and i32 %189, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %185
  %207 = load i32, i32* @PM_ISU0_ALT, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 %208
  store i8 1, i8* %209, align 1
  %210 = load i64, i64* @PM_ISU0, align 8
  %211 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 %210
  store i8 0, i8* %211, align 1
  br label %212

212:                                              ; preds = %206, %185
  store i32 0, i32* %26, align 4
  %213 = load i64, i64* @PM_FPU, align 8
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %18, align 4
  br label %215

215:                                              ; preds = %239, %212
  %216 = load i32, i32* %18, align 4
  %217 = sext i32 %216 to i64
  %218 = load i64, i64* @PM_ISU1, align 8
  %219 = icmp ule i64 %217, %218
  br i1 %219, label %220, label %242

220:                                              ; preds = %215
  %221 = load i32, i32* %18, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = icmp ne i8 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %220
  br label %239

227:                                              ; preds = %220
  %228 = load i32, i32* %26, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %26, align 4
  %230 = icmp ne i32 %228, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %227
  store i32 -1, i32* %5, align 4
  br label %546

232:                                              ; preds = %227
  %233 = load i32, i32* %18, align 4
  %234 = sext i32 %233 to i64
  %235 = load i64, i64* @MMCR1_TTM0SEL_SH, align 8
  %236 = shl i64 %234, %235
  %237 = load i64, i64* %10, align 8
  %238 = or i64 %237, %236
  store i64 %238, i64* %10, align 8
  br label %239

239:                                              ; preds = %232, %226
  %240 = load i32, i32* %18, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %18, align 4
  br label %215

242:                                              ; preds = %215
  store i32 0, i32* %26, align 4
  br label %243

243:                                              ; preds = %267, %242
  %244 = load i32, i32* %18, align 4
  %245 = load i32, i32* @PM_GRS, align 4
  %246 = icmp sle i32 %244, %245
  br i1 %246, label %247, label %270

247:                                              ; preds = %243
  %248 = load i32, i32* %18, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 %249
  %251 = load i8, i8* %250, align 1
  %252 = icmp ne i8 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %247
  br label %267

254:                                              ; preds = %247
  %255 = load i32, i32* %26, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %26, align 4
  %257 = icmp ne i32 %255, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %254
  store i32 -1, i32* %5, align 4
  br label %546

259:                                              ; preds = %254
  %260 = load i32, i32* %18, align 4
  %261 = and i32 %260, 3
  %262 = sext i32 %261 to i64
  %263 = load i64, i64* @MMCR1_TTM1SEL_SH, align 8
  %264 = shl i64 %262, %263
  %265 = load i64, i64* %10, align 8
  %266 = or i64 %265, %264
  store i64 %266, i64* %10, align 8
  br label %267

267:                                              ; preds = %259, %253
  %268 = load i32, i32* %18, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %18, align 4
  br label %243

270:                                              ; preds = %243
  %271 = load i32, i32* %26, align 4
  %272 = icmp sgt i32 %271, 1
  br i1 %272, label %273, label %274

273:                                              ; preds = %270
  store i32 -1, i32* %5, align 4
  br label %546

274:                                              ; preds = %270
  store i32 0, i32* %14, align 4
  br label %275

275:                                              ; preds = %329, %274
  %276 = load i32, i32* %14, align 4
  %277 = icmp ult i32 %276, 4
  br i1 %277, label %278, label %332

278:                                              ; preds = %275
  %279 = load i32, i32* %14, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 %280
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  store i32 %283, i32* %13, align 4
  %284 = load i32, i32* %13, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %287, label %286

286:                                              ; preds = %278
  br label %329

287:                                              ; preds = %278
  %288 = load i32, i32* %13, align 4
  %289 = zext i32 %288 to i64
  %290 = load i64, i64* @PM_ISU0, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %301

292:                                              ; preds = %287
  %293 = load i32, i32* @PM_ISU0_ALT, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 %294
  %296 = load i8, i8* %295, align 1
  %297 = zext i8 %296 to i32
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %292
  %300 = load i32, i32* @PM_ISU0_ALT, align 4
  store i32 %300, i32* %13, align 4
  br label %316

301:                                              ; preds = %292, %287
  %302 = load i32, i32* %13, align 4
  %303 = load i32, i32* @PM_LSU1, align 4
  %304 = add i32 %303, 1
  %305 = icmp eq i32 %302, %304
  br i1 %305, label %306, label %315

306:                                              ; preds = %301
  %307 = load i32, i32* @MMCR1_TTM3SEL_SH, align 4
  %308 = add nsw i32 %307, 3
  %309 = load i32, i32* %14, align 4
  %310 = sub i32 %308, %309
  %311 = zext i32 %310 to i64
  %312 = shl i64 1, %311
  %313 = load i64, i64* %10, align 8
  %314 = or i64 %313, %312
  store i64 %314, i64* %10, align 8
  br label %315

315:                                              ; preds = %306, %301
  br label %316

316:                                              ; preds = %315, %299
  %317 = load i32, i32* %13, align 4
  %318 = lshr i32 %317, 2
  store i32 %318, i32* %16, align 4
  %319 = load i32, i32* %16, align 4
  %320 = zext i32 %319 to i64
  %321 = load i32, i32* @MMCR1_TD_CP_DBG0SEL_SH, align 4
  %322 = load i32, i32* %14, align 4
  %323 = mul i32 2, %322
  %324 = sub i32 %321, %323
  %325 = zext i32 %324 to i64
  %326 = shl i64 %320, %325
  %327 = load i64, i64* %10, align 8
  %328 = or i64 %327, %326
  store i64 %328, i64* %10, align 8
  br label %329

329:                                              ; preds = %316, %286
  %330 = load i32, i32* %14, align 4
  %331 = add i32 %330, 1
  store i32 %331, i32* %14, align 4
  br label %275

332:                                              ; preds = %275
  store i32 0, i32* %18, align 4
  br label %333

333:                                              ; preds = %516, %332
  %334 = load i32, i32* %18, align 4
  %335 = load i32, i32* %7, align 4
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %337, label %519

337:                                              ; preds = %333
  %338 = load i32*, i32** %6, align 8
  %339 = load i32, i32* %18, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* @PM_PMC_SH, align 4
  %344 = ashr i32 %342, %343
  %345 = load i32, i32* @PM_PMC_MSK, align 4
  %346 = and i32 %344, %345
  store i32 %346, i32* %12, align 4
  %347 = load i32*, i32** %6, align 8
  %348 = load i32, i32* %18, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* @PM_UNIT_SH, align 4
  %353 = ashr i32 %351, %352
  %354 = load i32, i32* @PM_UNIT_MSK, align 4
  %355 = and i32 %353, %354
  store i32 %355, i32* %13, align 4
  %356 = load i32*, i32** %6, align 8
  %357 = load i32, i32* %18, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @PM_BYTE_SH, align 4
  %362 = ashr i32 %360, %361
  %363 = load i32, i32* @PM_BYTE_MSK, align 4
  %364 = and i32 %362, %363
  store i32 %364, i32* %14, align 4
  %365 = load i32*, i32** %6, align 8
  %366 = load i32, i32* %18, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %365, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @PM_PMCSEL_MSK, align 4
  %371 = and i32 %369, %370
  store i32 %371, i32* %15, align 4
  %372 = load i32*, i32** %6, align 8
  %373 = load i32, i32* %18, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* @PM_BUSEVENT_MSK, align 4
  %378 = and i32 %376, %377
  store i32 %378, i32* %19, align 4
  %379 = load i32, i32* %12, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %427, label %381

381:                                              ; preds = %337
  store i32 0, i32* %12, align 4
  br label %382

382:                                              ; preds = %419, %381
  %383 = load i32, i32* %12, align 4
  %384 = icmp ult i32 %383, 4
  br i1 %384, label %385, label %422

385:                                              ; preds = %382
  %386 = load i32, i32* %22, align 4
  %387 = load i32, i32* %12, align 4
  %388 = shl i32 1, %387
  %389 = and i32 %386, %388
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %385
  br label %419

392:                                              ; preds = %385
  %393 = load i32, i32* %12, align 4
  %394 = lshr i32 %393, 1
  %395 = and i32 %394, 1
  store i32 %395, i32* %17, align 4
  %396 = load i32, i32* %19, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %405

398:                                              ; preds = %392
  %399 = load i32, i32* %17, align 4
  %400 = load i32, i32* %14, align 4
  %401 = and i32 %400, 1
  %402 = icmp eq i32 %399, %401
  br i1 %402, label %403, label %404

403:                                              ; preds = %398
  br label %422

404:                                              ; preds = %398
  br label %418

405:                                              ; preds = %392
  %406 = load i32, i32* %17, align 4
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 %407
  %409 = load i32, i32* %408, align 4
  %410 = icmp ult i32 %409, 2
  br i1 %410, label %411, label %417

411:                                              ; preds = %405
  %412 = load i32, i32* %17, align 4
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 %413
  %415 = load i32, i32* %414, align 4
  %416 = add i32 %415, 1
  store i32 %416, i32* %414, align 4
  br label %422

417:                                              ; preds = %405
  br label %418

418:                                              ; preds = %417, %404
  br label %419

419:                                              ; preds = %418, %391
  %420 = load i32, i32* %12, align 4
  %421 = add i32 %420, 1
  store i32 %421, i32* %12, align 4
  br label %382

422:                                              ; preds = %411, %403, %382
  %423 = load i32, i32* %12, align 4
  %424 = shl i32 1, %423
  %425 = load i32, i32* %22, align 4
  %426 = or i32 %425, %424
  store i32 %426, i32* %22, align 4
  br label %458

427:                                              ; preds = %337
  %428 = load i32, i32* %12, align 4
  %429 = icmp ule i32 %428, 4
  br i1 %429, label %430, label %454

430:                                              ; preds = %427
  %431 = load i32, i32* %12, align 4
  %432 = add i32 %431, -1
  store i32 %432, i32* %12, align 4
  %433 = load i32, i32* %15, align 4
  %434 = icmp eq i32 %433, 8
  br i1 %434, label %438, label %435

435:                                              ; preds = %430
  %436 = load i32, i32* %15, align 4
  %437 = icmp eq i32 %436, 16
  br i1 %437, label %438, label %453

438:                                              ; preds = %435, %430
  %439 = load i32, i32* %19, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %453

441:                                              ; preds = %438
  %442 = load i32, i32* %14, align 4
  %443 = and i32 %442, 2
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %453

445:                                              ; preds = %441
  %446 = load i32, i32* @MMCR1_PMC1_ADDER_SEL_SH, align 4
  %447 = load i32, i32* %12, align 4
  %448 = sub i32 %446, %447
  %449 = zext i32 %448 to i64
  %450 = shl i64 1, %449
  %451 = load i64, i64* %10, align 8
  %452 = or i64 %451, %450
  store i64 %452, i64* %10, align 8
  br label %453

453:                                              ; preds = %445, %441, %438, %435
  br label %457

454:                                              ; preds = %427
  %455 = load i32, i32* %12, align 4
  %456 = add i32 %455, -1
  store i32 %456, i32* %12, align 4
  br label %457

457:                                              ; preds = %454, %453
  br label %458

458:                                              ; preds = %457, %422
  %459 = load i32, i32* %19, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %487

461:                                              ; preds = %458
  %462 = load i32, i32* %13, align 4
  %463 = load i32, i32* @PM_GRS, align 4
  %464 = icmp eq i32 %462, %463
  br i1 %464, label %465, label %487

465:                                              ; preds = %461
  %466 = load i32, i32* %15, align 4
  %467 = and i32 %466, 7
  store i32 %467, i32* %20, align 4
  %468 = load i32*, i32** %6, align 8
  %469 = load i32, i32* %18, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i32, i32* %468, i64 %470
  %472 = load i32, i32* %471, align 4
  %473 = load i32, i32* @PM_GRS_SH, align 4
  %474 = ashr i32 %472, %473
  %475 = load i32, i32* @PM_GRS_MSK, align 4
  %476 = and i32 %474, %475
  store i32 %476, i32* %21, align 4
  %477 = load i32, i32* %21, align 4
  %478 = sext i32 %477 to i64
  %479 = load i64*, i64** @grsel_shift, align 8
  %480 = load i32, i32* %20, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i64, i64* %479, i64 %481
  %483 = load i64, i64* %482, align 8
  %484 = shl i64 %478, %483
  %485 = load i64, i64* %10, align 8
  %486 = or i64 %485, %484
  store i64 %486, i64* %10, align 8
  br label %487

487:                                              ; preds = %465, %461, %458
  %488 = load i32*, i32** %6, align 8
  %489 = load i32, i32* %18, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, i32* %488, i64 %490
  %492 = load i32, i32* %491, align 4
  %493 = call i64 @power5_marked_instr_event(i32 %492)
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %499

495:                                              ; preds = %487
  %496 = load i64, i64* @MMCRA_SAMPLE_ENABLE, align 8
  %497 = load i64, i64* %11, align 8
  %498 = or i64 %497, %496
  store i64 %498, i64* %11, align 8
  br label %499

499:                                              ; preds = %495, %487
  %500 = load i32, i32* %12, align 4
  %501 = icmp ule i32 %500, 3
  br i1 %501, label %502, label %510

502:                                              ; preds = %499
  %503 = load i32, i32* %15, align 4
  %504 = load i32, i32* %12, align 4
  %505 = call i32 @MMCR1_PMCSEL_SH(i32 %504)
  %506 = shl i32 %503, %505
  %507 = zext i32 %506 to i64
  %508 = load i64, i64* %10, align 8
  %509 = or i64 %508, %507
  store i64 %509, i64* %10, align 8
  br label %510

510:                                              ; preds = %502, %499
  %511 = load i32, i32* %12, align 4
  %512 = load i32*, i32** %8, align 8
  %513 = load i32, i32* %18, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i32, i32* %512, i64 %514
  store i32 %511, i32* %515, align 4
  br label %516

516:                                              ; preds = %510
  %517 = load i32, i32* %18, align 4
  %518 = add nsw i32 %517, 1
  store i32 %518, i32* %18, align 4
  br label %333

519:                                              ; preds = %333
  %520 = load i64*, i64** %9, align 8
  %521 = getelementptr inbounds i64, i64* %520, i64 0
  store i64 0, i64* %521, align 8
  %522 = load i32, i32* %22, align 4
  %523 = and i32 %522, 1
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %529

525:                                              ; preds = %519
  %526 = load i64, i64* @MMCR0_PMC1CE, align 8
  %527 = load i64*, i64** %9, align 8
  %528 = getelementptr inbounds i64, i64* %527, i64 0
  store i64 %526, i64* %528, align 8
  br label %529

529:                                              ; preds = %525, %519
  %530 = load i32, i32* %22, align 4
  %531 = and i32 %530, 62
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %539

533:                                              ; preds = %529
  %534 = load i64, i64* @MMCR0_PMCjCE, align 8
  %535 = load i64*, i64** %9, align 8
  %536 = getelementptr inbounds i64, i64* %535, i64 0
  %537 = load i64, i64* %536, align 8
  %538 = or i64 %537, %534
  store i64 %538, i64* %536, align 8
  br label %539

539:                                              ; preds = %533, %529
  %540 = load i64, i64* %10, align 8
  %541 = load i64*, i64** %9, align 8
  %542 = getelementptr inbounds i64, i64* %541, i64 1
  store i64 %540, i64* %542, align 8
  %543 = load i64, i64* %11, align 8
  %544 = load i64*, i64** %9, align 8
  %545 = getelementptr inbounds i64, i64* %544, i64 2
  store i64 %543, i64* %545, align 8
  store i32 0, i32* %5, align 4
  br label %546

546:                                              ; preds = %539, %273, %258, %231, %184, %162, %131, %116, %67, %59, %32
  %547 = load i32, i32* %5, align 4
  ret i32 %547
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @power5_marked_instr_event(i32) #1

declare dso_local i32 @MMCR1_PMCSEL_SH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
