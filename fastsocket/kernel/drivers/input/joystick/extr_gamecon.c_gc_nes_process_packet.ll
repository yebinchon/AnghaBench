; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_gamecon.c_gc_nes_process_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_gamecon.c_gc_nes_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc = type { i32*, %struct.input_dev** }
%struct.input_dev = type { i32 }

@GC_SNESMOUSE_LENGTH = common dso_local global i32 0, align 4
@GC_SNESMOUSE = common dso_local global i64 0, align 8
@GC_SNES = common dso_local global i64 0, align 8
@GC_SNES_LENGTH = common dso_local global i32 0, align 4
@GC_NES_LENGTH = common dso_local global i32 0, align 4
@GC_MAX_DEVICES = common dso_local global i32 0, align 4
@gc_status_bit = common dso_local global i32* null, align 8
@GC_NES = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@gc_snes_btn = common dso_local global i32* null, align 8
@gc_nes_bytes = common dso_local global i64* null, align 8
@gc_snes_bytes = common dso_local global i64* null, align 8
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gc*)* @gc_nes_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_nes_process_packet(%struct.gc* %0) #0 {
  %2 = alloca %struct.gc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.gc* %0, %struct.gc** %2, align 8
  %12 = load i32, i32* @GC_SNESMOUSE_LENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %16 = load %struct.gc*, %struct.gc** %2, align 8
  %17 = getelementptr inbounds %struct.gc, %struct.gc* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @GC_SNESMOUSE, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @GC_SNESMOUSE_LENGTH, align 4
  br label %39

25:                                               ; preds = %1
  %26 = load %struct.gc*, %struct.gc** %2, align 8
  %27 = getelementptr inbounds %struct.gc, %struct.gc* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @GC_SNES, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @GC_SNES_LENGTH, align 4
  br label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @GC_NES_LENGTH, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  br label %39

39:                                               ; preds = %37, %23
  %40 = phi i32 [ %24, %23 ], [ %38, %37 ]
  store i32 %40, i32* %9, align 4
  %41 = load %struct.gc*, %struct.gc** %2, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @gc_nes_read_packet(%struct.gc* %41, i32 %42, i8* %15)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %339, %39
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @GC_MAX_DEVICES, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %342

48:                                               ; preds = %44
  %49 = load %struct.gc*, %struct.gc** %2, align 8
  %50 = getelementptr inbounds %struct.gc, %struct.gc* %49, i32 0, i32 1
  %51 = load %struct.input_dev**, %struct.input_dev*** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %51, i64 %53
  %55 = load %struct.input_dev*, %struct.input_dev** %54, align 8
  store %struct.input_dev* %55, %struct.input_dev** %5, align 8
  %56 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %57 = icmp ne %struct.input_dev* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %48
  br label %339

59:                                               ; preds = %48
  %60 = load i32*, i32** @gc_status_bit, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.gc*, %struct.gc** %2, align 8
  %67 = getelementptr inbounds %struct.gc, %struct.gc* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @GC_NES, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.gc*, %struct.gc** %2, align 8
  %73 = getelementptr inbounds %struct.gc, %struct.gc* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @GC_SNES, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %71, %77
  %79 = and i32 %65, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %122

81:                                               ; preds = %59
  %82 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %83 = load i32, i32* @ABS_X, align 4
  %84 = load i32, i32* %8, align 4
  %85 = getelementptr inbounds i8, i8* %15, i64 6
  %86 = load i8, i8* %85, align 2
  %87 = zext i8 %86 to i32
  %88 = and i32 %84, %87
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %8, align 4
  %93 = getelementptr inbounds i8, i8* %15, i64 7
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %92, %95
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = sub nsw i32 %91, %99
  %101 = call i32 @input_report_abs(%struct.input_dev* %82, i32 %83, i32 %100)
  %102 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %103 = load i32, i32* @ABS_Y, align 4
  %104 = load i32, i32* %8, align 4
  %105 = getelementptr inbounds i8, i8* %15, i64 4
  %106 = load i8, i8* %105, align 4
  %107 = zext i8 %106 to i32
  %108 = and i32 %104, %107
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %8, align 4
  %113 = getelementptr inbounds i8, i8* %15, i64 5
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %112, %115
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = sub nsw i32 %111, %119
  %121 = call i32 @input_report_abs(%struct.input_dev* %102, i32 %103, i32 %120)
  br label %122

