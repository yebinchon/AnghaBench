; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_enable_dp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_enable_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_dp = type { i32 }

@DP_PORT_EN = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*)* @intel_enable_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_enable_dp(%struct.intel_encoder* %0) #0 {
  %2 = alloca %struct.intel_encoder*, align 8
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %2, align 8
  %7 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %8 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %7, i32 0, i32 0
  %9 = call %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_2__* %8)
  store %struct.intel_dp* %9, %struct.intel_dp** %3, align 8
  %10 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %11 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %4, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %5, align 8
  %17 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %18 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @I915_READ(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @DP_PORT_EN, align 4
  %23 = and i32 %21, %22
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %43

27:                                               ; preds = %1
  %28 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %29 = call i32 @ironlake_edp_panel_vdd_on(%struct.intel_dp* %28)
  %30 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %31 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %32 = call i32 @intel_dp_sink_dpms(%struct.intel_dp* %30, i32 %31)
  %33 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %34 = call i32 @intel_dp_start_link_train(%struct.intel_dp* %33)
  %35 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %36 = call i32 @ironlake_edp_panel_on(%struct.intel_dp* %35)
  %37 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %38 = call i32 @ironlake_edp_panel_vdd_off(%struct.intel_dp* %37, i32 1)
  %39 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %40 = call i32 @intel_dp_complete_link_train(%struct.intel_dp* %39)
  %41 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %42 = call i32 @ironlake_edp_backlight_on(%struct.intel_dp* %41)
  br label %43

43:                                               ; preds = %27, %26
  ret void
}

declare dso_local %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_2__*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ironlake_edp_panel_vdd_on(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_sink_dpms(%struct.intel_dp*, i32) #1

declare dso_local i32 @intel_dp_start_link_train(%struct.intel_dp*) #1

declare dso_local i32 @ironlake_edp_panel_on(%struct.intel_dp*) #1

declare dso_local i32 @ironlake_edp_panel_vdd_off(%struct.intel_dp*, i32) #1

declare dso_local i32 @intel_dp_complete_link_train(%struct.intel_dp*) #1

declare dso_local i32 @ironlake_edp_backlight_on(%struct.intel_dp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
