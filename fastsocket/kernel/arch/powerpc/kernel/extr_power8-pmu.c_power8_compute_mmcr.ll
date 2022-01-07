; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power8-pmu.c_power8_compute_mmcr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power8-pmu.c_power8_compute_mmcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVENT_PMC_SHIFT = common dso_local global i32 0, align 4
@EVENT_PMC_MASK = common dso_local global i32 0, align 4
@MMCRA_SDAR_MODE_TLB = common dso_local global i64 0, align 8
@EVENT_UNIT_SHIFT = common dso_local global i32 0, align 4
@EVENT_UNIT_MASK = common dso_local global i32 0, align 4
@EVENT_COMBINE_SHIFT = common dso_local global i32 0, align 4
@EVENT_COMBINE_MASK = common dso_local global i32 0, align 4
@EVENT_PSEL_MASK = common dso_local global i32 0, align 4
@EVENT_IS_L1 = common dso_local global i32 0, align 4
@EVENT_CACHE_SEL_SHIFT = common dso_local global i32 0, align 4
@MMCR1_IC_QUAL_SHIFT = common dso_local global i64 0, align 8
@MMCR1_DC_QUAL_SHIFT = common dso_local global i64 0, align 8
@EVENT_IS_MARKED = common dso_local global i32 0, align 4
@MMCRA_SAMPLE_ENABLE = common dso_local global i64 0, align 8
@EVENT_SAMPLE_SHIFT = common dso_local global i32 0, align 4
@EVENT_SAMPLE_MASK = common dso_local global i32 0, align 4
@MMCRA_SAMP_MODE_SHIFT = common dso_local global i64 0, align 8
@MMCRA_SAMP_ELIG_SHIFT = common dso_local global i64 0, align 8
@EVENT_THR_CTL_SHIFT = common dso_local global i32 0, align 4
@EVENT_THR_CTL_MASK = common dso_local global i32 0, align 4
@MMCRA_THR_CTL_SHIFT = common dso_local global i64 0, align 8
@EVENT_THR_SEL_SHIFT = common dso_local global i32 0, align 4
@EVENT_THR_SEL_MASK = common dso_local global i32 0, align 4
@MMCRA_THR_SEL_SHIFT = common dso_local global i64 0, align 8
@EVENT_THR_CMP_SHIFT = common dso_local global i32 0, align 4
@EVENT_THR_CMP_MASK = common dso_local global i32 0, align 4
@MMCRA_THR_CMP_SHIFT = common dso_local global i64 0, align 8
@MMCR0_PMC1CE = common dso_local global i64 0, align 8
@MMCR0_PMCjCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64*)* @power8_compute_mmcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power8_compute_mmcr(i32* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %41, %4
  %20 = load i32, i32* %18, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %18, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @EVENT_PMC_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = load i32, i32* @EVENT_PMC_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load i32, i32* %16, align 4
  %37 = shl i32 1, %36
  %38 = load i32, i32* %17, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %17, align 4
  br label %40

40:                                               ; preds = %35, %23
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %18, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %18, align 4
  br label %19

44:                                               ; preds = %19
  %45 = load i64, i64* @MMCRA_SDAR_MODE_TLB, align 8
  store i64 %45, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %18, align 4
  br label %46

46:                                               ; preds = %277, %44
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %280

50:                                               ; preds = %46
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %18, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @EVENT_PMC_SHIFT, align 4
  %57 = ashr i32 %55, %56
  %58 = load i32, i32* @EVENT_PMC_MASK, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %16, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %18, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @EVENT_UNIT_SHIFT, align 4
  %66 = ashr i32 %64, %65
  %67 = load i32, i32* @EVENT_UNIT_MASK, align 4
  %68 = and i32 %66, %67
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %11, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %18, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @EVENT_COMBINE_SHIFT, align 4
  %76 = ashr i32 %74, %75
  %77 = load i32, i32* @EVENT_COMBINE_MASK, align 4
  %78 = and i32 %76, %77
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %12, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %18, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @EVENT_PSEL_MASK, align 4
  %86 = and i32 %84, %85
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %13, align 8
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %110, label %90

90:                                               ; preds = %50
  store i32 1, i32* %16, align 4
  br label %91

91:                                               ; preds = %102, %90
  %92 = load i32, i32* %16, align 4
  %93 = icmp ule i32 %92, 4
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %16, align 4
  %97 = shl i32 1, %96
  %98 = and i32 %95, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  br label %105

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %16, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %16, align 4
  br label %91

105:                                              ; preds = %100, %91
  %106 = load i32, i32* %16, align 4
  %107 = shl i32 1, %106
  %108 = load i32, i32* %17, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %17, align 4
  br label %110

110:                                              ; preds = %105, %50
  %111 = load i32, i32* %16, align 4
  %112 = icmp ule i32 %111, 4
  br i1 %112, label %113, label %132

113:                                              ; preds = %110
  %114 = load i64, i64* %11, align 8
  %115 = load i32, i32* %16, align 4
  %116 = call i64 @MMCR1_UNIT_SHIFT(i32 %115)
  %117 = shl i64 %114, %116
  %118 = load i64, i64* %10, align 8
  %119 = or i64 %118, %117
  store i64 %119, i64* %10, align 8
  %120 = load i64, i64* %12, align 8
  %121 = load i32, i32* %16, align 4
  %122 = call i64 @MMCR1_COMBINE_SHIFT(i32 %121)
  %123 = shl i64 %120, %122
  %124 = load i64, i64* %10, align 8
  %125 = or i64 %124, %123
  store i64 %125, i64* %10, align 8
  %126 = load i64, i64* %13, align 8
  %127 = load i32, i32* %16, align 4
  %128 = call i64 @MMCR1_PMCSEL_SHIFT(i32 %127)
  %129 = shl i64 %126, %128
  %130 = load i64, i64* %10, align 8
  %131 = or i64 %130, %129
  store i64 %131, i64* %10, align 8
  br label %132

132:                                              ; preds = %113, %110
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* %18, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @EVENT_IS_L1, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %164

141:                                              ; preds = %132
  %142 = load i32*, i32** %5, align 8
  %143 = load i32, i32* %18, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @EVENT_CACHE_SEL_SHIFT, align 4
  %148 = ashr i32 %146, %147
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %14, align 8
  %150 = load i64, i64* %14, align 8
  %151 = and i64 %150, 1
  %152 = load i64, i64* @MMCR1_IC_QUAL_SHIFT, align 8
  %153 = shl i64 %151, %152
  %154 = load i64, i64* %10, align 8
  %155 = or i64 %154, %153
  store i64 %155, i64* %10, align 8
  %156 = load i64, i64* %14, align 8
  %157 = lshr i64 %156, 1
  store i64 %157, i64* %14, align 8
  %158 = load i64, i64* %14, align 8
  %159 = and i64 %158, 1
  %160 = load i64, i64* @MMCR1_DC_QUAL_SHIFT, align 8
  %161 = shl i64 %159, %160
  %162 = load i64, i64* %10, align 8
  %163 = or i64 %162, %161
  store i64 %163, i64* %10, align 8
  br label %164

164:                                              ; preds = %141, %132
  %165 = load i32*, i32** %5, align 8
  %166 = load i32, i32* %18, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @EVENT_IS_MARKED, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %203

173:                                              ; preds = %164
  %174 = load i64, i64* @MMCRA_SAMPLE_ENABLE, align 8
  %175 = load i64, i64* %9, align 8
  %176 = or i64 %175, %174
  store i64 %176, i64* %9, align 8
  %177 = load i32*, i32** %5, align 8
  %178 = load i32, i32* %18, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @EVENT_SAMPLE_SHIFT, align 4
  %183 = ashr i32 %181, %182
  %184 = load i32, i32* @EVENT_SAMPLE_MASK, align 4
  %185 = and i32 %183, %184
  %186 = sext i32 %185 to i64
  store i64 %186, i64* %15, align 8
  %187 = load i64, i64* %15, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %202

189:                                              ; preds = %173
  %190 = load i64, i64* %15, align 8
  %191 = and i64 %190, 3
  %192 = load i64, i64* @MMCRA_SAMP_MODE_SHIFT, align 8
  %193 = shl i64 %191, %192
  %194 = load i64, i64* %9, align 8
  %195 = or i64 %194, %193
  store i64 %195, i64* %9, align 8
  %196 = load i64, i64* %15, align 8
  %197 = lshr i64 %196, 2
  %198 = load i64, i64* @MMCRA_SAMP_ELIG_SHIFT, align 8
  %199 = shl i64 %197, %198
  %200 = load i64, i64* %9, align 8
  %201 = or i64 %200, %199
  store i64 %201, i64* %9, align 8
  br label %202

202:                                              ; preds = %189, %173
  br label %203

203:                                              ; preds = %202, %164
  %204 = load i32*, i32** %5, align 8
  %205 = load i32, i32* %18, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = call i64 @event_is_fab_match(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %224

211:                                              ; preds = %203
  %212 = load i32*, i32** %5, align 8
  %213 = load i32, i32* %18, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @EVENT_THR_CTL_SHIFT, align 4
  %218 = ashr i32 %216, %217
  %219 = load i32, i32* @EVENT_THR_CTL_MASK, align 4
  %220 = and i32 %218, %219
  %221 = sext i32 %220 to i64
  %222 = load i64, i64* %10, align 8
  %223 = or i64 %222, %221
  store i64 %223, i64* %10, align 8
  br label %270

224:                                              ; preds = %203
  %225 = load i32*, i32** %5, align 8
  %226 = load i32, i32* %18, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @EVENT_THR_CTL_SHIFT, align 4
  %231 = ashr i32 %229, %230
  %232 = load i32, i32* @EVENT_THR_CTL_MASK, align 4
  %233 = and i32 %231, %232
  %234 = sext i32 %233 to i64
  store i64 %234, i64* %15, align 8
  %235 = load i64, i64* %15, align 8
  %236 = load i64, i64* @MMCRA_THR_CTL_SHIFT, align 8
  %237 = shl i64 %235, %236
  %238 = load i64, i64* %9, align 8
  %239 = or i64 %238, %237
  store i64 %239, i64* %9, align 8
  %240 = load i32*, i32** %5, align 8
  %241 = load i32, i32* %18, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @EVENT_THR_SEL_SHIFT, align 4
  %246 = ashr i32 %244, %245
  %247 = load i32, i32* @EVENT_THR_SEL_MASK, align 4
  %248 = and i32 %246, %247
  %249 = sext i32 %248 to i64
  store i64 %249, i64* %15, align 8
  %250 = load i64, i64* %15, align 8
  %251 = load i64, i64* @MMCRA_THR_SEL_SHIFT, align 8
  %252 = shl i64 %250, %251
  %253 = load i64, i64* %9, align 8
  %254 = or i64 %253, %252
  store i64 %254, i64* %9, align 8
  %255 = load i32*, i32** %5, align 8
  %256 = load i32, i32* %18, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @EVENT_THR_CMP_SHIFT, align 4
  %261 = ashr i32 %259, %260
  %262 = load i32, i32* @EVENT_THR_CMP_MASK, align 4
  %263 = and i32 %261, %262
  %264 = sext i32 %263 to i64
  store i64 %264, i64* %15, align 8
  %265 = load i64, i64* %15, align 8
  %266 = load i64, i64* @MMCRA_THR_CMP_SHIFT, align 8
  %267 = shl i64 %265, %266
  %268 = load i64, i64* %9, align 8
  %269 = or i64 %268, %267
  store i64 %269, i64* %9, align 8
  br label %270

270:                                              ; preds = %224, %211
  %271 = load i32, i32* %16, align 4
  %272 = sub i32 %271, 1
  %273 = load i32*, i32** %7, align 8
  %274 = load i32, i32* %18, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  store i32 %272, i32* %276, align 4
  br label %277

277:                                              ; preds = %270
  %278 = load i32, i32* %18, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %18, align 4
  br label %46

280:                                              ; preds = %46
  %281 = load i64*, i64** %8, align 8
  %282 = getelementptr inbounds i64, i64* %281, i64 0
  store i64 0, i64* %282, align 8
  %283 = load i32, i32* %17, align 4
  %284 = and i32 %283, 2
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %280
  %287 = load i64, i64* @MMCR0_PMC1CE, align 8
  %288 = load i64*, i64** %8, align 8
  %289 = getelementptr inbounds i64, i64* %288, i64 0
  store i64 %287, i64* %289, align 8
  br label %290

290:                                              ; preds = %286, %280
  %291 = load i32, i32* %17, align 4
  %292 = and i32 %291, 124
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %290
  %295 = load i64, i64* @MMCR0_PMCjCE, align 8
  %296 = load i64*, i64** %8, align 8
  %297 = getelementptr inbounds i64, i64* %296, i64 0
  %298 = load i64, i64* %297, align 8
  %299 = or i64 %298, %295
  store i64 %299, i64* %297, align 8
  br label %300

300:                                              ; preds = %294, %290
  %301 = load i64, i64* %10, align 8
  %302 = load i64*, i64** %8, align 8
  %303 = getelementptr inbounds i64, i64* %302, i64 1
  store i64 %301, i64* %303, align 8
  %304 = load i64, i64* %9, align 8
  %305 = load i64*, i64** %8, align 8
  %306 = getelementptr inbounds i64, i64* %305, i64 2
  store i64 %304, i64* %306, align 8
  ret i32 0
}

declare dso_local i64 @MMCR1_UNIT_SHIFT(i32) #1

declare dso_local i64 @MMCR1_COMBINE_SHIFT(i32) #1

declare dso_local i64 @MMCR1_PMCSEL_SHIFT(i32) #1

declare dso_local i64 @event_is_fab_match(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
