; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power5+-pmu.c_power5p_compute_mmcr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power5+-pmu.c_power5p_compute_mmcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64*)* @power5p_compute_mmcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power5p_compute_mmcr(i32* %0, i32 %1, i32* %2, i64* %3) #0 {
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
  %22 = alloca [4 x i8], align 1
  %23 = alloca [16 x i8], align 16
  %24 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %21, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 6
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %504

28:                                               ; preds = %4
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 0
  %30 = call i32 @memset(i8* %29, i32 0, i32 4)
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  %32 = call i32 @memset(i8* %31, i32 0, i32 16)
  store i32 0, i32* %17, align 4
  br label %33

33:                                               ; preds = %145, %28
  %34 = load i32, i32* %17, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %148

37:                                               ; preds = %33
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %17, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PM_PMC_SH, align 4
  %44 = ashr i32 %42, %43
  %45 = load i32, i32* @PM_PMC_MSK, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %37
  %50 = load i32, i32* %12, align 4
  %51 = icmp ugt i32 %50, 6
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 -1, i32* %5, align 4
  br label %504

53:                                               ; preds = %49
  %54 = load i32, i32* %21, align 4
  %55 = load i32, i32* %12, align 4
  %56 = sub i32 %55, 1
  %57 = shl i32 1, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 -1, i32* %5, align 4
  br label %504

61:                                               ; preds = %53
  %62 = load i32, i32* %12, align 4
  %63 = sub i32 %62, 1
  %64 = shl i32 1, %63
  %65 = load i32, i32* %21, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %21, align 4
  br label %67

67:                                               ; preds = %61, %37
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @PM_BUSEVENT_MSK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %144

76:                                               ; preds = %67
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @PM_UNIT_SH, align 4
  %83 = ashr i32 %81, %82
  %84 = load i32, i32* @PM_UNIT_MSK, align 4
  %85 = and i32 %83, %84
  store i32 %85, i32* %13, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %17, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PM_BYTE_SH, align 4
  %92 = ashr i32 %90, %91
  %93 = load i32, i32* @PM_BYTE_MSK, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @PM_LASTUNIT, align 4
  %97 = icmp ugt i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %76
  store i32 -1, i32* %5, align 4
  br label %504

99:                                               ; preds = %76
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @PM_ISU0_ALT, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i64, i64* @PM_ISU0, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %103, %99
  %107 = load i32, i32* %14, align 4
  %108 = icmp uge i32 %107, 4
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @PM_LSU1, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i32 -1, i32* %5, align 4
  br label %504

114:                                              ; preds = %109
  %115 = load i32, i32* %13, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %14, align 4
  %118 = and i32 %117, 3
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %114, %106
  %120 = load i32, i32* %14, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %119
  %127 = load i32, i32* %14, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  store i32 -1, i32* %5, align 4
  br label %504

135:                                              ; preds = %126, %119
  %136 = load i32, i32* %13, align 4
  %137 = trunc i32 %136 to i8
  %138 = load i32, i32* %14, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 %139
  store i8 %137, i8* %140, align 1
  %141 = load i32, i32* %13, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 %142
  store i8 1, i8* %143, align 1
  br label %144

144:                                              ; preds = %135, %67
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %17, align 4
  br label %33

148:                                              ; preds = %33
  %149 = load i64, i64* @PM_ISU0, align 8
  %150 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = load i64, i64* @PM_FPU, align 8
  %154 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = load i64, i64* @PM_IFU, align 8
  %158 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = or i32 %156, %160
  %162 = load i64, i64* @PM_ISU1, align 8
  %163 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = or i32 %161, %165
  %167 = and i32 %152, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %148
  %170 = load i32, i32* @PM_ISU0_ALT, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 %171
  store i8 1, i8* %172, align 1
  %173 = load i64, i64* @PM_ISU0, align 8
  %174 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 %173
  store i8 0, i8* %174, align 1
  br label %175

