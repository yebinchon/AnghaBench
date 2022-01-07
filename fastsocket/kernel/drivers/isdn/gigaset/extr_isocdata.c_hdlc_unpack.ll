; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_isocdata.c_hdlc_unpack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_isocdata.c_hdlc_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bas_bc_state* }
%struct.bas_bc_state = type { i32, i32, i32, i32, i32, i32 }

@bitcounts = common dso_local global i8* null, align 8
@INS_flag_hunt = common dso_local global i32 0, align 4
@PPP_FLAG = common dso_local global i8 0, align 1
@INS_have_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.bc_state*)* @hdlc_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlc_unpack(i8* %0, i32 %1, %struct.bc_state* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bc_state*, align 8
  %7 = alloca %struct.bas_bc_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bc_state* %2, %struct.bc_state** %6, align 8
  %17 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %18 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.bas_bc_state*, %struct.bas_bc_state** %19, align 8
  store %struct.bas_bc_state* %20, %struct.bas_bc_state** %7, align 8
  %21 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %22 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  %24 = load %struct.bas_bc_state*, %struct.bas_bc_state** %7, align 8
  %25 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.bas_bc_state*, %struct.bas_bc_state** %7, align 8
  %28 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.bas_bc_state*, %struct.bas_bc_state** %7, align 8
  %31 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %391, %3
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, -1
  store i32 %35, i32* %5, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %394

37:                                               ; preds = %33
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  %40 = load i8, i8* %38, align 1
  store i8 %40, i8* %12, align 1
  %41 = load i8*, i8** @bitcounts, align 8
  %42 = load i8, i8* %12, align 1
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %13, align 1
  %46 = load i8, i8* %13, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 15
  store i32 %48, i32* %14, align 4
  %49 = load i8, i8* %13, align 1
  %50 = zext i8 %49 to i32
  %51 = ashr i32 %50, 4
  %52 = and i32 %51, 15
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @INS_flag_hunt, align 4
  %58 = and i32 %56, %57
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %106

61:                                               ; preds = %37
  %62 = load i8, i8* %12, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* @PPP_FLAG, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i32, i32* @INS_flag_hunt, align 4
  %69 = load i32, i32* @INS_have_data, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %105

74:                                               ; preds = %61
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 6
  br i1 %76, label %77, label %104

77:                                               ; preds = %74
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 7
  br i1 %79, label %80, label %104

80:                                               ; preds = %77
  %81 = load i32, i32* @INS_flag_hunt, align 4
  %82 = load i32, i32* @INS_have_data, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %8, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load i8, i8* %12, align 1
  %88 = zext i8 %87 to i32
  %89 = load i32, i32* %14, align 4
  %90 = add i32 %89, 1
  %91 = ashr i32 %88, %90
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %14, align 4
  %93 = sub i32 7, %92
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp uge i32 %94, 8
  br i1 %95, label %96, label %103

96:                                               ; preds = %80
  %97 = load i32, i32* %11, align 4
  %98 = add i32 %97, -1
  store i32 %98, i32* %11, align 4
  %99 = load i8, i8* %12, align 1
  %100 = zext i8 %99 to i32
  switch i32 %100, label %102 [
    i32 190, label %101
  ]

101:                                              ; preds = %96
  store i32 63, i32* %10, align 4
  br label %102

102:                                              ; preds = %96, %101
  br label %103

103:                                              ; preds = %102, %80
  br label %104

104:                                              ; preds = %103, %77, %74
  br label %105

105:                                              ; preds = %104, %67
  br label %391

106:                                              ; preds = %37
  %107 = load i32, i32* %9, align 4
  %108 = icmp ult i32 %107, 5
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %15, align 4
  %111 = icmp ult i32 %110, 7
  br label %112

112:                                              ; preds = %109, %106
  %113 = phi i1 [ false, %106 ], [ %111, %109 ]
  %114 = zext i1 %113 to i32
  %115 = call i64 @likely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %133

117:                                              ; preds = %112
  %118 = load i8, i8* %12, align 1
  %119 = zext i8 %118 to i32
  %120 = load i32, i32* %11, align 4
  %121 = shl i32 %119, %120
  %122 = load i32, i32* %10, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = and i32 %124, 255
  %126 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %127 = call i32 @hdlc_putbyte(i32 %125, %struct.bc_state* %126)
  %128 = load i32, i32* @INS_have_data, align 4
  %129 = load i32, i32* %8, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %10, align 4
  %132 = lshr i32 %131, 8
  store i32 %132, i32* %10, align 4
  br label %390

133:                                              ; preds = %112
  %134 = load i32, i32* %9, align 4
  %135 = icmp eq i32 %134, 6
  br i1 %135, label %136, label %152

136:                                              ; preds = %133
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %14, align 4
  %139 = sub i32 7, %138
  %140 = icmp eq i32 %137, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %136
  %142 = load i32, i32* %15, align 4
  %143 = add i32 %142, 1
  %144 = load i32, i32* %11, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @INS_have_data, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  br label %152

152:                                              ; preds = %146, %141, %136, %133
  %153 = phi i1 [ false, %141 ], [ false, %136 ], [ false, %133 ], [ %151, %146 ]
  %154 = zext i1 %153 to i32
  %155 = call i64 @likely(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %389

158:                                              ; preds = %152
  %159 = load i32, i32* %9, align 4
  %160 = icmp ugt i32 %159, 6
  %161 = zext i1 %160 to i32
  %162 = call i64 @unlikely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %158
  %165 = load %struct.bas_bc_state*, %struct.bas_bc_state** %7, align 8
  %166 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  %169 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %170 = call i32 @hdlc_flush(%struct.bc_state* %169)
  %171 = load i32, i32* @INS_flag_hunt, align 4
  %172 = load i32, i32* %8, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %8, align 4
  br label %388

174:                                              ; preds = %158
  %175 = load i32, i32* %9, align 4
  %176 = icmp eq i32 %175, 6
  br i1 %176, label %177, label %258

177:                                              ; preds = %174
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* %14, align 4
  %180 = sub i32 7, %179
  %181 = icmp ugt i32 %178, %180
  br i1 %181, label %182, label %193

182:                                              ; preds = %177
  %183 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %14, align 4
  %186 = add i32 %184, %185
  %187 = sub i32 %186, 7
  %188 = call i32 @hdlc_frag(%struct.bc_state* %183, i32 %187)
  %189 = load i32, i32* @INS_have_data, align 4
  %190 = xor i32 %189, -1
  %191 = load i32, i32* %8, align 4
  %192 = and i32 %191, %190
  store i32 %192, i32* %8, align 4
  br label %216

193:                                              ; preds = %177
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* %14, align 4
  %196 = sub i32 7, %195
  %197 = icmp ult i32 %194, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load %struct.bas_bc_state*, %struct.bas_bc_state** %7, align 8
  %200 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %198, %193
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* @INS_have_data, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %203
  %209 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %210 = call i32 @hdlc_done(%struct.bc_state* %209)
  %211 = load i32, i32* @INS_have_data, align 4
  %212 = xor i32 %211, -1
  %213 = load i32, i32* %8, align 4
  %214 = and i32 %213, %212
  store i32 %214, i32* %8, align 4
  br label %215

215:                                              ; preds = %208, %203
  br label %216

216:                                              ; preds = %215, %182
  %217 = load i8, i8* %12, align 1
  %218 = zext i8 %217 to i32
  %219 = load i8, i8* @PPP_FLAG, align 1
  %220 = zext i8 %219 to i32
  %221 = icmp eq i32 %218, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %216
  %223 = load %struct.bas_bc_state*, %struct.bas_bc_state** %7, align 8
  %224 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %224, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %257

227:                                              ; preds = %216
  %228 = load i32, i32* %15, align 4
  %229 = icmp ne i32 %228, 7
  br i1 %229, label %230, label %248

230:                                              ; preds = %227
  %231 = load i8, i8* %12, align 1
  %232 = zext i8 %231 to i32
  %233 = load i32, i32* %14, align 4
  %234 = add i32 %233, 1
  %235 = ashr i32 %232, %234
  store i32 %235, i32* %10, align 4
  %236 = load i32, i32* %14, align 4
  %237 = sub i32 7, %236
  store i32 %237, i32* %11, align 4
  %238 = load i32, i32* %15, align 4
  %239 = icmp uge i32 %238, 8
  br i1 %239, label %240, label %247

240:                                              ; preds = %230
  %241 = load i32, i32* %11, align 4
  %242 = add i32 %241, -1
  store i32 %242, i32* %11, align 4
  %243 = load i8, i8* %12, align 1
  %244 = zext i8 %243 to i32
  switch i32 %244, label %246 [
    i32 190, label %245
  ]

245:                                              ; preds = %240
  store i32 63, i32* %10, align 4
  br label %246

246:                                              ; preds = %240, %245
  br label %247

247:                                              ; preds = %246, %230
  br label %256

248:                                              ; preds = %227
  %249 = load %struct.bas_bc_state*, %struct.bas_bc_state** %7, align 8
  %250 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %250, align 4
  %253 = load i32, i32* @INS_flag_hunt, align 4
  %254 = load i32, i32* %8, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %8, align 4
  br label %256

256:                                              ; preds = %248, %247
  br label %257

257:                                              ; preds = %256, %222
  br label %387

258:                                              ; preds = %174
  %259 = load i8, i8* %12, align 1
  %260 = zext i8 %259 to i32
  %261 = load i8, i8* @PPP_FLAG, align 1
  %262 = zext i8 %261 to i32
  %263 = icmp eq i32 %260, %262
  br i1 %263, label %264, label %293

264:                                              ; preds = %258
  %265 = load i32, i32* %9, align 4
  %266 = icmp eq i32 %265, 5
  br i1 %266, label %267, label %272

267:                                              ; preds = %264
  %268 = load %struct.bas_bc_state*, %struct.bas_bc_state** %7, align 8
  %269 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %269, align 4
  br label %272

272:                                              ; preds = %267, %264
  %273 = load i32, i32* %11, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %272
  %276 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %277 = load i32, i32* %11, align 4
  %278 = call i32 @hdlc_frag(%struct.bc_state* %276, i32 %277)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %288

279:                                              ; preds = %272
  %280 = load i32, i32* %8, align 4
  %281 = load i32, i32* @INS_have_data, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %279
  %285 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %286 = call i32 @hdlc_done(%struct.bc_state* %285)
  br label %287

287:                                              ; preds = %284, %279
  br label %288

288:                                              ; preds = %287, %275
  %289 = load i32, i32* @INS_have_data, align 4
  %290 = xor i32 %289, -1
  %291 = load i32, i32* %8, align 4
  %292 = and i32 %291, %290
  store i32 %292, i32* %8, align 4
  br label %386

293:                                              ; preds = %258
  %294 = load i32, i32* %15, align 4
  %295 = icmp eq i32 %294, 7
  br i1 %295, label %296, label %306

296:                                              ; preds = %293
  %297 = load %struct.bas_bc_state*, %struct.bas_bc_state** %7, align 8
  %298 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %298, align 4
  %301 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %302 = call i32 @hdlc_flush(%struct.bc_state* %301)
  %303 = load i32, i32* @INS_flag_hunt, align 4
  %304 = load i32, i32* %8, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %8, align 4
  br label %385

306:                                              ; preds = %293
  %307 = load i32, i32* %15, align 4
  %308 = icmp ult i32 %307, 7
  br i1 %308, label %309, label %336

309:                                              ; preds = %306
  %310 = load i32, i32* %14, align 4
  %311 = shl i32 1, %310
  %312 = sub nsw i32 %311, 1
  %313 = trunc i32 %312 to i8
  store i8 %313, i8* %16, align 1
  %314 = load i8, i8* %12, align 1
  %315 = zext i8 %314 to i32
  %316 = load i8, i8* %16, align 1
  %317 = zext i8 %316 to i32
  %318 = and i32 %315, %317
  %319 = load i8, i8* %12, align 1
  %320 = zext i8 %319 to i32
  %321 = load i8, i8* %16, align 1
  %322 = zext i8 %321 to i32
  %323 = xor i32 %322, -1
  %324 = and i32 %320, %323
  %325 = ashr i32 %324, 1
  %326 = or i32 %318, %325
  %327 = trunc i32 %326 to i8
  store i8 %327, i8* %12, align 1
  %328 = load i8, i8* %12, align 1
  %329 = zext i8 %328 to i32
  %330 = load i32, i32* %11, align 4
  %331 = shl i32 %329, %330
  %332 = load i32, i32* %10, align 4
  %333 = or i32 %332, %331
  store i32 %333, i32* %10, align 4
  %334 = load i32, i32* %11, align 4
  %335 = add i32 %334, 7
  store i32 %335, i32* %11, align 4
  br label %369

336:                                              ; preds = %306
  %337 = load i32, i32* %9, align 4
  %338 = icmp ult i32 %337, 5
  br i1 %338, label %339, label %352

339:                                              ; preds = %336
  %340 = load i8, i8* %12, align 1
  %341 = zext i8 %340 to i32
  switch i32 %341, label %343 [
    i32 190, label %342
  ]

342:                                              ; preds = %339
  store i8 126, i8* %12, align 1
  br label %343

343:                                              ; preds = %339, %342
  %344 = load i8, i8* %12, align 1
  %345 = zext i8 %344 to i32
  %346 = load i32, i32* %11, align 4
  %347 = shl i32 %345, %346
  %348 = load i32, i32* %10, align 4
  %349 = or i32 %348, %347
  store i32 %349, i32* %10, align 4
  %350 = load i32, i32* %11, align 4
  %351 = add i32 %350, 7
  store i32 %351, i32* %11, align 4
  br label %368

352:                                              ; preds = %336
  %353 = load i8, i8* %12, align 1
  %354 = zext i8 %353 to i32
  switch i32 %354, label %359 [
    i32 125, label %355
    i32 190, label %356
    i32 62, label %357
    i32 124, label %358
  ]

355:                                              ; preds = %352
  store i8 63, i8* %12, align 1
  br label %359

356:                                              ; preds = %352
  store i8 63, i8* %12, align 1
  br label %359

357:                                              ; preds = %352
  store i8 31, i8* %12, align 1
  br label %359

358:                                              ; preds = %352
  store i8 62, i8* %12, align 1
  br label %359

359:                                              ; preds = %352, %358, %357, %356, %355
  %360 = load i8, i8* %12, align 1
  %361 = zext i8 %360 to i32
  %362 = load i32, i32* %11, align 4
  %363 = shl i32 %361, %362
  %364 = load i32, i32* %10, align 4
  %365 = or i32 %364, %363
  store i32 %365, i32* %10, align 4
  %366 = load i32, i32* %11, align 4
  %367 = add i32 %366, 6
  store i32 %367, i32* %11, align 4
  br label %368

368:                                              ; preds = %359, %343
  br label %369

369:                                              ; preds = %368, %309
  %370 = load i32, i32* %11, align 4
  %371 = icmp uge i32 %370, 8
  br i1 %371, label %372, label %384

372:                                              ; preds = %369
  %373 = load i32, i32* %11, align 4
  %374 = sub i32 %373, 8
  store i32 %374, i32* %11, align 4
  %375 = load i32, i32* %10, align 4
  %376 = and i32 %375, 255
  %377 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %378 = call i32 @hdlc_putbyte(i32 %376, %struct.bc_state* %377)
  %379 = load i32, i32* @INS_have_data, align 4
  %380 = load i32, i32* %8, align 4
  %381 = or i32 %380, %379
  store i32 %381, i32* %8, align 4
  %382 = load i32, i32* %10, align 4
  %383 = lshr i32 %382, 8
  store i32 %383, i32* %10, align 4
  br label %384

384:                                              ; preds = %372, %369
  br label %385

385:                                              ; preds = %384, %296
  br label %386

386:                                              ; preds = %385, %288
  br label %387

387:                                              ; preds = %386, %257
  br label %388

388:                                              ; preds = %387, %164
  br label %389

389:                                              ; preds = %388, %157
  br label %390

390:                                              ; preds = %389, %117
  br label %391

391:                                              ; preds = %390, %105
  %392 = load i32, i32* %15, align 4
  %393 = and i32 %392, 7
  store i32 %393, i32* %9, align 4
  br label %33

394:                                              ; preds = %33
  %395 = load i32, i32* %8, align 4
  %396 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %397 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %396, i32 0, i32 0
  store i32 %395, i32* %397, align 8
  %398 = load i32, i32* %9, align 4
  %399 = load %struct.bas_bc_state*, %struct.bas_bc_state** %7, align 8
  %400 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %399, i32 0, i32 0
  store i32 %398, i32* %400, align 4
  %401 = load i32, i32* %10, align 4
  %402 = load %struct.bas_bc_state*, %struct.bas_bc_state** %7, align 8
  %403 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %402, i32 0, i32 1
  store i32 %401, i32* %403, align 4
  %404 = load i32, i32* %11, align 4
  %405 = load %struct.bas_bc_state*, %struct.bas_bc_state** %7, align 8
  %406 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %405, i32 0, i32 2
  store i32 %404, i32* %406, align 4
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @hdlc_putbyte(i32, %struct.bc_state*) #1

declare dso_local i32 @hdlc_flush(%struct.bc_state*) #1

declare dso_local i32 @hdlc_frag(%struct.bc_state*, i32) #1

declare dso_local i32 @hdlc_done(%struct.bc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
