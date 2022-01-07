; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_gen3_init_clock_gating.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_gen3_init_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@D_STATE = common dso_local global i32 0, align 4
@DSTATE_PLL_D3_OFF = common dso_local global i32 0, align 4
@DSTATE_GFX_CLOCK_GATING = common dso_local global i32 0, align 4
@DSTATE_DOT_CLOCK_GATING = common dso_local global i32 0, align 4
@ECOSKPD = common dso_local global i32 0, align 4
@ECO_GATING_CX_ONLY = common dso_local global i32 0, align 4
@ECO_FLIP_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @gen3_init_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen3_init_clock_gating(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load i32, i32* @D_STATE, align 4
  %9 = call i32 @I915_READ(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @DSTATE_PLL_D3_OFF, align 4
  %11 = load i32, i32* @DSTATE_GFX_CLOCK_GATING, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @DSTATE_DOT_CLOCK_GATING, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @D_STATE, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @I915_WRITE(i32 %17, i32 %18)
  %20 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %21 = call i64 @IS_PINEVIEW(%struct.drm_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load i32, i32* @ECOSKPD, align 4
  %25 = load i32, i32* @ECO_GATING_CX_ONLY, align 4
  %26 = call i32 @_MASKED_BIT_ENABLE(i32 %25)
  %27 = call i32 @I915_WRITE(i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load i32, i32* @ECOSKPD, align 4
  %30 = load i32, i32* @ECO_FLIP_DONE, align 4
  %31 = call i32 @_MASKED_BIT_DISABLE(i32 %30)
  %32 = call i32 @I915_WRITE(i32 %29, i32 %31)
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @IS_PINEVIEW(%struct.drm_device*) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @_MASKED_BIT_DISABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
