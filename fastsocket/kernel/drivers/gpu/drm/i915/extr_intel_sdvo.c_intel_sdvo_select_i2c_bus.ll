; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_select_i2c_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_select_i2c_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.sdvo_device_mapping* }
%struct.sdvo_device_mapping = type { i32, i64 }
%struct.intel_sdvo = type { i32, i64 }

@GMBUS_PORT_DPB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_sdvo*, i32)* @intel_sdvo_select_i2c_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_select_i2c_bus(%struct.drm_i915_private* %0, %struct.intel_sdvo* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_sdvo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdvo_device_mapping*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_sdvo* %1, %struct.intel_sdvo** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %10 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  %16 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %15, align 8
  %17 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %16, i64 0
  store %struct.sdvo_device_mapping* %17, %struct.sdvo_device_mapping** %7, align 8
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %20, align 8
  %22 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %21, i64 1
  store %struct.sdvo_device_mapping* %22, %struct.sdvo_device_mapping** %7, align 8
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %7, align 8
  %25 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %7, align 8
  %30 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @intel_gmbus_is_port_valid(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %7, align 8
  %36 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %8, align 4
  br label %40

38:                                               ; preds = %28, %23
  %39 = load i32, i32* @GMBUS_PORT_DPB, align 4
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @intel_gmbus_get_adapter(%struct.drm_i915_private* %41, i32 %42)
  %44 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %45 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %47 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @intel_gmbus_force_bit(i32 %48, i32 1)
  ret void
}

declare dso_local i64 @intel_gmbus_is_port_valid(i32) #1

declare dso_local i32 @intel_gmbus_get_adapter(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_gmbus_force_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