175:                                              ; preds = %169, %148
  store i32 0, i32* %24, align 4
  %176 = load i64, i64* @PM_FPU, align 8
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %17, align 4
  br label %178

178:                                              ; preds = %202, %175
  %179 = load i32, i32* %17, align 4
  %180 = sext i32 %179 to i64
  %181 = load i64, i64* @PM_ISU1, align 8
  %182 = icmp ule i64 %180, %181
  br i1 %182, label %183, label %205

183:                                              ; preds = %178
  %184 = load i32, i32* %17, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = icmp ne i8 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %183
  br label %202

190:                                              ; preds = %183
  %191 = load i32, i32* %24, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %24, align 4
  %193 = icmp ne i32 %191, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  store i32 -1, i32* %5, align 4
  br label %504

195:                                              ; preds = %190
  %196 = load i32, i32* %17, align 4
  %197 = sext i32 %196 to i64
  %198 = load i64, i64* @MMCR1_TTM0SEL_SH, align 8
  %199 = shl i64 %197, %198
  %200 = load i64, i64* %10, align 8
  %201 = or i64 %200, %199
  store i64 %201, i64* %10, align 8
  br label %202

202:                                              ; preds = %195, %189
  %203 = load i32, i32* %17, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %17, align 4
  br label %178

205:                                              ; preds = %178
  store i32 0, i32* %24, align 4
  br label %206

206:                                              ; preds = %230, %205
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* @PM_GRS, align 4
  %209 = icmp sle i32 %207, %208
  br i1 %209, label %210, label %233

210:                                              ; preds = %206
  %211 = load i32, i32* %17, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 %212
  %214 = load i8, i8* %213, align 1
  %215 = icmp ne i8 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %210
  br label %230

217:                                              ; preds = %210
  %218 = load i32, i32* %24, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %24, align 4
  %220 = icmp ne i32 %218, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  store i32 -1, i32* %5, align 4
  br label %504

222:                                              ; preds = %217
  %223 = load i32, i32* %17, align 4
  %224 = and i32 %223, 3
  %225 = sext i32 %224 to i64
  %226 = load i64, i64* @MMCR1_TTM1SEL_SH, align 8
  %227 = shl i64 %225, %226
  %228 = load i64, i64* %10, align 8
  %229 = or i64 %228, %227
  store i64 %229, i64* %10, align 8
  br label %230

230:                                              ; preds = %222, %216
  %231 = load i32, i32* %17, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %17, align 4
  br label %206

233:                                              ; preds = %206
  %234 = load i32, i32* %24, align 4
  %235 = icmp sgt i32 %234, 1
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  store i32 -1, i32* %5, align 4
  br label %504

237:                                              ; preds = %233
  store i32 0, i32* %14, align 4
  br label %238

238:                                              ; preds = %292, %237
  %239 = load i32, i32* %14, align 4
  %240 = icmp ult i32 %239, 4
  br i1 %240, label %241, label %295

241:                                              ; preds = %238
  %242 = load i32, i32* %14, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  store i32 %246, i32* %13, align 4
  %247 = load i32, i32* %13, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %241
  br label %292

250:                                              ; preds = %241
  %251 = load i32, i32* %13, align 4
  %252 = zext i32 %251 to i64
  %253 = load i64, i64* @PM_ISU0, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %264

255:                                              ; preds = %250
  %256 = load i32, i32* @PM_ISU0_ALT, align 4
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 %257
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %255
  %263 = load i32, i32* @PM_ISU0_ALT, align 4
  store i32 %263, i32* %13, align 4
  br label %279

264:                                              ; preds = %255, %250
  %265 = load i32, i32* %13, align 4
  %266 = load i32, i32* @PM_LSU1, align 4
  %267 = add i32 %266, 1
  %268 = icmp eq i32 %265, %267
  br i1 %268, label %269, label %278

