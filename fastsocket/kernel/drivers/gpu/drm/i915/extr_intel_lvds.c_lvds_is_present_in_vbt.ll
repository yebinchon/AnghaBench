; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_lvds.c_lvds_is_present_in_vbt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_lvds.c_lvds_is_present_in_vbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32, %struct.TYPE_2__, %struct.child_device_config* }
%struct.TYPE_2__ = type { i64 }
%struct.child_device_config = type { i64, i64, i32 }

@DEVICE_TYPE_INT_LFP = common dso_local global i64 0, align 8
@DEVICE_TYPE_LFP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32*)* @lvds_is_present_in_vbt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lvds_is_present_in_vbt(%struct.drm_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.child_device_config*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %6, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %72

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %68, %17
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %71

24:                                               ; preds = %18
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 2
  %27 = load %struct.child_device_config*, %struct.child_device_config** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %27, i64 %29
  store %struct.child_device_config* %30, %struct.child_device_config** %8, align 8
  %31 = load %struct.child_device_config*, %struct.child_device_config** %8, align 8
  %32 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DEVICE_TYPE_INT_LFP, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %24
  %37 = load %struct.child_device_config*, %struct.child_device_config** %8, align 8
  %38 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DEVICE_TYPE_LFP, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %68

43:                                               ; preds = %36, %24
  %44 = load %struct.child_device_config*, %struct.child_device_config** %8, align 8
  %45 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @intel_gmbus_is_port_valid(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.child_device_config*, %struct.child_device_config** %8, align 8
  %51 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %43
  %55 = load %struct.child_device_config*, %struct.child_device_config** %8, align 8
  %56 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %72

60:                                               ; preds = %54
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %62 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 1, i32* %3, align 4
  br label %72

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %42
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %18

71:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %66, %59, %16
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @intel_gmbus_is_port_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
