; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_get_slave_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_get_slave_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.sdvo_device_mapping* }
%struct.sdvo_device_mapping = type { i32 }
%struct.intel_sdvo = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.intel_sdvo*)* @intel_sdvo_get_slave_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_get_slave_addr(%struct.drm_device* %0, %struct.intel_sdvo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.intel_sdvo*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.sdvo_device_mapping*, align 8
  %8 = alloca %struct.sdvo_device_mapping*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.intel_sdvo* %1, %struct.intel_sdvo** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %6, align 8
  %12 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %13 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %18, align 8
  %20 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %19, i64 0
  store %struct.sdvo_device_mapping* %20, %struct.sdvo_device_mapping** %7, align 8
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %22 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %21, i32 0, i32 0
  %23 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %22, align 8
  %24 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %23, i64 1
  store %struct.sdvo_device_mapping* %24, %struct.sdvo_device_mapping** %8, align 8
  br label %34

25:                                               ; preds = %2
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 0
  %28 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %27, align 8
  %29 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %28, i64 1
  store %struct.sdvo_device_mapping* %29, %struct.sdvo_device_mapping** %7, align 8
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %31 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %30, i32 0, i32 0
  %32 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %31, align 8
  %33 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %32, i64 0
  store %struct.sdvo_device_mapping* %33, %struct.sdvo_device_mapping** %8, align 8
  br label %34

34:                                               ; preds = %25, %16
  %35 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %7, align 8
  %36 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %7, align 8
  %41 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %3, align 4
  br label %62

43:                                               ; preds = %34
  %44 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %8, align 8
  %45 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %8, align 8
  %50 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 112
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 114, i32* %3, align 4
  br label %62

54:                                               ; preds = %48
  store i32 112, i32* %3, align 4
  br label %62

55:                                               ; preds = %43
  %56 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %57 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 112, i32* %3, align 4
  br label %62

61:                                               ; preds = %55
  store i32 114, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %60, %54, %53, %39
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
