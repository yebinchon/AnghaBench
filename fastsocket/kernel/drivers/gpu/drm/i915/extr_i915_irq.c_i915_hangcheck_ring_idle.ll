; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_i915_hangcheck_ring_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_i915_hangcheck_ring_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { i32, i32, i32 (%struct.intel_ring_buffer*, i32)*, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Hangcheck timer elapsed... %s idle\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ring_buffer*, i32*)* @i915_hangcheck_ring_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_hangcheck_ring_idle(%struct.intel_ring_buffer* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_ring_buffer*, align 8
  %5 = alloca i32*, align 8
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %7 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %6, i32 0, i32 3
  %8 = call i64 @list_empty(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %11, i32 0, i32 2
  %13 = load i32 (%struct.intel_ring_buffer*, i32)*, i32 (%struct.intel_ring_buffer*, i32)** %12, align 8
  %14 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %15 = call i32 %13(%struct.intel_ring_buffer* %14, i32 0)
  %16 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %17 = call i32 @ring_last_seqno(%struct.intel_ring_buffer* %16)
  %18 = call i64 @i915_seqno_passed(i32 %15, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %10, %2
  %21 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %21, i32 0, i32 0
  %23 = call i64 @waitqueue_active(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %30, i32 0, i32 0
  %32 = call i32 @wake_up_all(i32* %31)
  %33 = load i32*, i32** %5, align 8
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %25, %20
  store i32 1, i32* %3, align 4
  br label %36

35:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @i915_seqno_passed(i32, i32) #1

declare dso_local i32 @ring_last_seqno(%struct.intel_ring_buffer*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
