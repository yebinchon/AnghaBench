; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_framebuffer_create_for_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_framebuffer_create_for_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32, i32 }
%struct.drm_i915_gem_object = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_display_mode*, i32, i32)* @intel_framebuffer_create_for_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_framebuffer* @intel_framebuffer_create_for_mode(%struct.drm_device* %0, %struct.drm_display_mode* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_i915_gem_object*, align 8
  %11 = alloca %struct.drm_mode_fb_cmd2, align 8
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = bitcast %struct.drm_mode_fb_cmd2* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %14 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @intel_framebuffer_size_for_mode(%struct.drm_display_mode* %14, i32 %15)
  %17 = call %struct.drm_i915_gem_object* @i915_gem_alloc_object(%struct.drm_device* %13, i32 %16)
  store %struct.drm_i915_gem_object* %17, %struct.drm_i915_gem_object** %10, align 8
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %19 = icmp eq %struct.drm_i915_gem_object* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.drm_framebuffer* @ERR_PTR(i32 %22)
  store %struct.drm_framebuffer* %23, %struct.drm_framebuffer** %5, align 8
  br label %47

24:                                               ; preds = %4
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 3
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @intel_framebuffer_pitch_for_width(i32 %34, i32 %35)
  %37 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @drm_mode_legacy_fb_format(i32 %40, i32 %41)
  %43 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %45 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %46 = call %struct.drm_framebuffer* @intel_framebuffer_create(%struct.drm_device* %44, %struct.drm_mode_fb_cmd2* %11, %struct.drm_i915_gem_object* %45)
  store %struct.drm_framebuffer* %46, %struct.drm_framebuffer** %5, align 8
  br label %47

47:                                               ; preds = %24, %20
  %48 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  ret %struct.drm_framebuffer* %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_alloc_object(%struct.drm_device*, i32) #2

declare dso_local i32 @intel_framebuffer_size_for_mode(%struct.drm_display_mode*, i32) #2

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #2

declare dso_local i32 @intel_framebuffer_pitch_for_width(i32, i32) #2

declare dso_local i32 @drm_mode_legacy_fb_format(i32, i32) #2

declare dso_local %struct.drm_framebuffer* @intel_framebuffer_create(%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.drm_i915_gem_object*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
