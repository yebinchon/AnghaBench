; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_ironlake_edp_panel_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_ironlake_edp_panel_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Turn eDP power off\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Need VDD to turn off panel\0A\00", align 1
@POWER_TARGET_ON = common dso_local global i32 0, align 4
@EDP_FORCE_VDD = common dso_local global i32 0, align 4
@PANEL_POWER_RESET = common dso_local global i32 0, align 4
@EDP_BLC_ENABLE = common dso_local global i32 0, align 4
@PCH_PP_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ironlake_edp_panel_off(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %6 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %7 = call %struct.drm_device* @intel_dp_to_dev(%struct.intel_dp* %6)
  store %struct.drm_device* %7, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %4, align 8
  %11 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %12 = call i32 @is_edp(%struct.intel_dp* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %45

15:                                               ; preds = %1
  %16 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %18 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %25 = call i32 @ironlake_get_pp_control(%struct.drm_i915_private* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @POWER_TARGET_ON, align 4
  %27 = load i32, i32* @EDP_FORCE_VDD, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PANEL_POWER_RESET, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @EDP_BLC_ENABLE, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @PCH_PP_CONTROL, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @I915_WRITE(i32 %36, i32 %37)
  %39 = load i32, i32* @PCH_PP_CONTROL, align 4
  %40 = call i32 @POSTING_READ(i32 %39)
  %41 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %42 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %44 = call i32 @ironlake_wait_panel_off(%struct.intel_dp* %43)
  br label %45

45:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.drm_device* @intel_dp_to_dev(%struct.intel_dp*) #1

declare dso_local i32 @is_edp(%struct.intel_dp*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @ironlake_get_pp_control(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @ironlake_wait_panel_off(%struct.intel_dp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
