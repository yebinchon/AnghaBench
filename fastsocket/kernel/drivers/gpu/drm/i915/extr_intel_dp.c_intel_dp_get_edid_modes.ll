; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_get_edid_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_get_edid_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.intel_connector = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.i2c_adapter*)* @intel_dp_get_edid_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_get_edid_modes(%struct.drm_connector* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.intel_connector*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %8 = call %struct.intel_connector* @to_intel_connector(%struct.drm_connector* %7)
  store %struct.intel_connector* %8, %struct.intel_connector** %6, align 8
  %9 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %10 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %15 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @IS_ERR(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %30

20:                                               ; preds = %13
  %21 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %22 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %23 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @intel_connector_update_modes(%struct.drm_connector* %21, i64 %24)
  store i32 %25, i32* %3, align 4
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %29 = call i32 @intel_ddc_get_modes(%struct.drm_connector* %27, %struct.i2c_adapter* %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %20, %19
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.intel_connector* @to_intel_connector(%struct.drm_connector*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @intel_connector_update_modes(%struct.drm_connector*, i64) #1

declare dso_local i32 @intel_ddc_get_modes(%struct.drm_connector*, %struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