269:                                              ; preds = %264
  %270 = load i32, i32* @MMCR1_TTM3SEL_SH, align 4
  %271 = add nsw i32 %270, 3
  %272 = load i32, i32* %14, align 4
  %273 = sub i32 %271, %272
  %274 = zext i32 %273 to i64
  %275 = shl i64 1, %274
  %276 = load i64, i64* %10, align 8
  %277 = or i64 %276, %275
  store i64 %277, i64* %10, align 8
  br label %278

278:                                              ; preds = %269, %264
  br label %279

279:                                              ; preds = %278, %262
  %280 = load i32, i32* %13, align 4
  %281 = lshr i32 %280, 2
  store i32 %281, i32* %16, align 4
  %282 = load i32, i32* %16, align 4
  %283 = zext i32 %282 to i64
  %284 = load i32, i32* @MMCR1_TD_CP_DBG0SEL_SH, align 4
  %285 = load i32, i32* %14, align 4
  %286 = mul i32 2, %285
  %287 = sub i32 %284, %286
  %288 = zext i32 %287 to i64
  %289 = shl i64 %283, %288
  %290 = load i64, i64* %10, align 8
  %291 = or i64 %290, %289
  store i64 %291, i64* %10, align 8
  br label %292

292:                                              ; preds = %279, %249
  %293 = load i32, i32* %14, align 4
  %294 = add i32 %293, 1
  store i32 %294, i32* %14, align 4
  br label %238

295:                                              ; preds = %238
  store i32 0, i32* %17, align 4
  br label %296

296:                                              ; preds = %474, %295
  %297 = load i32, i32* %17, align 4
  %298 = load i32, i32* %7, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %477

300:                                              ; preds = %296
  %301 = load i32*, i32** %6, align 8
  %302 = load i32, i32* %17, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @PM_PMC_SH, align 4
  %307 = ashr i32 %305, %306
  %308 = load i32, i32* @PM_PMC_MSK, align 4
  %309 = and i32 %307, %308
  store i32 %309, i32* %12, align 4
  %310 = load i32*, i32** %6, align 8
  %311 = load i32, i32* %17, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @PM_UNIT_SH, align 4
  %316 = ashr i32 %314, %315
  %317 = load i32, i32* @PM_UNIT_MSK, align 4
  %318 = and i32 %316, %317
  store i32 %318, i32* %13, align 4
  %319 = load i32*, i32** %6, align 8
  %320 = load i32, i32* %17, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @PM_BYTE_SH, align 4
  %325 = ashr i32 %323, %324
  %326 = load i32, i32* @PM_BYTE_MSK, align 4
  %327 = and i32 %325, %326
  store i32 %327, i32* %14, align 4
  %328 = load i32*, i32** %6, align 8
  %329 = load i32, i32* %17, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @PM_PMCSEL_MSK, align 4
  %334 = and i32 %332, %333
  store i32 %334, i32* %15, align 4
  %335 = load i32*, i32** %6, align 8
  %336 = load i32, i32* %17, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @PM_BUSEVENT_MSK, align 4
  %341 = and i32 %339, %340
  store i32 %341, i32* %18, align 4
  %342 = load i32, i32* %12, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %368, label %344

344:                                              ; preds = %300
  store i32 0, i32* %12, align 4
  br label %345

345:                                              ; preds = %356, %344
  %346 = load i32, i32* %12, align 4
  %347 = icmp ult i32 %346, 4
  br i1 %347, label %348, label %359

348:                                              ; preds = %345
  %349 = load i32, i32* %21, align 4
  %350 = load i32, i32* %12, align 4
  %351 = shl i32 1, %350
  %352 = and i32 %349, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %355, label %354

354:                                              ; preds = %348
  br label %359

355:                                              ; preds = %348
  br label %356

356:                                              ; preds = %355
  %357 = load i32, i32* %12, align 4
  %358 = add i32 %357, 1
  store i32 %358, i32* %12, align 4
  br label %345

