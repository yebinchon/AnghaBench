; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.intel_dp = type { i32 }
%struct.intel_connector = type { i32, %struct.drm_connector* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @intel_dp_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_destroy(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.intel_connector*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %5 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %6 = call %struct.intel_dp* @intel_attached_dp(%struct.drm_connector* %5)
  store %struct.intel_dp* %6, %struct.intel_dp** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %8 = call %struct.intel_connector* @to_intel_connector(%struct.drm_connector* %7)
  store %struct.intel_connector* %8, %struct.intel_connector** %4, align 8
  %9 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %10 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %9, i32 0, i32 1
  %11 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %12 = call i32 @IS_ERR_OR_NULL(%struct.drm_connector* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %16 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %15, i32 0, i32 1
  %17 = load %struct.drm_connector*, %struct.drm_connector** %16, align 8
  %18 = call i32 @kfree(%struct.drm_connector* %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %21 = call i64 @is_edp(%struct.intel_dp* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %25 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %24, i32 0, i32 0
  %26 = call i32 @intel_panel_fini(i32* %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %29 = call i32 @drm_sysfs_connector_remove(%struct.drm_connector* %28)
  %30 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %31 = call i32 @drm_connector_cleanup(%struct.drm_connector* %30)
  %32 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %33 = call i32 @kfree(%struct.drm_connector* %32)
  ret void
}

declare dso_local %struct.intel_dp* @intel_attached_dp(%struct.drm_connector*) #1

declare dso_local %struct.intel_connector* @to_intel_connector(%struct.drm_connector*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.drm_connector*) #1

declare dso_local i32 @kfree(%struct.drm_connector*) #1

declare dso_local i64 @is_edp(%struct.intel_dp*) #1

declare dso_local i32 @intel_panel_fini(i32*) #1

declare dso_local i32 @drm_sysfs_connector_remove(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
