; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_gen6_ring_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_gen6_ring_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { i32*, i64, i32 }

@MI_SEMAPHORE_MBOX = common dso_local global i32 0, align 4
@MI_SEMAPHORE_COMPARE = common dso_local global i32 0, align 4
@MI_SEMAPHORE_REGISTER = common dso_local global i32 0, align 4
@MI_SEMAPHORE_SYNC_INVALID = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ring_buffer*, %struct.intel_ring_buffer*, i32)* @gen6_ring_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen6_ring_sync(%struct.intel_ring_buffer* %0, %struct.intel_ring_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_ring_buffer*, align 8
  %6 = alloca %struct.intel_ring_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %5, align 8
  store %struct.intel_ring_buffer* %1, %struct.intel_ring_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @MI_SEMAPHORE_MBOX, align 4
  %11 = load i32, i32* @MI_SEMAPHORE_COMPARE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MI_SEMAPHORE_REGISTER, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  %17 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MI_SEMAPHORE_SYNC_INVALID, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %30 = call i32 @intel_ring_begin(%struct.intel_ring_buffer* %29, i32 4)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %83

35:                                               ; preds = %3
  %36 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %37 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @i915_gem_has_seqno_wrapped(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @likely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %35
  %47 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %50 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %53 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %48, %56
  %58 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %47, i32 %57)
  %59 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %59, i32 %60)
  %62 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %63 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %62, i32 0)
  %64 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %65 = load i32, i32* @MI_NOOP, align 4
  %66 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %64, i32 %65)
  br label %80

67:                                               ; preds = %35
  %68 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %69 = load i32, i32* @MI_NOOP, align 4
  %70 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %68, i32 %69)
  %71 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %72 = load i32, i32* @MI_NOOP, align 4
  %73 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %71, i32 %72)
  %74 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %75 = load i32, i32* @MI_NOOP, align 4
  %76 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %74, i32 %75)
  %77 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %78 = load i32, i32* @MI_NOOP, align 4
  %79 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %77, i32 %78)
  br label %80

80:                                               ; preds = %67, %46
  %81 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %82 = call i32 @intel_ring_advance(%struct.intel_ring_buffer* %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %80, %33
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @intel_ring_begin(%struct.intel_ring_buffer*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @i915_gem_has_seqno_wrapped(i32, i32) #1

declare dso_local i32 @intel_ring_emit(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @intel_ring_advance(%struct.intel_ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
