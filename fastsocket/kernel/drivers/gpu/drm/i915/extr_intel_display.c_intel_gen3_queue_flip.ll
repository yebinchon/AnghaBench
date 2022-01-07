; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_gen3_queue_flip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_gen3_queue_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.intel_ring_buffer* }
%struct.intel_ring_buffer = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.drm_framebuffer = type { i32* }
%struct.drm_i915_gem_object = type { i32 }
%struct.intel_crtc = type { i32, i64 }

@RCS = common dso_local global i64 0, align 8
@MI_WAIT_FOR_PLANE_B_FLIP = common dso_local global i32 0, align 4
@MI_WAIT_FOR_PLANE_A_FLIP = common dso_local global i32 0, align 4
@MI_WAIT_FOR_EVENT = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i32 0, align 4
@MI_DISPLAY_FLIP_I915 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_i915_gem_object*)* @intel_gen3_queue_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_gen3_queue_flip(%struct.drm_device* %0, %struct.drm_crtc* %1, %struct.drm_framebuffer* %2, %struct.drm_i915_gem_object* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.drm_i915_gem_object*, align 8
  %10 = alloca %struct.drm_i915_private*, align 8
  %11 = alloca %struct.intel_crtc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.intel_ring_buffer*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %7, align 8
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_i915_gem_object* %3, %struct.drm_i915_gem_object** %9, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %10, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %19 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %18)
  store %struct.intel_crtc* %19, %struct.intel_crtc** %11, align 8
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 0
  %22 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %21, align 8
  %23 = load i64, i64* @RCS, align 8
  %24 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %22, i64 %23
  store %struct.intel_ring_buffer* %24, %struct.intel_ring_buffer** %13, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %26 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %27 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %13, align 8
  %28 = call i32 @intel_pin_and_fence_fb_obj(%struct.drm_device* %25, %struct.drm_i915_gem_object* %26, %struct.intel_ring_buffer* %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  br label %90

32:                                               ; preds = %4
  %33 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %13, align 8
  %34 = call i32 @intel_ring_begin(%struct.intel_ring_buffer* %33, i32 6)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %87

38:                                               ; preds = %32
  %39 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %40 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @MI_WAIT_FOR_PLANE_B_FLIP, align 4
  store i32 %44, i32* %12, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @MI_WAIT_FOR_PLANE_A_FLIP, align 4
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %13, align 8
  %49 = load i32, i32* @MI_WAIT_FOR_EVENT, align 4
  %50 = load i32, i32* %12, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %48, i32 %51)
  %53 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %13, align 8
  %54 = load i32, i32* @MI_NOOP, align 4
  %55 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %53, i32 %54)
  %56 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %13, align 8
  %57 = load i32, i32* @MI_DISPLAY_FLIP_I915, align 4
  %58 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %59 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @MI_DISPLAY_FLIP_PLANE(i64 %60)
  %62 = or i32 %57, %61
  %63 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %56, i32 %62)
  %64 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %13, align 8
  %65 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %66 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %64, i32 %69)
  %71 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %13, align 8
  %72 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %73 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %76 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %74, %77
  %79 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %71, i32 %78)
  %80 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %13, align 8
  %81 = load i32, i32* @MI_NOOP, align 4
  %82 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %80, i32 %81)
  %83 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %84 = call i32 @intel_mark_page_flip_active(%struct.intel_crtc* %83)
  %85 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %13, align 8
  %86 = call i32 @intel_ring_advance(%struct.intel_ring_buffer* %85)
  store i32 0, i32* %5, align 4
  br label %92

87:                                               ; preds = %37
  %88 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %89 = call i32 @intel_unpin_fb_obj(%struct.drm_i915_gem_object* %88)
  br label %90

90:                                               ; preds = %87, %31
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %47
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @intel_pin_and_fence_fb_obj(%struct.drm_device*, %struct.drm_i915_gem_object*, %struct.intel_ring_buffer*) #1

declare dso_local i32 @intel_ring_begin(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @intel_ring_emit(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @MI_DISPLAY_FLIP_PLANE(i64) #1

declare dso_local i32 @intel_mark_page_flip_active(%struct.intel_crtc*) #1

declare dso_local i32 @intel_ring_advance(%struct.intel_ring_buffer*) #1

declare dso_local i32 @intel_unpin_fb_obj(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
