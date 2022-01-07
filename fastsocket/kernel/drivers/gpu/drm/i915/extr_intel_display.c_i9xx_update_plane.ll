; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_i9xx_update_plane.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_i9xx_update_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_framebuffer = type { i32, i32*, i32 }
%struct.intel_crtc = type { i32, i64 }
%struct.intel_framebuffer = type { %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Can't update plane %d in SAREA\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DISPPLANE_PIXFORMAT_MASK = common dso_local global i64 0, align 8
@DISPPLANE_8BPP = common dso_local global i64 0, align 8
@DISPPLANE_BGRX555 = common dso_local global i64 0, align 8
@DISPPLANE_BGRX565 = common dso_local global i64 0, align 8
@DISPPLANE_BGRX888 = common dso_local global i64 0, align 8
@DISPPLANE_RGBX888 = common dso_local global i64 0, align 8
@DISPPLANE_BGRX101010 = common dso_local global i64 0, align 8
@DISPPLANE_RGBX101010 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Unknown pixel format 0x%08x\0A\00", align 1
@I915_TILING_NONE = common dso_local global i64 0, align 8
@DISPPLANE_TILED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Writing base %08X %08lX %d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32)* @i9xx_update_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i9xx_update_plane(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.drm_i915_private*, align 8
  %12 = alloca %struct.intel_crtc*, align 8
  %13 = alloca %struct.intel_framebuffer*, align 8
  %14 = alloca %struct.drm_i915_gem_object*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %6, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %20 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %19, i32 0, i32 0
  %21 = load %struct.drm_device*, %struct.drm_device** %20, align 8
  store %struct.drm_device* %21, %struct.drm_device** %10, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %23, align 8
  store %struct.drm_i915_private* %24, %struct.drm_i915_private** %11, align 8
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %26 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %25)
  store %struct.intel_crtc* %26, %struct.intel_crtc** %12, align 8
  %27 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %28 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  switch i32 %30, label %32 [
    i32 0, label %31
    i32 1, label %31
  ]

31:                                               ; preds = %4, %4
  br label %37

32:                                               ; preds = %4
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %222

37:                                               ; preds = %31
  %38 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %39 = call %struct.intel_framebuffer* @to_intel_framebuffer(%struct.drm_framebuffer* %38)
  store %struct.intel_framebuffer* %39, %struct.intel_framebuffer** %13, align 8
  %40 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %13, align 8
  %41 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %40, i32 0, i32 0
  %42 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %41, align 8
  store %struct.drm_i915_gem_object* %42, %struct.drm_i915_gem_object** %14, align 8
  %43 = load i32, i32* %15, align 4
  %44 = call i64 @DSPCNTR(i32 %43)
  store i64 %44, i64* %18, align 8
  %45 = load i64, i64* %18, align 8
  %46 = call i64 @I915_READ(i64 %45)
  store i64 %46, i64* %17, align 8
  %47 = load i64, i64* @DISPPLANE_PIXFORMAT_MASK, align 8
  %48 = xor i64 %47, -1
  %49 = load i64, i64* %17, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %17, align 8
  %51 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %52 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %82 [
    i32 134, label %54
    i32 130, label %58
    i32 137, label %58
    i32 133, label %62
    i32 128, label %66
    i32 135, label %66
    i32 131, label %70
    i32 138, label %70
    i32 129, label %74
    i32 136, label %74
    i32 132, label %78
    i32 139, label %78
  ]

54:                                               ; preds = %37
  %55 = load i64, i64* @DISPPLANE_8BPP, align 8
  %56 = load i64, i64* %17, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %17, align 8
  br label %89

58:                                               ; preds = %37, %37
  %59 = load i64, i64* @DISPPLANE_BGRX555, align 8
  %60 = load i64, i64* %17, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %17, align 8
  br label %89

62:                                               ; preds = %37
  %63 = load i64, i64* @DISPPLANE_BGRX565, align 8
  %64 = load i64, i64* %17, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %17, align 8
  br label %89

66:                                               ; preds = %37, %37
  %67 = load i64, i64* @DISPPLANE_BGRX888, align 8
  %68 = load i64, i64* %17, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %17, align 8
  br label %89

70:                                               ; preds = %37, %37
  %71 = load i64, i64* @DISPPLANE_RGBX888, align 8
  %72 = load i64, i64* %17, align 8
  %73 = or i64 %72, %71
  store i64 %73, i64* %17, align 8
  br label %89

74:                                               ; preds = %37, %37
  %75 = load i64, i64* @DISPPLANE_BGRX101010, align 8
  %76 = load i64, i64* %17, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %17, align 8
  br label %89

