; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_enable_fbc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_enable_fbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, %struct.drm_framebuffer*, %struct.drm_device* }
%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_framebuffer = type { %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { i32, i32 }
%struct.intel_crtc = type { i32 }

@DPFC_CTL_PLANEA = common dso_local global i32 0, align 4
@DPFC_CTL_PLANEB = common dso_local global i32 0, align 4
@ILK_DPFC_CONTROL = common dso_local global i32 0, align 4
@DPFC_RESERVED = common dso_local global i32 0, align 4
@DPFC_CTL_LIMIT_1X = common dso_local global i32 0, align 4
@DPFC_CTL_PERSISTENT_MODE = common dso_local global i32 0, align 4
@DPFC_CTL_FENCE_EN = common dso_local global i32 0, align 4
@ILK_DPFC_CHICKEN = common dso_local global i32 0, align 4
@DPFC_HT_MODIFY = common dso_local global i32 0, align 4
@ILK_DPFC_RECOMP_CTL = common dso_local global i32 0, align 4
@DPFC_RECOMP_STALL_EN = common dso_local global i64 0, align 8
@DPFC_RECOMP_STALL_WM_SHIFT = common dso_local global i64 0, align 8
@DPFC_RECOMP_TIMER_COUNT_SHIFT = common dso_local global i64 0, align 8
@ILK_DPFC_FENCE_YOFF = common dso_local global i32 0, align 4
@ILK_FBC_RT_BASE = common dso_local global i32 0, align 4
@ILK_FBC_RT_VALID = common dso_local global i32 0, align 4
@DPFC_CTL_EN = common dso_local global i32 0, align 4
@SNB_DPFC_CTL_SA = common dso_local global i32 0, align 4
@SNB_CPU_FENCE_ENABLE = common dso_local global i32 0, align 4
@DPFC_CPU_FENCE_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"enabled fbc on plane %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i64)* @ironlake_enable_fbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_enable_fbc(%struct.drm_crtc* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca %struct.intel_framebuffer*, align 8
  %9 = alloca %struct.drm_i915_gem_object*, align 8
  %10 = alloca %struct.intel_crtc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 2
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %5, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %18, align 8
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %6, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 1
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %21, align 8
  store %struct.drm_framebuffer* %22, %struct.drm_framebuffer** %7, align 8
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %24 = call %struct.intel_framebuffer* @to_intel_framebuffer(%struct.drm_framebuffer* %23)
  store %struct.intel_framebuffer* %24, %struct.intel_framebuffer** %8, align 8
  %25 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %8, align 8
  %26 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %25, i32 0, i32 0
  %27 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %26, align 8
  store %struct.drm_i915_gem_object* %27, %struct.drm_i915_gem_object** %9, align 8
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %29 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %28)
  store %struct.intel_crtc* %29, %struct.intel_crtc** %10, align 8
  %30 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %31 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @DPFC_CTL_PLANEA, align 4
  br label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @DPFC_CTL_PLANEB, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %11, align 4
  store i64 200, i64* %12, align 8
  %40 = load i32, i32* @ILK_DPFC_CONTROL, align 4
  %41 = call i32 @I915_READ(i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* @DPFC_RESERVED, align 4
  %43 = load i32, i32* %13, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @DPFC_CTL_LIMIT_1X, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %13, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* @DPFC_CTL_PERSISTENT_MODE, align 4
  %51 = load i32, i32* %13, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* @DPFC_CTL_FENCE_EN, align 4
  %54 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %55 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %53, %56
  %58 = load i32, i32* %13, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* @ILK_DPFC_CHICKEN, align 4
  %61 = load i32, i32* @DPFC_HT_MODIFY, align 4
  %62 = call i32 @I915_WRITE(i32 %60, i32 %61)
  %63 = load i32, i32* @ILK_DPFC_RECOMP_CTL, align 4
  %64 = load i64, i64* @DPFC_RECOMP_STALL_EN, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* @DPFC_RECOMP_STALL_WM_SHIFT, align 8
  %67 = shl i64 %65, %66
  %68 = or i64 %64, %67
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* @DPFC_RECOMP_TIMER_COUNT_SHIFT, align 8
  %71 = shl i64 %69, %70
  %72 = or i64 %68, %71
  %73 = trunc i64 %72 to i32
  %74 = call i32 @I915_WRITE(i32 %63, i32 %73)
  %75 = load i32, i32* @ILK_DPFC_FENCE_YOFF, align 4
  %76 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %77 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @I915_WRITE(i32 %75, i32 %78)
  %80 = load i32, i32* @ILK_FBC_RT_BASE, align 4
  %81 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %82 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ILK_FBC_RT_VALID, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @I915_WRITE(i32 %80, i32 %85)
  %87 = load i32, i32* @ILK_DPFC_CONTROL, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @DPFC_CTL_EN, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @I915_WRITE(i32 %87, i32 %90)
  %92 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %93 = call i64 @IS_GEN6(%struct.drm_device* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %38
  %96 = load i32, i32* @SNB_DPFC_CTL_SA, align 4
  %97 = load i32, i32* @SNB_CPU_FENCE_ENABLE, align 4
  %98 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %99 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %97, %100
  %102 = call i32 @I915_WRITE(i32 %96, i32 %101)
  %103 = load i32, i32* @DPFC_CPU_FENCE_OFFSET, align 4
  %104 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %105 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @I915_WRITE(i32 %103, i32 %106)
  %108 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %109 = call i32 @sandybridge_blit_fbc_update(%struct.drm_device* %108)
  br label %110

110:                                              ; preds = %95, %38
  %111 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %112 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %113)
  ret void
}

declare dso_local %struct.intel_framebuffer* @to_intel_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @IS_GEN6(%struct.drm_device*) #1

declare dso_local i32 @sandybridge_blit_fbc_update(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
