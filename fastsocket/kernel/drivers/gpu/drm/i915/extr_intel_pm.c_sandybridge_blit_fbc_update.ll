; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_sandybridge_blit_fbc_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_sandybridge_blit_fbc_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@GEN6_BLITTER_ECOSKPD = common dso_local global i32 0, align 4
@GEN6_BLITTER_FBC_NOTIFY = common dso_local global i32 0, align 4
@GEN6_BLITTER_LOCK_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @sandybridge_blit_fbc_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sandybridge_blit_fbc_update(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = call i32 @gen6_gt_force_wake_get(%struct.drm_i915_private* %8)
  %10 = load i32, i32* @GEN6_BLITTER_ECOSKPD, align 4
  %11 = call i32 @I915_READ(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @GEN6_BLITTER_FBC_NOTIFY, align 4
  %13 = load i32, i32* @GEN6_BLITTER_LOCK_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @GEN6_BLITTER_ECOSKPD, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @I915_WRITE(i32 %17, i32 %18)
  %20 = load i32, i32* @GEN6_BLITTER_FBC_NOTIFY, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @GEN6_BLITTER_ECOSKPD, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @I915_WRITE(i32 %23, i32 %24)
  %26 = load i32, i32* @GEN6_BLITTER_FBC_NOTIFY, align 4
  %27 = load i32, i32* @GEN6_BLITTER_LOCK_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @GEN6_BLITTER_ECOSKPD, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @I915_WRITE(i32 %32, i32 %33)
  %35 = load i32, i32* @GEN6_BLITTER_ECOSKPD, align 4
  %36 = call i32 @POSTING_READ(i32 %35)
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = call i32 @gen6_gt_force_wake_put(%struct.drm_i915_private* %37)
  ret void
}

declare dso_local i32 @gen6_gt_force_wake_get(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @gen6_gt_force_wake_put(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
