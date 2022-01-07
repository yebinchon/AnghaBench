; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_intel_hdmi_get_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_intel_hdmi_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_hdmi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @intel_hdmi_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdmi_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.intel_hdmi*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %5 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %6 = call %struct.intel_hdmi* @intel_attached_hdmi(%struct.drm_connector* %5)
  store %struct.intel_hdmi* %6, %struct.intel_hdmi** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %4, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %14 = load %struct.intel_hdmi*, %struct.intel_hdmi** %3, align 8
  %15 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @intel_gmbus_get_adapter(%struct.drm_i915_private* %13, i32 %16)
  %18 = call i32 @intel_ddc_get_modes(%struct.drm_connector* %12, i32 %17)
  ret i32 %18
}

declare dso_local %struct.intel_hdmi* @intel_attached_hdmi(%struct.drm_connector*) #1

declare dso_local i32 @intel_ddc_get_modes(%struct.drm_connector*, i32) #1

declare dso_local i32 @intel_gmbus_get_adapter(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
