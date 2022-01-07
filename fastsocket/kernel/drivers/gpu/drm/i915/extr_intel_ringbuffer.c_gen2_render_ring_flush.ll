; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_gen2_render_ring_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_gen2_render_ring_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { i32 }

@MI_FLUSH = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_RENDER = common dso_local global i32 0, align 4
@MI_NO_WRITE_FLUSH = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_SAMPLER = common dso_local global i32 0, align 4
@MI_READ_FLUSH = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ring_buffer*, i32, i32)* @gen2_render_ring_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen2_render_ring_flush(%struct.intel_ring_buffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_ring_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @MI_FLUSH, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @I915_GEM_DOMAIN_RENDER, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @MI_NO_WRITE_FLUSH, align 4
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @I915_GEM_DOMAIN_SAMPLER, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @MI_READ_FLUSH, align 4
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %32 = call i32 @intel_ring_begin(%struct.intel_ring_buffer* %31, i32 2)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %46

37:                                               ; preds = %30
  %38 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %38, i32 %39)
  %41 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %42 = load i32, i32* @MI_NOOP, align 4
  %43 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %41, i32 %42)
  %44 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %45 = call i32 @intel_ring_advance(%struct.intel_ring_buffer* %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %37, %35
  %47 = load i32, i32* %4, align 4
  ret i32 %47
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
