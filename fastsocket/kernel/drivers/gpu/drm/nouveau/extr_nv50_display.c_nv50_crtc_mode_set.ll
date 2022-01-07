; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_mode_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_framebuffer = type { i32 }
%struct.nv50_mast = type { i32 }
%struct.nouveau_crtc = type { i32 }
%struct.nouveau_connector = type { i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@NVD0_DISP_MAST_CLASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*, i32, i32, %struct.drm_framebuffer*)* @nv50_crtc_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_crtc_mode_set(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2, i32 %3, i32 %4, %struct.drm_framebuffer* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_framebuffer*, align 8
  %14 = alloca %struct.nv50_mast*, align 8
  %15 = alloca %struct.nouveau_crtc*, align 8
  %16 = alloca %struct.nouveau_connector*, align 8
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
  %33 = alloca i32*, align 8
  %34 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %8, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %9, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.drm_framebuffer* %5, %struct.drm_framebuffer** %13, align 8
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %36 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.nv50_mast* @nv50_mast(i32 %37)
  store %struct.nv50_mast* %38, %struct.nv50_mast** %14, align 8
  %39 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %40 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %39)
  store %struct.nouveau_crtc* %40, %struct.nouveau_crtc** %15, align 8
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 2, i32 1
  store i32 %48, i32* %17, align 4
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 2, i32 1
  store i32 %56, i32* %18, align 4
  store i32 0, i32* %31, align 4
  store i32 1, i32* %32, align 4
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %19, align 4
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %64 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %62, %65
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %20, align 4
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %69 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %72 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %70, %73
  store i32 %74, i32* %21, align 4
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %21, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %23, align 4
  %78 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %79 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %82 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %80, %83
  store i32 %84, i32* %22, align 4
  %85 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %86 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %22, align 4
  %89 = sub nsw i32 %87, %88
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %24, align 4
  %91 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %92 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %18, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* %17, align 4
  %97 = sdiv i32 %95, %96
  store i32 %97, i32* %25, align 4
  %98 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %99 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %102 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %100, %103
  %105 = load i32, i32* %18, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32, i32* %17, align 4
  %108 = sdiv i32 %106, %107
  %109 = sub nsw i32 %108, 1
  store i32 %109, i32* %26, align 4
  %110 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %111 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %114 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %112, %115
  %117 = load i32, i32* %18, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load i32, i32* %17, align 4
  %120 = sdiv i32 %118, %119
  store i32 %120, i32* %27, align 4
  %121 = load i32, i32* %26, align 4
  %122 = load i32, i32* %27, align 4
  %123 = add nsw i32 %121, %122
  store i32 %123, i32* %29, align 4
  %124 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %125 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %128 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %127, i32 0, i32 8
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %126, %129
  %131 = load i32, i32* %18, align 4
  %132 = mul nsw i32 %130, %131
  %133 = load i32, i32* %17, align 4
  %134 = sdiv i32 %132, %133
  store i32 %134, i32* %28, align 4
  %135 = load i32, i32* %25, align 4
  %136 = load i32, i32* %28, align 4
  %137 = sub nsw i32 %135, %136
  %138 = sub nsw i32 %137, 1
  store i32 %138, i32* %30, align 4
  %139 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %140 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %163

145:                                              ; preds = %6
  %146 = load i32, i32* %25, align 4
  %147 = load i32, i32* %26, align 4
  %148 = add nsw i32 %146, %147
  %149 = load i32, i32* %27, align 4
  %150 = add nsw i32 %148, %149
  store i32 %150, i32* %31, align 4
  %151 = load i32, i32* %31, align 4
  %152 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %153 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %18, align 4
  %156 = mul nsw i32 %154, %155
  %157 = load i32, i32* %17, align 4
  %158 = sdiv i32 %156, %157
  %159 = add nsw i32 %151, %158
  store i32 %159, i32* %32, align 4
  %160 = load i32, i32* %25, align 4
  %161 = mul nsw i32 %160, 2
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %25, align 4
  br label %163

163:                                              ; preds = %145, %6
  %164 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %165 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %166 = call i32 @nv50_crtc_swap_fbs(%struct.drm_crtc* %164, %struct.drm_framebuffer* %165)
  store i32 %166, i32* %34, align 4
  %167 = load i32, i32* %34, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load i32, i32* %34, align 4
  store i32 %170, i32* %7, align 4
  br label %361

171:                                              ; preds = %163
  %172 = load %struct.nv50_mast*, %struct.nv50_mast** %14, align 8
  %173 = call i32* @evo_wait(%struct.nv50_mast* %172, i32 64)
  store i32* %173, i32** %33, align 8
  %174 = load i32*, i32** %33, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %345

176:                                              ; preds = %171
  %177 = load %struct.nv50_mast*, %struct.nv50_mast** %14, align 8
  %178 = call i64 @nv50_vers(%struct.nv50_mast* %177)
  %179 = load i64, i64* @NVD0_DISP_MAST_CLASS, align 8
  %180 = icmp slt i64 %178, %179
  br i1 %180, label %181, label %260

