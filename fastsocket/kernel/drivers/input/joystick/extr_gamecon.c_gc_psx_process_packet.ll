; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_gamecon.c_gc_psx_process_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_gamecon.c_gc_psx_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc = type { i32*, %struct.input_dev** }
%struct.input_dev = type { i32 }

@GC_MAX_DEVICES = common dso_local global i32 0, align 4
@GC_PSX_BYTES = common dso_local global i32 0, align 4
@BTN_THUMBL = common dso_local global i32 0, align 4
@BTN_THUMBR = common dso_local global i32 0, align 4
@GC_DDR = common dso_local global i64 0, align 8
@gc_status_bit = common dso_local global i32* null, align 8
@gc_psx_ddr_btn = common dso_local global i32* null, align 8
@gc_psx_abs = common dso_local global i32* null, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@gc_psx_btn = common dso_local global i32* null, align 8
@BTN_START = common dso_local global i32 0, align 4
@BTN_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gc*)* @gc_psx_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_psx_process_packet(%struct.gc* %0) #0 {
  %2 = alloca %struct.gc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gc* %0, %struct.gc** %2, align 8
  %10 = load i32, i32* @GC_MAX_DEVICES, align 4
  %11 = zext i32 %10 to i64
  %12 = load i32, i32* @GC_PSX_BYTES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = mul nuw i64 %11, %13
  %16 = alloca i8, i64 %15, align 16
  store i64 %11, i64* %4, align 8
  store i64 %13, i64* %5, align 8
  %17 = load i32, i32* @GC_MAX_DEVICES, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %20 = load %struct.gc*, %struct.gc** %2, align 8
  %21 = bitcast i8* %16 to i8**
  %22 = call i32 @gc_psx_read_packet(%struct.gc* %20, i8** %21, i8* %19)
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %413, %1
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @GC_MAX_DEVICES, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %416

27:                                               ; preds = %23
  %28 = load %struct.gc*, %struct.gc** %2, align 8
  %29 = getelementptr inbounds %struct.gc, %struct.gc* %28, i32 0, i32 1
  %30 = load %struct.input_dev**, %struct.input_dev*** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %30, i64 %32
  %34 = load %struct.input_dev*, %struct.input_dev** %33, align 8
  store %struct.input_dev* %34, %struct.input_dev** %7, align 8
  %35 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %36 = icmp ne %struct.input_dev* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %413

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %19, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  switch i32 %43, label %412 [
    i32 128, label %44
    i32 130, label %71
    i32 131, label %71
    i32 129, label %254
    i32 0, label %411
  ]

44:                                               ; preds = %38
  %45 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %46 = load i32, i32* @BTN_THUMBL, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = mul nsw i64 %48, %13
  %50 = getelementptr inbounds i8, i8* %16, i64 %49
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = xor i32 %53, -1
  %55 = and i32 %54, 4
  %56 = trunc i32 %55 to i8
  %57 = call i32 @input_report_key(%struct.input_dev* %45, i32 %46, i8 zeroext %56)
  %58 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %59 = load i32, i32* @BTN_THUMBR, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = mul nsw i64 %61, %13
  %63 = getelementptr inbounds i8, i8* %16, i64 %62
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = xor i32 %66, -1
  %68 = and i32 %67, 2
  %69 = trunc i32 %68 to i8
  %70 = call i32 @input_report_key(%struct.input_dev* %58, i32 %59, i8 zeroext %69)
  br label %71

71:                                               ; preds = %38, %38, %44
  %72 = load %struct.gc*, %struct.gc** %2, align 8
  %73 = getelementptr inbounds %struct.gc, %struct.gc* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @GC_DDR, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** @gc_status_bit, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %77, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %113

85:                                               ; preds = %71
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %109, %85
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 4
  br i1 %88, label %89, label %112

