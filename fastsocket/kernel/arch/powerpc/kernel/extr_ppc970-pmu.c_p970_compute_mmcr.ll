; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_ppc970-pmu.c_p970_compute_mmcr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_ppc970-pmu.c_p970_compute_mmcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.p970_compute_mmcr.unitmap = private unnamed_addr constant [7 x i8] c"\00\00\18\08\10\04\07", align 1
@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@PM_UNIT_SH = common dso_local global i32 0, align 4
@PM_UNIT_MSK = common dso_local global i32 0, align 4
@PM_BYTE_SH = common dso_local global i32 0, align 4
@PM_BYTE_MSK = common dso_local global i32 0, align 4
@PM_LASTUNIT = common dso_local global i32 0, align 4
@PM_ISU = common dso_local global i64 0, align 8
@PM_FPU = common dso_local global i64 0, align 8
@PM_IFU = common dso_local global i64 0, align 8
@PM_VPU = common dso_local global i64 0, align 8
@PM_STS = common dso_local global i32 0, align 4
@MMCR1_TTM1SEL_SH = common dso_local global i64 0, align 8
@PM_LSU0 = common dso_local global i32 0, align 4
@PM_LSU1L = common dso_local global i32 0, align 4
@MMCR1_TTM3SEL_SH = common dso_local global i32 0, align 4
@MMCR1_TD_CP_DBG0SEL_SH = common dso_local global i32 0, align 4
@PM_PMCSEL_MSK = common dso_local global i32 0, align 4
@mmcr1_adder_bits = common dso_local global i64* null, align 8
@PM_SPCSEL_SH = common dso_local global i32 0, align 4
@PM_SPCSEL_MSK = common dso_local global i32 0, align 4
@MMCRA_SAMPLE_ENABLE = common dso_local global i64 0, align 8
@MMCR0_PMC1SEL_SH = common dso_local global i32 0, align 4
@MMCR1_PMC3SEL_SH = common dso_local global i32 0, align 4
@MMCR0_PMC1CE = common dso_local global i64 0, align 8
@MMCR0_PMCjCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64*)* @p970_compute_mmcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p970_compute_mmcr(i32* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [2 x i32], align 4
  %21 = alloca [4 x i8], align 1
  %22 = alloca [16 x i8], align 16
  %23 = alloca [7 x i8], align 1
  %24 = alloca [2 x i8], align 1
  %25 = alloca [8 x i8], align 1
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %19, align 4
  %28 = bitcast [7 x i8]* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.p970_compute_mmcr.unitmap, i32 0, i32 0), i64 7, i1 false)
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 8
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %519

32:                                               ; preds = %4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 0
  %36 = call i32 @memset(i8* %35, i32 0, i32 4)
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  %38 = call i32 @memset(i8* %37, i32 0, i32 16)
  store i32 0, i32* %26, align 4
  br label %39

39:                                               ; preds = %139, %32
  %40 = load i32, i32* %26, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %142

43:                                               ; preds = %39
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %26, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PM_PMC_SH, align 4
  %50 = ashr i32 %48, %49
  %51 = load i32, i32* @PM_PMC_MSK, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %43
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %13, align 4
  %58 = sub i32 %57, 1
  %59 = shl i32 1, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 -1, i32* %5, align 4
  br label %519

63:                                               ; preds = %55
  %64 = load i32, i32* %13, align 4
  %65 = sub i32 %64, 1
  %66 = shl i32 1, %65
  %67 = load i32, i32* %19, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %19, align 4
  %69 = load i32, i32* %13, align 4
  %70 = sub i32 %69, 1
  %71 = lshr i32 %70, 1
  %72 = and i32 %71, 1
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %63, %43
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %26, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @PM_UNIT_SH, align 4
  %84 = ashr i32 %82, %83
  %85 = load i32, i32* @PM_UNIT_MSK, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %14, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %26, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @PM_BYTE_SH, align 4
  %93 = ashr i32 %91, %92
  %94 = load i32, i32* @PM_BYTE_MSK, align 4
  %95 = and i32 %93, %94
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %138

98:                                               ; preds = %77
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @PM_LASTUNIT, align 4
  %101 = icmp ugt i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 -1, i32* %5, align 4
  br label %519

103:                                              ; preds = %98
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %15, align 4
  %108 = and i32 %107, 1
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %106, %103
  %114 = load i32, i32* %15, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %113
  %121 = load i32, i32* %15, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  store i32 -1, i32* %5, align 4
  br label %519