122:                                              ; preds = %81, %59
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.gc*, %struct.gc** %2, align 8
  %125 = getelementptr inbounds %struct.gc, %struct.gc* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* @GC_NES, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %123, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %158

132:                                              ; preds = %122
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %154, %132
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %134, 4
  br i1 %135, label %136, label %157

136:                                              ; preds = %133
  %137 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %138 = load i32*, i32** @gc_snes_btn, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i64*, i64** @gc_nes_bytes, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i8, i8* %15, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = and i32 %143, %151
  %153 = call i32 @input_report_key(%struct.input_dev* %137, i32 %142, i32 %152)
  br label %154

154:                                              ; preds = %136
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %133

157:                                              ; preds = %133
  br label %158

158:                                              ; preds = %157, %122
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.gc*, %struct.gc** %2, align 8
  %161 = getelementptr inbounds %struct.gc, %struct.gc* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* @GC_SNES, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %159, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %194

168:                                              ; preds = %158
  store i32 0, i32* %7, align 4
  br label %169

169:                                              ; preds = %190, %168
  %170 = load i32, i32* %7, align 4
  %171 = icmp slt i32 %170, 8
  br i1 %171, label %172, label %193

172:                                              ; preds = %169
  %173 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %174 = load i32*, i32** @gc_snes_btn, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load i64*, i64** @gc_snes_bytes, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %180, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds i8, i8* %15, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = and i32 %179, %187
  %189 = call i32 @input_report_key(%struct.input_dev* %173, i32 %178, i32 %188)
  br label %190

190:                                              ; preds = %172
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %7, align 4
  br label %169

193:                                              ; preds = %169
  br label %194

194:                                              ; preds = %193, %158
  %195 = load i32, i32* %8, align 4
  %196 = load %struct.gc*, %struct.gc** %2, align 8
  %197 = getelementptr inbounds %struct.gc, %struct.gc* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* @GC_SNESMOUSE, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = and i32 %195, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %336

204:                                              ; preds = %194
  %205 = load i32, i32* %8, align 4
  %206 = getelementptr inbounds i8, i8* %15, i64 12
  %207 = load i8, i8* %206, align 4
  %208 = zext i8 %207 to i32
  %209 = and i32 %205, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %335, label %211

211:                                              ; preds = %204
  %212 = load i32, i32* %8, align 4
  %213 = getelementptr inbounds i8, i8* %15, i64 13
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = and i32 %212, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %335, label %218

218:                                              ; preds = %211
  %219 = load i32, i32* %8, align 4
  %220 = getelementptr inbounds i8, i8* %15, i64 14
  %221 = load i8, i8* %220, align 2
  %222 = zext i8 %221 to i32
  %223 = and i32 %219, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %335, label %225

225:                                              ; preds = %218
  %226 = load i32, i32* %8, align 4
  %227 = getelementptr inbounds i8, i8* %15, i64 15
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  %230 = and i32 %226, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %335

232:                                              ; preds = %225
  %233 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %234 = load i32, i32* @BTN_LEFT, align 4
  %235 = load i32, i32* %8, align 4
  %236 = getelementptr inbounds i8, i8* %15, i64 9
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  %239 = and i32 %235, %238
  %240 = call i32 @input_report_key(%struct.input_dev* %233, i32 %234, i32 %239)
  %241 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %242 = load i32, i32* @BTN_RIGHT, align 4
  %243 = load i32, i32* %8, align 4
  %244 = getelementptr inbounds i8, i8* %15, i64 8
  %245 = load i8, i8* %244, align 8
  %246 = zext i8 %245 to i32
  %247 = and i32 %243, %246
  %248 = call i32 @input_report_key(%struct.input_dev* %241, i32 %242, i32 %247)
  store i8 0, i8* %11, align 1
  store i8 0, i8* %10, align 1
  store i32 0, i32* %7, align 4
  br label %249

