; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.h_i915_trace_irq_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.h_i915_trace_irq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { i64, i64 (%struct.intel_ring_buffer*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_ring_buffer*, i64)* @i915_trace_irq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_trace_irq_get(%struct.intel_ring_buffer* %0, i64 %1) #0 {
  %3 = alloca %struct.intel_ring_buffer*, align 8
  %4 = alloca i64, align 8
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %6 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %10, i32 0, i32 1
  %12 = load i64 (%struct.intel_ring_buffer*)*, i64 (%struct.intel_ring_buffer*)** %11, align 8
  %13 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %14 = call i64 %12(%struct.intel_ring_buffer* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %19 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %9, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
