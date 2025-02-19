; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_ring_alloc_seqno.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_ring_alloc_seqno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ring_buffer*)* @intel_ring_alloc_seqno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ring_alloc_seqno(%struct.intel_ring_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_ring_buffer*, align 8
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %3, align 8
  %4 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %5 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

9:                                                ; preds = %1
  %10 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %13, i32 0, i32 0
  %15 = call i32 @i915_gem_get_seqno(i32 %12, i64* %14)
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %9, %8
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @i915_gem_get_seqno(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
