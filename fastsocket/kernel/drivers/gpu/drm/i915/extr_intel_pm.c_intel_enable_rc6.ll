; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_intel_enable_rc6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_intel_enable_rc6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@i915_enable_rc6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Haswell: only RC6 available\0A\00", align 1
@INTEL_RC6_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Sandybridge: deep RC6 disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"RC6 and deep RC6 enabled\0A\00", align 1
@INTEL_RC6p_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_enable_rc6(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %4 = load i64, i64* @i915_enable_rc6, align 8
  %5 = icmp sge i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i64, i64* @i915_enable_rc6, align 8
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %2, align 4
  br label %37

9:                                                ; preds = %1
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 5
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %37

16:                                               ; preds = %9
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = call i64 @IS_HASWELL(%struct.drm_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @INTEL_RC6_ENABLE, align 4
  store i32 %22, i32* %2, align 4
  br label %37

23:                                               ; preds = %16
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 6
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @INTEL_RC6_ENABLE, align 4
  store i32 %31, i32* %2, align 4
  br label %37

32:                                               ; preds = %23
  %33 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @INTEL_RC6_ENABLE, align 4
  %35 = load i32, i32* @INTEL_RC6p_ENABLE, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %32, %29, %20, %15, %6
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
