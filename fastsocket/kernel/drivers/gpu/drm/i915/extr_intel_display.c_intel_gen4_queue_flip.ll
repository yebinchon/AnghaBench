; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_gen4_queue_flip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_gen4_queue_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.intel_ring_buffer* }
%struct.intel_ring_buffer = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.drm_framebuffer = type { i32* }
%struct.drm_i915_gem_object = type { i32, i32 }
%struct.intel_crtc = type { i32, i32, i32 }

@RCS = common dso_local global i64 0, align 8
@MI_DISPLAY_FLIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_i915_gem_object*)* @intel_gen4_queue_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_gen4_queue_flip(%struct.drm_device* %0, %struct.drm_crtc* %1, %struct.drm_framebuffer* %2, %struct.drm_i915_gem_object* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.drm_i915_gem_object*, align 8
  %10 = alloca %struct.drm_i915_private*, align 8
  %11 = alloca %struct.intel_crtc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.intel_ring_buffer*, align 8
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %7, align 8
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_i915_gem_object* %3, %struct.drm_i915_gem_object** %9, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %17, align 8
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %10, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %20 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %19)
  store %struct.intel_crtc* %20, %struct.intel_crtc** %11, align 8
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %22 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %21, i32 0, i32 0
  %23 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %22, align 8
  %24 = load i64, i64* @RCS, align 8
  %25 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %23, i64 %24
  store %struct.intel_ring_buffer* %25, %struct.intel_ring_buffer** %14, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %27 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %28 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %14, align 8
  %29 = call i32 @intel_pin_and_fence_fb_obj(%struct.drm_device* %26, %struct.drm_i915_gem_object* %27, %struct.intel_ring_buffer* %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  br label %86

33:                                               ; preds = %4
  %34 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %14, align 8
  %35 = call i32 @intel_ring_begin(%struct.intel_ring_buffer* %34, i32 4)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %83

39:                                               ; preds = %33
  %40 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %14, align 8
  %41 = load i32, i32* @MI_DISPLAY_FLIP, align 4
  %42 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %43 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @MI_DISPLAY_FLIP_PLANE(i32 %44)
  %46 = or i32 %41, %45
  %47 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %40, i32 %46)
  %48 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %14, align 8
  %49 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %50 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %48, i32 %53)
  %55 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %14, align 8
  %56 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %57 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %60 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %58, %61
  %63 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %64 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %62, %65
  %67 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %55, i32 %66)
  store i32 0, i32* %12, align 4
  %68 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %69 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @PIPESRC(i32 %70)
  %72 = call i32 @I915_READ(i32 %71)
  %73 = and i32 %72, 268374015
  store i32 %73, i32* %13, align 4
  %74 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %14, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %74, i32 %77)
  %79 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %80 = call i32 @intel_mark_page_flip_active(%struct.intel_crtc* %79)
  %81 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %14, align 8
  %82 = call i32 @intel_ring_advance(%struct.intel_ring_buffer* %81)
  store i32 0, i32* %5, align 4
  br label %88

83:                                               ; preds = %38
  %84 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %85 = call i32 @intel_unpin_fb_obj(%struct.drm_i915_gem_object* %84)
  br label %86

86:                                               ; preds = %83, %32
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %39
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @intel_pin_and_fence_fb_obj(%struct.drm_device*, %struct.drm_i915_gem_object*, %struct.intel_ring_buffer*) #1

declare dso_local i32 @intel_ring_begin(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @intel_ring_emit(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @MI_DISPLAY_FLIP_PLANE(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PIPESRC(i32) #1

declare dso_local i32 @intel_mark_page_flip_active(%struct.intel_crtc*) #1

declare dso_local i32 @intel_ring_advance(%struct.intel_ring_buffer*) #1

declare dso_local i32 @intel_unpin_fb_obj(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
