; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_check_srwm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_check_srwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_watermark_params = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"watermark %d: display plane %d, fbc lines %d, cursor %d\0A\00", align 1
@SNB_FBC_MAX_SRWM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"fbc watermark(%d) is too large(%d), disabling wm%d+\0A\00", align 1
@DISP_ARB_CTL = common dso_local global i32 0, align 4
@DISP_FBC_WM_DIS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"display watermark(%d) is too large(%d), disabling wm%d+\0A\00", align 1
@SNB_DISPLAY_MAX_SRWM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"cursor watermark(%d) is too large(%d), disabling wm%d+\0A\00", align 1
@SNB_CURSOR_MAX_SRWM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"latency %d is 0, disabling wm%d+\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32, i32, i32, %struct.intel_watermark_params*, %struct.intel_watermark_params*)* @ironlake_check_srwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ironlake_check_srwm(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.intel_watermark_params* %5, %struct.intel_watermark_params* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.intel_watermark_params*, align 8
  %15 = alloca %struct.intel_watermark_params*, align 8
  %16 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.intel_watermark_params* %5, %struct.intel_watermark_params** %14, align 8
  store %struct.intel_watermark_params* %6, %struct.intel_watermark_params** %15, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %18, align 8
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %16, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @SNB_FBC_MAX_SRWM, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %7
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @SNB_FBC_MAX_SRWM, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @DISP_ARB_CTL, align 4
  %34 = load i32, i32* @DISP_ARB_CTL, align 4
  %35 = call i32 @I915_READ(i32 %34)
  %36 = load i32, i32* @DISP_FBC_WM_DIS, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @I915_WRITE(i32 %33, i32 %37)
  store i32 0, i32* %8, align 4
  br label %75

39:                                               ; preds = %7
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %14, align 8
  %42 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @SNB_DISPLAY_MAX_SRWM, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  store i32 0, i32* %8, align 4
  br label %75

50:                                               ; preds = %39
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %15, align 8
  %53 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @SNB_CURSOR_MAX_SRWM, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %58, i32 %59)
  store i32 0, i32* %8, align 4
  br label %75

61:                                               ; preds = %50
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %71, i32 %72)
  store i32 0, i32* %8, align 4
  br label %75

74:                                               ; preds = %67, %64, %61
  store i32 1, i32* %8, align 4
  br label %75

75:                                               ; preds = %74, %70, %56, %45, %28
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, ...) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
