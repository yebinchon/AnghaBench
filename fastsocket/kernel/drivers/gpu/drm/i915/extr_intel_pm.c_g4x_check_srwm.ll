; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_g4x_check_srwm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_g4x_check_srwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.intel_watermark_params = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"SR watermark: display plane %d, cursor %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"display watermark is too large(%d/%ld), disabling\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"cursor watermark is too large(%d/%ld), disabling\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"SR latency is 0, disabling\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32, %struct.intel_watermark_params*, %struct.intel_watermark_params*)* @g4x_check_srwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g4x_check_srwm(%struct.drm_device* %0, i32 %1, i32 %2, %struct.intel_watermark_params* %3, %struct.intel_watermark_params* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_watermark_params*, align 8
  %11 = alloca %struct.intel_watermark_params*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.intel_watermark_params* %3, %struct.intel_watermark_params** %10, align 8
  store %struct.intel_watermark_params* %4, %struct.intel_watermark_params** %11, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %10, align 8
  %17 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %10, align 8
  %23 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %24)
  store i32 0, i32* %6, align 4
  br label %47

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %11, align 8
  %29 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %11, align 8
  %35 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %36)
  store i32 0, i32* %6, align 4
  br label %47

38:                                               ; preds = %26
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %47

46:                                               ; preds = %41, %38
  store i32 1, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %44, %32, %20
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
