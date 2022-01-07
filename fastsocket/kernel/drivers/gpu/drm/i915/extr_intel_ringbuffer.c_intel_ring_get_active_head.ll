; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_ring_get_active_head.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_ring_get_active_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@ACTHD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_ring_get_active_head(%struct.intel_ring_buffer* %0) #0 {
  %2 = alloca %struct.intel_ring_buffer*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %2, align 8
  %5 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %6 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %3, align 8
  %10 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %11 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = call %struct.TYPE_3__* @INTEL_INFO(%struct.TYPE_4__* %12)
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %15, 4
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %19 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @RING_ACTHD(i32 %20)
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @ACTHD, align 4
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi i32 [ %21, %17 ], [ %23, %22 ]
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @I915_READ(i32 %26)
  ret i32 %27
}

declare dso_local %struct.TYPE_3__* @INTEL_INFO(%struct.TYPE_4__*) #1

declare dso_local i32 @RING_ACTHD(i32) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
