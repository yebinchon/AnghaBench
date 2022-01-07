; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_mode_fits_in_fbdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_mode_fits_in_fbdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32*, i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_framebuffer, %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_display_mode = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_display_mode*)* @mode_fits_in_fbdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_framebuffer* @mode_fits_in_fbdev(%struct.drm_device* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_framebuffer*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.drm_i915_gem_object*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %6, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp eq %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %3, align 8
  br label %65

17:                                               ; preds = %2
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %22, align 8
  store %struct.drm_i915_gem_object* %23, %struct.drm_i915_gem_object** %7, align 8
  %24 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %25 = icmp eq %struct.drm_i915_gem_object* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %3, align 8
  br label %65

27:                                               ; preds = %17
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store %struct.drm_framebuffer* %32, %struct.drm_framebuffer** %8, align 8
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %34 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %42 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @intel_framebuffer_pitch_for_width(i32 %40, i32 %43)
  %45 = icmp slt i32 %37, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %3, align 8
  br label %65

47:                                               ; preds = %27
  %48 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %49 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %56 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %54, %59
  %61 = icmp slt i32 %51, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %3, align 8
  br label %65

63:                                               ; preds = %47
  %64 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_framebuffer* %64, %struct.drm_framebuffer** %3, align 8
  br label %65

65:                                               ; preds = %63, %62, %46, %26, %16
  %66 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  ret %struct.drm_framebuffer* %66
}

declare dso_local i32 @intel_framebuffer_pitch_for_width(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
