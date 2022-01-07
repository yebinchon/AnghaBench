; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_modes.c_intel_ddc_get_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_modes.c_intel_ddc_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.edid = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_ddc_get_modes(%struct.drm_connector* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.edid*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %10 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %8, %struct.i2c_adapter* %9)
  store %struct.edid* %10, %struct.edid** %6, align 8
  %11 = load %struct.edid*, %struct.edid** %6, align 8
  %12 = icmp ne %struct.edid* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

14:                                               ; preds = %2
  %15 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %16 = load %struct.edid*, %struct.edid** %6, align 8
  %17 = call i32 @intel_connector_update_modes(%struct.drm_connector* %15, %struct.edid* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.edid*, %struct.edid** %6, align 8
  %19 = call i32 @kfree(%struct.edid* %18)
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %14, %13
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, %struct.i2c_adapter*) #1

declare dso_local i32 @intel_connector_update_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
