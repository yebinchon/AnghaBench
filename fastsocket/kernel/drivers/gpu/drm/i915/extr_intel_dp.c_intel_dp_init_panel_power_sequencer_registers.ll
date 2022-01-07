; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_init_panel_power_sequencer_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_init_panel_power_sequencer_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_dp = type { i32 }
%struct.edp_power_seq = type { i32, i32, i32, i32, i32 }

@PANEL_POWER_UP_DELAY_SHIFT = common dso_local global i32 0, align 4
@PANEL_LIGHT_ON_DELAY_SHIFT = common dso_local global i32 0, align 4
@PANEL_LIGHT_OFF_DELAY_SHIFT = common dso_local global i32 0, align 4
@PANEL_POWER_DOWN_DELAY_SHIFT = common dso_local global i32 0, align 4
@PP_REFERENCE_DIVIDER_SHIFT = common dso_local global i32 0, align 4
@PANEL_POWER_CYCLE_DELAY_SHIFT = common dso_local global i32 0, align 4
@PANEL_POWER_PORT_DP_A = common dso_local global i32 0, align 4
@PANEL_POWER_PORT_DP_D = common dso_local global i32 0, align 4
@PCH_PP_ON_DELAYS = common dso_local global i32 0, align 4
@PCH_PP_OFF_DELAYS = common dso_local global i32 0, align 4
@PCH_PP_DIVISOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"panel power sequencer register settings: PP_ON %#x, PP_OFF %#x, PP_DIV %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.intel_dp*, %struct.edp_power_seq*)* @intel_dp_init_panel_power_sequencer_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_init_panel_power_sequencer_registers(%struct.drm_device* %0, %struct.intel_dp* %1, %struct.edp_power_seq* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.intel_dp*, align 8
  %6 = alloca %struct.edp_power_seq*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.intel_dp* %1, %struct.intel_dp** %5, align 8
  store %struct.edp_power_seq* %2, %struct.edp_power_seq** %6, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %7, align 8
  %14 = load %struct.edp_power_seq*, %struct.edp_power_seq** %6, align 8
  %15 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PANEL_POWER_UP_DELAY_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load %struct.edp_power_seq*, %struct.edp_power_seq** %6, align 8
  %20 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PANEL_LIGHT_ON_DELAY_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %18, %23
  store i32 %24, i32* %8, align 4
  %25 = load %struct.edp_power_seq*, %struct.edp_power_seq** %6, align 8
  %26 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PANEL_LIGHT_OFF_DELAY_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load %struct.edp_power_seq*, %struct.edp_power_seq** %6, align 8
  %31 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PANEL_POWER_DOWN_DELAY_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %29, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %37 = call i32 @intel_pch_rawclk(%struct.drm_device* %36)
  %38 = mul nsw i32 100, %37
  %39 = sdiv i32 %38, 2
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* @PP_REFERENCE_DIVIDER_SHIFT, align 4
  %42 = shl i32 %40, %41
  store i32 %42, i32* %10, align 4
  %43 = load %struct.edp_power_seq*, %struct.edp_power_seq** %6, align 8
  %44 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @DIV_ROUND_UP(i32 %45, i32 1000)
  %47 = load i32, i32* @PANEL_POWER_CYCLE_DELAY_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %10, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %52 = call i64 @HAS_PCH_IBX(%struct.drm_device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %3
  %55 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %56 = call i64 @HAS_PCH_CPT(%struct.drm_device* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %54, %3
  %59 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %60 = call i64 @is_cpu_edp(%struct.intel_dp* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @PANEL_POWER_PORT_DP_A, align 4
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  br label %70

66:                                               ; preds = %58
  %67 = load i32, i32* @PANEL_POWER_PORT_DP_D, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %54
  %72 = load i32, i32* @PCH_PP_ON_DELAYS, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @I915_WRITE(i32 %72, i32 %73)
  %75 = load i32, i32* @PCH_PP_OFF_DELAYS, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @I915_WRITE(i32 %75, i32 %76)
  %78 = load i32, i32* @PCH_PP_DIVISOR, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @I915_WRITE(i32 %78, i32 %79)
  %81 = load i32, i32* @PCH_PP_ON_DELAYS, align 4
  %82 = call i32 @I915_READ(i32 %81)
  %83 = load i32, i32* @PCH_PP_OFF_DELAYS, align 4
  %84 = call i32 @I915_READ(i32 %83)
  %85 = load i32, i32* @PCH_PP_DIVISOR, align 4
  %86 = call i32 @I915_READ(i32 %85)
  %87 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %84, i32 %86)
  ret void
}

declare dso_local i32 @intel_pch_rawclk(%struct.drm_device*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_device*) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_device*) #1

declare dso_local i64 @is_cpu_edp(%struct.intel_dp*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
