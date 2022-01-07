; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power4-pmu.c_p4_compute_mmcr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power4-pmu.c_p4_compute_mmcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@PM_UNIT_SH = common dso_local global i32 0, align 4
@PM_UNIT_MSK = common dso_local global i32 0, align 4
@PM_BYTE_SH = common dso_local global i32 0, align 4
@PM_BYTE_MSK = common dso_local global i32 0, align 4
@PM_LOWER_SH = common dso_local global i32 0, align 4
@PM_LOWER_MSK = common dso_local global i32 0, align 4
@MMCR1_TTM0SEL_SH = common dso_local global i64 0, align 8
@MMCR1_TTM1SEL_SH = common dso_local global i64 0, align 8
@MMCR1_TTM2SEL_SH = common dso_local global i64 0, align 8
@MMCR1_TTC0SEL_SH = common dso_local global i64 0, align 8
@MMCR1_TTC1SEL_SH = common dso_local global i64 0, align 8
@MMCR1_TTC2SEL_SH = common dso_local global i64 0, align 8
@MMCR1_TTC3SEL_SH = common dso_local global i64 0, align 8
@MMCR1_DEBUG0SEL_SH = common dso_local global i32 0, align 4
@MMCR1_TD_CP_DBG0SEL_SH = common dso_local global i32 0, align 4
@PM_PMCSEL_MSK = common dso_local global i32 0, align 4
@mmcr1_adder_bits = common dso_local global i64* null, align 8
@MMCRA_SAMPLE_ENABLE = common dso_local global i64 0, align 8
@MMCR0_PMC1SEL_SH = common dso_local global i32 0, align 4
@MMCR1_PMC3SEL_SH = common dso_local global i32 0, align 4
@MMCRA_PMC8SEL0_SH = common dso_local global i32 0, align 4
@MMCR0_PMC1CE = common dso_local global i64 0, align 8
@MMCR0_PMCjCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64*)* @p4_compute_mmcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p4_compute_mmcr(i32* %0, i32 %1, i32* %2, i64* %3) #0 {
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
  %20 = alloca i32, align 4
  %21 = alloca [2 x i32], align 4
  %22 = alloca [4 x i8], align 1
  %23 = alloca [16 x i8], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 8
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %616

29:                                               ; preds = %4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 0
  %33 = call i32 @memset(i8* %32, i32 0, i32 4)
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  %35 = call i32 @memset(i8* %34, i32 0, i32 16)
  store i32 0, i32* %25, align 4
  br label %36

36:                                               ; preds = %170, %29
  %37 = load i32, i32* %25, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %173

40:                                               ; preds = %36
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %25, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PM_PMC_SH, align 4
  %47 = lshr i32 %45, %46
  %48 = load i32, i32* @PM_PMC_MSK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %40
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %13, align 4
  %55 = sub i32 %54, 1
  %56 = shl i32 1, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 -1, i32* %5, align 4
  br label %616

60:                                               ; preds = %52
  %61 = load i32, i32* %13, align 4
  %62 = sub i32 %61, 1
  %63 = shl i32 1, %62
  %64 = load i32, i32* %20, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %20, align 4
  %66 = load i32, i32* %13, align 4
  %67 = sub i32 %66, 1
  %68 = lshr i32 %67, 1
  %69 = and i32 %68, 1
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %60, %40
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %25, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PM_UNIT_SH, align 4
  %81 = lshr i32 %79, %80
  %82 = load i32, i32* @PM_UNIT_MSK, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %14, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %25, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PM_BYTE_SH, align 4
  %90 = lshr i32 %88, %89
  %91 = load i32, i32* @PM_BYTE_MSK, align 4
  %92 = and i32 %90, %91
  store i32 %92, i32* %15, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %25, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @PM_LOWER_SH, align 4
  %99 = lshr i32 %97, %98
  %100 = load i32, i32* @PM_LOWER_MSK, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %169

104:                                              ; preds = %74
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %15, align 4
  %109 = and i32 %108, 1
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %107, %104
  %115 = load i32, i32* %14, align 4
  %116 = icmp eq i32 %115, 6
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %14, align 4
  %119 = icmp eq i32 %118, 8
  br i1 %119, label %120, label %124

