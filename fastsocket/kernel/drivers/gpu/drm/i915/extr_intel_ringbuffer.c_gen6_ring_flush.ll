; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_gen6_ring_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_gen6_ring_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { i32 }

@MI_FLUSH_DW = common dso_local global i32 0, align 4
@I915_GEM_GPU_DOMAINS = common dso_local global i32 0, align 4
@MI_INVALIDATE_TLB = common dso_local global i32 0, align 4
@MI_INVALIDATE_BSD = common dso_local global i32 0, align 4
@MI_FLUSH_DW_STORE_INDEX = common dso_local global i32 0, align 4
@MI_FLUSH_DW_OP_STOREDW = common dso_local global i32 0, align 4
@I915_GEM_HWS_SCRATCH_ADDR = common dso_local global i32 0, align 4
@MI_FLUSH_DW_USE_GTT = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ring_buffer*, i32, i32)* @gen6_ring_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen6_ring_flush(%struct.intel_ring_buffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_ring_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %11 = call i32 @intel_ring_begin(%struct.intel_ring_buffer* %10, i32 4)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %4, align 4
  br label %48

16:                                               ; preds = %3
  %17 = load i32, i32* @MI_FLUSH_DW, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @I915_GEM_GPU_DOMAINS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load i32, i32* @MI_INVALIDATE_TLB, align 4
  %24 = load i32, i32* @MI_INVALIDATE_BSD, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MI_FLUSH_DW_STORE_INDEX, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MI_FLUSH_DW_OP_STOREDW, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %22, %16
  %33 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %33, i32 %34)
  %36 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %37 = load i32, i32* @I915_GEM_HWS_SCRATCH_ADDR, align 4
  %38 = load i32, i32* @MI_FLUSH_DW_USE_GTT, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %36, i32 %39)
  %41 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %42 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %41, i32 0)
  %43 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %44 = load i32, i32* @MI_NOOP, align 4
  %45 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %43, i32 %44)
  %46 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %47 = call i32 @intel_ring_advance(%struct.intel_ring_buffer* %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %32, %14
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @intel_ring_begin(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @intel_ring_emit(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @intel_ring_advance(%struct.intel_ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
