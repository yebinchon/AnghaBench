; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_valleyview_crt_detect_hotplug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_valleyview_crt_detect_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_crt = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"trigger hotplug detect cycle: adpa=0x%x\0A\00", align 1
@ADPA_CRT_HOTPLUG_FORCE_TRIGGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"timed out waiting for FORCE_TRIGGER\00", align 1
@ADPA_CRT_HOTPLUG_MONITOR_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"valleyview hotplug adpa=0x%x, result %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @valleyview_crt_detect_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valleyview_crt_detect_hotplug(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.intel_crt*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %3, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %13 = call %struct.intel_crt* @intel_attached_crt(%struct.drm_connector* %12)
  store %struct.intel_crt* %13, %struct.intel_crt** %4, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %5, align 8
  %17 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %18 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @I915_READ(i32 %19)
  store i32 %20, i32* %6, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @ADPA_CRT_HOTPLUG_FORCE_TRIGGER, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %27 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @I915_WRITE(i32 %28, i32 %29)
  %31 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %32 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @I915_READ(i32 %33)
  %35 = load i32, i32* @ADPA_CRT_HOTPLUG_FORCE_TRIGGER, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @wait_for(i32 %38, i32 1000)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %1
  %42 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %44 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @I915_WRITE(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %1
  %49 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %50 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @I915_READ(i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @ADPA_CRT_HOTPLUG_MONITOR_MASK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 1, i32* %7, align 4
  br label %59

58:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %58, %57
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61)
  store i32 1, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local %struct.intel_crt* @intel_attached_crt(%struct.drm_connector*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