89:                                               ; preds = %86
  %90 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %91 = load i32*, i32** @gc_psx_ddr_btn, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = mul nsw i64 %97, %13
  %99 = getelementptr inbounds i8, i8* %16, i64 %98
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %9, align 4
  %105 = shl i32 16, %104
  %106 = and i32 %103, %105
  %107 = trunc i32 %106 to i8
  %108 = call i32 @input_report_key(%struct.input_dev* %90, i32 %95, i8 zeroext %107)
  br label %109

109:                                              ; preds = %89
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %86

112:                                              ; preds = %86
  br label %198

113:                                              ; preds = %71
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %136, %113
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 4
  br i1 %116, label %117, label %139

117:                                              ; preds = %114
  %118 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %119 = load i32*, i32** @gc_psx_abs, align 8
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = mul nsw i64 %126, %13
  %128 = getelementptr inbounds i8, i8* %16, i64 %127
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 2
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = call i32 @input_report_abs(%struct.input_dev* %118, i32 %124, i32 %134)
  br label %136

136:                                              ; preds = %117
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %114

139:                                              ; preds = %114
  %140 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %141 = load i32, i32* @ABS_X, align 4
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = mul nsw i64 %143, %13
  %145 = getelementptr inbounds i8, i8* %16, i64 %144
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = and i32 %148, 32
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = mul nsw i32 %152, 127
  %154 = add nsw i32 128, %153
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = mul nsw i64 %156, %13
  %158 = getelementptr inbounds i8, i8* %16, i64 %157
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = and i32 %161, 128
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = mul nsw i32 %165, 128
  %167 = sub nsw i32 %154, %166
  %168 = call i32 @input_report_abs(%struct.input_dev* %140, i32 %141, i32 %167)
  %169 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %170 = load i32, i32* @ABS_Y, align 4
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = mul nsw i64 %172, %13
  %174 = getelementptr inbounds i8, i8* %16, i64 %173
  %175 = getelementptr inbounds i8, i8* %174, i64 0
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = and i32 %177, 64
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  %182 = mul nsw i32 %181, 127
  %183 = add nsw i32 128, %182
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = mul nsw i64 %185, %13
  %187 = getelementptr inbounds i8, i8* %16, i64 %186
  %188 = getelementptr inbounds i8, i8* %187, i64 0
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = and i32 %190, 16
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  %195 = mul nsw i32 %194, 128
  %196 = sub nsw i32 %183, %195
  %197 = call i32 @input_report_abs(%struct.input_dev* %169, i32 %170, i32 %196)
  br label %198

198:                                              ; preds = %139, %112
  store i32 0, i32* %9, align 4
  br label %199

199:                                              ; preds = %222, %198
  %200 = load i32, i32* %9, align 4
  %201 = icmp slt i32 %200, 8
  br i1 %201, label %202, label %225

202:                                              ; preds = %199
  %203 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %204 = load i32*, i32** @gc_psx_btn, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = mul nsw i64 %210, %13
  %212 = getelementptr inbounds i8, i8* %16, i64 %211
  %213 = getelementptr inbounds i8, i8* %212, i64 1
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = xor i32 %215, -1
  %217 = load i32, i32* %9, align 4
  %218 = shl i32 1, %217
  %219 = and i32 %216, %218
  %220 = trunc i32 %219 to i8
  %221 = call i32 @input_report_key(%struct.input_dev* %203, i32 %208, i8 zeroext %220)
  br label %222

222:                                              ; preds = %202
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %9, align 4
  br label %199

225:                                              ; preds = %199
  %226 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %227 = load i32, i32* @BTN_START, align 4
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = mul nsw i64 %229, %13
  %231 = getelementptr inbounds i8, i8* %16, i64 %230
  %232 = getelementptr inbounds i8, i8* %231, i64 0
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = xor i32 %234, -1
  %236 = and i32 %235, 8
  %237 = trunc i32 %236 to i8
  %238 = call i32 @input_report_key(%struct.input_dev* %226, i32 %227, i8 zeroext %237)
  %239 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %240 = load i32, i32* @BTN_SELECT, align 4
  %241 = load i32, i32* %8, align 4
  %242 = sext i32 %241 to i64
  %243 = mul nsw i64 %242, %13
  %244 = getelementptr inbounds i8, i8* %16, i64 %243
  %245 = getelementptr inbounds i8, i8* %244, i64 0
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  %248 = xor i32 %247, -1
  %249 = and i32 %248, 1
  %250 = trunc i32 %249 to i8
  %251 = call i32 @input_report_key(%struct.input_dev* %239, i32 %240, i8 zeroext %250)
  %252 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %253 = call i32 @input_sync(%struct.input_dev* %252)
  br label %412

