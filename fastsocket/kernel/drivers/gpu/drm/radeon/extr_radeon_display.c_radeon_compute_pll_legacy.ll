; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_compute_pll_legacy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_compute_pll_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"PLL freq %llu %u %u\0A\00", align 1
@RADEON_PLL_IS_LCD = common dso_local global i32 0, align 4
@RADEON_PLL_USE_REF_DIV = common dso_local global i32 0, align 4
@RADEON_PLL_USE_POST_DIV = common dso_local global i32 0, align 4
@RADEON_PLL_USE_FRAC_FB_DIV = common dso_local global i32 0, align 4
@RADEON_PLL_NO_ODD_POST_DIV = common dso_local global i32 0, align 4
@RADEON_PLL_LEGACY = common dso_local global i32 0, align 4
@RADEON_PLL_PREFER_CLOSEST_LOWER = common dso_local global i32 0, align 4
@RADEON_PLL_PREFER_LOW_REF_DIV = common dso_local global i32 0, align 4
@RADEON_PLL_PREFER_HIGH_REF_DIV = common dso_local global i32 0, align 4
@RADEON_PLL_PREFER_LOW_FB_DIV = common dso_local global i32 0, align 4
@RADEON_PLL_PREFER_HIGH_FB_DIV = common dso_local global i32 0, align 4
@RADEON_PLL_PREFER_LOW_POST_DIV = common dso_local global i32 0, align 4
@RADEON_PLL_PREFER_HIGH_POST_DIV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"%lld %d, pll dividers - fb: %d.%d ref: %d, post %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_compute_pll_legacy(%struct.radeon_pll* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.radeon_pll*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
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
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  store %struct.radeon_pll* %0, %struct.radeon_pll** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %47 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %48 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %15, align 4
  %50 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %51 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %16, align 4
  %53 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %54 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %17, align 4
  %56 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %57 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %59 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %60 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i32 1, i32* %23, align 4
  store i32 1, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 -1, i32* %26, align 4
  store i32 -1, i32* %27, align 4
  store i32 1, i32* %28, align 4
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %65 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %68 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, i64, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %63, i32 %66, i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = mul nsw i32 %71, 1000
  store i32 %72, i32* %9, align 4
  %73 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %74 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RADEON_PLL_IS_LCD, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %7
  %80 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %81 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %30, align 4
  %83 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %84 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %31, align 4
  br label %93

86:                                               ; preds = %7
  %87 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %88 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %30, align 4
  %90 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %91 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %31, align 4
  br label %93

93:                                               ; preds = %86, %79
  %94 = load i32, i32* %30, align 4
  %95 = icmp sgt i32 %94, 64800
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 64800, i32* %30, align 4
  br label %97

97:                                               ; preds = %96, %93
  %98 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %99 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @RADEON_PLL_USE_REF_DIV, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %106 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %16, align 4
  store i32 %107, i32* %15, align 4
  br label %143

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %141, %108
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %16, align 4
  %112 = sub nsw i32 %111, 1
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %142

114:                                              ; preds = %109
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %115, %116
  %118 = sdiv i32 %117, 2
  store i32 %118, i32* %32, align 4
  %119 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %120 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %119, i32 0, i32 11
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %32, align 4
  %123 = sdiv i32 %121, %122
  store i32 %123, i32* %33, align 4
  %124 = load i32, i32* %33, align 4
  %125 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %126 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %125, i32 0, i32 12
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %114
  %130 = load i32, i32* %32, align 4
  store i32 %130, i32* %16, align 4
  br label %141

131:                                              ; preds = %114
  %132 = load i32, i32* %33, align 4
  %133 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %134 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %133, i32 0, i32 13
  %135 = load i32, i32* %134, align 4
  %136 = icmp sgt i32 %132, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, i32* %32, align 4
  store i32 %138, i32* %15, align 4
  br label %140

139:                                              ; preds = %131
  br label %142

140:                                              ; preds = %137
  br label %141

141:                                              ; preds = %140, %129
  br label %109

142:                                              ; preds = %139, %109
  br label %143

143:                                              ; preds = %142, %104
  %144 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %145 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @RADEON_PLL_USE_POST_DIV, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %143
  %151 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %152 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %151, i32 0, i32 14
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %18, align 4
  store i32 %153, i32* %17, align 4
  br label %154