129:                                              ; preds = %120, %113
  %130 = load i32, i32* %14, align 4
  %131 = trunc i32 %130 to i8
  %132 = load i32, i32* %15, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 %133
  store i8 %131, i8* %134, align 1
  %135 = load i32, i32* %14, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 %136
  store i8 1, i8* %137, align 1
  br label %138

138:                                              ; preds = %129, %77
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %26, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %26, align 4
  br label %39

142:                                              ; preds = %39
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp ugt i32 %144, 4
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp ugt i32 %148, 4
  br i1 %149, label %150, label %151

150:                                              ; preds = %146, %142
  store i32 -1, i32* %5, align 4
  br label %519

151:                                              ; preds = %146
  %152 = load i64, i64* @PM_ISU, align 8
  %153 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = load i64, i64* @PM_FPU, align 8
  %157 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = load i64, i64* @PM_IFU, align 8
  %161 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = or i32 %159, %163
  %165 = load i64, i64* @PM_VPU, align 8
  %166 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = or i32 %164, %168
  %170 = and i32 %155, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %151
  %173 = load i64, i64* @PM_ISU, align 8
  %174 = getelementptr inbounds [7 x i8], [7 x i8]* %23, i64 0, i64 %173
  store i8 6, i8* %174, align 1
  br label %175

175:                                              ; preds = %172, %151
  %176 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 1
  store i8 0, i8* %176, align 1
  %177 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 0
  store i8 0, i8* %177, align 1
  %178 = load i64, i64* @PM_FPU, align 8
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %26, align 4
  br label %180

180:                                              ; preds = %211, %175
  %181 = load i32, i32* %26, align 4
  %182 = load i32, i32* @PM_STS, align 4
  %183 = icmp sle i32 %181, %182
  br i1 %183, label %184, label %214

184:                                              ; preds = %180
  %185 = load i32, i32* %26, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = icmp ne i8 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %184
  br label %211

191:                                              ; preds = %184
  %192 = load i32, i32* %26, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [7 x i8], [7 x i8]* %23, i64 0, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  store i32 %196, i32* %17, align 4
  %197 = load i32, i32* %17, align 4
  %198 = lshr i32 %197, 2
  %199 = and i32 %198, 1
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 %200
  %202 = load i8, i8* %201, align 1
  %203 = add i8 %202, 1
  store i8 %203, i8* %201, align 1
  %204 = load i32, i32* %17, align 4
  %205 = and i32 %204, -5
  %206 = zext i32 %205 to i64
  %207 = load i64, i64* @MMCR1_TTM1SEL_SH, align 8
  %208 = shl i64 %206, %207
  %209 = load i64, i64* %11, align 8
  %210 = or i64 %209, %208
  store i64 %210, i64* %11, align 8
  br label %211

211:                                              ; preds = %191, %190
  %212 = load i32, i32* %26, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %26, align 4
  br label %180

214:                                              ; preds = %180
  %215 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 0
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = icmp sgt i32 %217, 1
  br i1 %218, label %224, label %219

219:                                              ; preds = %214
  %220 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 1
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = icmp sgt i32 %222, 1
  br i1 %223, label %224, label %225

224:                                              ; preds = %219, %214
  store i32 -1, i32* %5, align 4
  br label %519

225:                                              ; preds = %219
  store i32 0, i32* %15, align 4
  br label %226

226:                                              ; preds = %284, %225
  %227 = load i32, i32* %15, align 4
  %228 = icmp ult i32 %227, 4
  br i1 %228, label %229, label %287

229:                                              ; preds = %226
  %230 = load i32, i32* %15, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  store i32 %234, i32* %14, align 4
  %235 = load i32, i32* %14, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %229
  br label %284

238:                                              ; preds = %229
  %239 = load i32, i32* %14, align 4
  %240 = load i32, i32* @PM_STS, align 4
  %241 = icmp ule i32 %239, %240
  br i1 %241, label %242, label %250

242:                                              ; preds = %238
  %243 = load i32, i32* %14, align 4
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds [7 x i8], [7 x i8]* %23, i64 0, i64 %244
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  %248 = ashr i32 %247, 2
  %249 = and i32 %248, 1
  store i32 %249, i32* %17, align 4
  br label %273