78:                                               ; preds = %37, %37
  %79 = load i64, i64* @DISPPLANE_RGBX101010, align 8
  %80 = load i64, i64* %17, align 8
  %81 = or i64 %80, %79
  store i64 %81, i64* %17, align 8
  br label %89

82:                                               ; preds = %37
  %83 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %84 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %222

89:                                               ; preds = %78, %74, %70, %66, %62, %58, %54
  %90 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %91 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %90)
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp sge i32 %93, 4
  br i1 %94, label %95, label %111

95:                                               ; preds = %89
  %96 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %97 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @I915_TILING_NONE, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i64, i64* @DISPPLANE_TILED, align 8
  %103 = load i64, i64* %17, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %17, align 8
  br label %110

105:                                              ; preds = %95
  %106 = load i64, i64* @DISPPLANE_TILED, align 8
  %107 = xor i64 %106, -1
  %108 = load i64, i64* %17, align 8
  %109 = and i64 %108, %107
  store i64 %109, i64* %17, align 8
  br label %110

110:                                              ; preds = %105, %101
  br label %111

111:                                              ; preds = %110, %89
  %112 = load i64, i64* %18, align 8
  %113 = load i64, i64* %17, align 8
  %114 = call i32 @I915_WRITE(i64 %112, i64 %113)
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %117 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %115, %120
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %124 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = sdiv i32 %125, 8
  %127 = mul nsw i32 %122, %126
  %128 = add nsw i32 %121, %127
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %16, align 8
  %130 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %131 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %130)
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp sge i32 %133, 4
  br i1 %134, label %135, label %156

135:                                              ; preds = %111
  %136 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %137 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %140 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = sdiv i32 %141, 8
  %143 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %144 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @intel_gen4_compute_page_offset(i32* %8, i32* %9, i64 %138, i32 %142, i32 %147)
  %149 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %150 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  %151 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %152 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %16, align 8
  %155 = sub i64 %154, %153
  store i64 %155, i64* %16, align 8
  br label %160

156:                                              ; preds = %111
  %157 = load i64, i64* %16, align 8
  %158 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %159 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %156, %135
  %161 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %162 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %16, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %168 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %163, i64 %164, i32 %165, i32 %166, i32 %171)
  %173 = load i32, i32* %15, align 4
  %174 = call i64 @DSPSTRIDE(i32 %173)
  %175 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %176 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = call i32 @I915_WRITE(i64 %174, i64 %180)
  %182 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %183 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %182)
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = icmp sge i32 %185, 4
  br i1 %186, label %187, label %210

187:                                              ; preds = %160
  %188 = load i32, i32* %15, align 4
  %189 = call i32 @DSPSURF(i32 %188)
  %190 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %191 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %194 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = add i64 %192, %195
  %197 = call i32 @I915_MODIFY_DISPBASE(i32 %189, i64 %196)
  %198 = load i32, i32* %15, align 4
  %199 = call i64 @DSPTILEOFF(i32 %198)
  %200 = load i32, i32* %9, align 4
  %201 = shl i32 %200, 16
  %202 = load i32, i32* %8, align 4
  %203 = or i32 %201, %202
  %204 = sext i32 %203 to i64
  %205 = call i32 @I915_WRITE(i64 %199, i64 %204)
  %206 = load i32, i32* %15, align 4
  %207 = call i64 @DSPLINOFF(i32 %206)
  %208 = load i64, i64* %16, align 8
  %209 = call i32 @I915_WRITE(i64 %207, i64 %208)
  br label %219

210:                                              ; preds = %160
  %211 = load i32, i32* %15, align 4
  %212 = call i64 @DSPADDR(i32 %211)
  %213 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %214 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* %16, align 8
  %217 = add i64 %215, %216
  %218 = call i32 @I915_WRITE(i64 %212, i64 %217)
  br label %219

219:                                              ; preds = %210, %187
  %220 = load i64, i64* %18, align 8
  %221 = call i32 @POSTING_READ(i64 %220)
  store i32 0, i32* %5, align 4
  br label %222

222:                                              ; preds = %219, %82, %32
  %223 = load i32, i32* %5, align 4
  ret i32 %223
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local %struct.intel_framebuffer* @to_intel_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local i64 @DSPCNTR(i32) #1

declare dso_local i64 @I915_READ(i64) #1

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i64, i64) #1

declare dso_local i64 @intel_gen4_compute_page_offset(i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i64, i64, i32, i32, i32) #1

declare dso_local i64 @DSPSTRIDE(i32) #1

declare dso_local i32 @I915_MODIFY_DISPBASE(i32, i64) #1

declare dso_local i32 @DSPSURF(i32) #1

declare dso_local i64 @DSPTILEOFF(i32) #1

declare dso_local i64 @DSPLINOFF(i32) #1

declare dso_local i64 @DSPADDR(i32) #1

declare dso_local i32 @POSTING_READ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
