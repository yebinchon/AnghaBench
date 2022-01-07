; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_init_pipe_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_init_pipe_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { %struct.pipe_control*, i32, i32 }
%struct.pipe_control = type { %struct.drm_i915_gem_object*, i32, i32* }
%struct.drm_i915_gem_object = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate seqno page\0A\00", align 1
@I915_CACHE_LLC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s pipe control offset: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ring_buffer*)* @init_pipe_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_pipe_control(%struct.intel_ring_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_ring_buffer*, align 8
  %4 = alloca %struct.pipe_control*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %3, align 8
  %7 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %7, i32 0, i32 0
  %9 = load %struct.pipe_control*, %struct.pipe_control** %8, align 8
  %10 = icmp ne %struct.pipe_control* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.pipe_control* @kmalloc(i32 24, i32 %13)
  store %struct.pipe_control* %14, %struct.pipe_control** %4, align 8
  %15 = load %struct.pipe_control*, %struct.pipe_control** %4, align 8
  %16 = icmp ne %struct.pipe_control* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %85

20:                                               ; preds = %12
  %21 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %22 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.drm_i915_gem_object* @i915_gem_alloc_object(i32 %23, i32 4096)
  store %struct.drm_i915_gem_object* %24, %struct.drm_i915_gem_object** %5, align 8
  %25 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %26 = icmp eq %struct.drm_i915_gem_object* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %81

31:                                               ; preds = %20
  %32 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %33 = load i32, i32* @I915_CACHE_LLC, align 4
  %34 = call i32 @i915_gem_object_set_cache_level(%struct.drm_i915_gem_object* %32, i32 %33)
  %35 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %36 = call i32 @i915_gem_object_pin(%struct.drm_i915_gem_object* %35, i32 4096, i32 1, i32 0)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %77

40:                                               ; preds = %31
  %41 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %42 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.pipe_control*, %struct.pipe_control** %4, align 8
  %45 = getelementptr inbounds %struct.pipe_control, %struct.pipe_control* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %47 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sg_page(i32 %50)
  %52 = call i32* @kmap(i32 %51)
  %53 = load %struct.pipe_control*, %struct.pipe_control** %4, align 8
  %54 = getelementptr inbounds %struct.pipe_control, %struct.pipe_control* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  %55 = load %struct.pipe_control*, %struct.pipe_control** %4, align 8
  %56 = getelementptr inbounds %struct.pipe_control, %struct.pipe_control* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %40
  br label %74

60:                                               ; preds = %40
  %61 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %62 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.pipe_control*, %struct.pipe_control** %4, align 8
  %65 = getelementptr inbounds %struct.pipe_control, %struct.pipe_control* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %69 = load %struct.pipe_control*, %struct.pipe_control** %4, align 8
  %70 = getelementptr inbounds %struct.pipe_control, %struct.pipe_control* %69, i32 0, i32 0
  store %struct.drm_i915_gem_object* %68, %struct.drm_i915_gem_object** %70, align 8
  %71 = load %struct.pipe_control*, %struct.pipe_control** %4, align 8
  %72 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %73 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %72, i32 0, i32 0
  store %struct.pipe_control* %71, %struct.pipe_control** %73, align 8
  store i32 0, i32* %2, align 4
  br label %85

74:                                               ; preds = %59
  %75 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %76 = call i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object* %75)
  br label %77

77:                                               ; preds = %74, %39
  %78 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %79 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %78, i32 0, i32 0
  %80 = call i32 @drm_gem_object_unreference(i32* %79)
  br label %81

81:                                               ; preds = %77, %27
  %82 = load %struct.pipe_control*, %struct.pipe_control** %4, align 8
  %83 = call i32 @kfree(%struct.pipe_control* %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %60, %17, %11
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.pipe_control* @kmalloc(i32, i32) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_alloc_object(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @i915_gem_object_set_cache_level(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_pin(%struct.drm_i915_gem_object*, i32, i32, i32) #1

declare dso_local i32* @kmap(i32) #1

declare dso_local i32 @sg_page(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

declare dso_local i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @drm_gem_object_unreference(i32*) #1

declare dso_local i32 @kfree(%struct.pipe_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