120:                                              ; preds = %117, %114
  %121 = load i32, i32* %14, align 4
  %122 = lshr i32 %121, 1
  %123 = sub i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %124

124:                                              ; preds = %120, %117
  %125 = load i32, i32* %15, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %124
  %132 = load i32, i32* %15, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  store i32 -1, i32* %5, align 4
  br label %616

140:                                              ; preds = %131, %124
  %141 = load i32, i32* %14, align 4
  %142 = trunc i32 %141 to i8
  %143 = load i32, i32* %15, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 %144
  store i8 %142, i8* %145, align 1
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %17, align 4
  %148 = shl i32 %147, %146
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* %14, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %140
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %24, align 4
  %158 = load i32, i32* %17, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %156, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  store i32 -1, i32* %5, align 4
  br label %616

162:                                              ; preds = %155, %140
  %163 = load i32, i32* %14, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 %164
  store i8 1, i8* %165, align 1
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* %24, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %24, align 4
  br label %169

169:                                              ; preds = %162, %74
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %25, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %25, align 4
  br label %36

173:                                              ; preds = %36
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp ugt i32 %175, 4
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp ugt i32 %179, 4
  br i1 %180, label %181, label %182

181:                                              ; preds = %177, %173
  store i32 -1, i32* %5, align 4
  br label %616

182:                                              ; preds = %177
  %183 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 2
  %184 = load i8, i8* %183, align 2
  %185 = zext i8 %184 to i32
  %186 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 1
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 3
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 9
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = and i32 %191, %194
  %196 = or i32 %188, %195
  %197 = and i32 %185, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %182
  %200 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 6
  store i8 1, i8* %200, align 2
  %201 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 2
  store i8 0, i8* %201, align 2
  br label %202

202:                                              ; preds = %199, %182
  %203 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 3
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 1
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 2
  %210 = load i8, i8* %209, align 2
  %211 = zext i8 %210 to i32
  %212 = or i32 %208, %211
  %213 = and i32 %205, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %202
  %216 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 8
  store i8 1, i8* %216, align 8
  %217 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 3
  store i8 0, i8* %217, align 1
  %218 = load i32, i32* %24, align 4
  %219 = and i32 %218, -9
  %220 = load i32, i32* %24, align 4
  %221 = and i32 %220, 8
  %222 = shl i32 %221, 5
  %223 = or i32 %219, %222
  store i32 %223, i32* %24, align 4
  br label %224

224:                                              ; preds = %215, %202
  %225 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 1
  %226 = load i8, i8* %225, align 1
  %227 = zext i8 %226 to i32
  %228 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 2
  %229 = load i8, i8* %228, align 2
  %230 = zext i8 %229 to i32
  %231 = add nsw i32 %227, %230
  %232 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 3
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = add nsw i32 %231, %234
  %236 = icmp sgt i32 %235, 1
  br i1 %236, label %280, label %237

237:                                              ; preds = %224
  %238 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 4
  %239 = load i8, i8* %238, align 4
  %240 = zext i8 %239 to i32
  %241 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 6
  %242 = load i8, i8* %241, align 2
  %243 = zext i8 %242 to i32
  %244 = add nsw i32 %240, %243
  %245 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 7
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  %248 = add nsw i32 %244, %247
  %249 = icmp sgt i32 %248, 1
  br i1 %249, label %280, label %250

250:                                              ; preds = %237
  %251 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 8
  %252 = load i8, i8* %251, align 8
  %253 = zext i8 %252 to i32
  %254 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 9
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = add nsw i32 %253, %256
  %258 = icmp sgt i32 %257, 1
  br i1 %258, label %280, label %259

259:                                              ; preds = %250
  %260 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 5
  %261 = load i8, i8* %260, align 1
  %262 = zext i8 %261 to i32
  %263 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 10
  %264 = load i8, i8* %263, align 2
  %265 = zext i8 %264 to i32
  %266 = or i32 %262, %265
  %267 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 11
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = or i32 %266, %269
  %271 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 13
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i32
  %274 = or i32 %270, %273
  %275 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 14
  %276 = load i8, i8* %275, align 2
  %277 = zext i8 %276 to i32
  %278 = or i32 %274, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %259, %250, %237, %224
  store i32 -1, i32* %5, align 4
  br label %616

