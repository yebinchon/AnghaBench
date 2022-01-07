; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_cleanup_pipe_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_cleanup_pipe_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { %struct.pipe_control* }
%struct.pipe_control = type { %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_ring_buffer*)* @cleanup_pipe_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_pipe_control(%struct.intel_ring_buffer* %0) #0 {
  %2 = alloca %struct.intel_ring_buffer*, align 8
  %3 = alloca %struct.pipe_control*, align 8
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %2, align 8
  %5 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %6 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %5, i32 0, i32 0
  %7 = load %struct.pipe_control*, %struct.pipe_control** %6, align 8
  store %struct.pipe_control* %7, %struct.pipe_control** %3, align 8
  %8 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %9 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %8, i32 0, i32 0
  %10 = load %struct.pipe_control*, %struct.pipe_control** %9, align 8
  %11 = icmp ne %struct.pipe_control* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.pipe_control*, %struct.pipe_control** %3, align 8
  %15 = getelementptr inbounds %struct.pipe_control, %struct.pipe_control* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %15, align 8
  store %struct.drm_i915_gem_object* %16, %struct.drm_i915_gem_object** %4, align 8
  %17 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %18 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sg_page(i32 %21)
  %23 = call i32 @kunmap(i32 %22)
  %24 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %25 = call i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object* %24)
  %26 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %27 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %26, i32 0, i32 0
  %28 = call i32 @drm_gem_object_unreference(i32* %27)
  %29 = load %struct.pipe_control*, %struct.pipe_control** %3, align 8
  %30 = call i32 @kfree(%struct.pipe_control* %29)
  %31 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %32 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %31, i32 0, i32 0
  store %struct.pipe_control* null, %struct.pipe_control** %32, align 8
  br label %33

33:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @sg_page(i32) #1

declare dso_local i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @drm_gem_object_unreference(i32*) #1

declare dso_local i32 @kfree(%struct.pipe_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
