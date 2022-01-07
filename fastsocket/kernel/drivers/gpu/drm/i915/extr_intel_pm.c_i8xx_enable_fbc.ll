; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_i8xx_enable_fbc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_i8xx_enable_fbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, %struct.drm_framebuffer*, %struct.drm_device* }
%struct.drm_framebuffer = type { i32* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_framebuffer = type { %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { i32 }
%struct.intel_crtc = type { i32 }

@FBC_LL_SIZE = common dso_local global i32 0, align 4
@FBC_CTL_PLANEA = common dso_local global i32 0, align 4
@FBC_CTL_PLANEB = common dso_local global i32 0, align 4
@FBC_TAG = common dso_local global i64 0, align 8
@FBC_CTL_FENCE_DBL = common dso_local global i32 0, align 4
@FBC_CTL_IDLE_IMM = common dso_local global i32 0, align 4
@FBC_CTL_CPU_FENCE = common dso_local global i32 0, align 4
@FBC_CONTROL2 = common dso_local global i64 0, align 8
@FBC_FENCE_OFF = common dso_local global i64 0, align 8
@FBC_CTL_EN = common dso_local global i32 0, align 4
@FBC_CTL_PERIODIC = common dso_local global i32 0, align 4
@FBC_CTL_C3_IDLE = common dso_local global i32 0, align 4
@FBC_CTL_STRIDE_SHIFT = common dso_local global i32 0, align 4
@FBC_CTL_INTERVAL_SHIFT = common dso_local global i64 0, align 8
@FBC_CONTROL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"enabled FBC, pitch %d, yoff %d, plane %d, \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i64)* @i8xx_enable_fbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i8xx_enable_fbc(%struct.drm_crtc* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca %struct.intel_framebuffer*, align 8
  %9 = alloca %struct.drm_i915_gem_object*, align 8
  %10 = alloca %struct.intel_crtc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i64 %1, i64* %4, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 2
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %5, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %20, align 8
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %6, align 8
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %23 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %22, i32 0, i32 1
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %23, align 8
  store %struct.drm_framebuffer* %24, %struct.drm_framebuffer** %7, align 8
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %26 = call %struct.intel_framebuffer* @to_intel_framebuffer(%struct.drm_framebuffer* %25)
  store %struct.intel_framebuffer* %26, %struct.intel_framebuffer** %8, align 8
  %27 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %8, align 8
  %28 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %27, i32 0, i32 0
  %29 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %28, align 8
  store %struct.drm_i915_gem_object* %29, %struct.drm_i915_gem_object** %9, align 8
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %31 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %30)
  store %struct.intel_crtc* %31, %struct.intel_crtc** %10, align 8
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @FBC_LL_SIZE, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %11, align 4
  %37 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %38 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %2
  %45 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %46 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %44, %2
  %51 = load i32, i32* %11, align 4
  %52 = sdiv i32 %51, 64
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  %54 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %55 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @FBC_CTL_PLANEA, align 4
  br label %62

60:                                               ; preds = %50
  %61 = load i32, i32* @FBC_CTL_PLANEB, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %77, %62
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @FBC_LL_SIZE, align 4
  %67 = sdiv i32 %66, 32
  %68 = add nsw i32 %67, 1
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load i64, i64* @FBC_TAG, align 8
  %72 = load i32, i32* %13, align 4
  %73 = mul nsw i32 %72, 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %71, %74
  %76 = call i32 @I915_WRITE(i64 %75, i32 0)
  br label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %64

80:                                               ; preds = %64
  %81 = load i32, i32* @FBC_CTL_FENCE_DBL, align 4
  %82 = load i32, i32* @FBC_CTL_IDLE_IMM, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @FBC_CTL_CPU_FENCE, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %15, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %15, align 4
  %89 = load i64, i64* @FBC_CONTROL2, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @I915_WRITE(i64 %89, i32 %90)
  %92 = load i64, i64* @FBC_FENCE_OFF, align 8
  %93 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %94 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @I915_WRITE(i64 %92, i32 %95)
  %97 = load i32, i32* @FBC_CTL_EN, align 4
  %98 = load i32, i32* @FBC_CTL_PERIODIC, align 4
  %99 = or i32 %97, %98
  store i32 %99, i32* %14, align 4
  %100 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %101 = call i64 @IS_I945GM(%struct.drm_device* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %80
  %104 = load i32, i32* @FBC_CTL_C3_IDLE, align 4
  %105 = load i32, i32* %14, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %14, align 4
  br label %107

107:                                              ; preds = %103, %80
  %108 = load i32, i32* %11, align 4
  %109 = and i32 %108, 255
  %110 = load i32, i32* @FBC_CTL_STRIDE_SHIFT, align 4
  %111 = shl i32 %109, %110
  %112 = load i32, i32* %14, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %14, align 4
  %114 = load i64, i64* %4, align 8
  %115 = and i64 %114, 12287
  %116 = load i64, i64* @FBC_CTL_INTERVAL_SHIFT, align 8
  %117 = shl i64 %115, %116
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = or i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %14, align 4
  %122 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %123 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %14, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %14, align 4
  %127 = load i64, i64* @FBC_CONTROL, align 8
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @I915_WRITE(i64 %127, i32 %128)
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %132 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %135 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %130, i32 %133, i32 %136)
  ret void
}

declare dso_local %struct.intel_framebuffer* @to_intel_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @I915_WRITE(i64, i32) #1

declare dso_local i64 @IS_I945GM(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
