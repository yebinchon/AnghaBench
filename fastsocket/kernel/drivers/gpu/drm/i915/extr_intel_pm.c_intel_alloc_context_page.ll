; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_intel_alloc_context_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_intel_alloc_context_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32 }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"failed to alloc power context, RC6 disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to pin power context: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to set-domain on power context: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_i915_gem_object* (%struct.drm_device*)* @intel_alloc_context_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_i915_gem_object* @intel_alloc_context_page(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_i915_gem_object*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = call i32 @mutex_is_locked(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = call %struct.drm_i915_gem_object* @i915_gem_alloc_object(%struct.drm_device* %13, i32 4096)
  store %struct.drm_i915_gem_object* %14, %struct.drm_i915_gem_object** %4, align 8
  %15 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %16 = icmp ne %struct.drm_i915_gem_object* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %2, align 8
  br label %44

19:                                               ; preds = %1
  %20 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %21 = call i32 @i915_gem_object_pin(%struct.drm_i915_gem_object* %20, i32 4096, i32 1, i32 0)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %40

27:                                               ; preds = %19
  %28 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %29 = call i32 @i915_gem_object_set_to_gtt_domain(%struct.drm_i915_gem_object* %28, i32 1)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %37

35:                                               ; preds = %27
  %36 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  store %struct.drm_i915_gem_object* %36, %struct.drm_i915_gem_object** %2, align 8
  br label %44

37:                                               ; preds = %32
  %38 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %39 = call i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object* %38)
  br label %40

40:                                               ; preds = %37, %24
  %41 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %42 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %41, i32 0, i32 0
  %43 = call i32 @drm_gem_object_unreference(i32* %42)
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %2, align 8
  br label %44

44:                                               ; preds = %40, %35, %17
  %45 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  ret %struct.drm_i915_gem_object* %45
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_alloc_object(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @i915_gem_object_pin(%struct.drm_i915_gem_object*, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @i915_gem_object_set_to_gtt_domain(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @drm_gem_object_unreference(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
