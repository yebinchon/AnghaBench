; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_ironlake_edp_backlight_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_ironlake_edp_backlight_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.intel_digital_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EDP_BLC_ENABLE = common dso_local global i32 0, align 4
@PCH_PP_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ironlake_edp_backlight_on(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %8 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %9 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %8)
  store %struct.intel_digital_port* %9, %struct.intel_digital_port** %3, align 8
  %10 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %11 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %4, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %5, align 8
  %18 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %19 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_6__* @to_intel_crtc(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %27 = call i32 @is_edp(%struct.intel_dp* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  br label %49

30:                                               ; preds = %1
  %31 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %33 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @msleep(i32 %34)
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %37 = call i32 @ironlake_get_pp_control(%struct.drm_i915_private* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @EDP_BLC_ENABLE, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @PCH_PP_CONTROL, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @I915_WRITE(i32 %41, i32 %42)
  %44 = load i32, i32* @PCH_PP_CONTROL, align 4
  %45 = call i32 @POSTING_READ(i32 %44)
  %46 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @intel_panel_enable_backlight(%struct.drm_device* %46, i32 %47)
  br label %49

49:                                               ; preds = %30, %29
  ret void
}

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local %struct.TYPE_6__* @to_intel_crtc(i32) #1

declare dso_local i32 @is_edp(%struct.intel_dp*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ironlake_get_pp_control(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_panel_enable_backlight(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
