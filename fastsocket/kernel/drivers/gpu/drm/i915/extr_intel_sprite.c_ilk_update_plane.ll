; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_ilk_update_plane.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_ilk_update_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_framebuffer = type { i32, i32* }
%struct.drm_i915_gem_object = type { i64, i64 }
%struct.intel_plane = type { i32 }

@DVS_PIXFORMAT_MASK = common dso_local global i32 0, align 4
@DVS_RGB_ORDER_XBGR = common dso_local global i32 0, align 4
@DVS_YUV_BYTE_ORDER_MASK = common dso_local global i32 0, align 4
@DVS_TILED = common dso_local global i32 0, align 4
@DVS_FORMAT_RGBX888 = common dso_local global i32 0, align 4
@DVS_FORMAT_YUV422 = common dso_local global i32 0, align 4
@DVS_YUV_ORDER_YUYV = common dso_local global i32 0, align 4
@DVS_YUV_ORDER_YVYU = common dso_local global i32 0, align 4
@DVS_YUV_ORDER_UYVY = common dso_local global i32 0, align 4
@DVS_YUV_ORDER_VYUY = common dso_local global i32 0, align 4
@I915_TILING_NONE = common dso_local global i64 0, align 8
@DVS_TRICKLE_FEED_DISABLE = common dso_local global i32 0, align 4
@DVS_ENABLE = common dso_local global i32 0, align 4
@DVS_SCALE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_framebuffer*, %struct.drm_i915_gem_object*, i32, i32, i32, i32, i32, i32, i32, i32)* @ilk_update_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ilk_update_plane(%struct.drm_plane* %0, %struct.drm_framebuffer* %1, %struct.drm_i915_gem_object* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
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
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
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
  %32 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %33 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %32, i32 0, i32 0
  %34 = load %struct.drm_device*, %struct.drm_device** %33, align 8
  store %struct.drm_device* %34, %struct.drm_device** %23, align 8
  %35 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %36, align 8
  store %struct.drm_i915_private* %37, %struct.drm_i915_private** %24, align 8
  %38 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %39 = call %struct.intel_plane* @to_intel_plane(%struct.drm_plane* %38)
  store %struct.intel_plane* %39, %struct.intel_plane** %25, align 8
  %40 = load %struct.intel_plane*, %struct.intel_plane** %25, align 8
  %41 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %26, align 4
  %43 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %44 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @drm_format_plane_cpp(i32 %45, i32 0)
  store i32 %46, i32* %31, align 4
  %47 = load i32, i32* %26, align 4
  %48 = call i32 @DVSCNTR(i32 %47)
  %49 = call i32 @I915_READ(i32 %48)
  store i32 %49, i32* %29, align 4
  %50 = load i32, i32* @DVS_PIXFORMAT_MASK, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %29, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %29, align 4
  %54 = load i32, i32* @DVS_RGB_ORDER_XBGR, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %29, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %29, align 4
  %58 = load i32, i32* @DVS_YUV_BYTE_ORDER_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %29, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %29, align 4
  %62 = load i32, i32* @DVS_TILED, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %29, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %29, align 4
  %66 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %67 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %103 [
    i32 131, label %69
    i32 130, label %75
    i32 129, label %79
    i32 128, label %85
    i32 133, label %91
    i32 132, label %97
  ]

69:                                               ; preds = %11
  %70 = load i32, i32* @DVS_FORMAT_RGBX888, align 4
  %71 = load i32, i32* @DVS_RGB_ORDER_XBGR, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %29, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %29, align 4
  br label %105

75:                                               ; preds = %11
  %76 = load i32, i32* @DVS_FORMAT_RGBX888, align 4
  %77 = load i32, i32* %29, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %29, align 4
  br label %105

79:                                               ; preds = %11
  %80 = load i32, i32* @DVS_FORMAT_YUV422, align 4
  %81 = load i32, i32* @DVS_YUV_ORDER_YUYV, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %29, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %29, align 4
  br label %105

85:                                               ; preds = %11
  %86 = load i32, i32* @DVS_FORMAT_YUV422, align 4
  %87 = load i32, i32* @DVS_YUV_ORDER_YVYU, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %29, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %29, align 4
  br label %105

91:                                               ; preds = %11
  %92 = load i32, i32* @DVS_FORMAT_YUV422, align 4
  %93 = load i32, i32* @DVS_YUV_ORDER_UYVY, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %29, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %29, align 4
  br label %105

97:                                               ; preds = %11
  %98 = load i32, i32* @DVS_FORMAT_YUV422, align 4
  %99 = load i32, i32* @DVS_YUV_ORDER_VYUY, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %29, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %29, align 4
  br label %105

103:                                              ; preds = %11
  %104 = call i32 (...) @BUG()
  br label %105

105:                                              ; preds = %103, %97, %91, %85, %79, %75, %69
  %106 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %107 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @I915_TILING_NONE, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i32, i32* @DVS_TILED, align 4
  %113 = load i32, i32* %29, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %29, align 4
  br label %115

115:                                              ; preds = %111, %105
  %116 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  %117 = call i64 @IS_GEN6(%struct.drm_device* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i32, i32* @DVS_TRICKLE_FEED_DISABLE, align 4
  %121 = load i32, i32* %29, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %29, align 4
  br label %123

123:                                              ; preds = %119, %115
  %124 = load i32, i32* @DVS_ENABLE, align 4
  %125 = load i32, i32* %29, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %29, align 4
  %127 = load i32, i32* %21, align 4
  %128 = add i32 %127, -1
  store i32 %128, i32* %21, align 4
  %129 = load i32, i32* %22, align 4
  %130 = add i32 %129, -1
  store i32 %130, i32* %22, align 4
  %131 = load i32, i32* %17, align 4
  %132 = add i32 %131, -1
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %18, align 4
  %134 = add i32 %133, -1
  store i32 %134, i32* %18, align 4
  %135 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  %136 = load i32, i32* %26, align 4
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %31, align 4
  %139 = call i32 @intel_update_sprite_watermarks(%struct.drm_device* %135, i32 %136, i32 %137, i32 %138)
  store i32 0, i32* %30, align 4
  %140 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  %141 = call i64 @IS_GEN5(%struct.drm_device* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %123
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %21, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* %22, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %147, %143, %123
  %152 = load i32, i32* @DVS_SCALE_ENABLE, align 4
  %153 = load i32, i32* %21, align 4
  %154 = shl i32 %153, 16
  %155 = or i32 %152, %154
  %156 = load i32, i32* %22, align 4
  %157 = or i32 %155, %156
  store i32 %157, i32* %30, align 4
  br label %158

158:                                              ; preds = %151, %147
  %159 = load i32, i32* %26, align 4
  %160 = call i32 @DVSSTRIDE(i32 %159)
  %161 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %162 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @I915_WRITE(i32 %160, i32 %165)
  %167 = load i32, i32* %26, align 4
  %168 = call i32 @DVSPOS(i32 %167)
  %169 = load i32, i32* %16, align 4
  %170 = shl i32 %169, 16
  %171 = load i32, i32* %15, align 4
  %172 = or i32 %170, %171
  %173 = call i32 @I915_WRITE(i32 %168, i32 %172)
  %174 = load i32, i32* %20, align 4
  %175 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %176 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = mul i32 %174, %179
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* %31, align 4
  %183 = mul i32 %181, %182
  %184 = add i32 %180, %183
  %185 = zext i32 %184 to i64
  store i64 %185, i64* %28, align 8
  %186 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %187 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* %31, align 4
  %190 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %191 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @intel_gen4_compute_page_offset(i32* %19, i32* %20, i64 %188, i32 %189, i32 %194)
  store i64 %195, i64* %27, align 8
  %196 = load i64, i64* %27, align 8
  %197 = load i64, i64* %28, align 8
  %198 = sub i64 %197, %196
  store i64 %198, i64* %28, align 8
  %199 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %200 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @I915_TILING_NONE, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %212

204:                                              ; preds = %158
  %205 = load i32, i32* %26, align 4
  %206 = call i32 @DVSTILEOFF(i32 %205)
  %207 = load i32, i32* %20, align 4
  %208 = shl i32 %207, 16
  %209 = load i32, i32* %19, align 4
  %210 = or i32 %208, %209
  %211 = call i32 @I915_WRITE(i32 %206, i32 %210)
  br label %218

212:                                              ; preds = %158
  %213 = load i32, i32* %26, align 4
  %214 = call i32 @DVSLINOFF(i32 %213)
  %215 = load i64, i64* %28, align 8
  %216 = trunc i64 %215 to i32
  %217 = call i32 @I915_WRITE(i32 %214, i32 %216)
  br label %218

218:                                              ; preds = %212, %204
  %219 = load i32, i32* %26, align 4
  %220 = call i32 @DVSSIZE(i32 %219)
  %221 = load i32, i32* %18, align 4
  %222 = shl i32 %221, 16
  %223 = load i32, i32* %17, align 4
  %224 = or i32 %222, %223
  %225 = call i32 @I915_WRITE(i32 %220, i32 %224)
  %226 = load i32, i32* %26, align 4
  %227 = call i32 @DVSSCALE(i32 %226)
  %228 = load i32, i32* %30, align 4
  %229 = call i32 @I915_WRITE(i32 %227, i32 %228)
  %230 = load i32, i32* %26, align 4
  %231 = call i32 @DVSCNTR(i32 %230)
  %232 = load i32, i32* %29, align 4
  %233 = call i32 @I915_WRITE(i32 %231, i32 %232)
  %234 = load i32, i32* %26, align 4
  %235 = call i32 @DVSSURF(i32 %234)
  %236 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %237 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* %27, align 8
  %240 = add i64 %238, %239
  %241 = call i32 @I915_MODIFY_DISPBASE(i32 %235, i64 %240)
  %242 = load i32, i32* %26, align 4
  %243 = call i32 @DVSSURF(i32 %242)
  %244 = call i32 @POSTING_READ(i32 %243)
  ret void
}

declare dso_local %struct.intel_plane* @to_intel_plane(%struct.drm_plane*) #1

declare dso_local i32 @drm_format_plane_cpp(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DVSCNTR(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @IS_GEN6(%struct.drm_device*) #1

declare dso_local i32 @intel_update_sprite_watermarks(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i64 @IS_GEN5(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @DVSSTRIDE(i32) #1

declare dso_local i32 @DVSPOS(i32) #1

declare dso_local i64 @intel_gen4_compute_page_offset(i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @DVSTILEOFF(i32) #1

declare dso_local i32 @DVSLINOFF(i32) #1

declare dso_local i32 @DVSSIZE(i32) #1

declare dso_local i32 @DVSSCALE(i32) #1

declare dso_local i32 @I915_MODIFY_DISPBASE(i32, i64) #1

declare dso_local i32 @DVSSURF(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
