; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_gen7_queue_flip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_gen7_queue_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.intel_ring_buffer* }
%struct.intel_ring_buffer = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.drm_framebuffer = type { i32* }
%struct.drm_i915_gem_object = type { i32, i32 }
%struct.intel_crtc = type { i32, i32 }

@BCS = common dso_local global i64 0, align 8
@MI_DISPLAY_FLIP_IVB_PLANE_A = common dso_local global i32 0, align 4
@MI_DISPLAY_FLIP_IVB_PLANE_B = common dso_local global i32 0, align 4
@MI_DISPLAY_FLIP_IVB_PLANE_C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unknown plane in flip command\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MI_DISPLAY_FLIP_I915 = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_i915_gem_object*)* @intel_gen7_queue_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_gen7_queue_flip(%struct.drm_device* %0, %struct.drm_crtc* %1, %struct.drm_framebuffer* %2, %struct.drm_i915_gem_object* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.drm_i915_gem_object*, align 8
  %10 = alloca %struct.drm_i915_private*, align 8
  %11 = alloca %struct.intel_crtc*, align 8
  %12 = alloca %struct.intel_ring_buffer*, align 8
  %13 = alloca i32, align 4
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
  %23 = load i64, i64* @BCS, align 8
  %24 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %22, i64 %23
  store %struct.intel_ring_buffer* %24, %struct.intel_ring_buffer** %12, align 8
  store i32 0, i32* %13, align 4
  %25 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %26 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %27 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %12, align 8
  %28 = call i32 @intel_pin_and_fence_fb_obj(%struct.drm_device* %25, %struct.drm_i915_gem_object* %26, %struct.intel_ring_buffer* %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  br label %88

32:                                               ; preds = %4
  %33 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %34 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %42 [
    i32 130, label %36
    i32 129, label %38
    i32 128, label %40
  ]

36:                                               ; preds = %32
  %37 = load i32, i32* @MI_DISPLAY_FLIP_IVB_PLANE_A, align 4
  store i32 %37, i32* %13, align 4
  br label %46

38:                                               ; preds = %32
  %39 = load i32, i32* @MI_DISPLAY_FLIP_IVB_PLANE_B, align 4
  store i32 %39, i32* %13, align 4
  br label %46

40:                                               ; preds = %32
  %41 = load i32, i32* @MI_DISPLAY_FLIP_IVB_PLANE_C, align 4
  store i32 %41, i32* %13, align 4
  br label %46

42:                                               ; preds = %32
  %43 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %14, align 4
  br label %85

46:                                               ; preds = %40, %38, %36
  %47 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %12, align 8
  %48 = call i32 @intel_ring_begin(%struct.intel_ring_buffer* %47, i32 4)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %85

52:                                               ; preds = %46
  %53 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %12, align 8
  %54 = load i32, i32* @MI_DISPLAY_FLIP_I915, align 4
  %55 = load i32, i32* %13, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %53, i32 %56)
  %58 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %12, align 8
  %59 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %60 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %65 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  %68 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %58, i32 %67)
  %69 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %12, align 8
  %70 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %71 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %74 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %72, %75
  %77 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %69, i32 %76)
  %78 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %12, align 8
  %79 = load i32, i32* @MI_NOOP, align 4
  %80 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %78, i32 %79)
  %81 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %82 = call i32 @intel_mark_page_flip_active(%struct.intel_crtc* %81)
  %83 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %12, align 8
  %84 = call i32 @intel_ring_advance(%struct.intel_ring_buffer* %83)
  store i32 0, i32* %5, align 4
  br label %90

85:                                               ; preds = %51, %42
  %86 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %87 = call i32 @intel_unpin_fb_obj(%struct.drm_i915_gem_object* %86)
  br label %88

88:                                               ; preds = %85, %31
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %88, %52
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @intel_pin_and_fence_fb_obj(%struct.drm_device*, %struct.drm_i915_gem_object*, %struct.intel_ring_buffer*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @intel_ring_begin(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @intel_ring_emit(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @intel_mark_page_flip_active(%struct.intel_crtc*) #1

declare dso_local i32 @intel_ring_advance(%struct.intel_ring_buffer*) #1

declare dso_local i32 @intel_unpin_fb_obj(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