250:                                              ; preds = %238
  %251 = load i32, i32* %14, align 4
  %252 = load i32, i32* @PM_LSU0, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %250
  store i32 2, i32* %17, align 4
  br label %272

255:                                              ; preds = %250
  store i32 3, i32* %17, align 4
  %256 = load i32, i32* %14, align 4
  %257 = load i32, i32* @PM_LSU1L, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %271

259:                                              ; preds = %255
  %260 = load i32, i32* %15, align 4
  %261 = icmp uge i32 %260, 2
  br i1 %261, label %262, label %271

262:                                              ; preds = %259
  %263 = load i32, i32* @MMCR1_TTM3SEL_SH, align 4
  %264 = add nsw i32 %263, 3
  %265 = load i32, i32* %15, align 4
  %266 = sub i32 %264, %265
  %267 = zext i32 %266 to i64
  %268 = shl i64 1, %267
  %269 = load i64, i64* %11, align 8
  %270 = or i64 %269, %268
  store i64 %270, i64* %11, align 8
  br label %271

271:                                              ; preds = %262, %259, %255
  br label %272

272:                                              ; preds = %271, %254
  br label %273

273:                                              ; preds = %272, %242
  %274 = load i32, i32* %17, align 4
  %275 = zext i32 %274 to i64
  %276 = load i32, i32* @MMCR1_TD_CP_DBG0SEL_SH, align 4
  %277 = load i32, i32* %15, align 4
  %278 = mul i32 2, %277
  %279 = sub i32 %276, %278
  %280 = zext i32 %279 to i64
  %281 = shl i64 %275, %280
  %282 = load i64, i64* %11, align 8
  %283 = or i64 %282, %281
  store i64 %283, i64* %11, align 8
  br label %284

284:                                              ; preds = %273, %237
  %285 = load i32, i32* %15, align 4
  %286 = add i32 %285, 1
  store i32 %286, i32* %15, align 4
  br label %226

287:                                              ; preds = %226
  %288 = getelementptr inbounds [8 x i8], [8 x i8]* %25, i64 0, i64 0
  %289 = call i32 @memset(i8* %288, i32 8, i32 8)
  store i32 0, i32* %26, align 4
  br label %290

290:                                              ; preds = %445, %287
  %291 = load i32, i32* %26, align 4
  %292 = load i32, i32* %7, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %448

294:                                              ; preds = %290
  %295 = load i32*, i32** %6, align 8
  %296 = load i32, i32* %26, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @PM_PMC_SH, align 4
  %301 = ashr i32 %299, %300
  %302 = load i32, i32* @PM_PMC_MSK, align 4
  %303 = and i32 %301, %302
  store i32 %303, i32* %13, align 4
  %304 = load i32*, i32** %6, align 8
  %305 = load i32, i32* %26, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @PM_UNIT_SH, align 4
  %310 = ashr i32 %308, %309
  %311 = load i32, i32* @PM_UNIT_MSK, align 4
  %312 = and i32 %310, %311
  store i32 %312, i32* %14, align 4
  %313 = load i32*, i32** %6, align 8
  %314 = load i32, i32* %26, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @PM_BYTE_SH, align 4
  %319 = ashr i32 %317, %318
  %320 = load i32, i32* @PM_BYTE_MSK, align 4
  %321 = and i32 %319, %320
  store i32 %321, i32* %15, align 4
  %322 = load i32*, i32** %6, align 8
  %323 = load i32, i32* %26, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @PM_PMCSEL_MSK, align 4
  %328 = and i32 %326, %327
  store i32 %328, i32* %16, align 4
  %329 = load i32, i32* %13, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %390, label %331

331:                                              ; preds = %294
  %332 = load i32, i32* %14, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %331
  %335 = load i32, i32* %15, align 4
  %336 = and i32 %335, 2
  %337 = shl i32 %336, 2
  %338 = or i32 16, %337
  %339 = load i32, i32* %16, align 4
  %340 = or i32 %339, %338
  store i32 %340, i32* %16, align 4
  br label %344

341:                                              ; preds = %331
  %342 = load i32, i32* %16, align 4
  %343 = or i32 %342, 8
  store i32 %343, i32* %16, align 4
  br label %344

344:                                              ; preds = %341, %334
  store i32 0, i32* %13, align 4
  br label %345

345:                                              ; preds = %382, %344
  %346 = load i32, i32* %13, align 4
  %347 = icmp ult i32 %346, 8
  br i1 %347, label %348, label %385

