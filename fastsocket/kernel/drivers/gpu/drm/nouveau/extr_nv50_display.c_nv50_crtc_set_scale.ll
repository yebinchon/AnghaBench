; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_set_scale.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_set_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_crtc = type { i32, %struct.drm_crtc }
%struct.drm_crtc = type { i32, %struct.drm_display_mode, i32 }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.nv50_mast = type { i32 }
%struct.nouveau_connector = type { i32, i64, i32, i32, i64, %struct.drm_display_mode* }

@DRM_MODE_SCALE_NONE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@UNDERSCAN_ON = common dso_local global i64 0, align 8
@UNDERSCAN_AUTO = common dso_local global i64 0, align 8
@NVD0_DISP_MAST_CLASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_crtc*, i32)* @nv50_crtc_set_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_crtc_set_scale(%struct.nouveau_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv50_mast*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.nouveau_connector*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nouveau_crtc* %0, %struct.nouveau_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %20 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.nv50_mast* @nv50_mast(i32 %22)
  store %struct.nv50_mast* %23, %struct.nv50_mast** %5, align 8
  %24 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %25 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %25, i32 0, i32 1
  store %struct.drm_display_mode* %26, %struct.drm_display_mode** %7, align 8
  %27 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %28 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %27, i32 0, i32 1
  store %struct.drm_crtc* %28, %struct.drm_crtc** %8, align 8
  %29 = load i32, i32* @DRM_MODE_SCALE_NONE, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %31 = call %struct.nouveau_connector* @nouveau_crtc_connector_get(%struct.nouveau_crtc* %30)
  store %struct.nouveau_connector* %31, %struct.nouveau_connector** %9, align 8
  %32 = load %struct.nouveau_connector*, %struct.nouveau_connector** %9, align 8
  %33 = icmp ne %struct.nouveau_connector* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %2
  %35 = load %struct.nouveau_connector*, %struct.nouveau_connector** %9, align 8
  %36 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %35, i32 0, i32 5
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %36, align 8
  %38 = icmp ne %struct.drm_display_mode* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.nouveau_connector*, %struct.nouveau_connector** %9, align 8
  %41 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %39, %34, %2
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @DRM_MODE_SCALE_NONE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.nouveau_connector*, %struct.nouveau_connector** %9, align 8
  %49 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %48, i32 0, i32 5
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %49, align 8
  store %struct.drm_display_mode* %50, %struct.drm_display_mode** %6, align 8
  br label %53

51:                                               ; preds = %43
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  store %struct.drm_display_mode* %52, %struct.drm_display_mode** %6, align 8
  br label %53

53:                                               ; preds = %51, %47
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %11, align 4
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %12, align 4
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = load i32, i32* %12, align 4
  %68 = mul nsw i32 %67, 2
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %66, %53
  %70 = load %struct.nouveau_connector*, %struct.nouveau_connector** %9, align 8
  %71 = icmp ne %struct.nouveau_connector* %70, null
  br i1 %71, label %72, label %152

72:                                               ; preds = %69
  %73 = load %struct.nouveau_connector*, %struct.nouveau_connector** %9, align 8
  %74 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @UNDERSCAN_ON, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %95, label %78

78:                                               ; preds = %72
  %79 = load %struct.nouveau_connector*, %struct.nouveau_connector** %9, align 8
  %80 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @UNDERSCAN_AUTO, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %152

84:                                               ; preds = %78
  %85 = load %struct.nouveau_connector*, %struct.nouveau_connector** %9, align 8
  %86 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %152

89:                                               ; preds = %84
  %90 = load %struct.nouveau_connector*, %struct.nouveau_connector** %9, align 8
  %91 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @drm_detect_hdmi_monitor(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %152

95:                                               ; preds = %89, %72
  %96 = load %struct.nouveau_connector*, %struct.nouveau_connector** %9, align 8
  %97 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %14, align 4
  %99 = load %struct.nouveau_connector*, %struct.nouveau_connector** %9, align 8
  %100 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %12, align 4
  %103 = shl i32 %102, 19
  %104 = load i32, i32* %11, align 4
  %105 = sdiv i32 %103, %104
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %129

108:                                              ; preds = %95
  %109 = load i32, i32* %14, align 4
  %110 = mul nsw i32 %109, 2
  %111 = load i32, i32* %11, align 4
  %112 = sub nsw i32 %111, %110
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load i32, i32* %15, align 4
  %117 = mul nsw i32 %116, 2
  %118 = load i32, i32* %12, align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* %12, align 4
  br label %128

120:                                              ; preds = %108
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %16, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* %16, align 4
  %125 = sdiv i32 %124, 2
  %126 = add nsw i32 %123, %125
  %127 = ashr i32 %126, 19
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %120, %115
  br label %151

129:                                              ; preds = %95
  %130 = load i32, i32* %11, align 4
  %131 = ashr i32 %130, 4
  %132 = add nsw i32 %131, 32
  %133 = load i32, i32* %11, align 4
  %134 = sub nsw i32 %133, %132
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %129
  %138 = load i32, i32* %15, align 4
  %139 = mul nsw i32 %138, 2
  %140 = load i32, i32* %12, align 4
  %141 = sub nsw i32 %140, %139
  store i32 %141, i32* %12, align 4
  br label %150

142:                                              ; preds = %129
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %16, align 4
  %145 = mul nsw i32 %143, %144
  %146 = load i32, i32* %16, align 4
  %147 = sdiv i32 %146, 2
  %148 = add nsw i32 %145, %147
  %149 = ashr i32 %148, 19
  store i32 %149, i32* %12, align 4
  br label %150

150:                                              ; preds = %142, %137
  br label %151

151:                                              ; preds = %150, %128
  br label %152

152:                                              ; preds = %151, %89, %84, %78, %69
  %153 = load i32, i32* %10, align 4
  switch i32 %153, label %202 [
    i32 128, label %154
    i32 129, label %165
  ]

154:                                              ; preds = %152
  %155 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %156 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @min(i32 %157, i32 %158)
  store i32 %159, i32* %11, align 4
  %160 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %161 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @min(i32 %162, i32 %163)
  store i32 %164, i32* %12, align 4
  br label %165

165:                                              ; preds = %152, %154
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %185

169:                                              ; preds = %165
  %170 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %171 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %172, 19
  %174 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %175 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = sdiv i32 %173, %176
  store i32 %177, i32* %17, align 4
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %17, align 4
  %180 = mul nsw i32 %178, %179
  %181 = load i32, i32* %17, align 4
  %182 = sdiv i32 %181, 2
  %183 = add nsw i32 %180, %182
  %184 = ashr i32 %183, 19
  store i32 %184, i32* %11, align 4
  br label %201

185:                                              ; preds = %165
  %186 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %187 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = shl i32 %188, 19
  %190 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %191 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = sdiv i32 %189, %192
  store i32 %193, i32* %18, align 4
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* %18, align 4
  %196 = mul nsw i32 %194, %195
  %197 = load i32, i32* %18, align 4
  %198 = sdiv i32 %197, 2
  %199 = add nsw i32 %196, %198
  %200 = ashr i32 %199, 19
  store i32 %200, i32* %12, align 4
  br label %201

201:                                              ; preds = %185, %169
  br label %203

202:                                              ; preds = %152
  br label %203

203:                                              ; preds = %202, %201
  %204 = load %struct.nv50_mast*, %struct.nv50_mast** %5, align 8
  %205 = call i32* @evo_wait(%struct.nv50_mast* %204, i32 8)
  store i32* %205, i32** %13, align 8
  %206 = load i32*, i32** %13, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %326

208:                                              ; preds = %203
  %209 = load %struct.nv50_mast*, %struct.nv50_mast** %5, align 8
  %210 = call i64 @nv50_vers(%struct.nv50_mast* %209)
  %211 = load i64, i64* @NVD0_DISP_MAST_CLASS, align 8
  %212 = icmp slt i64 %210, %211
  br i1 %212, label %213, label %259

213:                                              ; preds = %208
  %214 = load i32*, i32** %13, align 8
  %215 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %216 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = mul nsw i32 %217, 1024
  %219 = add nsw i32 2264, %218
  %220 = call i32 @evo_mthd(i32* %214, i32 %219, i32 2)
  %221 = load i32*, i32** %13, align 8
  %222 = load i32, i32* %12, align 4
  %223 = shl i32 %222, 16
  %224 = load i32, i32* %11, align 4
  %225 = or i32 %223, %224
  %226 = call i32 @evo_data(i32* %221, i32 %225)
  %227 = load i32*, i32** %13, align 8
  %228 = load i32, i32* %12, align 4
  %229 = shl i32 %228, 16
  %230 = load i32, i32* %11, align 4
  %231 = or i32 %229, %230
  %232 = call i32 @evo_data(i32* %227, i32 %231)
  %233 = load i32*, i32** %13, align 8
  %234 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %235 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = mul nsw i32 %236, 1024
  %238 = add nsw i32 2212, %237
  %239 = call i32 @evo_mthd(i32* %233, i32 %238, i32 1)
  %240 = load i32*, i32** %13, align 8
  %241 = call i32 @evo_data(i32* %240, i32 0)
  %242 = load i32*, i32** %13, align 8
  %243 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %244 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = mul nsw i32 %245, 1024
  %247 = add nsw i32 2248, %246
  %248 = call i32 @evo_mthd(i32* %242, i32 %247, i32 1)
  %249 = load i32*, i32** %13, align 8
  %250 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %251 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = shl i32 %252, 16
  %254 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %255 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %253, %256
  %258 = call i32 @evo_data(i32* %249, i32 %257)
  br label %311

259:                                              ; preds = %208
  %260 = load i32*, i32** %13, align 8
  %261 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %262 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = mul nsw i32 %263, 768
  %265 = add nsw i32 1216, %264
  %266 = call i32 @evo_mthd(i32* %260, i32 %265, i32 3)
  %267 = load i32*, i32** %13, align 8
  %268 = load i32, i32* %12, align 4
  %269 = shl i32 %268, 16
  %270 = load i32, i32* %11, align 4
  %271 = or i32 %269, %270
  %272 = call i32 @evo_data(i32* %267, i32 %271)
  %273 = load i32*, i32** %13, align 8
  %274 = load i32, i32* %12, align 4
  %275 = shl i32 %274, 16
  %276 = load i32, i32* %11, align 4
  %277 = or i32 %275, %276
  %278 = call i32 @evo_data(i32* %273, i32 %277)
  %279 = load i32*, i32** %13, align 8
  %280 = load i32, i32* %12, align 4
  %281 = shl i32 %280, 16
  %282 = load i32, i32* %11, align 4
  %283 = or i32 %281, %282
  %284 = call i32 @evo_data(i32* %279, i32 %283)
  %285 = load i32*, i32** %13, align 8
  %286 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %287 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = mul nsw i32 %288, 768
  %290 = add nsw i32 1172, %289
  %291 = call i32 @evo_mthd(i32* %285, i32 %290, i32 1)
  %292 = load i32*, i32** %13, align 8
  %293 = call i32 @evo_data(i32* %292, i32 0)
  %294 = load i32*, i32** %13, align 8
  %295 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %296 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = mul nsw i32 %297, 768
  %299 = add nsw i32 1208, %298
  %300 = call i32 @evo_mthd(i32* %294, i32 %299, i32 1)
  %301 = load i32*, i32** %13, align 8
  %302 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %303 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = shl i32 %304, 16
  %306 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %307 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = or i32 %305, %308
  %310 = call i32 @evo_data(i32* %301, i32 %309)
  br label %311

311:                                              ; preds = %259, %213
  %312 = load i32*, i32** %13, align 8
  %313 = load %struct.nv50_mast*, %struct.nv50_mast** %5, align 8
  %314 = call i32 @evo_kick(i32* %312, %struct.nv50_mast* %313)
  %315 = load i32, i32* %4, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %325

317:                                              ; preds = %311
  %318 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %319 = call i32 @nv50_display_flip_stop(%struct.drm_crtc* %318)
  %320 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %321 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %322 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @nv50_display_flip_next(%struct.drm_crtc* %320, i32 %323, i32* null, i32 1)
  br label %325

325:                                              ; preds = %317, %311
  br label %326

326:                                              ; preds = %325, %203
  ret i32 0
}

declare dso_local %struct.nv50_mast* @nv50_mast(i32) #1

declare dso_local %struct.nouveau_connector* @nouveau_crtc_connector_get(%struct.nouveau_crtc*) #1

declare dso_local i64 @drm_detect_hdmi_monitor(i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32* @evo_wait(%struct.nv50_mast*, i32) #1

declare dso_local i64 @nv50_vers(%struct.nv50_mast*) #1

declare dso_local i32 @evo_mthd(i32*, i32, i32) #1

declare dso_local i32 @evo_data(i32*, i32) #1

declare dso_local i32 @evo_kick(i32*, %struct.nv50_mast*) #1

declare dso_local i32 @nv50_display_flip_stop(%struct.drm_crtc*) #1

declare dso_local i32 @nv50_display_flip_next(%struct.drm_crtc*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
