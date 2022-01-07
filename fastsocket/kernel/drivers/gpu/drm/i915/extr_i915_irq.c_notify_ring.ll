; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_notify_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_notify_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.intel_ring_buffer = type { i32, i32 (%struct.intel_ring_buffer*, i32)*, i32* }

@i915_enable_hangcheck = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@DRM_I915_HANGCHECK_JIFFIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.intel_ring_buffer*)* @notify_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @notify_ring(%struct.drm_device* %0, %struct.intel_ring_buffer* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.intel_ring_buffer*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.intel_ring_buffer* %1, %struct.intel_ring_buffer** %4, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %5, align 8
  %9 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %10 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %39

14:                                               ; preds = %2
  %15 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %16 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %16, i32 0, i32 1
  %18 = load i32 (%struct.intel_ring_buffer*, i32)*, i32 (%struct.intel_ring_buffer*, i32)** %17, align 8
  %19 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %20 = call i32 %18(%struct.intel_ring_buffer* %19, i32 0)
  %21 = call i32 @trace_i915_gem_request_complete(%struct.intel_ring_buffer* %15, i32 %20)
  %22 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %22, i32 0, i32 0
  %24 = call i32 @wake_up_all(i32* %23)
  %25 = load i64, i64* @i915_enable_hangcheck, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %14
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %32 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* @jiffies, align 8
  %35 = load i64, i64* @DRM_I915_HANGCHECK_JIFFIES, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @round_jiffies_up(i64 %36)
  %38 = call i32 @mod_timer(i32* %33, i32 %37)
  br label %39

39:                                               ; preds = %13, %27, %14
  ret void
}

declare dso_local i32 @trace_i915_gem_request_complete(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies_up(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
