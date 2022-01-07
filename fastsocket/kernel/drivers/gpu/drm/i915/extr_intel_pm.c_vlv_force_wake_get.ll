; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_vlv_force_wake_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_vlv_force_wake_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@FORCEWAKE_ACK_VLV = common dso_local global i32 0, align 4
@FORCEWAKE_ACK_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Timed out waiting for forcewake old ack to clear.\0A\00", align 1
@FORCEWAKE_VLV = common dso_local global i32 0, align 4
@FORCEWAKE_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Timed out waiting for forcewake to ack request.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @vlv_force_wake_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_force_wake_get(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load i32, i32* @FORCEWAKE_ACK_VLV, align 4
  %4 = call i32 @I915_READ_NOTRACE(i32 %3)
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* @FORCEWAKE_ACK_TIMEOUT_MS, align 4
  %9 = call i64 @wait_for_atomic(i32 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i32, i32* @FORCEWAKE_VLV, align 4
  %15 = load i32, i32* @FORCEWAKE_KERNEL, align 4
  %16 = call i32 @_MASKED_BIT_ENABLE(i32 %15)
  %17 = call i32 @I915_WRITE_NOTRACE(i32 %14, i32 %16)
  %18 = load i32, i32* @FORCEWAKE_ACK_VLV, align 4
  %19 = call i32 @I915_READ_NOTRACE(i32 %18)
  %20 = and i32 %19, 1
  %21 = load i32, i32* @FORCEWAKE_ACK_TIMEOUT_MS, align 4
  %22 = call i64 @wait_for_atomic(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %13
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %28 = call i32 @__gen6_gt_wait_for_thread_c0(%struct.drm_i915_private* %27)
  ret void
}

declare dso_local i64 @wait_for_atomic(i32, i32) #1

declare dso_local i32 @I915_READ_NOTRACE(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @I915_WRITE_NOTRACE(i32, i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @__gen6_gt_wait_for_thread_c0(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