281:                                              ; preds = %259
  %282 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 3
  %283 = load i8, i8* %282, align 1
  %284 = zext i8 %283 to i32
  %285 = mul nsw i32 %284, 2
  %286 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 2
  %287 = load i8, i8* %286, align 2
  %288 = zext i8 %287 to i32
  %289 = add nsw i32 %285, %288
  %290 = sext i32 %289 to i64
  %291 = load i64, i64* @MMCR1_TTM0SEL_SH, align 8
  %292 = shl i64 %290, %291
  %293 = load i64, i64* %11, align 8
  %294 = or i64 %293, %292
  store i64 %294, i64* %11, align 8
  %295 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 7
  %296 = load i8, i8* %295, align 1
  %297 = zext i8 %296 to i32
  %298 = mul nsw i32 %297, 3
  %299 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 6
  %300 = load i8, i8* %299, align 2
  %301 = zext i8 %300 to i32
  %302 = mul nsw i32 %301, 2
  %303 = add nsw i32 %298, %302
  %304 = sext i32 %303 to i64
  %305 = load i64, i64* @MMCR1_TTM1SEL_SH, align 8
  %306 = shl i64 %304, %305
  %307 = load i64, i64* %11, align 8
  %308 = or i64 %307, %306
  store i64 %308, i64* %11, align 8
  %309 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 9
  %310 = load i8, i8* %309, align 1
  %311 = zext i8 %310 to i64
  %312 = load i64, i64* @MMCR1_TTM2SEL_SH, align 8
  %313 = shl i64 %311, %312
  %314 = load i64, i64* %11, align 8
  %315 = or i64 %314, %313
  store i64 %315, i64* %11, align 8
  %316 = load i32, i32* %24, align 4
  %317 = and i32 %316, 14
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %281
  %320 = load i64, i64* @MMCR1_TTC0SEL_SH, align 8
  %321 = shl i64 1, %320
  %322 = load i64, i64* %11, align 8
  %323 = or i64 %322, %321
  store i64 %323, i64* %11, align 8
  br label %324

324:                                              ; preds = %319, %281
  %325 = load i32, i32* %24, align 4
  %326 = and i32 %325, 240
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %324
  %329 = load i64, i64* @MMCR1_TTC1SEL_SH, align 8
  %330 = shl i64 1, %329
  %331 = load i64, i64* %11, align 8
  %332 = or i64 %331, %330
  store i64 %332, i64* %11, align 8
  br label %333

333:                                              ; preds = %328, %324
  %334 = load i32, i32* %24, align 4
  %335 = and i32 %334, 3840
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %333
  %338 = load i64, i64* @MMCR1_TTC2SEL_SH, align 8
  %339 = shl i64 1, %338
  %340 = load i64, i64* %11, align 8
  %341 = or i64 %340, %339
  store i64 %341, i64* %11, align 8
  br label %342

342:                                              ; preds = %337, %333
  %343 = load i32, i32* %24, align 4
  %344 = and i32 %343, 28672
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %351

346:                                              ; preds = %342
  %347 = load i64, i64* @MMCR1_TTC3SEL_SH, align 8
  %348 = shl i64 1, %347
  %349 = load i64, i64* %11, align 8
  %350 = or i64 %349, %348
  store i64 %350, i64* %11, align 8
  br label %351

351:                                              ; preds = %346, %342
  store i32 0, i32* %15, align 4
  br label %352

352:                                              ; preds = %399, %351
  %353 = load i32, i32* %15, align 4
  %354 = icmp ult i32 %353, 4
  br i1 %354, label %355, label %402

355:                                              ; preds = %352
  %356 = load i32, i32* %15, align 4
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 %357
  %359 = load i8, i8* %358, align 1
  %360 = zext i8 %359 to i32
  store i32 %360, i32* %14, align 4
  %361 = load i32, i32* %14, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %364, label %363

363:                                              ; preds = %355
  br label %399

364:                                              ; preds = %355
  %365 = load i32, i32* %14, align 4
  %366 = icmp eq i32 %365, 15
  br i1 %366, label %367, label %375