181:                                              ; preds = %176
  %182 = load i32*, i32** %33, align 8
  %183 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %15, align 8
  %184 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 %185, 1024
  %187 = add nsw i32 2052, %186
  %188 = call i32 @evo_mthd(i32* %182, i32 %187, i32 2)
  %189 = load i32*, i32** %33, align 8
  %190 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %191 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %190, i32 0, i32 9
  %192 = load i32, i32* %191, align 4
  %193 = or i32 8388608, %192
  %194 = call i32 @evo_data(i32* %189, i32 %193)
  %195 = load i32*, i32** %33, align 8
  %196 = load i32, i32* %17, align 4
  %197 = icmp eq i32 %196, 2
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i32 2, i32 0
  %200 = call i32 @evo_data(i32* %195, i32 %199)
  %201 = load i32*, i32** %33, align 8
  %202 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %15, align 8
  %203 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %204, 1024
  %206 = add nsw i32 2064, %205
  %207 = call i32 @evo_mthd(i32* %201, i32 %206, i32 6)
  %208 = load i32*, i32** %33, align 8
  %209 = call i32 @evo_data(i32* %208, i32 0)
  %210 = load i32*, i32** %33, align 8
  %211 = load i32, i32* %25, align 4
  %212 = shl i32 %211, 16
  %213 = load i32, i32* %19, align 4
  %214 = or i32 %212, %213
  %215 = call i32 @evo_data(i32* %210, i32 %214)
  %216 = load i32*, i32** %33, align 8
  %217 = load i32, i32* %26, align 4
  %218 = shl i32 %217, 16
  %219 = load i32, i32* %20, align 4
  %220 = or i32 %218, %219
  %221 = call i32 @evo_data(i32* %216, i32 %220)
  %222 = load i32*, i32** %33, align 8
  %223 = load i32, i32* %29, align 4
  %224 = shl i32 %223, 16
  %225 = load i32, i32* %23, align 4
  %226 = or i32 %224, %225
  %227 = call i32 @evo_data(i32* %222, i32 %226)
  %228 = load i32*, i32** %33, align 8
  %229 = load i32, i32* %30, align 4
  %230 = shl i32 %229, 16
  %231 = load i32, i32* %24, align 4
  %232 = or i32 %230, %231
  %233 = call i32 @evo_data(i32* %228, i32 %232)
  %234 = load i32*, i32** %33, align 8
  %235 = load i32, i32* %31, align 4
  %236 = shl i32 %235, 16
  %237 = load i32, i32* %32, align 4
  %238 = or i32 %236, %237
  %239 = call i32 @evo_data(i32* %234, i32 %238)
  %240 = load i32*, i32** %33, align 8
  %241 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %15, align 8
  %242 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = mul nsw i32 %243, 1024
  %245 = add nsw i32 2092, %244
  %246 = call i32 @evo_mthd(i32* %240, i32 %245, i32 1)
  %247 = load i32*, i32** %33, align 8
  %248 = call i32 @evo_data(i32* %247, i32 0)
  %249 = load i32*, i32** %33, align 8
  %250 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %15, align 8
  %251 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = mul nsw i32 %252, 1024
  %254 = add nsw i32 2304, %253
  %255 = call i32 @evo_mthd(i32* %249, i32 %254, i32 2)
  %256 = load i32*, i32** %33, align 8
  %257 = call i32 @evo_data(i32* %256, i32 785)
  %258 = load i32*, i32** %33, align 8
  %259 = call i32 @evo_data(i32* %258, i32 256)
  br label %341