254:                                              ; preds = %38
  %255 = load %struct.gc*, %struct.gc** %2, align 8
  %256 = getelementptr inbounds %struct.gc, %struct.gc* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = load i64, i64* @GC_DDR, align 8
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = load i32*, i32** @gc_status_bit, align 8
  %262 = load i32, i32* %8, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = and i32 %260, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %296

268:                                              ; preds = %254
  store i32 0, i32* %9, align 4
  br label %269

269:                                              ; preds = %292, %268
  %270 = load i32, i32* %9, align 4
  %271 = icmp slt i32 %270, 4
  br i1 %271, label %272, label %295

272:                                              ; preds = %269
  %273 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %274 = load i32*, i32** @gc_psx_ddr_btn, align 8
  %275 = load i32, i32* %9, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %8, align 4
  %280 = sext i32 %279 to i64
  %281 = mul nsw i64 %280, %13
  %282 = getelementptr inbounds i8, i8* %16, i64 %281
  %283 = getelementptr inbounds i8, i8* %282, i64 0
  %284 = load i8, i8* %283, align 1
  %285 = zext i8 %284 to i32
  %286 = xor i32 %285, -1
  %287 = load i32, i32* %9, align 4
  %288 = shl i32 16, %287
  %289 = and i32 %286, %288
  %290 = trunc i32 %289 to i8
  %291 = call i32 @input_report_key(%struct.input_dev* %273, i32 %278, i8 zeroext %290)
  br label %292

292:                                              ; preds = %272
  %293 = load i32, i32* %9, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %9, align 4
  br label %269

295:                                              ; preds = %269
  br label %355

296:                                              ; preds = %254
  %297 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %298 = load i32, i32* @ABS_X, align 4
  %299 = load i32, i32* %8, align 4
  %300 = sext i32 %299 to i64
  %301 = mul nsw i64 %300, %13
  %302 = getelementptr inbounds i8, i8* %16, i64 %301
  %303 = getelementptr inbounds i8, i8* %302, i64 0
  %304 = load i8, i8* %303, align 1
  %305 = zext i8 %304 to i32
  %306 = and i32 %305, 32
  %307 = icmp ne i32 %306, 0
  %308 = xor i1 %307, true
  %309 = zext i1 %308 to i32
  %310 = mul nsw i32 %309, 127
  %311 = add nsw i32 128, %310
  %312 = load i32, i32* %8, align 4
  %313 = sext i32 %312 to i64
  %314 = mul nsw i64 %313, %13
  %315 = getelementptr inbounds i8, i8* %16, i64 %314
  %316 = getelementptr inbounds i8, i8* %315, i64 0
  %317 = load i8, i8* %316, align 1
  %318 = zext i8 %317 to i32
  %319 = and i32 %318, 128
  %320 = icmp ne i32 %319, 0
  %321 = xor i1 %320, true
  %322 = zext i1 %321 to i32
  %323 = mul nsw i32 %322, 128
  %324 = sub nsw i32 %311, %323
  %325 = call i32 @input_report_abs(%struct.input_dev* %297, i32 %298, i32 %324)
  %326 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %327 = load i32, i32* @ABS_Y, align 4
  %328 = load i32, i32* %8, align 4
  %329 = sext i32 %328 to i64
  %330 = mul nsw i64 %329, %13
  %331 = getelementptr inbounds i8, i8* %16, i64 %330
  %332 = getelementptr inbounds i8, i8* %331, i64 0
  %333 = load i8, i8* %332, align 1
  %334 = zext i8 %333 to i32
  %335 = and i32 %334, 64
  %336 = icmp ne i32 %335, 0
  %337 = xor i1 %336, true
  %338 = zext i1 %337 to i32
  %339 = mul nsw i32 %338, 127
  %340 = add nsw i32 128, %339
  %341 = load i32, i32* %8, align 4
  %342 = sext i32 %341 to i64
  %343 = mul nsw i64 %342, %13
  %344 = getelementptr inbounds i8, i8* %16, i64 %343
  %345 = getelementptr inbounds i8, i8* %344, i64 0
  %346 = load i8, i8* %345, align 1
  %347 = zext i8 %346 to i32
  %348 = and i32 %347, 16
  %349 = icmp ne i32 %348, 0
  %350 = xor i1 %349, true
  %351 = zext i1 %350 to i32
  %352 = mul nsw i32 %351, 128
  %353 = sub nsw i32 %340, %352
  %354 = call i32 @input_report_abs(%struct.input_dev* %326, i32 %327, i32 %353)
  br label %355