367:                                              ; preds = %364
  %368 = load i32, i32* @MMCR1_DEBUG0SEL_SH, align 4
  %369 = load i32, i32* %15, align 4
  %370 = sub i32 %368, %369
  %371 = zext i32 %370 to i64
  %372 = shl i64 1, %371
  %373 = load i64, i64* %11, align 8
  %374 = or i64 %373, %372
  store i64 %374, i64* %11, align 8
  br label %398

375:                                              ; preds = %364
  %376 = load i32, i32* %14, align 4
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 %377
  %379 = load i8, i8* %378, align 1
  %380 = icmp ne i8 %379, 0
  br i1 %380, label %384, label %381

381:                                              ; preds = %375
  %382 = load i32, i32* %14, align 4
  %383 = sub i32 %382, 1
  store i32 %383, i32* %18, align 4
  br label %387

384:                                              ; preds = %375
  %385 = load i32, i32* %14, align 4
  %386 = lshr i32 %385, 2
  store i32 %386, i32* %18, align 4
  br label %387

387:                                              ; preds = %384, %381
  %388 = load i32, i32* %18, align 4
  %389 = zext i32 %388 to i64
  %390 = load i32, i32* @MMCR1_TD_CP_DBG0SEL_SH, align 4
  %391 = load i32, i32* %15, align 4
  %392 = mul i32 2, %391
  %393 = sub i32 %390, %392
  %394 = zext i32 %393 to i64
  %395 = shl i64 %389, %394
  %396 = load i64, i64* %11, align 8
  %397 = or i64 %396, %395
  store i64 %397, i64* %11, align 8
  br label %398

398:                                              ; preds = %387, %367
  br label %399

399:                                              ; preds = %398, %363
  %400 = load i32, i32* %15, align 4
  %401 = add i32 %400, 1
  store i32 %401, i32* %15, align 4
  br label %352

402:                                              ; preds = %352
  store i32 0, i32* %25, align 4
  br label %403

403:                                              ; preds = %585, %402
  %404 = load i32, i32* %25, align 4
  %405 = load i32, i32* %7, align 4
  %406 = icmp slt i32 %404, %405
  br i1 %406, label %407, label %588

407:                                              ; preds = %403
  %408 = load i32*, i32** %6, align 8
  %409 = load i32, i32* %25, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %408, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* @PM_PMC_SH, align 4
  %414 = lshr i32 %412, %413
  %415 = load i32, i32* @PM_PMC_MSK, align 4
  %416 = and i32 %414, %415
  store i32 %416, i32* %13, align 4
  %417 = load i32*, i32** %6, align 8
  %418 = load i32, i32* %25, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* @PM_UNIT_SH, align 4
  %423 = lshr i32 %421, %422
  %424 = load i32, i32* @PM_UNIT_MSK, align 4
  %425 = and i32 %423, %424
  store i32 %425, i32* %14, align 4
  %426 = load i32*, i32** %6, align 8
  %427 = load i32, i32* %25, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* @PM_BYTE_SH, align 4
  %432 = lshr i32 %430, %431
  %433 = load i32, i32* @PM_BYTE_MSK, align 4
  %434 = and i32 %432, %433
  store i32 %434, i32* %15, align 4
  %435 = load i32*, i32** %6, align 8
  %436 = load i32, i32* %25, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %435, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = load i32, i32* @PM_PMCSEL_MSK, align 4
  %441 = and i32 %439, %440
  store i32 %441, i32* %16, align 4
  %442 = load i32, i32* %13, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %500, label %444

444:                                              ; preds = %407
  %445 = load i32, i32* %14, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %454

447:                                              ; preds = %444
  %448 = load i32, i32* %15, align 4
  %449 = and i32 %448, 2
  %450 = shl i32 %449, 2
  %451 = or i32 16, %450
  %452 = load i32, i32* %16, align 4
  %453 = or i32 %452, %451
  store i32 %453, i32* %16, align 4
  br label %454

454:                                              ; preds = %447, %444
  store i32 0, i32* %13, align 4
  br label %455

455:                                              ; preds = %492, %454
  %456 = load i32, i32* %13, align 4
  %457 = icmp ult i32 %456, 8
  br i1 %457, label %458, label %495