348:                                              ; preds = %345
  %349 = load i32, i32* %19, align 4
  %350 = load i32, i32* %13, align 4
  %351 = shl i32 1, %350
  %352 = and i32 %349, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %355

354:                                              ; preds = %348
  br label %382

355:                                              ; preds = %348
  %356 = load i32, i32* %13, align 4
  %357 = lshr i32 %356, 1
  %358 = and i32 %357, 1
  store i32 %358, i32* %18, align 4
  %359 = load i32, i32* %14, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %368

361:                                              ; preds = %355
  %362 = load i32, i32* %18, align 4
  %363 = load i32, i32* %15, align 4
  %364 = and i32 %363, 1
  %365 = icmp eq i32 %362, %364
  br i1 %365, label %366, label %367

366:                                              ; preds = %361
  br label %385

367:                                              ; preds = %361
  br label %381

368:                                              ; preds = %355
  %369 = load i32, i32* %18, align 4
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = icmp ult i32 %372, 4
  br i1 %373, label %374, label %380

374:                                              ; preds = %368
  %375 = load i32, i32* %18, align 4
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = add i32 %378, 1
  store i32 %379, i32* %377, align 4
  br label %385

380:                                              ; preds = %368
  br label %381

381:                                              ; preds = %380, %367
  br label %382

382:                                              ; preds = %381, %354
  %383 = load i32, i32* %13, align 4
  %384 = add i32 %383, 1
  store i32 %384, i32* %13, align 4
  br label %345

385:                                              ; preds = %374, %366, %345
  %386 = load i32, i32* %13, align 4
  %387 = shl i32 1, %386
  %388 = load i32, i32* %19, align 4
  %389 = or i32 %388, %387
  store i32 %389, i32* %19, align 4
  br label %409

390:                                              ; preds = %294
  %391 = load i32, i32* %13, align 4
  %392 = add i32 %391, -1
  store i32 %392, i32* %13, align 4
  %393 = load i32, i32* %16, align 4
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %395, label %408

395:                                              ; preds = %390
  %396 = load i32, i32* %15, align 4
  %397 = and i32 %396, 2
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %408

399:                                              ; preds = %395
  %400 = load i64*, i64** @mmcr1_adder_bits, align 8
  %401 = load i32, i32* %13, align 4
  %402 = zext i32 %401 to i64
  %403 = getelementptr inbounds i64, i64* %400, i64 %402
  %404 = load i64, i64* %403, align 8
  %405 = shl i64 1, %404
  %406 = load i64, i64* %11, align 8
  %407 = or i64 %406, %405
  store i64 %407, i64* %11, align 8
  br label %408

408:                                              ; preds = %399, %395, %390
  br label %409

409:                                              ; preds = %408, %385
  %410 = load i32, i32* %16, align 4
  %411 = trunc i32 %410 to i8
  %412 = load i32, i32* %13, align 4
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds [8 x i8], [8 x i8]* %25, i64 0, i64 %413
  store i8 %411, i8* %414, align 1
  %415 = load i32, i32* %13, align 4
  %416 = load i32*, i32** %8, align 8
  %417 = load i32, i32* %26, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  store i32 %415, i32* %419, align 4
  %420 = load i32*, i32** %6, align 8
  %421 = load i32, i32* %26, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %420, i64 %422
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* @PM_SPCSEL_SH, align 4
  %426 = ashr i32 %424, %425
  %427 = load i32, i32* @PM_SPCSEL_MSK, align 4
  %428 = and i32 %426, %427
  store i32 %428, i32* %27, align 4
  %429 = load i32, i32* %27, align 4
  %430 = sext i32 %429 to i64
  %431 = load i64, i64* %11, align 8
  %432 = or i64 %431, %430
  store i64 %432, i64* %11, align 8
  %433 = load i32*, i32** %6, align 8
  %434 = load i32, i32* %26, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %433, i64 %435
  %437 = load i32, i32* %436, align 4
  %438 = call i64 @p970_marked_instr_event(i32 %437)
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %444

440:                                              ; preds = %409
  %441 = load i64, i64* @MMCRA_SAMPLE_ENABLE, align 8
  %442 = load i64, i64* %12, align 8
  %443 = or i64 %442, %441
  store i64 %443, i64* %12, align 8
  br label %444

444:                                              ; preds = %440, %409
  br label %445

