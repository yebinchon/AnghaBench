; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_set_badblocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_set_badblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.badblocks = type { i32, i32, i32, i32, i32, i32* }

@BB_MAX_LEN = common dso_local global i32 0, align 4
@MD_MAX_BADBLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.badblocks*, i32, i32, i32)* @md_set_badblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_set_badblocks(%struct.badblocks* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.badblocks*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
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
  store %struct.badblocks* %0, %struct.badblocks** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %13, align 4
  %29 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %30 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %473

34:                                               ; preds = %4
  %35 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %36 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %14, align 4
  %43 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %44 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = ashr i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %49 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 1, %50
  %52 = sub nsw i32 %51, 1
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %14, align 4
  %55 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %56 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %14, align 4
  %59 = ashr i32 %58, %57
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %39, %34
  %64 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %65 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %64, i32 0, i32 4
  %66 = call i32 @write_seqlock_irq(i32* %65)
  %67 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %68 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %70 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %71 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %96, %63
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %11, align 4
  %76 = sub nsw i32 %74, %75
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %97

78:                                               ; preds = %73
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %79, %80
  %82 = sdiv i32 %81, 2
  store i32 %82, i32* %15, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @BB_OFFSET(i32 %87)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %78
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %11, align 4
  br label %96

94:                                               ; preds = %78
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %94, %92
  br label %73

97:                                               ; preds = %73
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %97
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @BB_OFFSET(i32 %106)
  %108 = load i32, i32* %7, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %110, %101, %97
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %216

116:                                              ; preds = %112
  %117 = load i32*, i32** %10, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @BB_OFFSET(i32 %121)
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %17, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @BB_LEN(i32 %128)
  %130 = add nsw i32 %123, %129
  store i32 %130, i32* %18, align 4
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @BB_ACK(i32 %135)
  store i32 %136, i32* %19, align 4
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp sge i32 %137, %138
  br i1 %139, label %140, label %215

140:                                              ; preds = %116
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %17, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %140
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32, i32* %18, align 4
  %149 = icmp sge i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %19, align 4
  br label %161

152:                                              ; preds = %144, %140
  %153 = load i32, i32* %19, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br label %158

158:                                              ; preds = %155, %152
  %159 = phi i1 [ false, %152 ], [ %157, %155 ]
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %19, align 4
  br label %161

161:                                              ; preds = %158, %150
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %163, %164
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %168, %169
  store i32 %170, i32* %18, align 4
  br label %171

171:                                              ; preds = %167, %161
  %172 = load i32, i32* %18, align 4
  %173 = load i32, i32* %17, align 4
  %174 = sub nsw i32 %172, %173
  %175 = load i32, i32* @BB_MAX_LEN, align 4
  %176 = icmp sle i32 %174, %175
  br i1 %176, label %177, label %189

177:                                              ; preds = %171
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* %18, align 4
  %180 = load i32, i32* %17, align 4
  %181 = sub nsw i32 %179, %180
  %182 = load i32, i32* %19, align 4
  %183 = call i32 @BB_MAKE(i32 %178, i32 %181, i32 %182)
  %184 = load i32*, i32** %10, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %183, i32* %187, align 4
  %188 = load i32, i32* %18, align 4
  store i32 %188, i32* %7, align 4
  br label %211

189:                                              ; preds = %171
  %190 = load i32*, i32** %10, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @BB_LEN(i32 %194)
  %196 = load i32, i32* @BB_MAX_LEN, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %207

198:                                              ; preds = %189
  %199 = load i32, i32* %17, align 4
  %200 = load i32, i32* @BB_MAX_LEN, align 4
  %201 = load i32, i32* %19, align 4
  %202 = call i32 @BB_MAKE(i32 %199, i32 %200, i32 %201)
  %203 = load i32*, i32** %10, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32 %202, i32* %206, align 4
  br label %207

207:                                              ; preds = %198, %189
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* @BB_MAX_LEN, align 4
  %210 = add nsw i32 %208, %209
  store i32 %210, i32* %7, align 4
  br label %211

211:                                              ; preds = %207, %177
  %212 = load i32, i32* %18, align 4
  %213 = load i32, i32* %7, align 4
  %214 = sub nsw i32 %212, %213
  store i32 %214, i32* %8, align 4
  br label %215

215:                                              ; preds = %211, %116
  br label %216

216:                                              ; preds = %215, %112
  %217 = load i32, i32* %8, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %310

219:                                              ; preds = %216
  %220 = load i32, i32* %12, align 4
  %221 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %222 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp slt i32 %220, %223
  br i1 %224, label %225, label %310

225:                                              ; preds = %219
  %226 = load i32*, i32** %10, align 8
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @BB_OFFSET(i32 %230)
  store i32 %231, i32* %20, align 4
  %232 = load i32, i32* %20, align 4
  %233 = load i32*, i32** %10, align 8
  %234 = load i32, i32* %12, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @BB_LEN(i32 %237)
  %239 = add nsw i32 %232, %238
  store i32 %239, i32* %21, align 4
  %240 = load i32*, i32** %10, align 8
  %241 = load i32, i32* %12, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @BB_ACK(i32 %244)
  store i32 %245, i32* %22, align 4
  %246 = load i32, i32* %20, align 4
  %247 = load i32, i32* %7, align 4
  %248 = load i32, i32* %8, align 4
  %249 = add nsw i32 %247, %248
  %250 = icmp sle i32 %246, %249
  br i1 %250, label %251, label %309

251:                                              ; preds = %225
  %252 = load i32, i32* %21, align 4
  %253 = load i32, i32* %7, align 4
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %253, %254
  %256 = icmp sle i32 %252, %255
  br i1 %256, label %257, label %262

257:                                              ; preds = %251
  %258 = load i32, i32* %7, align 4
  %259 = load i32, i32* %8, align 4
  %260 = add nsw i32 %258, %259
  store i32 %260, i32* %21, align 4
  %261 = load i32, i32* %9, align 4
  store i32 %261, i32* %22, align 4
  br label %271

262:                                              ; preds = %251
  %263 = load i32, i32* %22, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %262
  %266 = load i32, i32* %9, align 4
  %267 = icmp ne i32 %266, 0
  br label %268

268:                                              ; preds = %265, %262
  %269 = phi i1 [ false, %262 ], [ %267, %265 ]
  %270 = zext i1 %269 to i32
  store i32 %270, i32* %22, align 4
  br label %271

271:                                              ; preds = %268, %257
  %272 = load i32, i32* %7, align 4
  store i32 %272, i32* %20, align 4
  %273 = load i32, i32* %21, align 4
  %274 = load i32, i32* %20, align 4
  %275 = sub nsw i32 %273, %274
  %276 = load i32, i32* @BB_MAX_LEN, align 4
  %277 = icmp sle i32 %275, %276
  br i1 %277, label %278, label %290

278:                                              ; preds = %271
  %279 = load i32, i32* %20, align 4
  %280 = load i32, i32* %21, align 4
  %281 = load i32, i32* %20, align 4
  %282 = sub nsw i32 %280, %281
  %283 = load i32, i32* %22, align 4
  %284 = call i32 @BB_MAKE(i32 %279, i32 %282, i32 %283)
  %285 = load i32*, i32** %10, align 8
  %286 = load i32, i32* %12, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  store i32 %284, i32* %288, align 4
  %289 = load i32, i32* %21, align 4
  store i32 %289, i32* %7, align 4
  br label %302

290:                                              ; preds = %271
  %291 = load i32, i32* %20, align 4
  %292 = load i32, i32* @BB_MAX_LEN, align 4
  %293 = load i32, i32* %22, align 4
  %294 = call i32 @BB_MAKE(i32 %291, i32 %292, i32 %293)
  %295 = load i32*, i32** %10, align 8
  %296 = load i32, i32* %12, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  store i32 %294, i32* %298, align 4
  %299 = load i32, i32* %20, align 4
  %300 = load i32, i32* @BB_MAX_LEN, align 4
  %301 = add nsw i32 %299, %300
  store i32 %301, i32* %7, align 4
  br label %302

302:                                              ; preds = %290, %278
  %303 = load i32, i32* %21, align 4
  %304 = load i32, i32* %7, align 4
  %305 = sub nsw i32 %303, %304
  store i32 %305, i32* %8, align 4
  %306 = load i32, i32* %12, align 4
  store i32 %306, i32* %11, align 4
  %307 = load i32, i32* %12, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %12, align 4
  br label %309

309:                                              ; preds = %302, %225
  br label %310

310:                                              ; preds = %309, %219, %216
  %311 = load i32, i32* %8, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %406

313:                                              ; preds = %310
  %314 = load i32, i32* %12, align 4
  %315 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %316 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = icmp slt i32 %314, %317
  br i1 %318, label %319, label %406

319:                                              ; preds = %313
  %320 = load i32*, i32** %10, align 8
  %321 = load i32, i32* %12, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @BB_OFFSET(i32 %324)
  store i32 %325, i32* %23, align 4
  %326 = load i32*, i32** %10, align 8
  %327 = load i32, i32* %11, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @BB_LEN(i32 %330)
  store i32 %331, i32* %24, align 4
  %332 = load i32*, i32** %10, align 8
  %333 = load i32, i32* %12, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @BB_LEN(i32 %336)
  store i32 %337, i32* %25, align 4
  %338 = load i32, i32* %24, align 4
  %339 = load i32, i32* %25, align 4
  %340 = add nsw i32 %338, %339
  %341 = load i32, i32* %7, align 4
  %342 = load i32, i32* %23, align 4
  %343 = sub nsw i32 %341, %342
  %344 = sub nsw i32 %340, %343
  store i32 %344, i32* %26, align 4
  %345 = load i32, i32* %7, align 4
  %346 = load i32, i32* %23, align 4
  %347 = icmp sge i32 %345, %346
  br i1 %347, label %348, label %405

348:                                              ; preds = %319
  %349 = load i32, i32* %26, align 4
  %350 = load i32, i32* @BB_MAX_LEN, align 4
  %351 = icmp slt i32 %349, %350
  br i1 %351, label %352, label %405

352:                                              ; preds = %348
  %353 = load i32*, i32** %10, align 8
  %354 = load i32, i32* %11, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %353, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @BB_ACK(i32 %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %368

360:                                              ; preds = %352
  %361 = load i32*, i32** %10, align 8
  %362 = load i32, i32* %12, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @BB_ACK(i32 %365)
  %367 = icmp ne i32 %366, 0
  br label %368

368:                                              ; preds = %360, %352
  %369 = phi i1 [ false, %352 ], [ %367, %360 ]
  %370 = zext i1 %369 to i32
  store i32 %370, i32* %27, align 4
  %371 = load i32*, i32** %10, align 8
  %372 = load i32, i32* %11, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @BB_OFFSET(i32 %375)
  %377 = load i32, i32* %26, align 4
  %378 = load i32, i32* %27, align 4
  %379 = call i32 @BB_MAKE(i32 %376, i32 %377, i32 %378)
  %380 = load i32*, i32** %10, align 8
  %381 = load i32, i32* %11, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %380, i64 %382
  store i32 %379, i32* %383, align 4
  %384 = load i32*, i32** %10, align 8
  %385 = load i32, i32* %12, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  %388 = load i32*, i32** %10, align 8
  %389 = load i32, i32* %12, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %388, i64 %390
  %392 = getelementptr inbounds i32, i32* %391, i64 1
  %393 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %394 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* %12, align 4
  %397 = sub nsw i32 %395, %396
  %398 = sub nsw i32 %397, 1
  %399 = mul nsw i32 %398, 8
  %400 = call i32 @memmove(i32* %387, i32* %392, i32 %399)
  %401 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %402 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = add nsw i32 %403, -1
  store i32 %404, i32* %402, align 4
  br label %405

405:                                              ; preds = %368, %348, %319
  br label %406

406:                                              ; preds = %405, %313, %310
  br label %407

407:                                              ; preds = %459, %406
  %408 = load i32, i32* %8, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %460

410:                                              ; preds = %407
  %411 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %412 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* @MD_MAX_BADBLOCKS, align 4
  %415 = icmp sge i32 %413, %414
  br i1 %415, label %416, label %417

416:                                              ; preds = %410
  store i32 0, i32* %13, align 4
  br label %460

417:                                              ; preds = %410
  %418 = load i32, i32* %8, align 4
  store i32 %418, i32* %28, align 4
  %419 = load i32*, i32** %10, align 8
  %420 = load i32, i32* %12, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  %423 = getelementptr inbounds i32, i32* %422, i64 1
  %424 = load i32*, i32** %10, align 8
  %425 = load i32, i32* %12, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  %428 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %429 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* %12, align 4
  %432 = sub nsw i32 %430, %431
  %433 = mul nsw i32 %432, 8
  %434 = call i32 @memmove(i32* %423, i32* %427, i32 %433)
  %435 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %436 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %436, align 4
  %439 = load i32, i32* %28, align 4
  %440 = load i32, i32* @BB_MAX_LEN, align 4
  %441 = icmp sgt i32 %439, %440
  br i1 %441, label %442, label %444

442:                                              ; preds = %417
  %443 = load i32, i32* @BB_MAX_LEN, align 4
  store i32 %443, i32* %28, align 4
  br label %444

444:                                              ; preds = %442, %417
  %445 = load i32, i32* %7, align 4
  %446 = load i32, i32* %28, align 4
  %447 = load i32, i32* %9, align 4
  %448 = call i32 @BB_MAKE(i32 %445, i32 %446, i32 %447)
  %449 = load i32*, i32** %10, align 8
  %450 = load i32, i32* %12, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i32, i32* %449, i64 %451
  store i32 %448, i32* %452, align 4
  %453 = load i32, i32* %28, align 4
  %454 = load i32, i32* %8, align 4
  %455 = sub nsw i32 %454, %453
  store i32 %455, i32* %8, align 4
  %456 = load i32, i32* %28, align 4
  %457 = load i32, i32* %7, align 4
  %458 = add nsw i32 %457, %456
  store i32 %458, i32* %7, align 4
  br label %459

459:                                              ; preds = %444
  br label %407

460:                                              ; preds = %416, %407
  %461 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %462 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %461, i32 0, i32 2
  store i32 1, i32* %462, align 8
  %463 = load i32, i32* %9, align 4
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %468, label %465

465:                                              ; preds = %460
  %466 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %467 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %466, i32 0, i32 3
  store i32 1, i32* %467, align 4
  br label %468

468:                                              ; preds = %465, %460
  %469 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %470 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %469, i32 0, i32 4
  %471 = call i32 @write_sequnlock_irq(i32* %470)
  %472 = load i32, i32* %13, align 4
  store i32 %472, i32* %5, align 4
  br label %473

473:                                              ; preds = %468, %33
  %474 = load i32, i32* %5, align 4
  ret i32 %474
}

declare dso_local i32 @write_seqlock_irq(i32*) #1

declare dso_local i32 @BB_OFFSET(i32) #1

declare dso_local i32 @BB_LEN(i32) #1

declare dso_local i32 @BB_ACK(i32) #1

declare dso_local i32 @BB_MAKE(i32, i32, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @write_sequnlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
