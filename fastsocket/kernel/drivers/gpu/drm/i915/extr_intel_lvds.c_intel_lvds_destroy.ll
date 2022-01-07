; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_lvds.c_intel_lvds_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_lvds.c_intel_lvds_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.intel_lvds_connector = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, %struct.drm_connector* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @intel_lvds_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_lvds_destroy(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.intel_lvds_connector*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %4 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %5 = call %struct.intel_lvds_connector* @to_lvds_connector(%struct.drm_connector* %4)
  store %struct.intel_lvds_connector* %5, %struct.intel_lvds_connector** %3, align 8
  %6 = load %struct.intel_lvds_connector*, %struct.intel_lvds_connector** %3, align 8
  %7 = getelementptr inbounds %struct.intel_lvds_connector, %struct.intel_lvds_connector* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.intel_lvds_connector*, %struct.intel_lvds_connector** %3, align 8
  %13 = getelementptr inbounds %struct.intel_lvds_connector, %struct.intel_lvds_connector* %12, i32 0, i32 1
  %14 = call i32 @acpi_lid_notifier_unregister(%struct.TYPE_4__* %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.intel_lvds_connector*, %struct.intel_lvds_connector** %3, align 8
  %17 = getelementptr inbounds %struct.intel_lvds_connector, %struct.intel_lvds_connector* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.drm_connector*, %struct.drm_connector** %18, align 8
  %20 = call i32 @IS_ERR_OR_NULL(%struct.drm_connector* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = load %struct.intel_lvds_connector*, %struct.intel_lvds_connector** %3, align 8
  %24 = getelementptr inbounds %struct.intel_lvds_connector, %struct.intel_lvds_connector* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.drm_connector*, %struct.drm_connector** %25, align 8
  %27 = call i32 @kfree(%struct.drm_connector* %26)
  br label %28

28:                                               ; preds = %22, %15
  %29 = load %struct.intel_lvds_connector*, %struct.intel_lvds_connector** %3, align 8
  %30 = getelementptr inbounds %struct.intel_lvds_connector, %struct.intel_lvds_connector* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @intel_panel_fini(i32* %31)
  %33 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %34 = call i32 @drm_sysfs_connector_remove(%struct.drm_connector* %33)
  %35 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %36 = call i32 @drm_connector_cleanup(%struct.drm_connector* %35)
  %37 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %38 = call i32 @kfree(%struct.drm_connector* %37)
  ret void
}

declare dso_local %struct.intel_lvds_connector* @to_lvds_connector(%struct.drm_connector*) #1

declare dso_local i32 @acpi_lid_notifier_unregister(%struct.TYPE_4__*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.drm_connector*) #1

declare dso_local i32 @kfree(%struct.drm_connector*) #1

declare dso_local i32 @intel_panel_fini(i32*) #1

declare dso_local i32 @drm_sysfs_connector_remove(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
