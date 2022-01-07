; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_ring_flush_all_caches.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_ring_flush_all_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { i32, i32 (%struct.intel_ring_buffer*, i32, i32)* }

@I915_GEM_GPU_DOMAINS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_ring_flush_all_caches(%struct.intel_ring_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_ring_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %3, align 8
  %5 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %6 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %12 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %11, i32 0, i32 1
  %13 = load i32 (%struct.intel_ring_buffer*, i32, i32)*, i32 (%struct.intel_ring_buffer*, i32, i32)** %12, align 8
  %14 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %15 = load i32, i32* @I915_GEM_GPU_DOMAINS, align 4
  %16 = call i32 %13(%struct.intel_ring_buffer* %14, i32 0, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %27

21:                                               ; preds = %10
  %22 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %23 = load i32, i32* @I915_GEM_GPU_DOMAINS, align 4
  %24 = call i32 @trace_i915_gem_ring_flush(%struct.intel_ring_buffer* %22, i32 0, i32 %23)
  %25 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %26 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %21, %19, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @trace_i915_gem_ring_flush(%struct.intel_ring_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
