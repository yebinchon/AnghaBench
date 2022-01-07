; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_pre_emphasis_max.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_pre_emphasis_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.drm_device = type { i32 }

@DP_TRAIN_VOLTAGE_SWING_MASK = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPHASIS_9_5 = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPHASIS_6 = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPHASIS_3_5 = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPHASIS_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*, i32)* @intel_dp_pre_emphasis_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_pre_emphasis_max(%struct.intel_dp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_dp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %8 = call %struct.drm_device* @intel_dp_to_dev(%struct.intel_dp* %7)
  store %struct.drm_device* %8, %struct.drm_device** %6, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %10 = call i64 @IS_HASWELL(%struct.drm_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %23 [
    i32 130, label %16
    i32 129, label %18
    i32 128, label %20
    i32 131, label %22
  ]

16:                                               ; preds = %12
  %17 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_9_5, align 4
  store i32 %17, i32* %3, align 4
  br label %60

18:                                               ; preds = %12
  %19 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_6, align 4
  store i32 %19, i32* %3, align 4
  br label %60

20:                                               ; preds = %12
  %21 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_3_5, align 4
  store i32 %21, i32* %3, align 4
  br label %60

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %12, %22
  %24 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_0, align 4
  store i32 %24, i32* %3, align 4
  br label %60

25:                                               ; preds = %2
  %26 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %27 = call i64 @IS_GEN7(%struct.drm_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %25
  %30 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %31 = call i64 @is_cpu_edp(%struct.intel_dp* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %35 = call i32 @IS_VALLEYVIEW(%struct.drm_device* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %40 = and i32 %38, %39
  switch i32 %40, label %45 [
    i32 130, label %41
    i32 129, label %43
    i32 128, label %43
  ]

41:                                               ; preds = %37
  %42 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_6, align 4
  store i32 %42, i32* %3, align 4
  br label %60

43:                                               ; preds = %37, %37
  %44 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_3_5, align 4
  store i32 %44, i32* %3, align 4
  br label %60

45:                                               ; preds = %37
  %46 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_0, align 4
  store i32 %46, i32* %3, align 4
  br label %60

47:                                               ; preds = %33, %29, %25
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %50 = and i32 %48, %49
  switch i32 %50, label %58 [
    i32 130, label %51
    i32 129, label %53
    i32 128, label %55
    i32 131, label %57
  ]

51:                                               ; preds = %47
  %52 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_6, align 4
  store i32 %52, i32* %3, align 4
  br label %60

53:                                               ; preds = %47
  %54 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_6, align 4
  store i32 %54, i32* %3, align 4
  br label %60

55:                                               ; preds = %47
  %56 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_3_5, align 4
  store i32 %56, i32* %3, align 4
  br label %60

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %47, %57
  %59 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_0, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %55, %53, %51, %45, %43, %41, %23, %20, %18, %16
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.drm_device* @intel_dp_to_dev(%struct.intel_dp*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN7(%struct.drm_device*) #1

declare dso_local i64 @is_cpu_edp(%struct.intel_dp*) #1

declare dso_local i32 @IS_VALLEYVIEW(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
