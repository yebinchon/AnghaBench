; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_select_ddc_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_select_ddc_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.sdvo_device_mapping* }
%struct.sdvo_device_mapping = type { i32, i64 }
%struct.intel_sdvo = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_sdvo*, i32)* @intel_sdvo_select_ddc_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_select_ddc_bus(%struct.drm_i915_private* %0, %struct.intel_sdvo* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_sdvo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdvo_device_mapping*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_sdvo* %1, %struct.intel_sdvo** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %9 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %14, align 8
  %16 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %15, i64 0
  store %struct.sdvo_device_mapping* %16, %struct.sdvo_device_mapping** %7, align 8
  br label %22

17:                                               ; preds = %3
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %19, align 8
  %21 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %20, i64 1
  store %struct.sdvo_device_mapping* %21, %struct.sdvo_device_mapping** %7, align 8
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %7, align 8
  %24 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %7, align 8
  %29 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 240
  %32 = ashr i32 %31, 4
  %33 = shl i32 1, %32
  %34 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %35 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %39

36:                                               ; preds = %22
  %37 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %38 = call i32 @intel_sdvo_guess_ddc_bus(%struct.intel_sdvo* %37)
  br label %39

39:                                               ; preds = %36, %27
  ret void
}

declare dso_local i32 @intel_sdvo_guess_ddc_bus(%struct.intel_sdvo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