458:                                              ; preds = %455
  %459 = load i32, i32* %20, align 4
  %460 = load i32, i32* %13, align 4
  %461 = shl i32 1, %460
  %462 = and i32 %459, %461
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %465

464:                                              ; preds = %458
  br label %492

465:                                              ; preds = %458
  %466 = load i32, i32* %13, align 4
  %467 = lshr i32 %466, 1
  %468 = and i32 %467, 1
  store i32 %468, i32* %19, align 4
  %469 = load i32, i32* %14, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %478

471:                                              ; preds = %465
  %472 = load i32, i32* %19, align 4
  %473 = load i32, i32* %15, align 4
  %474 = and i32 %473, 1
  %475 = icmp eq i32 %472, %474
  br i1 %475, label %476, label %477

476:                                              ; preds = %471
  br label %495

477:                                              ; preds = %471
  br label %491

478:                                              ; preds = %465
  %479 = load i32, i32* %19, align 4
  %480 = zext i32 %479 to i64
  %481 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %480
  %482 = load i32, i32* %481, align 4
  %483 = icmp ult i32 %482, 4
  br i1 %483, label %484, label %490

484:                                              ; preds = %478
  %485 = load i32, i32* %19, align 4
  %486 = zext i32 %485 to i64
  %487 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = add i32 %488, 1
  store i32 %489, i32* %487, align 4
  br label %495

490:                                              ; preds = %478
  br label %491

491:                                              ; preds = %490, %477
  br label %492

492:                                              ; preds = %491, %464
  %493 = load i32, i32* %13, align 4
  %494 = add i32 %493, 1
  store i32 %494, i32* %13, align 4
  br label %455

495:                                              ; preds = %484, %476, %455
  %496 = load i32, i32* %13, align 4
  %497 = shl i32 1, %496
  %498 = load i32, i32* %20, align 4
  %499 = or i32 %498, %497
  store i32 %499, i32* %20, align 4
  br label %532

500:                                              ; preds = %407
  %501 = load i32, i32* %13, align 4
  %502 = add i32 %501, -1
  store i32 %502, i32* %13, align 4
  %503 = load i32, i32* %16, align 4
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %518

505:                                              ; preds = %500
  %506 = load i32, i32* %15, align 4
  %507 = and i32 %506, 2
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %518

509:                                              ; preds = %505
  %510 = load i64*, i64** @mmcr1_adder_bits, align 8
  %511 = load i32, i32* %13, align 4
  %512 = zext i32 %511 to i64
  %513 = getelementptr inbounds i64, i64* %510, i64 %512
  %514 = load i64, i64* %513, align 8
  %515 = shl i64 1, %514
  %516 = load i64, i64* %11, align 8
  %517 = or i64 %516, %515
  store i64 %517, i64* %11, align 8
  br label %529

518:                                              ; preds = %505, %500
  %519 = load i32, i32* %16, align 4
  %520 = icmp eq i32 %519, 6
  br i1 %520, label %521, label %528

521:                                              ; preds = %518
  %522 = load i32, i32* %15, align 4
  %523 = icmp eq i32 %522, 3
  br i1 %523, label %524, label %528

524:                                              ; preds = %521
  %525 = load i64, i64* @MMCRA_SAMPLE_ENABLE, align 8
  %526 = load i64, i64* %12, align 8
  %527 = or i64 %526, %525
  store i64 %527, i64* %12, align 8
  br label %528

528:                                              ; preds = %524, %521, %518
  br label %529

529:                                              ; preds = %528, %509
  %530 = load i32, i32* %16, align 4
  %531 = or i32 %530, 8
  store i32 %531, i32* %16, align 4
  br label %532

532:                                              ; preds = %529, %495
  %533 = load i32, i32* %13, align 4
  %534 = icmp ule i32 %533, 1
  br i1 %534, label %535, label %545

535:                                              ; preds = %532
  %536 = load i32, i32* %16, align 4
  %537 = load i32, i32* @MMCR0_PMC1SEL_SH, align 4
  %538 = load i32, i32* %13, align 4
  %539 = mul i32 7, %538
  %540 = sub i32 %537, %539
  %541 = shl i32 %536, %540
  %542 = zext i32 %541 to i64
  %543 = load i64, i64* %10, align 8
  %544 = or i64 %543, %542
  store i64 %544, i64* %10, align 8
  br label %556

