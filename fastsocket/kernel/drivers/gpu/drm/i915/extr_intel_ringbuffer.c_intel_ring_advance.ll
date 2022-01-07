; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_ring_advance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_ring_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { i32, i32, i32 (%struct.intel_ring_buffer*, i32)*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_ring_advance(%struct.intel_ring_buffer* %0) #0 {
  %2 = alloca %struct.intel_ring_buffer*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %2, align 8
  %4 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %4, i32 0, i32 3
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  %9 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %10 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %11, 1
  %13 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %14 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %22 = call i32 @intel_ring_flag(%struct.intel_ring_buffer* %21)
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %35

26:                                               ; preds = %1
  %27 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %28 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %27, i32 0, i32 2
  %29 = load i32 (%struct.intel_ring_buffer*, i32)*, i32 (%struct.intel_ring_buffer*, i32)** %28, align 8
  %30 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %31 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %32 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 %29(%struct.intel_ring_buffer* %30, i32 %33)
  br label %35

35:                                               ; preds = %26, %25
  ret void
}

declare dso_local i32 @intel_ring_flag(%struct.intel_ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
