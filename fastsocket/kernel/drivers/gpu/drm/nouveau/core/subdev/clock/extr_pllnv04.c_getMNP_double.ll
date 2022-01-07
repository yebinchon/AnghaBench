; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_pllnv04.c_getMNP_double.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_pllnv04.c_getMNP_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_clock = type { i32 }
%struct.nvbios_pll = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_clock*, %struct.nvbios_pll*, i32, i32*, i32*, i32*, i32*, i32*)* @getMNP_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getMNP_double(%struct.nouveau_clock* %0, %struct.nvbios_pll* %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_clock*, align 8
  %11 = alloca %struct.nvbios_pll*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
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
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  store %struct.nouveau_clock* %0, %struct.nouveau_clock** %10, align 8
  store %struct.nvbios_pll* %1, %struct.nvbios_pll** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %51 = load %struct.nouveau_clock*, %struct.nouveau_clock** %10, align 8
  %52 = call %struct.TYPE_8__* @nouveau_bios(%struct.nouveau_clock* %51)
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %18, align 4
  %56 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %57 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %19, align 4
  %60 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %61 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %20, align 4
  %64 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %65 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %21, align 4
  %68 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %69 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %22, align 4
  %72 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %73 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %23, align 4
  %76 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %77 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %24, align 4
  %80 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %81 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %25, align 4
  %84 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %85 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %26, align 4
  %88 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %89 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %27, align 4
  %92 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %93 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %28, align 4
  %96 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %97 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %29, align 4
  %100 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %101 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %30, align 4
  %104 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %105 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %31, align 4
  %108 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %109 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %32, align 4
  %112 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %113 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %33, align 4
  %116 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %117 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %34, align 4
  %120 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %121 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %35, align 4
  %123 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %124 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %36, align 4
  %126 = load i32, i32* %31, align 4
  %127 = load i32, i32* %32, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %8
  %130 = load i32, i32* %33, align 4
  %131 = load i32, i32* %34, align 4
  %132 = icmp eq i32 %130, %131
  br label %133

133:                                              ; preds = %129, %8
  %134 = phi i1 [ false, %8 ], [ %132, %129 ]
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %37, align 4
  %136 = load i32, i32* @INT_MAX, align 4
  store i32 %136, i32* %48, align 4
  store i32 0, i32* %49, align 4
  %137 = load i32, i32* %22, align 4
  %138 = load i32, i32* %22, align 4
  %139 = sdiv i32 %138, 200
  %140 = sub nsw i32 %137, %139
  %141 = sdiv i32 %140, 2
  store i32 %141, i32* %50, align 4
  store i32 0, i32* %42, align 4
  br label %142

142:                                              ; preds = %158, %133
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load i32, i32* %42, align 4
  %147 = load i32, i32* %35, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %50, align 4
  %152 = load i32, i32* %42, align 4
  %153 = ashr i32 %151, %152
  %154 = icmp sle i32 %150, %153
  br label %155

155:                                              ; preds = %149, %145, %142
  %156 = phi i1 [ false, %145 ], [ false, %142 ], [ %154, %149 ]
  br i1 %156, label %157, label %161

157:                                              ; preds = %155
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %42, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %42, align 4
  br label %142

161:                                              ; preds = %155
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %42, align 4
  %164 = shl i32 %162, %163
  store i32 %164, i32* %43, align 4
  %165 = load i32, i32* %22, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %12, align 4
  %168 = sdiv i32 %167, 200
  %169 = add nsw i32 %166, %168
  %170 = icmp slt i32 %165, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %161
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %12, align 4
  %174 = sdiv i32 %173, 200
  %175 = add nsw i32 %172, %174
  store i32 %175, i32* %22, align 4
  br label %176

176:                                              ; preds = %171, %161
  %177 = load i32, i32* %27, align 4
  store i32 %177, i32* %38, align 4
  br label %178

178:                                              ; preds = %330, %176
  %179 = load i32, i32* %38, align 4
  %180 = load i32, i32* %28, align 4
  %181 = icmp sle i32 %179, %180
  br i1 %181, label %182, label %333

182:                                              ; preds = %178
  %183 = load i32, i32* %36, align 4
  %184 = load i32, i32* %38, align 4
  %185 = sdiv i32 %183, %184
  %186 = load i32, i32* %23, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %182
  %189 = load i32, i32* %49, align 4
  store i32 %189, i32* %9, align 4
  br label %335

190:                                              ; preds = %182
  %191 = load i32, i32* %36, align 4
  %192 = load i32, i32* %38, align 4
  %193 = sdiv i32 %191, %192
  %194 = load i32, i32* %25, align 4
  %195 = icmp sgt i32 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %190
  br label %330

197:                                              ; preds = %190
  %198 = load i32, i32* %29, align 4
  store i32 %198, i32* %39, align 4
  br label %199

199:                                              ; preds = %326, %197
  %200 = load i32, i32* %39, align 4
  %201 = load i32, i32* %30, align 4
  %202 = icmp sle i32 %200, %201
  br i1 %202, label %203, label %329

203:                                              ; preds = %199
  %204 = load i32, i32* %36, align 4
  %205 = load i32, i32* %39, align 4
  %206 = mul nsw i32 %204, %205
  %207 = load i32, i32* %38, align 4
  %208 = sdiv i32 %206, %207
  store i32 %208, i32* %44, align 4
  %209 = load i32, i32* %44, align 4
  %210 = load i32, i32* %19, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %203
  br label %326

213:                                              ; preds = %203
  %214 = load i32, i32* %44, align 4
  %215 = load i32, i32* %20, align 4
  %216 = icmp sgt i32 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  br label %329

218:                                              ; preds = %213
  %219 = load i32, i32* %31, align 4
  store i32 %219, i32* %40, align 4
  br label %220

220:                                              ; preds = %322, %218
  %221 = load i32, i32* %40, align 4
  %222 = load i32, i32* %32, align 4
  %223 = icmp sle i32 %221, %222
  br i1 %223, label %224, label %325

224:                                              ; preds = %220
  %225 = load i32, i32* %44, align 4
  %226 = load i32, i32* %40, align 4
  %227 = sdiv i32 %225, %226
  %228 = load i32, i32* %24, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %224
  br label %325

231:                                              ; preds = %224
  %232 = load i32, i32* %44, align 4
  %233 = load i32, i32* %40, align 4
  %234 = sdiv i32 %232, %233
  %235 = load i32, i32* %26, align 4
  %236 = icmp sgt i32 %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  br label %322

238:                                              ; preds = %231
  %239 = load i32, i32* %43, align 4
  %240 = load i32, i32* %40, align 4
  %241 = mul nsw i32 %239, %240
  %242 = load i32, i32* %44, align 4
  %243 = sdiv i32 %242, 2
  %244 = add nsw i32 %241, %243
  %245 = load i32, i32* %44, align 4
  %246 = sdiv i32 %244, %245
  store i32 %246, i32* %41, align 4
  %247 = load i32, i32* %41, align 4
  %248 = load i32, i32* %33, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %238
  br label %322

251:                                              ; preds = %238
  %252 = load i32, i32* %41, align 4
  %253 = load i32, i32* %34, align 4
  %254 = icmp sgt i32 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %251
  br label %325

256:                                              ; preds = %251
  %257 = load i32, i32* %37, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %290, label %259

259:                                              ; preds = %256
  %260 = load i32, i32* %18, align 4
  %261 = icmp slt i32 %260, 96
  br i1 %261, label %262, label %274

262:                                              ; preds = %259
  %263 = load i32, i32* %41, align 4
  %264 = load i32, i32* %40, align 4
  %265 = sdiv i32 %263, %264
  %266 = icmp slt i32 %265, 4
  br i1 %266, label %272, label %267

267:                                              ; preds = %262
  %268 = load i32, i32* %41, align 4
  %269 = load i32, i32* %40, align 4
  %270 = sdiv i32 %268, %269
  %271 = icmp sgt i32 %270, 10
  br i1 %271, label %272, label %273

272:                                              ; preds = %267, %262
  br label %322

273:                                              ; preds = %267
  br label %274

274:                                              ; preds = %273, %259
  %275 = load i32, i32* %44, align 4
  %276 = load i32, i32* %41, align 4
  %277 = mul nsw i32 %275, %276
  %278 = load i32, i32* %40, align 4
  %279 = sdiv i32 %277, %278
  store i32 %279, i32* %45, align 4
  %280 = load i32, i32* %45, align 4
  %281 = load i32, i32* %21, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %274
  br label %325

284:                                              ; preds = %274
  %285 = load i32, i32* %45, align 4
  %286 = load i32, i32* %22, align 4
  %287 = icmp sgt i32 %285, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %284
  br label %322

289:                                              ; preds = %284
  br label %292

290:                                              ; preds = %256
  %291 = load i32, i32* %44, align 4
  store i32 %291, i32* %45, align 4
  br label %292

292:                                              ; preds = %290, %289
  %293 = load i32, i32* %45, align 4
  %294 = load i32, i32* %42, align 4
  %295 = ashr i32 %293, %294
  store i32 %295, i32* %46, align 4
  %296 = load i32, i32* %46, align 4
  %297 = load i32, i32* %12, align 4
  %298 = sub nsw i32 %296, %297
  %299 = call i32 @abs(i32 %298) #3
  store i32 %299, i32* %47, align 4
  %300 = load i32, i32* %47, align 4
  %301 = load i32, i32* %48, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %321

303:                                              ; preds = %292
  %304 = load i32, i32* %47, align 4
  store i32 %304, i32* %48, align 4
  %305 = load i32, i32* %46, align 4
  store i32 %305, i32* %49, align 4
  %306 = load i32, i32* %39, align 4
  %307 = load i32*, i32** %13, align 8
  store i32 %306, i32* %307, align 4
  %308 = load i32, i32* %38, align 4
  %309 = load i32*, i32** %14, align 8
  store i32 %308, i32* %309, align 4
  %310 = load i32, i32* %41, align 4
  %311 = load i32*, i32** %15, align 8
  store i32 %310, i32* %311, align 4
  %312 = load i32, i32* %40, align 4
  %313 = load i32*, i32** %16, align 8
  store i32 %312, i32* %313, align 4
  %314 = load i32, i32* %42, align 4
  %315 = load i32*, i32** %17, align 8
  store i32 %314, i32* %315, align 4
  %316 = load i32, i32* %47, align 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %303
  %319 = load i32, i32* %49, align 4
  store i32 %319, i32* %9, align 4
  br label %335

320:                                              ; preds = %303
  br label %321

321:                                              ; preds = %320, %292
  br label %322

322:                                              ; preds = %321, %288, %272, %250, %237
  %323 = load i32, i32* %40, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %40, align 4
  br label %220

325:                                              ; preds = %283, %255, %230, %220
  br label %326

326:                                              ; preds = %325, %212
  %327 = load i32, i32* %39, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %39, align 4
  br label %199

329:                                              ; preds = %217, %199
  br label %330

330:                                              ; preds = %329, %196
  %331 = load i32, i32* %38, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %38, align 4
  br label %178

333:                                              ; preds = %178
  %334 = load i32, i32* %49, align 4
  store i32 %334, i32* %9, align 4
  br label %335

335:                                              ; preds = %333, %318, %188
  %336 = load i32, i32* %9, align 4
  ret i32 %336
}

declare dso_local %struct.TYPE_8__* @nouveau_bios(%struct.nouveau_clock*) #1

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
