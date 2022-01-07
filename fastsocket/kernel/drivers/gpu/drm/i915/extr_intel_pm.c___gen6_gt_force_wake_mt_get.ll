; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c___gen6_gt_force_wake_mt_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c___gen6_gt_force_wake_mt_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@FORCEWAKE_ACK_HSW = common dso_local global i32 0, align 4
@FORCEWAKE_MT_ACK = common dso_local global i32 0, align 4
@FORCEWAKE_ACK_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Timed out waiting for forcewake old ack to clear.\0A\00", align 1
@FORCEWAKE_MT = common dso_local global i32 0, align 4
@FORCEWAKE_KERNEL = common dso_local global i32 0, align 4
@ECOBUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Timed out waiting for forcewake to ack request.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @__gen6_gt_force_wake_mt_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__gen6_gt_force_wake_mt_get(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @IS_HASWELL(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @FORCEWAKE_ACK_HSW, align 4
  store i32 %10, i32* %3, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @FORCEWAKE_MT_ACK, align 4
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @I915_READ_NOTRACE(i32 %14)
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @FORCEWAKE_ACK_TIMEOUT_MS, align 4
  %20 = call i64 @wait_for_atomic(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %13
  %25 = load i32, i32* @FORCEWAKE_MT, align 4
  %26 = load i32, i32* @FORCEWAKE_KERNEL, align 4
  %27 = call i32 @_MASKED_BIT_ENABLE(i32 %26)
  %28 = call i32 @I915_WRITE_NOTRACE(i32 %25, i32 %27)
  %29 = load i32, i32* @ECOBUS, align 4
  %30 = call i32 @POSTING_READ(i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @I915_READ_NOTRACE(i32 %31)
  %33 = and i32 %32, 1
  %34 = load i32, i32* @FORCEWAKE_ACK_TIMEOUT_MS, align 4
  %35 = call i64 @wait_for_atomic(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %24
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %41 = call i32 @__gen6_gt_wait_for_thread_c0(%struct.drm_i915_private* %40)
  ret void
}

declare dso_local i64 @IS_HASWELL(i32) #1

declare dso_local i64 @wait_for_atomic(i32, i32) #1

declare dso_local i32 @I915_READ_NOTRACE(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @I915_WRITE_NOTRACE(i32, i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @__gen6_gt_wait_for_thread_c0(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
