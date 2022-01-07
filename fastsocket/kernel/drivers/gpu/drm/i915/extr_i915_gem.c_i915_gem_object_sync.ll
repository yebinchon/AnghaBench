; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i64, %struct.intel_ring_buffer*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_ring_buffer = type { i64*, i32 (%struct.intel_ring_buffer*, %struct.intel_ring_buffer*, i64)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_object_sync(%struct.drm_i915_gem_object* %0, %struct.intel_ring_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca %struct.intel_ring_buffer*, align 8
  %6 = alloca %struct.intel_ring_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %4, align 8
  store %struct.intel_ring_buffer* %1, %struct.intel_ring_buffer** %5, align 8
  %10 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %11 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %10, i32 0, i32 1
  %12 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %11, align 8
  store %struct.intel_ring_buffer* %12, %struct.intel_ring_buffer** %6, align 8
  %13 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %14 = icmp eq %struct.intel_ring_buffer* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %17 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %18 = icmp eq %struct.intel_ring_buffer* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %82

20:                                               ; preds = %15
  %21 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %22 = icmp eq %struct.intel_ring_buffer* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %25 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @i915_semaphore_is_enabled(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23, %20
  %31 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %32 = call i32 @i915_gem_object_wait_rendering(%struct.drm_i915_gem_object* %31, i32 0)
  store i32 %32, i32* %3, align 4
  br label %82

33:                                               ; preds = %23
  %34 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %35 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %36 = call i32 @intel_ring_sync_index(%struct.intel_ring_buffer* %34, %struct.intel_ring_buffer* %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %38 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp sle i64 %40, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %82

50:                                               ; preds = %33
  %51 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %52 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %51, i32 0, i32 1
  %53 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @i915_gem_check_olr(%struct.intel_ring_buffer* %53, i64 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %82

60:                                               ; preds = %50
  %61 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %62 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %61, i32 0, i32 1
  %63 = load i32 (%struct.intel_ring_buffer*, %struct.intel_ring_buffer*, i64)*, i32 (%struct.intel_ring_buffer*, %struct.intel_ring_buffer*, i64)** %62, align 8
  %64 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %65 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 %63(%struct.intel_ring_buffer* %64, %struct.intel_ring_buffer* %65, i64 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %60
  %71 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %72 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %75 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64 %73, i64* %79, align 8
  br label %80

80:                                               ; preds = %70, %60
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %58, %49, %30, %19
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @i915_semaphore_is_enabled(i32) #1

declare dso_local i32 @i915_gem_object_wait_rendering(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @intel_ring_sync_index(%struct.intel_ring_buffer*, %struct.intel_ring_buffer*) #1

declare dso_local i32 @i915_gem_check_olr(%struct.intel_ring_buffer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
