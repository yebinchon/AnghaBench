; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.intel_sdvo_connector = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @intel_sdvo_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_destroy(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.intel_sdvo_connector*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %4 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %5 = call %struct.intel_sdvo_connector* @to_intel_sdvo_connector(%struct.drm_connector* %4)
  store %struct.intel_sdvo_connector* %5, %struct.intel_sdvo_connector** %3, align 8
  %6 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %7 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %15 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @drm_property_destroy(i32 %13, i64 %16)
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %20 = call i32 @intel_sdvo_destroy_enhance_property(%struct.drm_connector* %19)
  %21 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %22 = call i32 @drm_sysfs_connector_remove(%struct.drm_connector* %21)
  %23 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %24 = call i32 @drm_connector_cleanup(%struct.drm_connector* %23)
  %25 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %26 = call i32 @kfree(%struct.intel_sdvo_connector* %25)
  ret void
}

declare dso_local %struct.intel_sdvo_connector* @to_intel_sdvo_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_property_destroy(i32, i64) #1

declare dso_local i32 @intel_sdvo_destroy_enhance_property(%struct.drm_connector*) #1

declare dso_local i32 @drm_sysfs_connector_remove(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

declare dso_local i32 @kfree(%struct.intel_sdvo_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
