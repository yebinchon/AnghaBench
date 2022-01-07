; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_crt_get_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_crt_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.i2c_adapter = type { i32 }

@GMBUS_PORT_DPB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @intel_crt_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_crt_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_adapter*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %9 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %4, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %5, align 8
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private* %14, i32 %17)
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %7, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %21 = call i32 @intel_crt_ddc_get_modes(%struct.drm_connector* %19, %struct.i2c_adapter* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = call i32 @IS_G4X(%struct.drm_device* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24, %1
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %37

30:                                               ; preds = %24
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %32 = load i32, i32* @GMBUS_PORT_DPB, align 4
  %33 = call %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private* %31, i32 %32)
  store %struct.i2c_adapter* %33, %struct.i2c_adapter** %7, align 8
  %34 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %36 = call i32 @intel_crt_ddc_get_modes(%struct.drm_connector* %34, %struct.i2c_adapter* %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %30, %28
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_crt_ddc_get_modes(%struct.drm_connector*, %struct.i2c_adapter*) #1

declare dso_local i32 @IS_G4X(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
