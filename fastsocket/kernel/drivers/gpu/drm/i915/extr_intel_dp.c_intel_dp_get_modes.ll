; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_get_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_dp = type { i32 }
%struct.intel_connector = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.drm_display_mode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @intel_dp_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.intel_dp*, align 8
  %5 = alloca %struct.intel_connector*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = call %struct.intel_dp* @intel_attached_dp(%struct.drm_connector* %9)
  store %struct.intel_dp* %10, %struct.intel_dp** %4, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %12 = call %struct.intel_connector* @to_intel_connector(%struct.drm_connector* %11)
  store %struct.intel_connector* %12, %struct.intel_connector** %5, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %6, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %17 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %18 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %17, i32 0, i32 0
  %19 = call i32 @intel_dp_get_edid_modes(%struct.drm_connector* %16, i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %49

24:                                               ; preds = %1
  %25 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %26 = call i64 @is_edp(%struct.intel_dp* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %30 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %36 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %37 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %35, i64 %39)
  store %struct.drm_display_mode* %40, %struct.drm_display_mode** %8, align 8
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %42 = icmp ne %struct.drm_display_mode* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %46 = call i32 @drm_mode_probed_add(%struct.drm_connector* %44, %struct.drm_display_mode* %45)
  store i32 1, i32* %2, align 4
  br label %49

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %28, %24
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %43, %22
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.intel_dp* @intel_attached_dp(%struct.drm_connector*) #1

declare dso_local %struct.intel_connector* @to_intel_connector(%struct.drm_connector*) #1

declare dso_local i32 @intel_dp_get_edid_modes(%struct.drm_connector*, i32*) #1

declare dso_local i64 @is_edp(%struct.intel_dp*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, i64) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