355:                                              ; preds = %296, %295
  store i32 0, i32* %9, align 4
  br label %356

356:                                              ; preds = %379, %355
  %357 = load i32, i32* %9, align 4
  %358 = icmp slt i32 %357, 8
  br i1 %358, label %359, label %382

359:                                              ; preds = %356
  %360 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %361 = load i32*, i32** @gc_psx_btn, align 8
  %362 = load i32, i32* %9, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* %8, align 4
  %367 = sext i32 %366 to i64
  %368 = mul nsw i64 %367, %13
  %369 = getelementptr inbounds i8, i8* %16, i64 %368
  %370 = getelementptr inbounds i8, i8* %369, i64 1
  %371 = load i8, i8* %370, align 1
  %372 = zext i8 %371 to i32
  %373 = xor i32 %372, -1
  %374 = load i32, i32* %9, align 4
  %375 = shl i32 1, %374
  %376 = and i32 %373, %375
  %377 = trunc i32 %376 to i8
  %378 = call i32 @input_report_key(%struct.input_dev* %360, i32 %365, i8 zeroext %377)
  br label %379

379:                                              ; preds = %359
  %380 = load i32, i32* %9, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %9, align 4
  br label %356

382:                                              ; preds = %356
  %383 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %384 = load i32, i32* @BTN_START, align 4
  %385 = load i32, i32* %8, align 4
  %386 = sext i32 %385 to i64
  %387 = mul nsw i64 %386, %13
  %388 = getelementptr inbounds i8, i8* %16, i64 %387
  %389 = getelementptr inbounds i8, i8* %388, i64 0
  %390 = load i8, i8* %389, align 1
  %391 = zext i8 %390 to i32
  %392 = xor i32 %391, -1
  %393 = and i32 %392, 8
  %394 = trunc i32 %393 to i8
  %395 = call i32 @input_report_key(%struct.input_dev* %383, i32 %384, i8 zeroext %394)
  %396 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %397 = load i32, i32* @BTN_SELECT, align 4
  %398 = load i32, i32* %8, align 4
  %399 = sext i32 %398 to i64
  %400 = mul nsw i64 %399, %13
  %401 = getelementptr inbounds i8, i8* %16, i64 %400
  %402 = getelementptr inbounds i8, i8* %401, i64 0
  %403 = load i8, i8* %402, align 1
  %404 = zext i8 %403 to i32
  %405 = xor i32 %404, -1
  %406 = and i32 %405, 1
  %407 = trunc i32 %406 to i8
  %408 = call i32 @input_report_key(%struct.input_dev* %396, i32 %397, i8 zeroext %407)
  %409 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %410 = call i32 @input_sync(%struct.input_dev* %409)
  br label %412

411:                                              ; preds = %38
  br label %412

412:                                              ; preds = %38, %411, %382, %225
  br label %413

413:                                              ; preds = %412, %37
  %414 = load i32, i32* %8, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %8, align 4
  br label %23

416:                                              ; preds = %23
  %417 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %417)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gc_psx_read_packet(%struct.gc*, i8**, i8*) #2

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #2

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #2

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
