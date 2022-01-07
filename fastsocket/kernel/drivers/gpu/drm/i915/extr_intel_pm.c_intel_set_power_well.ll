; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_intel_set_power_well.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_intel_set_power_well.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@i915_disable_power_well = common dso_local global i32 0, align 4
@HSW_PWR_WELL_DRIVER = common dso_local global i32 0, align 4
@HSW_PWR_WELL_STATE = common dso_local global i32 0, align 4
@HSW_PWR_WELL_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Enabling power well\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Timeout enabling power well\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Requesting to disable the power well\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_set_power_well(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = call i32 @IS_HASWELL(%struct.drm_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %64

16:                                               ; preds = %2
  %17 = load i32, i32* @i915_disable_power_well, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %64

23:                                               ; preds = %19, %16
  %24 = load i32, i32* @HSW_PWR_WELL_DRIVER, align 4
  %25 = call i32 @I915_READ(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @HSW_PWR_WELL_STATE, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @HSW_PWR_WELL_ENABLE, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @HSW_PWR_WELL_DRIVER, align 4
  %39 = load i32, i32* @HSW_PWR_WELL_ENABLE, align 4
  %40 = call i32 @I915_WRITE(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %41
  %45 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @HSW_PWR_WELL_DRIVER, align 4
  %47 = call i32 @I915_READ(i32 %46)
  %48 = load i32, i32* @HSW_PWR_WELL_STATE, align 4
  %49 = and i32 %47, %48
  %50 = call i64 @wait_for(i32 %49, i32 20)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %44
  br label %55

55:                                               ; preds = %54, %41
  br label %64

56:                                               ; preds = %23
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* @HSW_PWR_WELL_DRIVER, align 4
  %61 = call i32 @I915_WRITE(i32 %60, i32 0)
  %62 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %56
  br label %64

64:                                               ; preds = %15, %22, %63, %55
  ret void
}

declare dso_local i32 @IS_HASWELL(%struct.drm_device*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
