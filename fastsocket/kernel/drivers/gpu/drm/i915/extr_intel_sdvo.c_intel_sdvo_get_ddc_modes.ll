; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_get_ddc_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_get_ddc_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.edid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @intel_sdvo_get_ddc_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_get_ddc_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.edid*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %4 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %5 = call %struct.edid* @intel_sdvo_get_edid(%struct.drm_connector* %4)
  store %struct.edid* %5, %struct.edid** %3, align 8
  %6 = load %struct.edid*, %struct.edid** %3, align 8
  %7 = icmp eq %struct.edid* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %10 = call %struct.edid* @intel_sdvo_get_analog_edid(%struct.drm_connector* %9)
  store %struct.edid* %10, %struct.edid** %3, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.edid*, %struct.edid** %3, align 8
  %13 = icmp ne %struct.edid* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %16 = call i32 @to_intel_sdvo_connector(%struct.drm_connector* %15)
  %17 = load %struct.edid*, %struct.edid** %3, align 8
  %18 = call i64 @intel_sdvo_connector_matches_edid(i32 %16, %struct.edid* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %22 = load %struct.edid*, %struct.edid** %3, align 8
  %23 = call i32 @drm_mode_connector_update_edid_property(%struct.drm_connector* %21, %struct.edid* %22)
  %24 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %25 = load %struct.edid*, %struct.edid** %3, align 8
  %26 = call i32 @drm_add_edid_modes(%struct.drm_connector* %24, %struct.edid* %25)
  br label %27

27:                                               ; preds = %20, %14
  %28 = load %struct.edid*, %struct.edid** %3, align 8
  %29 = call i32 @kfree(%struct.edid* %28)
  br label %30

30:                                               ; preds = %27, %11
  ret void
}

declare dso_local %struct.edid* @intel_sdvo_get_edid(%struct.drm_connector*) #1

declare dso_local %struct.edid* @intel_sdvo_get_analog_edid(%struct.drm_connector*) #1

declare dso_local i64 @intel_sdvo_connector_matches_edid(i32, %struct.edid*) #1

declare dso_local i32 @to_intel_sdvo_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_mode_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