445:                                              ; preds = %444
  %446 = load i32, i32* %26, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %26, align 4
  br label %290

448:                                              ; preds = %290
  store i32 0, i32* %13, align 4
  br label %449

449:                                              ; preds = %466, %448
  %450 = load i32, i32* %13, align 4
  %451 = icmp ult i32 %450, 2
  br i1 %451, label %452, label %469

452:                                              ; preds = %449
  %453 = load i32, i32* %13, align 4
  %454 = zext i32 %453 to i64
  %455 = getelementptr inbounds [8 x i8], [8 x i8]* %25, i64 0, i64 %454
  %456 = load i8, i8* %455, align 1
  %457 = zext i8 %456 to i32
  %458 = load i32, i32* @MMCR0_PMC1SEL_SH, align 4
  %459 = load i32, i32* %13, align 4
  %460 = mul i32 7, %459
  %461 = sub i32 %458, %460
  %462 = shl i32 %457, %461
  %463 = sext i32 %462 to i64
  %464 = load i64, i64* %10, align 8
  %465 = or i64 %464, %463
  store i64 %465, i64* %10, align 8
  br label %466

466:                                              ; preds = %452
  %467 = load i32, i32* %13, align 4
  %468 = add i32 %467, 1
  store i32 %468, i32* %13, align 4
  br label %449

469:                                              ; preds = %449
  br label %470

470:                                              ; preds = %488, %469
  %471 = load i32, i32* %13, align 4
  %472 = icmp ult i32 %471, 8
  br i1 %472, label %473, label %491

473:                                              ; preds = %470
  %474 = load i32, i32* %13, align 4
  %475 = zext i32 %474 to i64
  %476 = getelementptr inbounds [8 x i8], [8 x i8]* %25, i64 0, i64 %475
  %477 = load i8, i8* %476, align 1
  %478 = zext i8 %477 to i64
  %479 = load i32, i32* @MMCR1_PMC3SEL_SH, align 4
  %480 = load i32, i32* %13, align 4
  %481 = sub i32 %480, 2
  %482 = mul i32 5, %481
  %483 = sub i32 %479, %482
  %484 = zext i32 %483 to i64
  %485 = shl i64 %478, %484
  %486 = load i64, i64* %11, align 8
  %487 = or i64 %486, %485
  store i64 %487, i64* %11, align 8
  br label %488

488:                                              ; preds = %473
  %489 = load i32, i32* %13, align 4
  %490 = add i32 %489, 1
  store i32 %490, i32* %13, align 4
  br label %470

491:                                              ; preds = %470
  %492 = load i32, i32* %19, align 4
  %493 = and i32 %492, 1
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %499

495:                                              ; preds = %491
  %496 = load i64, i64* @MMCR0_PMC1CE, align 8
  %497 = load i64, i64* %10, align 8
  %498 = or i64 %497, %496
  store i64 %498, i64* %10, align 8
  br label %499

499:                                              ; preds = %495, %491
  %500 = load i32, i32* %19, align 4
  %501 = and i32 %500, 254
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %507

503:                                              ; preds = %499
  %504 = load i64, i64* @MMCR0_PMCjCE, align 8
  %505 = load i64, i64* %10, align 8
  %506 = or i64 %505, %504
  store i64 %506, i64* %10, align 8
  br label %507

507:                                              ; preds = %503, %499
  %508 = load i64, i64* %12, align 8
  %509 = or i64 %508, 8192
  store i64 %509, i64* %12, align 8
  %510 = load i64, i64* %10, align 8
  %511 = load i64*, i64** %9, align 8
  %512 = getelementptr inbounds i64, i64* %511, i64 0
  store i64 %510, i64* %512, align 8
  %513 = load i64, i64* %11, align 8
  %514 = load i64*, i64** %9, align 8
  %515 = getelementptr inbounds i64, i64* %514, i64 1
  store i64 %513, i64* %515, align 8
  %516 = load i64, i64* %12, align 8
  %517 = load i64*, i64** %9, align 8
  %518 = getelementptr inbounds i64, i64* %517, i64 2
  store i64 %516, i64* %518, align 8
  store i32 0, i32* %5, align 4
  br label %519

519:                                              ; preds = %507, %224, %150, %128, %102, %62, %31
  %520 = load i32, i32* %5, align 4
  ret i32 %520
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @p970_marked_instr_event(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