154:                                              ; preds = %150, %143
  %155 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %156 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @RADEON_PLL_USE_FRAC_FB_DIV, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %154
  %162 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %163 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %162, i32 0, i32 15
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %19, align 4
  %165 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %166 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %165, i32 0, i32 16
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %20, align 4
  br label %168

168:                                              ; preds = %161, %154
  %169 = load i32, i32* %18, align 4
  store i32 %169, i32* %29, align 4
  br label %170

170:                                              ; preds = %491, %168
  %171 = load i32, i32* %29, align 4
  %172 = load i32, i32* %17, align 4
  %173 = icmp sge i32 %171, %172
  br i1 %173, label %174, label %494

174:                                              ; preds = %170
  %175 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %176 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @RADEON_PLL_NO_ODD_POST_DIV, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %174
  %182 = load i32, i32* %29, align 4
  %183 = and i32 %182, 1
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  br label %491

186:                                              ; preds = %181, %174
  %187 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %188 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @RADEON_PLL_LEGACY, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %219

193:                                              ; preds = %186
  %194 = load i32, i32* %29, align 4
  %195 = icmp eq i32 %194, 5
  br i1 %195, label %217, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %29, align 4
  %198 = icmp eq i32 %197, 7
  br i1 %198, label %217, label %199

199:                                              ; preds = %196
  %200 = load i32, i32* %29, align 4
  %201 = icmp eq i32 %200, 9
  br i1 %201, label %217, label %202

202:                                              ; preds = %199
  %203 = load i32, i32* %29, align 4
  %204 = icmp eq i32 %203, 10
  br i1 %204, label %217, label %205

205:                                              ; preds = %202
  %206 = load i32, i32* %29, align 4
  %207 = icmp eq i32 %206, 11
  br i1 %207, label %217, label %208

208:                                              ; preds = %205
  %209 = load i32, i32* %29, align 4
  %210 = icmp eq i32 %209, 13
  br i1 %210, label %217, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* %29, align 4
  %213 = icmp eq i32 %212, 14
  br i1 %213, label %217, label %214

214:                                              ; preds = %211
  %215 = load i32, i32* %29, align 4
  %216 = icmp eq i32 %215, 15
  br i1 %216, label %217, label %218

217:                                              ; preds = %214, %211, %208, %205, %202, %199, %196, %193
  br label %491

218:                                              ; preds = %214
  br label %219

219:                                              ; preds = %218, %186
  %220 = load i32, i32* %15, align 4
  store i32 %220, i32* %34, align 4
  br label %221

221:                                              ; preds = %487, %219
  %222 = load i32, i32* %34, align 4
  %223 = load i32, i32* %16, align 4
  %224 = icmp sle i32 %222, %223
  br i1 %224, label %225, label %490

225:                                              ; preds = %221
  store i32 0, i32* %36, align 4
  %226 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %227 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %226, i32 0, i32 11
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %34, align 4
  %230 = sdiv i32 %228, %229
  store i32 %230, i32* %39, align 4
  %231 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %232 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %231, i32 0, i32 17
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %40, align 4
  %234 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %235 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %234, i32 0, i32 18
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %41, align 4
  %238 = load i32, i32* %39, align 4
  %239 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %240 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %239, i32 0, i32 12
  %241 = load i32, i32* %240, align 4
  %242 = icmp slt i32 %238, %241
  br i1 %242, label %249, label %243

243:                                              ; preds = %225
  %244 = load i32, i32* %39, align 4
  %245 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %246 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %245, i32 0, i32 13
  %247 = load i32, i32* %246, align 4
  %248 = icmp sgt i32 %244, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %243, %225
  br label %487

250:                                              ; preds = %243
  br label %251

251:                                              ; preds = %485, %281, %274, %250
  %252 = load i32, i32* %40, align 4
  %253 = load i32, i32* %41, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %486

255:                                              ; preds = %251
  %256 = load i32, i32* %19, align 4
  store i32 %256, i32* %43, align 4
  %257 = load i32, i32* %20, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %44, align 4
  %259 = load i32, i32* %40, align 4
  %260 = load i32, i32* %41, align 4
  %261 = add nsw i32 %259, %260
  %262 = sdiv i32 %261, 2
  store i32 %262, i32* %35, align 4
  %263 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %264 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %263, i32 0, i32 11
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %35, align 4
  %267 = mul nsw i32 %265, %266
  store i32 %267, i32* %46, align 4
  %268 = load i32, i32* %46, align 4
  %269 = load i32, i32* %34, align 4
  %270 = call i32 @radeon_div(i32 %268, i32 %269)
  store i32 %270, i32* %42, align 4
  %271 = load i32, i32* %42, align 4
  %272 = load i32, i32* %30, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %277

