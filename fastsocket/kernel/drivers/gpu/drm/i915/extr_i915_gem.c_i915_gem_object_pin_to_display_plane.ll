; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_pin_to_display_plane.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_pin_to_display_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { %struct.TYPE_2__, %struct.intel_ring_buffer* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.intel_ring_buffer = type { i32 }

@I915_CACHE_NONE = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_GTT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_object_pin_to_display_plane(%struct.drm_i915_gem_object* %0, i64 %1, %struct.intel_ring_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.intel_ring_buffer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.intel_ring_buffer* %2, %struct.intel_ring_buffer** %7, align 8
  %11 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %7, align 8
  %12 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %13 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %12, i32 0, i32 1
  %14 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %13, align 8
  %15 = icmp ne %struct.intel_ring_buffer* %11, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %18 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %7, align 8
  %19 = call i32 @i915_gem_object_sync(%struct.drm_i915_gem_object* %17, %struct.intel_ring_buffer* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %65

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %3
  %26 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %27 = load i32, i32* @I915_CACHE_NONE, align 4
  %28 = call i32 @i915_gem_object_set_cache_level(%struct.drm_i915_gem_object* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %65

33:                                               ; preds = %25
  %34 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @i915_gem_object_pin(%struct.drm_i915_gem_object* %34, i64 %35, i32 1, i32 0)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %65

41:                                               ; preds = %33
  %42 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %43 = call i32 @i915_gem_object_flush_cpu_write_domain(%struct.drm_i915_gem_object* %42)
  %44 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %45 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %9, align 8
  %48 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %49 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %8, align 8
  %52 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %53 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load i64, i64* @I915_GEM_DOMAIN_GTT, align 8
  %56 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %57 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = or i64 %59, %55
  store i64 %60, i64* %58, align 8
  %61 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @trace_i915_gem_object_change_domain(%struct.drm_i915_gem_object* %61, i64 %62, i64 %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %41, %39, %31, %22
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @i915_gem_object_sync(%struct.drm_i915_gem_object*, %struct.intel_ring_buffer*) #1

declare dso_local i32 @i915_gem_object_set_cache_level(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_pin(%struct.drm_i915_gem_object*, i64, i32, i32) #1

declare dso_local i32 @i915_gem_object_flush_cpu_write_domain(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @trace_i915_gem_object_change_domain(%struct.drm_i915_gem_object*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
