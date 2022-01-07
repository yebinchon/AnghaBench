; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_lvds.c_intel_lvds_get_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_lvds.c_intel_lvds_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_lvds_connector = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_display_mode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @intel_lvds_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_lvds_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.intel_lvds_connector*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.intel_lvds_connector* @to_lvds_connector(%struct.drm_connector* %7)
  store %struct.intel_lvds_connector* %8, %struct.intel_lvds_connector** %4, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %5, align 8
  %12 = load %struct.intel_lvds_connector*, %struct.intel_lvds_connector** %4, align 8
  %13 = getelementptr inbounds %struct.intel_lvds_connector, %struct.intel_lvds_connector* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @IS_ERR_OR_NULL(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %20 = load %struct.intel_lvds_connector*, %struct.intel_lvds_connector** %4, align 8
  %21 = getelementptr inbounds %struct.intel_lvds_connector, %struct.intel_lvds_connector* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @drm_add_edid_modes(%struct.drm_connector* %19, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %40

25:                                               ; preds = %1
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = load %struct.intel_lvds_connector*, %struct.intel_lvds_connector** %4, align 8
  %28 = getelementptr inbounds %struct.intel_lvds_connector, %struct.intel_lvds_connector* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %26, i32 %31)
  store %struct.drm_display_mode* %32, %struct.drm_display_mode** %6, align 8
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %34 = icmp eq %struct.drm_display_mode* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %40

36:                                               ; preds = %25
  %37 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %39 = call i32 @drm_mode_probed_add(%struct.drm_connector* %37, %struct.drm_display_mode* %38)
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %36, %35, %18
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.intel_lvds_connector* @to_lvds_connector(%struct.drm_connector*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, i32) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
