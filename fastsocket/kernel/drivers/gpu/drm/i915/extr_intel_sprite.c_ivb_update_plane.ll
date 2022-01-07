; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_ivb_update_plane.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_ivb_update_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_framebuffer = type { i32, i32* }
%struct.drm_i915_gem_object = type { i64, i64 }
%struct.intel_plane = type { i32, i64 }

@SPRITE_PIXFORMAT_MASK = common dso_local global i32 0, align 4
@SPRITE_RGB_ORDER_RGBX = common dso_local global i32 0, align 4
@SPRITE_YUV_BYTE_ORDER_MASK = common dso_local global i32 0, align 4
@SPRITE_TILED = common dso_local global i32 0, align 4
@SPRITE_FORMAT_RGBX888 = common dso_local global i32 0, align 4
@SPRITE_FORMAT_YUV422 = common dso_local global i32 0, align 4
@SPRITE_YUV_ORDER_YUYV = common dso_local global i32 0, align 4
@SPRITE_YUV_ORDER_YVYU = common dso_local global i32 0, align 4
@SPRITE_YUV_ORDER_UYVY = common dso_local global i32 0, align 4
@SPRITE_YUV_ORDER_VYUY = common dso_local global i32 0, align 4
@I915_TILING_NONE = common dso_local global i64 0, align 8
@SPRITE_TRICKLE_FEED_DISABLE = common dso_local global i32 0, align 4
@SPRITE_ENABLE = common dso_local global i32 0, align 4
@SPRITE_PIPE_CSC_ENABLE = common dso_local global i32 0, align 4
@SPRITE_SCALE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_framebuffer*, %struct.drm_i915_gem_object*, i32, i32, i32, i32, i32, i32, i32, i32)* @ivb_update_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivb_update_plane(%struct.drm_plane* %0, %struct.drm_framebuffer* %1, %struct.drm_i915_gem_object* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.drm_plane*, align 8
  %13 = alloca %struct.drm_framebuffer*, align 8
  %14 = alloca %struct.drm_i915_gem_object*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.drm_device*, align 8
  %24 = alloca %struct.drm_i915_private*, align 8
  %25 = alloca %struct.intel_plane*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %12, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %13, align 8
  store %struct.drm_i915_gem_object* %2, %struct.drm_i915_gem_object** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %33 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %34 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %33, i32 0, i32 0
  %35 = load %struct.drm_device*, %struct.drm_device** %34, align 8
  store %struct.drm_device* %35, %struct.drm_device** %23, align 8
  %36 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 0
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %37, align 8
  store %struct.drm_i915_private* %38, %struct.drm_i915_private** %24, align 8
  %39 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %40 = call %struct.intel_plane* @to_intel_plane(%struct.drm_plane* %39)
  store %struct.intel_plane* %40, %struct.intel_plane** %25, align 8
  %41 = load %struct.intel_plane*, %struct.intel_plane** %25, align 8
  %42 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %26, align 4
  store i32 0, i32* %28, align 4
  %44 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %45 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @drm_format_plane_cpp(i32 %46, i32 0)
  store i32 %47, i32* %31, align 4
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %24, align 8
  %49 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %32, align 4
  %51 = load i32, i32* %26, align 4
  %52 = call i32 @SPRCTL(i32 %51)
  %53 = call i32 @I915_READ(i32 %52)
  store i32 %53, i32* %27, align 4
  %54 = load i32, i32* @SPRITE_PIXFORMAT_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %27, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %27, align 4
  %58 = load i32, i32* @SPRITE_RGB_ORDER_RGBX, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %27, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %27, align 4
  %62 = load i32, i32* @SPRITE_YUV_BYTE_ORDER_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %27, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %27, align 4
  %66 = load i32, i32* @SPRITE_TILED, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %27, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %27, align 4
  %70 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %71 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  switch i32 %72, label %107 [
    i32 131, label %73
    i32 130, label %79
    i32 129, label %83
    i32 128, label %89
    i32 133, label %95
    i32 132, label %101
  ]

73:                                               ; preds = %11
  %74 = load i32, i32* @SPRITE_FORMAT_RGBX888, align 4
  %75 = load i32, i32* @SPRITE_RGB_ORDER_RGBX, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %27, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %27, align 4
  br label %109

79:                                               ; preds = %11
  %80 = load i32, i32* @SPRITE_FORMAT_RGBX888, align 4
  %81 = load i32, i32* %27, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %27, align 4
  br label %109

83:                                               ; preds = %11
  %84 = load i32, i32* @SPRITE_FORMAT_YUV422, align 4
  %85 = load i32, i32* @SPRITE_YUV_ORDER_YUYV, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %27, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %27, align 4
  br label %109

89:                                               ; preds = %11
  %90 = load i32, i32* @SPRITE_FORMAT_YUV422, align 4
  %91 = load i32, i32* @SPRITE_YUV_ORDER_YVYU, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %27, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %27, align 4
  br label %109

95:                                               ; preds = %11
  %96 = load i32, i32* @SPRITE_FORMAT_YUV422, align 4
  %97 = load i32, i32* @SPRITE_YUV_ORDER_UYVY, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %27, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %27, align 4
  br label %109

101:                                              ; preds = %11
  %102 = load i32, i32* @SPRITE_FORMAT_YUV422, align 4
  %103 = load i32, i32* @SPRITE_YUV_ORDER_VYUY, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %27, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %27, align 4
  br label %109

107:                                              ; preds = %11
  %108 = call i32 (...) @BUG()
  br label %109

109:                                              ; preds = %107, %101, %95, %89, %83, %79, %73
  %110 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %111 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @I915_TILING_NONE, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i32, i32* @SPRITE_TILED, align 4
  %117 = load i32, i32* %27, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %27, align 4
  br label %119

119:                                              ; preds = %115, %109
  %120 = load i32, i32* @SPRITE_TRICKLE_FEED_DISABLE, align 4
  %121 = load i32, i32* %27, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %27, align 4
  %123 = load i32, i32* @SPRITE_ENABLE, align 4
  %124 = load i32, i32* %27, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %27, align 4
  %126 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  %127 = call i64 @IS_HASWELL(%struct.drm_device* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %119
  %130 = load i32, i32* @SPRITE_PIPE_CSC_ENABLE, align 4
  %131 = load i32, i32* %27, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %27, align 4
  br label %133

133:                                              ; preds = %129, %119
  %134 = load i32, i32* %21, align 4
  %135 = add i32 %134, -1
  store i32 %135, i32* %21, align 4
  %136 = load i32, i32* %22, align 4
  %137 = add i32 %136, -1
  store i32 %137, i32* %22, align 4
  %138 = load i32, i32* %17, align 4
  %139 = add i32 %138, -1
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %18, align 4
  %141 = add i32 %140, -1
  store i32 %141, i32* %18, align 4
  %142 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  %143 = load i32, i32* %26, align 4
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %31, align 4
  %146 = call i32 @intel_update_sprite_watermarks(%struct.drm_device* %142, i32 %143, i32 %144, i32 %145)
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* %21, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %154, label %150

150:                                              ; preds = %133
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* %22, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %176

154:                                              ; preds = %150, %133
  %155 = load i32, i32* %26, align 4
  %156 = shl i32 1, %155
  %157 = load %struct.drm_i915_private*, %struct.drm_i915_private** %24, align 8
  %158 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* %32, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %154
  %164 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  %165 = call i32 @intel_update_watermarks(%struct.drm_device* %164)
  %166 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  %167 = load i32, i32* %26, align 4
  %168 = call i32 @intel_wait_for_vblank(%struct.drm_device* %166, i32 %167)
  br label %169

169:                                              ; preds = %163, %154
  %170 = load i32, i32* @SPRITE_SCALE_ENABLE, align 4
  %171 = load i32, i32* %21, align 4
  %172 = shl i32 %171, 16
  %173 = or i32 %170, %172
  %174 = load i32, i32* %22, align 4
  %175 = or i32 %173, %174
  store i32 %175, i32* %28, align 4
  br label %184

176:                                              ; preds = %150
  %177 = load i32, i32* %26, align 4
  %178 = shl i32 1, %177
  %179 = xor i32 %178, -1
  %180 = load %struct.drm_i915_private*, %struct.drm_i915_private** %24, align 8
  %181 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, %179
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %176, %169
  %185 = load i32, i32* %26, align 4
  %186 = call i32 @SPRSTRIDE(i32 %185)
  %187 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %188 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @I915_WRITE(i32 %186, i32 %191)
  %193 = load i32, i32* %26, align 4
  %194 = call i32 @SPRPOS(i32 %193)
  %195 = load i32, i32* %16, align 4
  %196 = shl i32 %195, 16
  %197 = load i32, i32* %15, align 4
  %198 = or i32 %196, %197
  %199 = call i32 @I915_WRITE(i32 %194, i32 %198)
  %200 = load i32, i32* %20, align 4
  %201 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %202 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = mul i32 %200, %205
  %207 = load i32, i32* %19, align 4
  %208 = load i32, i32* %31, align 4
  %209 = mul i32 %207, %208
  %210 = add i32 %206, %209
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %30, align 8
  %212 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %213 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i32, i32* %31, align 4
  %216 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %217 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 0
  %220 = load i32, i32* %219, align 4
  %221 = call i64 @intel_gen4_compute_page_offset(i32* %19, i32* %20, i64 %214, i32 %215, i32 %220)
  store i64 %221, i64* %29, align 8
  %222 = load i64, i64* %29, align 8
  %223 = load i64, i64* %30, align 8
  %224 = sub i64 %223, %222
  store i64 %224, i64* %30, align 8
  %225 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  %226 = call i64 @IS_HASWELL(%struct.drm_device* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %184
  %229 = load i32, i32* %26, align 4
  %230 = call i32 @SPROFFSET(i32 %229)
  %231 = load i32, i32* %20, align 4
  %232 = shl i32 %231, 16
  %233 = load i32, i32* %19, align 4
  %234 = or i32 %232, %233
  %235 = call i32 @I915_WRITE(i32 %230, i32 %234)
  br label %257

236:                                              ; preds = %184
  %237 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %238 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @I915_TILING_NONE, align 8
  %241 = icmp ne i64 %239, %240
  br i1 %241, label %242, label %250

242:                                              ; preds = %236
  %243 = load i32, i32* %26, align 4
  %244 = call i32 @SPRTILEOFF(i32 %243)
  %245 = load i32, i32* %20, align 4
  %246 = shl i32 %245, 16
  %247 = load i32, i32* %19, align 4
  %248 = or i32 %246, %247
  %249 = call i32 @I915_WRITE(i32 %244, i32 %248)
  br label %256

250:                                              ; preds = %236
  %251 = load i32, i32* %26, align 4
  %252 = call i32 @SPRLINOFF(i32 %251)
  %253 = load i64, i64* %30, align 8
  %254 = trunc i64 %253 to i32
  %255 = call i32 @I915_WRITE(i32 %252, i32 %254)
  br label %256

256:                                              ; preds = %250, %242
  br label %257

257:                                              ; preds = %256, %228
  %258 = load i32, i32* %26, align 4
  %259 = call i32 @SPRSIZE(i32 %258)
  %260 = load i32, i32* %18, align 4
  %261 = shl i32 %260, 16
  %262 = load i32, i32* %17, align 4
  %263 = or i32 %261, %262
  %264 = call i32 @I915_WRITE(i32 %259, i32 %263)
  %265 = load %struct.intel_plane*, %struct.intel_plane** %25, align 8
  %266 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %257
  %270 = load i32, i32* %26, align 4
  %271 = call i32 @SPRSCALE(i32 %270)
  %272 = load i32, i32* %28, align 4
  %273 = call i32 @I915_WRITE(i32 %271, i32 %272)
  br label %274

274:                                              ; preds = %269, %257
  %275 = load i32, i32* %26, align 4
  %276 = call i32 @SPRCTL(i32 %275)
  %277 = load i32, i32* %27, align 4
  %278 = call i32 @I915_WRITE(i32 %276, i32 %277)
  %279 = load i32, i32* %26, align 4
  %280 = call i32 @SPRSURF(i32 %279)
  %281 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %282 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* %29, align 8
  %285 = add i64 %283, %284
  %286 = call i32 @I915_MODIFY_DISPBASE(i32 %280, i64 %285)
  %287 = load i32, i32* %26, align 4
  %288 = call i32 @SPRSURF(i32 %287)
  %289 = call i32 @POSTING_READ(i32 %288)
  %290 = load i32, i32* %32, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %274
  %293 = load %struct.drm_i915_private*, %struct.drm_i915_private** %24, align 8
  %294 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %300, label %297

297:                                              ; preds = %292
  %298 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  %299 = call i32 @intel_update_watermarks(%struct.drm_device* %298)
  br label %300

300:                                              ; preds = %297, %292, %274
  ret void
}

declare dso_local %struct.intel_plane* @to_intel_plane(%struct.drm_plane*) #1

declare dso_local i32 @drm_format_plane_cpp(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @SPRCTL(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_device*) #1

declare dso_local i32 @intel_update_sprite_watermarks(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @intel_update_watermarks(%struct.drm_device*) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.drm_device*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @SPRSTRIDE(i32) #1

declare dso_local i32 @SPRPOS(i32) #1

declare dso_local i64 @intel_gen4_compute_page_offset(i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @SPROFFSET(i32) #1

declare dso_local i32 @SPRTILEOFF(i32) #1

declare dso_local i32 @SPRLINOFF(i32) #1

declare dso_local i32 @SPRSIZE(i32) #1

declare dso_local i32 @SPRSCALE(i32) #1

declare dso_local i32 @I915_MODIFY_DISPBASE(i32, i64) #1

declare dso_local i32 @SPRSURF(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
