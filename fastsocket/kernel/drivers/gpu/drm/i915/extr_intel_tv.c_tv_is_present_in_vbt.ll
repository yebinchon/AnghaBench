; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_tv_is_present_in_vbt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_tv_is_present_in_vbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32, %struct.child_device_config* }
%struct.child_device_config = type { i64, i64 }

@DEVICE_TYPE_INT_TV = common dso_local global i64 0, align 8
@DEVICE_TYPE_TV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @tv_is_present_in_vbt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tv_is_present_in_vbt(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.child_device_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %4, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %54

16:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %49, %16
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %17
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 1
  %26 = load %struct.child_device_config*, %struct.child_device_config** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %26, i64 %28
  store %struct.child_device_config* %29, %struct.child_device_config** %5, align 8
  %30 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %31 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DEVICE_TYPE_INT_TV, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %23
  %36 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %37 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DEVICE_TYPE_TV, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %49

42:                                               ; preds = %35, %23
  %43 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %44 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %7, align 4
  br label %52

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %17

52:                                               ; preds = %47, %17
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %15
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
