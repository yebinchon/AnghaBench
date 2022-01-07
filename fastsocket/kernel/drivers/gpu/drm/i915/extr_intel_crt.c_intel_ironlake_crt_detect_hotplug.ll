; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_ironlake_crt_detect_hotplug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_ironlake_crt_detect_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_crt = type { i32, i64 }

@.str = private unnamed_addr constant [41 x i8] c"trigger hotplug detect cycle: adpa=0x%x\0A\00", align 1
@ADPA_CRT_HOTPLUG_FORCE_TRIGGER = common dso_local global i32 0, align 4
@ADPA_DAC_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"timed out waiting for FORCE_TRIGGER\00", align 1
@ADPA_CRT_HOTPLUG_MONITOR_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"ironlake hotplug adpa=0x%x, result %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @intel_ironlake_crt_detect_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ironlake_crt_detect_hotplug(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.intel_crt*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %3, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %14 = call %struct.intel_crt* @intel_attached_crt(%struct.drm_connector* %13)
  store %struct.intel_crt* %14, %struct.intel_crt** %4, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %5, align 8
  %18 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %19 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %75

22:                                               ; preds = %1
  %23 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %24 = call i32 @HAS_PCH_SPLIT(%struct.drm_device* %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %26 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %28 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @I915_READ(i32 %29)
  store i32 %30, i32* %6, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ADPA_CRT_HOTPLUG_FORCE_TRIGGER, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %22
  %39 = load i32, i32* @ADPA_DAC_ENABLE, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %38, %22
  %44 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %45 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @I915_WRITE(i32 %46, i32 %47)
  %49 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %50 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @I915_READ(i32 %51)
  %53 = load i32, i32* @ADPA_CRT_HOTPLUG_FORCE_TRIGGER, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i64 @wait_for(i32 %56, i32 1000)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %43
  %60 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %43
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %66 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @I915_WRITE(i32 %67, i32 %68)
  %70 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %71 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @POSTING_READ(i32 %72)
  br label %74

74:                                               ; preds = %64, %61
  br label %75

75:                                               ; preds = %74, %1
  %76 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %77 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @I915_READ(i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @ADPA_CRT_HOTPLUG_MONITOR_MASK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  store i32 1, i32* %7, align 4
  br label %86

85:                                               ; preds = %75
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %85, %84
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local %struct.intel_crt* @intel_attached_crt(%struct.drm_connector*) #1

declare dso_local i32 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