545:                                              ; preds = %532
  %546 = load i32, i32* %16, align 4
  %547 = load i32, i32* @MMCR1_PMC3SEL_SH, align 4
  %548 = load i32, i32* %13, align 4
  %549 = sub i32 %548, 2
  %550 = mul i32 5, %549
  %551 = sub i32 %547, %550
  %552 = shl i32 %546, %551
  %553 = zext i32 %552 to i64
  %554 = load i64, i64* %11, align 8
  %555 = or i64 %554, %553
  store i64 %555, i64* %11, align 8
  br label %556

556:                                              ; preds = %545, %535
  %557 = load i32, i32* %13, align 4
  %558 = icmp eq i32 %557, 7
  br i1 %558, label %559, label %567

559:                                              ; preds = %556
  %560 = load i32, i32* %16, align 4
  %561 = and i32 %560, 1
  %562 = load i32, i32* @MMCRA_PMC8SEL0_SH, align 4
  %563 = shl i32 %561, %562
  %564 = zext i32 %563 to i64
  %565 = load i64, i64* %12, align 8
  %566 = or i64 %565, %564
  store i64 %566, i64* %12, align 8
  br label %567

567:                                              ; preds = %559, %556
  %568 = load i32, i32* %13, align 4
  %569 = load i32*, i32** %8, align 8
  %570 = load i32, i32* %25, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i32, i32* %569, i64 %571
  store i32 %568, i32* %572, align 4
  %573 = load i32*, i32** %6, align 8
  %574 = load i32, i32* %25, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i32, i32* %573, i64 %575
  %577 = load i32, i32* %576, align 4
  %578 = call i64 @p4_marked_instr_event(i32 %577)
  %579 = icmp ne i64 %578, 0
  br i1 %579, label %580, label %584

580:                                              ; preds = %567
  %581 = load i64, i64* @MMCRA_SAMPLE_ENABLE, align 8
  %582 = load i64, i64* %12, align 8
  %583 = or i64 %582, %581
  store i64 %583, i64* %12, align 8
  br label %584

584:                                              ; preds = %580, %567
  br label %585

585:                                              ; preds = %584
  %586 = load i32, i32* %25, align 4
  %587 = add nsw i32 %586, 1
  store i32 %587, i32* %25, align 4
  br label %403

588:                                              ; preds = %403
  %589 = load i32, i32* %20, align 4
  %590 = and i32 %589, 1
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %596

592:                                              ; preds = %588
  %593 = load i64, i64* @MMCR0_PMC1CE, align 8
  %594 = load i64, i64* %10, align 8
  %595 = or i64 %594, %593
  store i64 %595, i64* %10, align 8
  br label %596

596:                                              ; preds = %592, %588
  %597 = load i32, i32* %20, align 4
  %598 = and i32 %597, 254
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %604

600:                                              ; preds = %596
  %601 = load i64, i64* @MMCR0_PMCjCE, align 8
  %602 = load i64, i64* %10, align 8
  %603 = or i64 %602, %601
  store i64 %603, i64* %10, align 8
  br label %604

604:                                              ; preds = %600, %596
  %605 = load i64, i64* %12, align 8
  %606 = or i64 %605, 8192
  store i64 %606, i64* %12, align 8
  %607 = load i64, i64* %10, align 8
  %608 = load i64*, i64** %9, align 8
  %609 = getelementptr inbounds i64, i64* %608, i64 0
  store i64 %607, i64* %609, align 8
  %610 = load i64, i64* %11, align 8
  %611 = load i64*, i64** %9, align 8
  %612 = getelementptr inbounds i64, i64* %611, i64 1
  store i64 %610, i64* %612, align 8
  %613 = load i64, i64* %12, align 8
  %614 = load i64*, i64** %9, align 8
  %615 = getelementptr inbounds i64, i64* %614, i64 2
  store i64 %613, i64* %615, align 8
  store i32 0, i32* %5, align 4
  br label %616

616:                                              ; preds = %604, %280, %181, %161, %139, %59, %28
  %617 = load i32, i32* %5, align 4
  ret i32 %617
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @p4_marked_instr_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