359:                                              ; preds = %354, %345
  %360 = load i32, i32* %12, align 4
  %361 = icmp uge i32 %360, 4
  br i1 %361, label %362, label %363

362:                                              ; preds = %359
  store i32 -1, i32* %5, align 4
  br label %504

363:                                              ; preds = %359
  %364 = load i32, i32* %12, align 4
  %365 = shl i32 1, %364
  %366 = load i32, i32* %21, align 4
  %367 = or i32 %366, %365
  store i32 %367, i32* %21, align 4
  br label %402

368:                                              ; preds = %300
  %369 = load i32, i32* %12, align 4
  %370 = icmp ule i32 %369, 4
  br i1 %370, label %371, label %398

371:                                              ; preds = %368
  %372 = load i32, i32* %12, align 4
  %373 = add i32 %372, -1
  store i32 %373, i32* %12, align 4
  %374 = load i32, i32* %18, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %397

376:                                              ; preds = %371
  %377 = load i32, i32* %14, align 4
  %378 = and i32 %377, 2
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %397

380:                                              ; preds = %376
  %381 = load i32, i32* %15, align 4
  %382 = icmp eq i32 %381, 8
  br i1 %382, label %389, label %383

383:                                              ; preds = %380
  %384 = load i32, i32* %15, align 4
  %385 = icmp eq i32 %384, 16
  br i1 %385, label %389, label %386

386:                                              ; preds = %383
  %387 = load i32, i32* %15, align 4
  %388 = icmp eq i32 %387, 40
  br i1 %388, label %389, label %397

389:                                              ; preds = %386, %383, %380
  %390 = load i32, i32* @MMCR1_PMC1_ADDER_SEL_SH, align 4
  %391 = load i32, i32* %12, align 4
  %392 = sub i32 %390, %391
  %393 = zext i32 %392 to i64
  %394 = shl i64 1, %393
  %395 = load i64, i64* %10, align 8
  %396 = or i64 %395, %394
  store i64 %396, i64* %10, align 8
  br label %397

397:                                              ; preds = %389, %386, %376, %371
  br label %401

398:                                              ; preds = %368
  %399 = load i32, i32* %12, align 4
  %400 = add i32 %399, -1
  store i32 %400, i32* %12, align 4
  br label %401

401:                                              ; preds = %398, %397
  br label %402

402:                                              ; preds = %401, %363
  %403 = load i32, i32* %18, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %431

405:                                              ; preds = %402
  %406 = load i32, i32* %13, align 4
  %407 = load i32, i32* @PM_GRS, align 4
  %408 = icmp eq i32 %406, %407
  br i1 %408, label %409, label %431

409:                                              ; preds = %405
  %410 = load i32, i32* %15, align 4
  %411 = and i32 %410, 7
  store i32 %411, i32* %19, align 4
  %412 = load i32*, i32** %6, align 8
  %413 = load i32, i32* %17, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* @PM_GRS_SH, align 4
  %418 = ashr i32 %416, %417
  %419 = load i32, i32* @PM_GRS_MSK, align 4
  %420 = and i32 %418, %419
  store i32 %420, i32* %20, align 4
  %421 = load i32, i32* %20, align 4
  %422 = sext i32 %421 to i64
  %423 = load i64*, i64** @grsel_shift, align 8
  %424 = load i32, i32* %19, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i64, i64* %423, i64 %425
  %427 = load i64, i64* %426, align 8
  %428 = shl i64 %422, %427
  %429 = load i64, i64* %10, align 8
  %430 = or i64 %429, %428
  store i64 %430, i64* %10, align 8
  br label %431

431:                                              ; preds = %409, %405, %402
  %432 = load i32*, i32** %6, align 8
  %433 = load i32, i32* %17, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = call i64 @power5p_marked_instr_event(i32 %436)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %443