260:                                              ; preds = %176
  %261 = load i32*, i32** %33, align 8
  %262 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %15, align 8
  %263 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = mul nsw i32 %264, 768
  %266 = add nsw i32 1040, %265
  %267 = call i32 @evo_mthd(i32* %261, i32 %266, i32 6)
  %268 = load i32*, i32** %33, align 8
  %269 = call i32 @evo_data(i32* %268, i32 0)
  %270 = load i32*, i32** %33, align 8
  %271 = load i32, i32* %25, align 4
  %272 = shl i32 %271, 16
  %273 = load i32, i32* %19, align 4
  %274 = or i32 %272, %273
  %275 = call i32 @evo_data(i32* %270, i32 %274)
  %276 = load i32*, i32** %33, align 8
  %277 = load i32, i32* %26, align 4
  %278 = shl i32 %277, 16
  %279 = load i32, i32* %20, align 4
  %280 = or i32 %278, %279
  %281 = call i32 @evo_data(i32* %276, i32 %280)
  %282 = load i32*, i32** %33, align 8
  %283 = load i32, i32* %29, align 4
  %284 = shl i32 %283, 16
  %285 = load i32, i32* %23, align 4
  %286 = or i32 %284, %285
  %287 = call i32 @evo_data(i32* %282, i32 %286)
  %288 = load i32*, i32** %33, align 8
  %289 = load i32, i32* %30, align 4
  %290 = shl i32 %289, 16
  %291 = load i32, i32* %24, align 4
  %292 = or i32 %290, %291
  %293 = call i32 @evo_data(i32* %288, i32 %292)
  %294 = load i32*, i32** %33, align 8
  %295 = load i32, i32* %31, align 4
  %296 = shl i32 %295, 16
  %297 = load i32, i32* %32, align 4
  %298 = or i32 %296, %297
  %299 = call i32 @evo_data(i32* %294, i32 %298)
  %300 = load i32*, i32** %33, align 8
  %301 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %15, align 8
  %302 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = mul nsw i32 %303, 768
  %305 = add nsw i32 1068, %304
  %306 = call i32 @evo_mthd(i32* %300, i32 %305, i32 1)
  %307 = load i32*, i32** %33, align 8
  %308 = call i32 @evo_data(i32* %307, i32 0)
  %309 = load i32*, i32** %33, align 8
  %310 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %15, align 8
  %311 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = mul nsw i32 %312, 768
  %314 = add nsw i32 1104, %313
  %315 = call i32 @evo_mthd(i32* %309, i32 %314, i32 3)
  %316 = load i32*, i32** %33, align 8
  %317 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %318 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %317, i32 0, i32 9
  %319 = load i32, i32* %318, align 4
  %320 = mul nsw i32 %319, 1000
  %321 = call i32 @evo_data(i32* %316, i32 %320)
  %322 = load i32*, i32** %33, align 8
  %323 = call i32 @evo_data(i32* %322, i32 2097152)
  %324 = load i32*, i32** %33, align 8
  %325 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %326 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %325, i32 0, i32 9
  %327 = load i32, i32* %326, align 4
  %328 = mul nsw i32 %327, 1000
  %329 = call i32 @evo_data(i32* %324, i32 %328)
  %330 = load i32*, i32** %33, align 8
  %331 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %15, align 8
  %332 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = mul nsw i32 %333, 768
  %335 = add nsw i32 1232, %334
  %336 = call i32 @evo_mthd(i32* %330, i32 %335, i32 2)
  %337 = load i32*, i32** %33, align 8
  %338 = call i32 @evo_data(i32* %337, i32 785)
  %339 = load i32*, i32** %33, align 8
  %340 = call i32 @evo_data(i32* %339, i32 256)
  br label %341

341:                                              ; preds = %260, %181
  %342 = load i32*, i32** %33, align 8
  %343 = load %struct.nv50_mast*, %struct.nv50_mast** %14, align 8
  %344 = call i32 @evo_kick(i32* %342, %struct.nv50_mast* %343)
  br label %345

345:                                              ; preds = %341, %171
  %346 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %15, align 8
  %347 = call %struct.nouveau_connector* @nouveau_crtc_connector_get(%struct.nouveau_crtc* %346)
  store %struct.nouveau_connector* %347, %struct.nouveau_connector** %16, align 8
  %348 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %15, align 8
  %349 = call i32 @nv50_crtc_set_dither(%struct.nouveau_crtc* %348, i32 0)
  %350 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %15, align 8
  %351 = call i32 @nv50_crtc_set_scale(%struct.nouveau_crtc* %350, i32 0)
  %352 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %15, align 8
  %353 = call i32 @nv50_crtc_set_color_vibrance(%struct.nouveau_crtc* %352, i32 0)
  %354 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %15, align 8
  %355 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %356 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* %11, align 4
  %359 = load i32, i32* %12, align 4
  %360 = call i32 @nv50_crtc_set_image(%struct.nouveau_crtc* %354, i32 %357, i32 %358, i32 %359, i32 0)
  store i32 0, i32* %7, align 4
  br label %361

361:                                              ; preds = %345, %169
  %362 = load i32, i32* %7, align 4
  ret i32 %362
}

declare dso_local %struct.nv50_mast* @nv50_mast(i32) #1

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @nv50_crtc_swap_fbs(%struct.drm_crtc*, %struct.drm_framebuffer*) #1

declare dso_local i32* @evo_wait(%struct.nv50_mast*, i32) #1

declare dso_local i64 @nv50_vers(%struct.nv50_mast*) #1

declare dso_local i32 @evo_mthd(i32*, i32, i32) #1

declare dso_local i32 @evo_data(i32*, i32) #1

declare dso_local i32 @evo_kick(i32*, %struct.nv50_mast*) #1

declare dso_local %struct.nouveau_connector* @nouveau_crtc_connector_get(%struct.nouveau_crtc*) #1

declare dso_local i32 @nv50_crtc_set_dither(%struct.nouveau_crtc*, i32) #1

declare dso_local i32 @nv50_crtc_set_scale(%struct.nouveau_crtc*, i32) #1

declare dso_local i32 @nv50_crtc_set_color_vibrance(%struct.nouveau_crtc*, i32) #1

declare dso_local i32 @nv50_crtc_set_image(%struct.nouveau_crtc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
