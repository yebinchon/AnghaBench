; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_gen6_add_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_gen6_add_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { i32, i32* }

@MI_STORE_DWORD_INDEX = common dso_local global i32 0, align 4
@I915_GEM_HWS_INDEX = common dso_local global i32 0, align 4
@MI_STORE_DWORD_INDEX_SHIFT = common dso_local global i32 0, align 4
@MI_USER_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ring_buffer*)* @gen6_add_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen6_add_request(%struct.intel_ring_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_ring_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %3, align 8
  %7 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %8 = call i32 @intel_ring_begin(%struct.intel_ring_buffer* %7, i32 10)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %48

13:                                               ; preds = %1
  %14 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %15 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %20 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @update_mboxes(%struct.intel_ring_buffer* %24, i32 %25)
  %27 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @update_mboxes(%struct.intel_ring_buffer* %27, i32 %28)
  %30 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %31 = load i32, i32* @MI_STORE_DWORD_INDEX, align 4
  %32 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %30, i32 %31)
  %33 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %34 = load i32, i32* @I915_GEM_HWS_INDEX, align 4
  %35 = load i32, i32* @MI_STORE_DWORD_INDEX_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %33, i32 %36)
  %38 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %39 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %40 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %38, i32 %41)
  %43 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %44 = load i32, i32* @MI_USER_INTERRUPT, align 4
  %45 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %43, i32 %44)
  %46 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %47 = call i32 @intel_ring_advance(%struct.intel_ring_buffer* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %13, %11
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @intel_ring_begin(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @update_mboxes(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @intel_ring_emit(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @intel_ring_advance(%struct.intel_ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