274:                                              ; preds = %255
  %275 = load i32, i32* %35, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %40, align 4
  br label %251

277:                                              ; preds = %255
  %278 = load i32, i32* %42, align 4
  %279 = load i32, i32* %31, align 4
  %280 = icmp sgt i32 %278, %279
  br i1 %280, label %281, label %283

281:                                              ; preds = %277
  %282 = load i32, i32* %35, align 4
  store i32 %282, i32* %41, align 4
  br label %251

283:                                              ; preds = %277
  br label %284

284:                                              ; preds = %283
  br label %285

285:                                              ; preds = %475, %284
  %286 = load i32, i32* %43, align 4
  %287 = load i32, i32* %44, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %476

289:                                              ; preds = %285
  %290 = load i32, i32* %43, align 4
  %291 = load i32, i32* %44, align 4
  %292 = add nsw i32 %290, %291
  %293 = sdiv i32 %292, 2
  store i32 %293, i32* %45, align 4
  %294 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %295 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %294, i32 0, i32 11
  %296 = load i32, i32* %295, align 4
  %297 = mul nsw i32 %296, 10000
  %298 = load i32, i32* %35, align 4
  %299 = mul nsw i32 %297, %298
  store i32 %299, i32* %46, align 4
  %300 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %301 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %300, i32 0, i32 11
  %302 = load i32, i32* %301, align 4
  %303 = mul nsw i32 %302, 1000
  %304 = load i32, i32* %45, align 4
  %305 = mul nsw i32 %303, %304
  %306 = load i32, i32* %46, align 4
  %307 = add nsw i32 %306, %305
  store i32 %307, i32* %46, align 4
  %308 = load i32, i32* %46, align 4
  %309 = load i32, i32* %34, align 4
  %310 = load i32, i32* %29, align 4
  %311 = mul nsw i32 %309, %310
  %312 = call i32 @radeon_div(i32 %308, i32 %311)
  store i32 %312, i32* %36, align 4
  %313 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %314 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @RADEON_PLL_PREFER_CLOSEST_LOWER, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %329

319:                                              ; preds = %289
  %320 = load i32, i32* %9, align 4
  %321 = load i32, i32* %36, align 4
  %322 = icmp slt i32 %320, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %319
  store i32 -1, i32* %37, align 4
  br label %328

324:                                              ; preds = %319
  %325 = load i32, i32* %9, align 4
  %326 = load i32, i32* %36, align 4
  %327 = sub nsw i32 %325, %326
  store i32 %327, i32* %37, align 4
  br label %328

328:                                              ; preds = %324, %323
  br label %334

329:                                              ; preds = %289
  %330 = load i32, i32* %36, align 4
  %331 = load i32, i32* %9, align 4
  %332 = sub nsw i32 %330, %331
  %333 = call i32 @abs(i32 %332) #3
  store i32 %333, i32* %37, align 4
  br label %334

334:                                              ; preds = %329, %328
  %335 = load i32, i32* %42, align 4
  %336 = load i32, i32* %21, align 4
  %337 = sub nsw i32 %335, %336
  %338 = call i32 @abs(i32 %337) #3
  store i32 %338, i32* %38, align 4
  %339 = load i32, i32* %21, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %334
  %342 = load i32, i32* %37, align 4
  %343 = load i32, i32* %27, align 4
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %366, label %345

345:                                              ; preds = %341, %334
  %346 = load i32, i32* %21, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %374

348:                                              ; preds = %345
  %349 = load i32, i32* %27, align 4
  %350 = icmp sgt i32 %349, 100
  br i1 %350, label %351, label %356

351:                                              ; preds = %348
  %352 = load i32, i32* %37, align 4
  %353 = load i32, i32* %27, align 4
  %354 = sub nsw i32 %353, 100
  %355 = icmp slt i32 %352, %354
  br i1 %355, label %366, label %356

