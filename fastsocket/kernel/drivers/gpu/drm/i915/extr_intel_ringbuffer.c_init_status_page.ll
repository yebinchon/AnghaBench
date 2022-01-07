; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_init_status_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_init_status_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { %struct.TYPE_4__, i32, %struct.drm_device* }
%struct.TYPE_4__ = type { i32, i32*, %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to allocate status page\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@I915_CACHE_LLC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s hws offset: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ring_buffer*)* @init_status_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_status_page(%struct.intel_ring_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_ring_buffer*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %3, align 8
  %7 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %7, i32 0, i32 2
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = call %struct.drm_i915_gem_object* @i915_gem_alloc_object(%struct.drm_device* %10, i32 4096)
  store %struct.drm_i915_gem_object* %11, %struct.drm_i915_gem_object** %5, align 8
  %12 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %13 = icmp eq %struct.drm_i915_gem_object* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %80

18:                                               ; preds = %1
  %19 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %20 = load i32, i32* @I915_CACHE_LLC, align 4
  %21 = call i32 @i915_gem_object_set_cache_level(%struct.drm_i915_gem_object* %19, i32 %20)
  %22 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %23 = call i32 @i915_gem_object_pin(%struct.drm_i915_gem_object* %22, i32 4096, i32 1, i32 0)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %76

27:                                               ; preds = %18
  %28 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %29 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %32 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %35 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sg_page(i32 %38)
  %40 = call i32* @kmap(i32 %39)
  %41 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %42 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32* %40, i32** %43, align 8
  %44 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %45 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %27
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %73

52:                                               ; preds = %27
  %53 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %54 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %55 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store %struct.drm_i915_gem_object* %53, %struct.drm_i915_gem_object** %56, align 8
  %57 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %58 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = call i32 @memset(i32* %60, i32 0, i32 %61)
  %63 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %64 = call i32 @intel_ring_setup_status_page(%struct.intel_ring_buffer* %63)
  %65 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %66 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %69 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %71)
  store i32 0, i32* %2, align 4
  br label %82

73:                                               ; preds = %49
  %74 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %75 = call i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object* %74)
  br label %76

76:                                               ; preds = %73, %26
  %77 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %78 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %77, i32 0, i32 0
  %79 = call i32 @drm_gem_object_unreference(i32* %78)
  br label %80

80:                                               ; preds = %76, %14
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %52
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.drm_i915_gem_object* @i915_gem_alloc_object(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @i915_gem_object_set_cache_level(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_pin(%struct.drm_i915_gem_object*, i32, i32, i32) #1

declare dso_local i32* @kmap(i32) #1

declare dso_local i32 @sg_page(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @intel_ring_setup_status_page(%struct.intel_ring_buffer*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

declare dso_local i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @drm_gem_object_unreference(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
