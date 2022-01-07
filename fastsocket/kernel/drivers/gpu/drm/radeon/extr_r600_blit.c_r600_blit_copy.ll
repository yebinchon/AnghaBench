; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_blit.c_r600_blit_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_blit.c_r600_blit_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i64 }

@FMT_8 = common dso_local global i32 0, align 4
@R600_TC_ACTION_ENA = common dso_local global i32 0, align 4
@COLOR_8 = common dso_local global i32 0, align 4
@R600_CB_ACTION_ENA = common dso_local global i32 0, align 4
@R600_CB0_DEST_BASE_ENA = common dso_local global i32 0, align 4
@FMT_8_8_8_8 = common dso_local global i32 0, align 4
@COLOR_8_8_8_8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_blit_copy(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %9, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %25 = call i32* @r600_nomm_get_vb_ptr(%struct.drm_device* %24)
  store i32* %25, i32** %12, align 8
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 3
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 3
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 3
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %262

37:                                               ; preds = %33, %29, %4
  store i32 8192, i32* %10, align 4
  br label %38

38:                                               ; preds = %125, %37
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %261

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 255
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 255
  store i32 %46, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, -256
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, -256
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %41
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sdiv i32 %57, %58
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp sgt i32 %60, 8192
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 8192, i32* %16, align 4
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i32, i32* %16, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 1, i32* %16, align 4
  br label %69

67:                                               ; preds = %63
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %67, %66
  br label %97

70:                                               ; preds = %53, %41
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %15, align 4
  %80 = sub nsw i32 %78, %79
  %81 = icmp sgt i32 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %15, align 4
  %85 = sub nsw i32 %83, %84
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %82, %76
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %14, align 4
  %90 = sub nsw i32 %88, %89
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %14, align 4
  %95 = sub nsw i32 %93, %94
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %92, %86
  br label %97

97:                                               ; preds = %96, %69
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 48
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %103, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %97
  %111 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %112 = call i32 @r600_nomm_put_vb(%struct.drm_device* %111)
  %113 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %114 = call i32 @r600_nomm_get_vb(%struct.drm_device* %113)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = icmp ne %struct.TYPE_9__* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %110
  br label %498

120:                                              ; preds = %110
  %121 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %122 = call i32 @set_shaders(%struct.drm_device* %121)
  %123 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %124 = call i32* @r600_nomm_get_vb_ptr(%struct.drm_device* %123)
  store i32* %124, i32** %12, align 8
  br label %125

125:                                              ; preds = %120, %97
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @int2float(i32 %126)
  %128 = load i32*, i32** %12, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 %127, i32* %129, align 4
  %130 = load i32*, i32** %12, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 0, i32* %131, align 4
  %132 = load i32, i32* %14, align 4
  %133 = call i32 @int2float(i32 %132)
  %134 = load i32*, i32** %12, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  store i32 %133, i32* %135, align 4
  %136 = load i32*, i32** %12, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 3
  store i32 0, i32* %137, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @int2float(i32 %138)
  %140 = load i32*, i32** %12, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %16, align 4
  %143 = call i32 @int2float(i32 %142)
  %144 = load i32*, i32** %12, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 5
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %14, align 4
  %147 = call i32 @int2float(i32 %146)
  %148 = load i32*, i32** %12, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 6
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %16, align 4
  %151 = call i32 @int2float(i32 %150)
  %152 = load i32*, i32** %12, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 7
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %154, %155
  %157 = call i32 @int2float(i32 %156)
  %158 = load i32*, i32** %12, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 8
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %16, align 4
  %161 = call i32 @int2float(i32 %160)
  %162 = load i32*, i32** %12, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 9
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %164, %165
  %167 = call i32 @int2float(i32 %166)
  %168 = load i32*, i32** %12, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 10
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %16, align 4
  %171 = call i32 @int2float(i32 %170)
  %172 = load i32*, i32** %12, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 11
  store i32 %171, i32* %173, align 4
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %175 = load i32, i32* @FMT_8, align 4
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %176, %177
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %180, %181
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @set_tex_resource(%struct.TYPE_10__* %174, i32 %175, i32 %178, i32 %179, i32 %182, i32 %183)
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %186 = load i32, i32* @R600_TC_ACTION_ENA, align 4
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %16, align 4
  %190 = mul nsw i32 %188, %189
  %191 = add nsw i32 %187, %190
  %192 = load i32, i32* %6, align 4
  %193 = call i32 @cp_set_surface_sync(%struct.TYPE_10__* %185, i32 %186, i32 %191, i32 %192)
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %195 = load i32, i32* @COLOR_8, align 4
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %13, align 4
  %198 = add nsw i32 %196, %197
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* %7, align 4
  %201 = call i32 @set_render_target(%struct.TYPE_10__* %194, i32 %195, i32 %198, i32 %199, i32 %200)
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %204, %205
  %207 = load i32, i32* %16, align 4
  %208 = call i32 @set_scissors(%struct.TYPE_10__* %202, i32 %203, i32 0, i32 %206, i32 %207)
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %211, %216
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %217, %222
  store i64 %223, i64* %11, align 8
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %225 = load i64, i64* %11, align 8
  %226 = call i32 @set_vtx_resource(%struct.TYPE_10__* %224, i64 %225)
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %228 = call i32 @draw_auto(%struct.TYPE_10__* %227)
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %230 = load i32, i32* @R600_CB_ACTION_ENA, align 4
  %231 = load i32, i32* @R600_CB0_DEST_BASE_ENA, align 4
  %232 = or i32 %230, %231
  %233 = load i32, i32* %13, align 4
  %234 = load i32, i32* %16, align 4
  %235 = mul nsw i32 %233, %234
  %236 = load i32, i32* %7, align 4
  %237 = call i32 @cp_set_surface_sync(%struct.TYPE_10__* %229, i32 %232, i32 %235, i32 %236)
  %238 = load i32*, i32** %12, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 12
  store i32* %239, i32** %12, align 8
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %244, 48
  store i64 %245, i64* %243, align 8
  %246 = load i32, i32* %13, align 4
  %247 = load i32, i32* %16, align 4
  %248 = mul nsw i32 %246, %247
  %249 = load i32, i32* %6, align 4
  %250 = add nsw i32 %249, %248
  store i32 %250, i32* %6, align 4
  %251 = load i32, i32* %13, align 4
  %252 = load i32, i32* %16, align 4
  %253 = mul nsw i32 %251, %252
  %254 = load i32, i32* %7, align 4
  %255 = add nsw i32 %254, %253
  store i32 %255, i32* %7, align 4
  %256 = load i32, i32* %13, align 4
  %257 = load i32, i32* %16, align 4
  %258 = mul nsw i32 %256, %257
  %259 = load i32, i32* %8, align 4
  %260 = sub nsw i32 %259, %258
  store i32 %260, i32* %8, align 4
  br label %38

261:                                              ; preds = %38
  br label %498

262:                                              ; preds = %33
  store i32 32768, i32* %10, align 4
  br label %263

263:                                              ; preds = %350, %262
  %264 = load i32, i32* %8, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %497

266:                                              ; preds = %263
  %267 = load i32, i32* %8, align 4
  store i32 %267, i32* %17, align 4
  %268 = load i32, i32* %6, align 4
  %269 = and i32 %268, 255
  store i32 %269, i32* %18, align 4
  %270 = load i32, i32* %7, align 4
  %271 = and i32 %270, 255
  store i32 %271, i32* %19, align 4
  store i32 1, i32* %20, align 4
  %272 = load i32, i32* %6, align 4
  %273 = and i32 %272, -256
  store i32 %273, i32* %6, align 4
  %274 = load i32, i32* %7, align 4
  %275 = and i32 %274, -256
  store i32 %275, i32* %7, align 4
  %276 = load i32, i32* %18, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %295, label %278

278:                                              ; preds = %266
  %279 = load i32, i32* %19, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %295, label %281

281:                                              ; preds = %278
  %282 = load i32, i32* %17, align 4
  %283 = load i32, i32* %10, align 4
  %284 = sdiv i32 %282, %283
  store i32 %284, i32* %20, align 4
  %285 = load i32, i32* %20, align 4
  %286 = icmp sgt i32 %285, 8192
  br i1 %286, label %287, label %288

287:                                              ; preds = %281
  store i32 8192, i32* %20, align 4
  br label %288

288:                                              ; preds = %287, %281
  %289 = load i32, i32* %20, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %288
  store i32 1, i32* %20, align 4
  br label %294

292:                                              ; preds = %288
  %293 = load i32, i32* %10, align 4
  store i32 %293, i32* %17, align 4
  br label %294

294:                                              ; preds = %292, %291
  br label %322

295:                                              ; preds = %278, %266
  %296 = load i32, i32* %17, align 4
  %297 = load i32, i32* %10, align 4
  %298 = icmp sgt i32 %296, %297
  br i1 %298, label %299, label %301

299:                                              ; preds = %295
  %300 = load i32, i32* %10, align 4
  store i32 %300, i32* %17, align 4
  br label %301

301:                                              ; preds = %299, %295
  %302 = load i32, i32* %17, align 4
  %303 = load i32, i32* %10, align 4
  %304 = load i32, i32* %19, align 4
  %305 = sub nsw i32 %303, %304
  %306 = icmp sgt i32 %302, %305
  br i1 %306, label %307, label %311

307:                                              ; preds = %301
  %308 = load i32, i32* %10, align 4
  %309 = load i32, i32* %19, align 4
  %310 = sub nsw i32 %308, %309
  store i32 %310, i32* %17, align 4
  br label %311

311:                                              ; preds = %307, %301
  %312 = load i32, i32* %17, align 4
  %313 = load i32, i32* %10, align 4
  %314 = load i32, i32* %18, align 4
  %315 = sub nsw i32 %313, %314
  %316 = icmp sgt i32 %312, %315
  br i1 %316, label %317, label %321

317:                                              ; preds = %311
  %318 = load i32, i32* %10, align 4
  %319 = load i32, i32* %18, align 4
  %320 = sub nsw i32 %318, %319
  store i32 %320, i32* %17, align 4
  br label %321

321:                                              ; preds = %317, %311
  br label %322

322:                                              ; preds = %321, %294
  %323 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 1
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = add nsw i64 %327, 48
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 1
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = icmp sgt i64 %328, %333
  br i1 %334, label %335, label %350

335:                                              ; preds = %322
  %336 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %337 = call i32 @r600_nomm_put_vb(%struct.drm_device* %336)
  %338 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %339 = call i32 @r600_nomm_get_vb(%struct.drm_device* %338)
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 1
  %342 = load %struct.TYPE_9__*, %struct.TYPE_9__** %341, align 8
  %343 = icmp ne %struct.TYPE_9__* %342, null
  br i1 %343, label %345, label %344

344:                                              ; preds = %335
  br label %498

345:                                              ; preds = %335
  %346 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %347 = call i32 @set_shaders(%struct.drm_device* %346)
  %348 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %349 = call i32* @r600_nomm_get_vb_ptr(%struct.drm_device* %348)
  store i32* %349, i32** %12, align 8
  br label %350

350:                                              ; preds = %345, %322
  %351 = load i32, i32* %19, align 4
  %352 = sdiv i32 %351, 4
  %353 = call i32 @int2float(i32 %352)
  %354 = load i32*, i32** %12, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 0
  store i32 %353, i32* %355, align 4
  %356 = load i32*, i32** %12, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 1
  store i32 0, i32* %357, align 4
  %358 = load i32, i32* %18, align 4
  %359 = sdiv i32 %358, 4
  %360 = call i32 @int2float(i32 %359)
  %361 = load i32*, i32** %12, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 2
  store i32 %360, i32* %362, align 4
  %363 = load i32*, i32** %12, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 3
  store i32 0, i32* %364, align 4
  %365 = load i32, i32* %19, align 4
  %366 = sdiv i32 %365, 4
  %367 = call i32 @int2float(i32 %366)
  %368 = load i32*, i32** %12, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 4
  store i32 %367, i32* %369, align 4
  %370 = load i32, i32* %20, align 4
  %371 = call i32 @int2float(i32 %370)
  %372 = load i32*, i32** %12, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 5
  store i32 %371, i32* %373, align 4
  %374 = load i32, i32* %18, align 4
  %375 = sdiv i32 %374, 4
  %376 = call i32 @int2float(i32 %375)
  %377 = load i32*, i32** %12, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 6
  store i32 %376, i32* %378, align 4
  %379 = load i32, i32* %20, align 4
  %380 = call i32 @int2float(i32 %379)
  %381 = load i32*, i32** %12, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 7
  store i32 %380, i32* %382, align 4
  %383 = load i32, i32* %19, align 4
  %384 = load i32, i32* %17, align 4
  %385 = add nsw i32 %383, %384
  %386 = sdiv i32 %385, 4
  %387 = call i32 @int2float(i32 %386)
  %388 = load i32*, i32** %12, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 8
  store i32 %387, i32* %389, align 4
  %390 = load i32, i32* %20, align 4
  %391 = call i32 @int2float(i32 %390)
  %392 = load i32*, i32** %12, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 9
  store i32 %391, i32* %393, align 4
  %394 = load i32, i32* %18, align 4
  %395 = load i32, i32* %17, align 4
  %396 = add nsw i32 %394, %395
  %397 = sdiv i32 %396, 4
  %398 = call i32 @int2float(i32 %397)
  %399 = load i32*, i32** %12, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 10
  store i32 %398, i32* %400, align 4
  %401 = load i32, i32* %20, align 4
  %402 = call i32 @int2float(i32 %401)
  %403 = load i32*, i32** %12, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 11
  store i32 %402, i32* %404, align 4
  %405 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %406 = load i32, i32* @FMT_8_8_8_8, align 4
  %407 = load i32, i32* %18, align 4
  %408 = load i32, i32* %17, align 4
  %409 = add nsw i32 %407, %408
  %410 = sdiv i32 %409, 4
  %411 = load i32, i32* %20, align 4
  %412 = load i32, i32* %18, align 4
  %413 = load i32, i32* %17, align 4
  %414 = add nsw i32 %412, %413
  %415 = sdiv i32 %414, 4
  %416 = load i32, i32* %6, align 4
  %417 = call i32 @set_tex_resource(%struct.TYPE_10__* %405, i32 %406, i32 %410, i32 %411, i32 %415, i32 %416)
  %418 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %419 = load i32, i32* @R600_TC_ACTION_ENA, align 4
  %420 = load i32, i32* %18, align 4
  %421 = load i32, i32* %17, align 4
  %422 = load i32, i32* %20, align 4
  %423 = mul nsw i32 %421, %422
  %424 = add nsw i32 %420, %423
  %425 = load i32, i32* %6, align 4
  %426 = call i32 @cp_set_surface_sync(%struct.TYPE_10__* %418, i32 %419, i32 %424, i32 %425)
  %427 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %428 = load i32, i32* @COLOR_8_8_8_8, align 4
  %429 = load i32, i32* %19, align 4
  %430 = load i32, i32* %17, align 4
  %431 = add nsw i32 %429, %430
  %432 = sdiv i32 %431, 4
  %433 = load i32, i32* %20, align 4
  %434 = load i32, i32* %7, align 4
  %435 = call i32 @set_render_target(%struct.TYPE_10__* %427, i32 %428, i32 %432, i32 %433, i32 %434)
  %436 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %437 = load i32, i32* %19, align 4
  %438 = sdiv i32 %437, 4
  %439 = load i32, i32* %19, align 4
  %440 = load i32, i32* %17, align 4
  %441 = sdiv i32 %440, 4
  %442 = add nsw i32 %439, %441
  %443 = load i32, i32* %20, align 4
  %444 = call i32 @set_scissors(%struct.TYPE_10__* %436, i32 %438, i32 0, i32 %442, i32 %443)
  %445 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %446 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %445, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %449 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %448, i32 0, i32 1
  %450 = load %struct.TYPE_9__*, %struct.TYPE_9__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %450, i32 0, i32 2
  %452 = load i64, i64* %451, align 8
  %453 = add nsw i64 %447, %452
  %454 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %455 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %454, i32 0, i32 1
  %456 = load %struct.TYPE_9__*, %struct.TYPE_9__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %456, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = add nsw i64 %453, %458
  store i64 %459, i64* %11, align 8
  %460 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %461 = load i64, i64* %11, align 8
  %462 = call i32 @set_vtx_resource(%struct.TYPE_10__* %460, i64 %461)
  %463 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %464 = call i32 @draw_auto(%struct.TYPE_10__* %463)
  %465 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %466 = load i32, i32* @R600_CB_ACTION_ENA, align 4
  %467 = load i32, i32* @R600_CB0_DEST_BASE_ENA, align 4
  %468 = or i32 %466, %467
  %469 = load i32, i32* %17, align 4
  %470 = load i32, i32* %20, align 4
  %471 = mul nsw i32 %469, %470
  %472 = load i32, i32* %7, align 4
  %473 = call i32 @cp_set_surface_sync(%struct.TYPE_10__* %465, i32 %468, i32 %471, i32 %472)
  %474 = load i32*, i32** %12, align 8
  %475 = getelementptr inbounds i32, i32* %474, i64 12
  store i32* %475, i32** %12, align 8
  %476 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %477 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %476, i32 0, i32 1
  %478 = load %struct.TYPE_9__*, %struct.TYPE_9__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %478, i32 0, i32 0
  %480 = load i64, i64* %479, align 8
  %481 = add nsw i64 %480, 48
  store i64 %481, i64* %479, align 8
  %482 = load i32, i32* %17, align 4
  %483 = load i32, i32* %20, align 4
  %484 = mul nsw i32 %482, %483
  %485 = load i32, i32* %6, align 4
  %486 = add nsw i32 %485, %484
  store i32 %486, i32* %6, align 4
  %487 = load i32, i32* %17, align 4
  %488 = load i32, i32* %20, align 4
  %489 = mul nsw i32 %487, %488
  %490 = load i32, i32* %7, align 4
  %491 = add nsw i32 %490, %489
  store i32 %491, i32* %7, align 4
  %492 = load i32, i32* %17, align 4
  %493 = load i32, i32* %20, align 4
  %494 = mul nsw i32 %492, %493
  %495 = load i32, i32* %8, align 4
  %496 = sub nsw i32 %495, %494
  store i32 %496, i32* %8, align 4
  br label %263

497:                                              ; preds = %263
  br label %498

498:                                              ; preds = %119, %344, %497, %261
  ret void
}

declare dso_local i32* @r600_nomm_get_vb_ptr(%struct.drm_device*) #1

declare dso_local i32 @r600_nomm_put_vb(%struct.drm_device*) #1

declare dso_local i32 @r600_nomm_get_vb(%struct.drm_device*) #1

declare dso_local i32 @set_shaders(%struct.drm_device*) #1

declare dso_local i32 @int2float(i32) #1

declare dso_local i32 @set_tex_resource(%struct.TYPE_10__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cp_set_surface_sync(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @set_render_target(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @set_scissors(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @set_vtx_resource(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @draw_auto(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