356:                                              ; preds = %351, %348
  %357 = load i32, i32* %37, align 4
  %358 = load i32, i32* %27, align 4
  %359 = sub nsw i32 %357, %358
  %360 = call i32 @abs(i32 %359) #3
  %361 = icmp slt i32 %360, 100
  br i1 %361, label %362, label %374

362:                                              ; preds = %356
  %363 = load i32, i32* %38, align 4
  %364 = load i32, i32* %28, align 4
  %365 = icmp slt i32 %363, %364
  br i1 %365, label %366, label %374

366:                                              ; preds = %362, %351, %341
  %367 = load i32, i32* %29, align 4
  store i32 %367, i32* %22, align 4
  %368 = load i32, i32* %34, align 4
  store i32 %368, i32* %23, align 4
  %369 = load i32, i32* %35, align 4
  store i32 %369, i32* %24, align 4
  %370 = load i32, i32* %45, align 4
  store i32 %370, i32* %25, align 4
  %371 = load i32, i32* %36, align 4
  store i32 %371, i32* %26, align 4
  %372 = load i32, i32* %37, align 4
  store i32 %372, i32* %27, align 4
  %373 = load i32, i32* %38, align 4
  store i32 %373, i32* %28, align 4
  br label %466

374:                                              ; preds = %362, %356, %345
  %375 = load i32, i32* %36, align 4
  %376 = load i32, i32* %9, align 4
  %377 = icmp eq i32 %375, %376
  br i1 %377, label %378, label %465

378:                                              ; preds = %374
  %379 = load i32, i32* %26, align 4
  %380 = icmp eq i32 %379, -1
  br i1 %380, label %381, label %389

381:                                              ; preds = %378
  %382 = load i32, i32* %29, align 4
  store i32 %382, i32* %22, align 4
  %383 = load i32, i32* %34, align 4
  store i32 %383, i32* %23, align 4
  %384 = load i32, i32* %35, align 4
  store i32 %384, i32* %24, align 4
  %385 = load i32, i32* %45, align 4
  store i32 %385, i32* %25, align 4
  %386 = load i32, i32* %36, align 4
  store i32 %386, i32* %26, align 4
  %387 = load i32, i32* %37, align 4
  store i32 %387, i32* %27, align 4
  %388 = load i32, i32* %38, align 4
  store i32 %388, i32* %28, align 4
  br label %464

389:                                              ; preds = %378
  %390 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %391 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %390, i32 0, i32 5
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* @RADEON_PLL_PREFER_LOW_REF_DIV, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %400

396:                                              ; preds = %389
  %397 = load i32, i32* %34, align 4
  %398 = load i32, i32* %23, align 4
  %399 = icmp slt i32 %397, %398
  br i1 %399, label %455, label %400

400:                                              ; preds = %396, %389
  %401 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %402 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %401, i32 0, i32 5
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* @RADEON_PLL_PREFER_HIGH_REF_DIV, align 4
  %405 = and i32 %403, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %411

407:                                              ; preds = %400
  %408 = load i32, i32* %34, align 4
  %409 = load i32, i32* %23, align 4
  %410 = icmp sgt i32 %408, %409
  br i1 %410, label %455, label %411

411:                                              ; preds = %407, %400
  %412 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %413 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %412, i32 0, i32 5
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* @RADEON_PLL_PREFER_LOW_FB_DIV, align 4
  %416 = and i32 %414, %415
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %422

418:                                              ; preds = %411
  %419 = load i32, i32* %35, align 4
  %420 = load i32, i32* %24, align 4
  %421 = icmp slt i32 %419, %420
  br i1 %421, label %455, label %422

422:                                              ; preds = %418, %411
  %423 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %424 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %423, i32 0, i32 5
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* @RADEON_PLL_PREFER_HIGH_FB_DIV, align 4
  %427 = and i32 %425, %426
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %422
  %430 = load i32, i32* %35, align 4
  %431 = load i32, i32* %24, align 4
  %432 = icmp sgt i32 %430, %431
  br i1 %432, label %455, label %433

433:                                              ; preds = %429, %422
  %434 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %435 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %434, i32 0, i32 5
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* @RADEON_PLL_PREFER_LOW_POST_DIV, align 4
  %438 = and i32 %436, %437
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %444

440:                                              ; preds = %433
  %441 = load i32, i32* %29, align 4
  %442 = load i32, i32* %22, align 4
  %443 = icmp slt i32 %441, %442
  br i1 %443, label %455, label %444

