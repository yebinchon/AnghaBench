; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_crt_detect_hotplug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_crt_detect_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@PORT_HOTPLUG_EN = common dso_local global i32 0, align 4
@CRT_HOTPLUG_FORCE_DETECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"timed out waiting for FORCE_DETECT to go off\00", align 1
@PORT_HOTPLUG_STAT = common dso_local global i32 0, align 4
@CRT_HOTPLUG_MONITOR_MASK = common dso_local global i32 0, align 4
@CRT_HOTPLUG_MONITOR_NONE = common dso_local global i32 0, align 4
@CRT_HOTPLUG_INT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @intel_crt_detect_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_crt_detect_hotplug(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %4, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %23 = call i32 @intel_ironlake_crt_detect_hotplug(%struct.drm_connector* %22)
  store i32 %23, i32* %2, align 4
  br label %86

24:                                               ; preds = %1
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = call i64 @IS_VALLEYVIEW(%struct.drm_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %30 = call i32 @valleyview_crt_detect_hotplug(%struct.drm_connector* %29)
  store i32 %30, i32* %2, align 4
  br label %86

31:                                               ; preds = %24
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = call i64 @IS_G4X(%struct.drm_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %37 = call i32 @IS_GM45(%struct.drm_device* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 2, i32* %11, align 4
  br label %41

40:                                               ; preds = %35, %31
  store i32 1, i32* %11, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* @PORT_HOTPLUG_EN, align 4
  %43 = call i32 @I915_READ(i32 %42)
  store i32 %43, i32* %7, align 4
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @CRT_HOTPLUG_FORCE_DETECT, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %66, %41
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %47
  %52 = load i32, i32* @PORT_HOTPLUG_EN, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @I915_WRITE(i32 %52, i32 %53)
  %55 = load i32, i32* @PORT_HOTPLUG_EN, align 4
  %56 = call i32 @I915_READ(i32 %55)
  %57 = load i32, i32* @CRT_HOTPLUG_FORCE_DETECT, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i64 @wait_for(i32 %60, i32 1000)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %51
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %47

69:                                               ; preds = %47
  %70 = load i32, i32* @PORT_HOTPLUG_STAT, align 4
  %71 = call i32 @I915_READ(i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @CRT_HOTPLUG_MONITOR_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @CRT_HOTPLUG_MONITOR_NONE, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store i32 1, i32* %9, align 4
  br label %78

78:                                               ; preds = %77, %69
  %79 = load i32, i32* @PORT_HOTPLUG_STAT, align 4
  %80 = load i32, i32* @CRT_HOTPLUG_INT_STATUS, align 4
  %81 = call i32 @I915_WRITE(i32 %79, i32 %80)
  %82 = load i32, i32* @PORT_HOTPLUG_EN, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @I915_WRITE(i32 %82, i32 %83)
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %78, %28, %21
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i32 @intel_ironlake_crt_detect_hotplug(%struct.drm_connector*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_device*) #1

declare dso_local i32 @valleyview_crt_detect_hotplug(%struct.drm_connector*) #1

declare dso_local i64 @IS_G4X(%struct.drm_device*) #1

declare dso_local i32 @IS_GM45(%struct.drm_device*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
