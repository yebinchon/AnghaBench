; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_ironlake_edp_panel_vdd_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_ironlake_edp_panel_vdd_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32, i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Turn eDP VDD on\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"eDP VDD already requested on\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"eDP VDD already on\0A\00", align 1
@EDP_FORCE_VDD = common dso_local global i32 0, align 4
@PCH_PP_CONTROL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"PCH_PP_STATUS: 0x%08x PCH_PP_CONTROL: 0x%08x\0A\00", align 1
@PCH_PP_STATUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"eDP was not running\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ironlake_edp_panel_vdd_on(%struct.intel_dp* %0) #0 {
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
  br label %60

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %18 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @WARN(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %22 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %24 = call i64 @ironlake_edp_have_panel_vdd(%struct.intel_dp* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %60

28:                                               ; preds = %15
  %29 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %30 = call i32 @ironlake_edp_have_panel_power(%struct.intel_dp* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %34 = call i32 @ironlake_wait_panel_power_cycle(%struct.intel_dp* %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %37 = call i32 @ironlake_get_pp_control(%struct.drm_i915_private* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @EDP_FORCE_VDD, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @PCH_PP_CONTROL, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @I915_WRITE(i32 %41, i32 %42)
  %44 = load i32, i32* @PCH_PP_CONTROL, align 4
  %45 = call i32 @POSTING_READ(i32 %44)
  %46 = load i32, i32* @PCH_PP_STATUS, align 4
  %47 = call i32 @I915_READ(i32 %46)
  %48 = load i32, i32* @PCH_PP_CONTROL, align 4
  %49 = call i32 @I915_READ(i32 %48)
  %50 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 %49)
  %51 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %52 = call i32 @ironlake_edp_have_panel_power(%struct.intel_dp* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %35
  %55 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %56 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %57 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @msleep(i32 %58)
  br label %60

60:                                               ; preds = %14, %26, %54, %35
  ret void
}

declare dso_local %struct.drm_device* @intel_dp_to_dev(%struct.intel_dp*) #1

declare dso_local i32 @is_edp(%struct.intel_dp*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i64 @ironlake_edp_have_panel_vdd(%struct.intel_dp*) #1

declare dso_local i32 @ironlake_edp_have_panel_power(%struct.intel_dp*) #1

declare dso_local i32 @ironlake_wait_panel_power_cycle(%struct.intel_dp*) #1

declare dso_local i32 @ironlake_get_pp_control(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
