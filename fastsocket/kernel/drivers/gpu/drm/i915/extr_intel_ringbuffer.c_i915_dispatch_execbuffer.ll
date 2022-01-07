; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_i915_dispatch_execbuffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_i915_dispatch_execbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { i32 }

@MI_BATCH_BUFFER_START = common dso_local global i32 0, align 4
@MI_BATCH_GTT = common dso_local global i32 0, align 4
@I915_DISPATCH_SECURE = common dso_local global i32 0, align 4
@MI_BATCH_NON_SECURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ring_buffer*, i32, i32, i32)* @i915_dispatch_execbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_dispatch_execbuffer(%struct.intel_ring_buffer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_ring_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %12 = call i32 @intel_ring_begin(%struct.intel_ring_buffer* %11, i32 2)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %5, align 4
  br label %38

17:                                               ; preds = %4
  %18 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %19 = load i32, i32* @MI_BATCH_BUFFER_START, align 4
  %20 = load i32, i32* @MI_BATCH_GTT, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %18, i32 %21)
  %23 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @I915_DISPATCH_SECURE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %32

30:                                               ; preds = %17
  %31 = load i32, i32* @MI_BATCH_NON_SECURE, align 4
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i32 [ 0, %29 ], [ %31, %30 ]
  %34 = or i32 %24, %33
  %35 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %23, i32 %34)
  %36 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %37 = call i32 @intel_ring_advance(%struct.intel_ring_buffer* %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %32, %15
  %39 = load i32, i32* %5, align 4
  ret i32 %39
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