444:                                              ; preds = %440, %433
  %445 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %446 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %445, i32 0, i32 5
  %447 = load i32, i32* %446, align 4
  %448 = load i32, i32* @RADEON_PLL_PREFER_HIGH_POST_DIV, align 4
  %449 = and i32 %447, %448
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %463

451:                                              ; preds = %444
  %452 = load i32, i32* %29, align 4
  %453 = load i32, i32* %22, align 4
  %454 = icmp sgt i32 %452, %453
  br i1 %454, label %455, label %463

455:                                              ; preds = %451, %440, %429, %418, %407, %396
  %456 = load i32, i32* %29, align 4
  store i32 %456, i32* %22, align 4
  %457 = load i32, i32* %34, align 4
  store i32 %457, i32* %23, align 4
  %458 = load i32, i32* %35, align 4
  store i32 %458, i32* %24, align 4
  %459 = load i32, i32* %45, align 4
  store i32 %459, i32* %25, align 4
  %460 = load i32, i32* %36, align 4
  store i32 %460, i32* %26, align 4
  %461 = load i32, i32* %37, align 4
  store i32 %461, i32* %27, align 4
  %462 = load i32, i32* %38, align 4
  store i32 %462, i32* %28, align 4
  br label %463

463:                                              ; preds = %455, %451, %444
  br label %464

464:                                              ; preds = %463, %381
  br label %465

465:                                              ; preds = %464, %374
  br label %466

466:                                              ; preds = %465, %366
  %467 = load i32, i32* %36, align 4
  %468 = load i32, i32* %9, align 4
  %469 = icmp slt i32 %467, %468
  br i1 %469, label %470, label %473

470:                                              ; preds = %466
  %471 = load i32, i32* %45, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %43, align 4
  br label %475

473:                                              ; preds = %466
  %474 = load i32, i32* %45, align 4
  store i32 %474, i32* %44, align 4
  br label %475

475:                                              ; preds = %473, %470
  br label %285

476:                                              ; preds = %285
  %477 = load i32, i32* %36, align 4
  %478 = load i32, i32* %9, align 4
  %479 = icmp slt i32 %477, %478
  br i1 %479, label %480, label %483

480:                                              ; preds = %476
  %481 = load i32, i32* %35, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %40, align 4
  br label %485

483:                                              ; preds = %476
  %484 = load i32, i32* %35, align 4
  store i32 %484, i32* %41, align 4
  br label %485

485:                                              ; preds = %483, %480
  br label %251

486:                                              ; preds = %251
  br label %487

487:                                              ; preds = %486, %249
  %488 = load i32, i32* %34, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %34, align 4
  br label %221

490:                                              ; preds = %221
  br label %491

491:                                              ; preds = %490, %217, %185
  %492 = load i32, i32* %29, align 4
  %493 = add nsw i32 %492, -1
  store i32 %493, i32* %29, align 4
  br label %170

494:                                              ; preds = %170
  %495 = load i32, i32* %26, align 4
  %496 = sdiv i32 %495, 10000
  %497 = load i32*, i32** %10, align 8
  store i32 %496, i32* %497, align 4
  %498 = load i32, i32* %24, align 4
  %499 = load i32*, i32** %11, align 8
  store i32 %498, i32* %499, align 4
  %500 = load i32, i32* %25, align 4
  %501 = load i32*, i32** %12, align 8
  store i32 %500, i32* %501, align 4
  %502 = load i32, i32* %23, align 4
  %503 = load i32*, i32** %13, align 8
  store i32 %502, i32* %503, align 4
  %504 = load i32, i32* %22, align 4
  %505 = load i32*, i32** %14, align 8
  store i32 %504, i32* %505, align 4
  %506 = load i32, i32* %9, align 4
  %507 = sext i32 %506 to i64
  %508 = load i32, i32* %26, align 4
  %509 = sdiv i32 %508, 1000
  %510 = load i32, i32* %24, align 4
  %511 = load i32, i32* %25, align 4
  %512 = load i32, i32* %23, align 4
  %513 = load i32, i32* %22, align 4
  %514 = call i32 (i8*, i64, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %507, i32 %509, i32 %510, i32 %511, i32 %512, i32 %513)
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i64, i32, i32, ...) #1

declare dso_local i32 @radeon_div(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
