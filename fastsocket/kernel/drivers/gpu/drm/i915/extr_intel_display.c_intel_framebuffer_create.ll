; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_framebuffer_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_framebuffer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32 }
%struct.drm_i915_gem_object = type { i32 }
%struct.intel_framebuffer = type { %struct.drm_framebuffer }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.drm_i915_gem_object*)* @intel_framebuffer_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_framebuffer* @intel_framebuffer_create(%struct.drm_device* %0, %struct.drm_mode_fb_cmd2* %1, %struct.drm_i915_gem_object* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %7 = alloca %struct.drm_i915_gem_object*, align 8
  %8 = alloca %struct.intel_framebuffer*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_mode_fb_cmd2* %1, %struct.drm_mode_fb_cmd2** %6, align 8
  store %struct.drm_i915_gem_object* %2, %struct.drm_i915_gem_object** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.intel_framebuffer* @kzalloc(i32 4, i32 %10)
  store %struct.intel_framebuffer* %11, %struct.intel_framebuffer** %8, align 8
  %12 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %8, align 8
  %13 = icmp ne %struct.intel_framebuffer* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %16 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %15, i32 0, i32 0
  %17 = call i32 @drm_gem_object_unreference_unlocked(i32* %16)
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.drm_framebuffer* @ERR_PTR(i32 %19)
  store %struct.drm_framebuffer* %20, %struct.drm_framebuffer** %4, align 8
  br label %40

21:                                               ; preds = %3
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %8, align 8
  %24 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %25 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %26 = call i32 @intel_framebuffer_init(%struct.drm_device* %22, %struct.intel_framebuffer* %23, %struct.drm_mode_fb_cmd2* %24, %struct.drm_i915_gem_object* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %31 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %30, i32 0, i32 0
  %32 = call i32 @drm_gem_object_unreference_unlocked(i32* %31)
  %33 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %8, align 8
  %34 = call i32 @kfree(%struct.intel_framebuffer* %33)
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.drm_framebuffer* @ERR_PTR(i32 %35)
  store %struct.drm_framebuffer* %36, %struct.drm_framebuffer** %4, align 8
  br label %40

37:                                               ; preds = %21
  %38 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %8, align 8
  %39 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %38, i32 0, i32 0
  store %struct.drm_framebuffer* %39, %struct.drm_framebuffer** %4, align 8
  br label %40

40:                                               ; preds = %37, %29, %14
  %41 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %41
}

declare dso_local %struct.intel_framebuffer* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(i32*) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local i32 @intel_framebuffer_init(%struct.drm_device*, %struct.intel_framebuffer*, %struct.drm_mode_fb_cmd2*, %struct.drm_i915_gem_object*) #1

declare dso_local i32 @kfree(%struct.intel_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
