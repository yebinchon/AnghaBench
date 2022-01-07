; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_user_framebuffer_create_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_user_framebuffer_create_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_file = type { i32 }
%struct.intel_framebuffer = type { %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32*)* @intel_user_framebuffer_create_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_user_framebuffer_create_handle(%struct.drm_framebuffer* %0, %struct.drm_file* %1, i32* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.intel_framebuffer*, align 8
  %8 = alloca %struct.drm_i915_gem_object*, align 8
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %10 = call %struct.intel_framebuffer* @to_intel_framebuffer(%struct.drm_framebuffer* %9)
  store %struct.intel_framebuffer* %10, %struct.intel_framebuffer** %7, align 8
  %11 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %7, align 8
  %12 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %12, align 8
  store %struct.drm_i915_gem_object* %13, %struct.drm_i915_gem_object** %8, align 8
  %14 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %15 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %16 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %15, i32 0, i32 0
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @drm_gem_handle_create(%struct.drm_file* %14, i32* %16, i32* %17)
  ret i32 %18
}

declare dso_local %struct.intel_framebuffer* @to_intel_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