249:                                              ; preds = %291, %232
  %250 = load i32, i32* %7, align 4
  %251 = icmp slt i32 %250, 7
  br i1 %251, label %252, label %294

252:                                              ; preds = %249
  %253 = load i8, i8* %10, align 1
  %254 = sext i8 %253 to i32
  %255 = shl i32 %254, 1
  %256 = trunc i32 %255 to i8
  store i8 %256, i8* %10, align 1
  %257 = load i32, i32* %7, align 4
  %258 = add nsw i32 25, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %15, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = zext i8 %261 to i32
  %263 = load i32, i32* %8, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %252
  %267 = load i8, i8* %10, align 1
  %268 = sext i8 %267 to i32
  %269 = or i32 %268, 1
  %270 = trunc i32 %269 to i8
  store i8 %270, i8* %10, align 1
  br label %271

271:                                              ; preds = %266, %252
  %272 = load i8, i8* %11, align 1
  %273 = sext i8 %272 to i32
  %274 = shl i32 %273, 1
  %275 = trunc i32 %274 to i8
  store i8 %275, i8* %11, align 1
  %276 = load i32, i32* %7, align 4
  %277 = add nsw i32 17, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8, i8* %15, i64 %278
  %280 = load i8, i8* %279, align 1
  %281 = zext i8 %280 to i32
  %282 = load i32, i32* %8, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %271
  %286 = load i8, i8* %11, align 1
  %287 = sext i8 %286 to i32
  %288 = or i32 %287, 1
  %289 = trunc i32 %288 to i8
  store i8 %289, i8* %11, align 1
  br label %290

290:                                              ; preds = %285, %271
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %7, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %7, align 4
  br label %249

294:                                              ; preds = %249
  %295 = load i8, i8* %10, align 1
  %296 = icmp ne i8 %295, 0
  br i1 %296, label %297, label %314

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, i8* %15, i64 24
  %299 = load i8, i8* %298, align 8
  %300 = zext i8 %299 to i32
  %301 = load i32, i32* %8, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %297
  %305 = load i8, i8* %10, align 1
  %306 = sext i8 %305 to i32
  %307 = sub nsw i32 0, %306
  %308 = trunc i32 %307 to i8
  store i8 %308, i8* %10, align 1
  br label %309

309:                                              ; preds = %304, %297
  %310 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %311 = load i32, i32* @REL_X, align 4
  %312 = load i8, i8* %10, align 1
  %313 = call i32 @input_report_rel(%struct.input_dev* %310, i32 %311, i8 signext %312)
  br label %314

314:                                              ; preds = %309, %294
  %315 = load i8, i8* %11, align 1
  %316 = icmp ne i8 %315, 0
  br i1 %316, label %317, label %334

317:                                              ; preds = %314
  %318 = getelementptr inbounds i8, i8* %15, i64 16
  %319 = load i8, i8* %318, align 16
  %320 = zext i8 %319 to i32
  %321 = load i32, i32* %8, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %317
  %325 = load i8, i8* %11, align 1
  %326 = sext i8 %325 to i32
  %327 = sub nsw i32 0, %326
  %328 = trunc i32 %327 to i8
  store i8 %328, i8* %11, align 1
  br label %329

329:                                              ; preds = %324, %317
  %330 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %331 = load i32, i32* @REL_Y, align 4
  %332 = load i8, i8* %11, align 1
  %333 = call i32 @input_report_rel(%struct.input_dev* %330, i32 %331, i8 signext %332)
  br label %334

334:                                              ; preds = %329, %314
  br label %335

335:                                              ; preds = %334, %225, %218, %211, %204
  br label %336

336:                                              ; preds = %335, %194
  %337 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %338 = call i32 @input_sync(%struct.input_dev* %337)
  br label %339

339:                                              ; preds = %336, %58
  %340 = load i32, i32* %6, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %6, align 4
  br label %44

342:                                              ; preds = %44
  %343 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %343)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gc_nes_read_packet(%struct.gc*, i32, i8*) #2

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i8 signext) #2

declare dso_local i32 @input_sync(%struct.input_dev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
