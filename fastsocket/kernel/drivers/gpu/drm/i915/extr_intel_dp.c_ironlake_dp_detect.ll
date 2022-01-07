; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_ironlake_dp_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_ironlake_dp_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { i32 }

@connector_status_unknown = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*)* @ironlake_dp_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ironlake_dp_detect(%struct.intel_dp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_digital_port*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  %8 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %9 = call %struct.drm_device* @intel_dp_to_dev(%struct.intel_dp* %8)
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %14 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %13)
  store %struct.intel_digital_port* %14, %struct.intel_digital_port** %6, align 8
  %15 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %16 = call i64 @is_edp(%struct.intel_dp* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = call i32 @intel_panel_detect(%struct.drm_device* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @connector_status_unknown, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @connector_status_connected, align 4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %38

28:                                               ; preds = %1
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %30 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %31 = call i32 @ibx_digital_port_connected(%struct.drm_i915_private* %29, %struct.intel_digital_port* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %34, i32* %2, align 4
  br label %38

35:                                               ; preds = %28
  %36 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %37 = call i32 @intel_dp_detect_dpcd(%struct.intel_dp* %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %33, %26
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.drm_device* @intel_dp_to_dev(%struct.intel_dp*) #1

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i64 @is_edp(%struct.intel_dp*) #1

declare dso_local i32 @intel_panel_detect(%struct.drm_device*) #1

declare dso_local i32 @ibx_digital_port_connected(%struct.drm_i915_private*, %struct.intel_digital_port*) #1

declare dso_local i32 @intel_dp_detect_dpcd(%struct.intel_dp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
