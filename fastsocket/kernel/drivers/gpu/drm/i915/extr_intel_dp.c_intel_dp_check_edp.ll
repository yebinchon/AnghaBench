; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_check_edp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_check_edp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"eDP powered off while attempting aux channel communication.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Status 0x%08x Control 0x%08x\0A\00", align 1
@PCH_PP_STATUS = common dso_local global i32 0, align 4
@PCH_PP_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @intel_dp_check_edp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_check_edp(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %5 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %6 = call %struct.drm_device* @intel_dp_to_dev(%struct.intel_dp* %5)
  store %struct.drm_device* %6, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %4, align 8
  %10 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %11 = call i32 @is_edp(%struct.intel_dp* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %29

14:                                               ; preds = %1
  %15 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %16 = call i32 @ironlake_edp_have_panel_power(%struct.intel_dp* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %20 = call i32 @ironlake_edp_have_panel_vdd(%struct.intel_dp* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @PCH_PP_STATUS, align 4
  %25 = call i32 @I915_READ(i32 %24)
  %26 = load i32, i32* @PCH_PP_CONTROL, align 4
  %27 = call i32 @I915_READ(i32 %26)
  %28 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %27)
  br label %29

29:                                               ; preds = %13, %22, %18, %14
  ret void
}

declare dso_local %struct.drm_device* @intel_dp_to_dev(%struct.intel_dp*) #1

declare dso_local i32 @is_edp(%struct.intel_dp*) #1

declare dso_local i32 @ironlake_edp_have_panel_power(%struct.intel_dp*) #1

declare dso_local i32 @ironlake_edp_have_panel_vdd(%struct.intel_dp*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