439:                                              ; preds = %431
  %440 = load i64, i64* @MMCRA_SAMPLE_ENABLE, align 8
  %441 = load i64, i64* %11, align 8
  %442 = or i64 %441, %440
  store i64 %442, i64* %11, align 8
  br label %443

443:                                              ; preds = %439, %431
  %444 = load i32, i32* %15, align 4
  %445 = and i32 %444, 88
  %446 = icmp eq i32 %445, 64
  br i1 %446, label %447, label %457

447:                                              ; preds = %443
  %448 = load i32, i32* %14, align 4
  %449 = and i32 %448, 1
  %450 = load i32, i32* %12, align 4
  %451 = lshr i32 %450, 1
  %452 = and i32 %451, 1
  %453 = icmp ne i32 %449, %452
  br i1 %453, label %454, label %457

454:                                              ; preds = %447
  %455 = load i32, i32* %15, align 4
  %456 = or i32 %455, 16
  store i32 %456, i32* %15, align 4
  br label %457

457:                                              ; preds = %454, %447, %443
  %458 = load i32, i32* %12, align 4
  %459 = icmp ule i32 %458, 3
  br i1 %459, label %460, label %468

460:                                              ; preds = %457
  %461 = load i32, i32* %15, align 4
  %462 = load i32, i32* %12, align 4
  %463 = call i32 @MMCR1_PMCSEL_SH(i32 %462)
  %464 = shl i32 %461, %463
  %465 = zext i32 %464 to i64
  %466 = load i64, i64* %10, align 8
  %467 = or i64 %466, %465
  store i64 %467, i64* %10, align 8
  br label %468

468:                                              ; preds = %460, %457
  %469 = load i32, i32* %12, align 4
  %470 = load i32*, i32** %8, align 8
  %471 = load i32, i32* %17, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %470, i64 %472
  store i32 %469, i32* %473, align 4
  br label %474

474:                                              ; preds = %468
  %475 = load i32, i32* %17, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %17, align 4
  br label %296

477:                                              ; preds = %296
  %478 = load i64*, i64** %9, align 8
  %479 = getelementptr inbounds i64, i64* %478, i64 0
  store i64 0, i64* %479, align 8
  %480 = load i32, i32* %21, align 4
  %481 = and i32 %480, 1
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %487

483:                                              ; preds = %477
  %484 = load i64, i64* @MMCR0_PMC1CE, align 8
  %485 = load i64*, i64** %9, align 8
  %486 = getelementptr inbounds i64, i64* %485, i64 0
  store i64 %484, i64* %486, align 8
  br label %487

487:                                              ; preds = %483, %477
  %488 = load i32, i32* %21, align 4
  %489 = and i32 %488, 62
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %497

491:                                              ; preds = %487
  %492 = load i64, i64* @MMCR0_PMCjCE, align 8
  %493 = load i64*, i64** %9, align 8
  %494 = getelementptr inbounds i64, i64* %493, i64 0
  %495 = load i64, i64* %494, align 8
  %496 = or i64 %495, %492
  store i64 %496, i64* %494, align 8
  br label %497

497:                                              ; preds = %491, %487
  %498 = load i64, i64* %10, align 8
  %499 = load i64*, i64** %9, align 8
  %500 = getelementptr inbounds i64, i64* %499, i64 1
  store i64 %498, i64* %500, align 8
  %501 = load i64, i64* %11, align 8
  %502 = load i64*, i64** %9, align 8
  %503 = getelementptr inbounds i64, i64* %502, i64 2
  store i64 %501, i64* %503, align 8
  store i32 0, i32* %5, align 4
  br label %504

504:                                              ; preds = %497, %362, %236, %221, %194, %134, %113, %98, %60, %52, %27
  %505 = load i32, i32* %5, align 4
  ret i32 %505
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @power5p_marked_instr_event(i32) #1

declare dso_local i32 @MMCR1_PMCSEL_SH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
