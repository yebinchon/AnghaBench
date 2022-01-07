; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_perf_event.c_power_check_constraints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_perf_event.c_power_check_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32 (i32, i32, i32*)*, i64 (i32, i64*, i64*)*, i32 (i32)* }
%struct.cpu_hw_events = type { i64**, i64**, i32** }

@MAX_HWEVENTS = common dso_local global i32 0, align 4
@ppmu = common dso_local global %struct.TYPE_2__* null, align 8
@PPMU_LIMITED_PMC_REQD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpu_hw_events*, i32*, i32*, i32)* @power_check_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_check_constraints(%struct.cpu_hw_events* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpu_hw_events*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load i32, i32* @MAX_HWEVENTS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %13, align 8
  %26 = alloca i64, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %27 = load i32, i32* @MAX_HWEVENTS, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i64, i64 %28, align 16
  store i64 %28, i64* %15, align 8
  %30 = load i32, i32* @MAX_HWEVENTS, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %16, align 8
  %33 = load i32, i32* @MAX_HWEVENTS, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %17, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %20, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %21, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %485

48:                                               ; preds = %4
  store i32 0, i32* %18, align 4
  br label %49

49:                                               ; preds = %137, %48
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %140

53:                                               ; preds = %49
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %18, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PPMU_LIMITED_PMC_REQD, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %108

62:                                               ; preds = %53
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 5
  %65 = load i32 (i32)*, i32 (i32)** %64, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %18, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 %65(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %108, label %73

73:                                               ; preds = %62
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %75, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %18, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %18, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %88 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %87, i32 0, i32 2
  %89 = load i32**, i32*** %88, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 %76(i32 %81, i32 %86, i32* %93)
  %95 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %96 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %95, i32 0, i32 2
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %18, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %73, %62, %53
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 4
  %111 = load i64 (i32, i64*, i64*)*, i64 (i32, i64*, i64*)** %110, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %118 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %117, i32 0, i32 0
  %119 = load i64**, i64*** %118, align 8
  %120 = load i32, i32* %18, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64*, i64** %119, i64 %121
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 0
  %125 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %126 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %125, i32 0, i32 1
  %127 = load i64**, i64*** %126, align 8
  %128 = load i32, i32* %18, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64*, i64** %127, i64 %129
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 0
  %133 = call i64 %111(i32 %116, i64* %124, i64* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %108
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %485

136:                                              ; preds = %108
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %18, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %18, align 4
  br label %49

140:                                              ; preds = %49
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %18, align 4
  br label %141

141:                                              ; preds = %218, %140
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %221

145:                                              ; preds = %141
  %146 = load i64, i64* %11, align 8
  %147 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %148 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %147, i32 0, i32 1
  %149 = load i64**, i64*** %148, align 8
  %150 = load i32, i32* %18, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64*, i64** %149, i64 %151
  %153 = load i64*, i64** %152, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 0
  %155 = load i64, i64* %154, align 8
  %156 = or i64 %146, %155
  %157 = load i64, i64* %11, align 8
  %158 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %159 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %158, i32 0, i32 1
  %160 = load i64**, i64*** %159, align 8
  %161 = load i32, i32* %18, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64*, i64** %160, i64 %162
  %164 = load i64*, i64** %163, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 0
  %166 = load i64, i64* %165, align 8
  %167 = and i64 %157, %166
  %168 = load i64, i64* %20, align 8
  %169 = and i64 %167, %168
  %170 = add i64 %156, %169
  store i64 %170, i64* %12, align 8
  %171 = load i64, i64* %12, align 8
  %172 = load i64, i64* %21, align 8
  %173 = add i64 %171, %172
  %174 = load i64, i64* %11, align 8
  %175 = xor i64 %173, %174
  %176 = load i64, i64* %10, align 8
  %177 = and i64 %175, %176
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %204, label %179

179:                                              ; preds = %145
  %180 = load i64, i64* %12, align 8
  %181 = load i64, i64* %21, align 8
  %182 = add i64 %180, %181
  %183 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %184 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %183, i32 0, i32 1
  %185 = load i64**, i64*** %184, align 8
  %186 = load i32, i32* %18, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64*, i64** %185, i64 %187
  %189 = load i64*, i64** %188, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 0
  %191 = load i64, i64* %190, align 8
  %192 = xor i64 %182, %191
  %193 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %194 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %193, i32 0, i32 0
  %195 = load i64**, i64*** %194, align 8
  %196 = load i32, i32* %18, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64*, i64** %195, i64 %197
  %199 = load i64*, i64** %198, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 0
  %201 = load i64, i64* %200, align 8
  %202 = and i64 %192, %201
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %179, %145
  br label %221

205:                                              ; preds = %179
  %206 = load i64, i64* %12, align 8
  store i64 %206, i64* %11, align 8
  %207 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %208 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %207, i32 0, i32 0
  %209 = load i64**, i64*** %208, align 8
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64*, i64** %209, i64 %211
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* %10, align 8
  %217 = or i64 %216, %215
  store i64 %217, i64* %10, align 8
  br label %218

218:                                              ; preds = %205
  %219 = load i32, i32* %18, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %18, align 4
  br label %141

221:                                              ; preds = %204, %141
  %222 = load i32, i32* %18, align 4
  %223 = load i32, i32* %9, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  store i32 0, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %485

226:                                              ; preds = %221
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 3
  %229 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %228, align 8
  %230 = icmp ne i32 (i32, i32, i32*)* %229, null
  br i1 %230, label %232, label %231

231:                                              ; preds = %226
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %485

232:                                              ; preds = %226
  store i32 0, i32* %18, align 4
  br label %233

233:                                              ; preds = %312, %232
  %234 = load i32, i32* %18, align 4
  %235 = load i32, i32* %9, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %315

237:                                              ; preds = %233
  %238 = load i32, i32* %18, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %35, i64 %239
  store i32 0, i32* %240, align 4
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 3
  %243 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %242, align 8
  %244 = load i32*, i32** %7, align 8
  %245 = load i32, i32* %18, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load i32*, i32** %8, align 8
  %250 = load i32, i32* %18, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %255 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %254, i32 0, i32 2
  %256 = load i32**, i32*** %255, align 8
  %257 = load i32, i32* %18, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32*, i32** %256, i64 %258
  %260 = load i32*, i32** %259, align 8
  %261 = call i32 %243(i32 %248, i32 %253, i32* %260)
  %262 = load i32, i32* %18, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %32, i64 %263
  store i32 %261, i32* %264, align 4
  store i32 1, i32* %19, align 4
  br label %265

265:                                              ; preds = %308, %237
  %266 = load i32, i32* %19, align 4
  %267 = load i32, i32* %18, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %32, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = icmp slt i32 %266, %270
  br i1 %271, label %272, label %311

272:                                              ; preds = %265
  %273 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 4
  %275 = load i64 (i32, i64*, i64*)*, i64 (i32, i64*, i64*)** %274, align 8
  %276 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %277 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %276, i32 0, i32 2
  %278 = load i32**, i32*** %277, align 8
  %279 = load i32, i32* %18, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32*, i32** %278, i64 %280
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %19, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %288 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %287, i32 0, i32 0
  %289 = load i64**, i64*** %288, align 8
  %290 = load i32, i32* %18, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i64*, i64** %289, i64 %291
  %293 = load i64*, i64** %292, align 8
  %294 = load i32, i32* %19, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i64, i64* %293, i64 %295
  %297 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %298 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %297, i32 0, i32 1
  %299 = load i64**, i64*** %298, align 8
  %300 = load i32, i32* %18, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i64*, i64** %299, i64 %301
  %303 = load i64*, i64** %302, align 8
  %304 = load i32, i32* %19, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i64, i64* %303, i64 %305
  %307 = call i64 %275(i32 %286, i64* %296, i64* %306)
  br label %308

308:                                              ; preds = %272
  %309 = load i32, i32* %19, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %19, align 4
  br label %265

311:                                              ; preds = %265
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %18, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %18, align 4
  br label %233

315:                                              ; preds = %233
  store i32 0, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %316

316:                                              ; preds = %456, %315
  %317 = load i32, i32* %18, align 4
  %318 = load i32, i32* %9, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %457

320:                                              ; preds = %316
  %321 = load i32, i32* %19, align 4
  %322 = icmp sge i32 %321, 0
  br i1 %322, label %323, label %336

323:                                              ; preds = %320
  %324 = load i32, i32* %18, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i64, i64* %29, i64 %325
  %327 = load i64, i64* %326, align 8
  store i64 %327, i64* %11, align 8
  %328 = load i32, i32* %18, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i64, i64* %26, i64 %329
  %331 = load i64, i64* %330, align 8
  store i64 %331, i64* %10, align 8
  %332 = load i32, i32* %18, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %35, i64 %333
  %335 = load i32, i32* %334, align 4
  store i32 %335, i32* %19, align 4
  br label %336

336:                                              ; preds = %323, %320
  br label %337

337:                                              ; preds = %413, %336
  %338 = load i32, i32* %19, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %19, align 4
  %340 = load i32, i32* %18, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %32, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = icmp slt i32 %339, %343
  br i1 %344, label %345, label %414

345:                                              ; preds = %337
  %346 = load i64, i64* %11, align 8
  %347 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %348 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %347, i32 0, i32 1
  %349 = load i64**, i64*** %348, align 8
  %350 = load i32, i32* %18, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i64*, i64** %349, i64 %351
  %353 = load i64*, i64** %352, align 8
  %354 = load i32, i32* %19, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i64, i64* %353, i64 %355
  %357 = load i64, i64* %356, align 8
  %358 = or i64 %346, %357
  %359 = load i64, i64* %11, align 8
  %360 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %361 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %360, i32 0, i32 1
  %362 = load i64**, i64*** %361, align 8
  %363 = load i32, i32* %18, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i64*, i64** %362, i64 %364
  %366 = load i64*, i64** %365, align 8
  %367 = load i32, i32* %19, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i64, i64* %366, i64 %368
  %370 = load i64, i64* %369, align 8
  %371 = and i64 %359, %370
  %372 = load i64, i64* %20, align 8
  %373 = and i64 %371, %372
  %374 = add i64 %358, %373
  store i64 %374, i64* %12, align 8
  %375 = load i64, i64* %12, align 8
  %376 = load i64, i64* %21, align 8
  %377 = add i64 %375, %376
  %378 = load i64, i64* %11, align 8
  %379 = xor i64 %377, %378
  %380 = load i64, i64* %10, align 8
  %381 = and i64 %379, %380
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %383, label %413

383:                                              ; preds = %345
  %384 = load i64, i64* %12, align 8
  %385 = load i64, i64* %21, align 8
  %386 = add i64 %384, %385
  %387 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %388 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %387, i32 0, i32 1
  %389 = load i64**, i64*** %388, align 8
  %390 = load i32, i32* %18, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i64*, i64** %389, i64 %391
  %393 = load i64*, i64** %392, align 8
  %394 = load i32, i32* %19, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i64, i64* %393, i64 %395
  %397 = load i64, i64* %396, align 8
  %398 = xor i64 %386, %397
  %399 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %400 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %399, i32 0, i32 0
  %401 = load i64**, i64*** %400, align 8
  %402 = load i32, i32* %18, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i64*, i64** %401, i64 %403
  %405 = load i64*, i64** %404, align 8
  %406 = load i32, i32* %19, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i64, i64* %405, i64 %407
  %409 = load i64, i64* %408, align 8
  %410 = and i64 %398, %409
  %411 = icmp eq i64 %410, 0
  br i1 %411, label %412, label %413

412:                                              ; preds = %383
  br label %414

413:                                              ; preds = %383, %345
  br label %337

414:                                              ; preds = %412, %337
  %415 = load i32, i32* %19, align 4
  %416 = load i32, i32* %18, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %32, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = icmp sge i32 %415, %419
  br i1 %420, label %421, label %427

421:                                              ; preds = %414
  %422 = load i32, i32* %18, align 4
  %423 = add nsw i32 %422, -1
  store i32 %423, i32* %18, align 4
  %424 = icmp slt i32 %423, 0
  br i1 %424, label %425, label %426

425:                                              ; preds = %421
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %485

426:                                              ; preds = %421
  br label %456

427:                                              ; preds = %414
  %428 = load i32, i32* %19, align 4
  %429 = load i32, i32* %18, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %35, i64 %430
  store i32 %428, i32* %431, align 4
  %432 = load i64, i64* %11, align 8
  %433 = load i32, i32* %18, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i64, i64* %29, i64 %434
  store i64 %432, i64* %435, align 8
  %436 = load i64, i64* %10, align 8
  %437 = load i32, i32* %18, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i64, i64* %26, i64 %438
  store i64 %436, i64* %439, align 8
  %440 = load i64, i64* %12, align 8
  store i64 %440, i64* %11, align 8
  %441 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %442 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %441, i32 0, i32 0
  %443 = load i64**, i64*** %442, align 8
  %444 = load i32, i32* %18, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i64*, i64** %443, i64 %445
  %447 = load i64*, i64** %446, align 8
  %448 = load i32, i32* %19, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i64, i64* %447, i64 %449
  %451 = load i64, i64* %450, align 8
  %452 = load i64, i64* %10, align 8
  %453 = or i64 %452, %451
  store i64 %453, i64* %10, align 8
  %454 = load i32, i32* %18, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  br label %456

456:                                              ; preds = %427, %426
  br label %316

457:                                              ; preds = %316
  store i32 0, i32* %18, align 4
  br label %458

458:                                              ; preds = %481, %457
  %459 = load i32, i32* %18, align 4
  %460 = load i32, i32* %9, align 4
  %461 = icmp slt i32 %459, %460
  br i1 %461, label %462, label %484

462:                                              ; preds = %458
  %463 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %464 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %463, i32 0, i32 2
  %465 = load i32**, i32*** %464, align 8
  %466 = load i32, i32* %18, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32*, i32** %465, i64 %467
  %469 = load i32*, i32** %468, align 8
  %470 = load i32, i32* %18, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %35, i64 %471
  %473 = load i32, i32* %472, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %469, i64 %474
  %476 = load i32, i32* %475, align 4
  %477 = load i32*, i32** %7, align 8
  %478 = load i32, i32* %18, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i32, i32* %477, i64 %479
  store i32 %476, i32* %480, align 4
  br label %481

481:                                              ; preds = %462
  %482 = load i32, i32* %18, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %18, align 4
  br label %458

484:                                              ; preds = %458
  store i32 0, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %485

485:                                              ; preds = %484, %425, %231, %225, %135, %47
  %486 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %486)
  %487 = load i32, i32* %5, align 4
  ret i32 %487
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
