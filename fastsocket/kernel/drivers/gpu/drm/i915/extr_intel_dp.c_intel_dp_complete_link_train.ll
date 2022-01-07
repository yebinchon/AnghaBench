; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_complete_link_train.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_complete_link_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32, i32, i32 }

@DP_LINK_STATUS_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to train DP, aborting\0A\00", align 1
@DP_TRAINING_PATTERN_2 = common dso_local global i32 0, align 4
@DP_LINK_SCRAMBLING_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Channel EQ done. DP Training successfull\0A\00", align 1
@DP_TRAINING_PATTERN_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_dp_complete_link_train(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  store i32 0, i32* %3, align 4
  %10 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %11 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %80, %77, %1
  %14 = load i32, i32* @DP_LINK_STATUS_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 5
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %23 = call i32 @intel_dp_link_down(%struct.intel_dp* %22)
  store i32 2, i32* %9, align 4
  br label %77

24:                                               ; preds = %13
  %25 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %26 = call i32 @intel_dp_set_signal_levels(%struct.intel_dp* %25, i32* %6)
  %27 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @DP_TRAINING_PATTERN_2, align 4
  %30 = load i32, i32* @DP_LINK_SCRAMBLING_DISABLE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @intel_dp_set_link_train(%struct.intel_dp* %27, i32 %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  store i32 2, i32* %9, align 4
  br label %77

35:                                               ; preds = %24
  %36 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %37 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @drm_dp_link_train_channel_eq_delay(i32 %38)
  %40 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %41 = call i32 @intel_dp_get_link_status(%struct.intel_dp* %40, i32* %17)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  store i32 2, i32* %9, align 4
  br label %77

44:                                               ; preds = %35
  %45 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %46 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @drm_dp_clock_recovery_ok(i32* %17, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %52 = call i32 @intel_dp_start_link_train(%struct.intel_dp* %51)
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  store i32 3, i32* %9, align 4
  br label %77

55:                                               ; preds = %44
  %56 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %57 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @drm_dp_channel_eq_ok(i32* %17, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  store i32 2, i32* %9, align 4
  br label %77

62:                                               ; preds = %55
  %63 = load i32, i32* %4, align 4
  %64 = icmp sgt i32 %63, 5
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %67 = call i32 @intel_dp_link_down(%struct.intel_dp* %66)
  %68 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %69 = call i32 @intel_dp_start_link_train(%struct.intel_dp* %68)
  store i32 0, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  store i32 3, i32* %9, align 4
  br label %77

72:                                               ; preds = %62
  %73 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %74 = call i32 @intel_get_adjust_train(%struct.intel_dp* %73, i32* %17)
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %72, %65, %61, %50, %43, %34, %20
  %78 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %9, align 4
  switch i32 %79, label %91 [
    i32 0, label %80
    i32 2, label %81
    i32 3, label %13
  ]

80:                                               ; preds = %77
  br label %13

81:                                               ; preds = %77
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %81
  %87 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @DP_TRAINING_PATTERN_DISABLE, align 4
  %90 = call i32 @intel_dp_set_link_train(%struct.intel_dp* %87, i32 %88, i32 %89)
  ret void

91:                                               ; preds = %77
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DRM_ERROR(i8*) #2

declare dso_local i32 @intel_dp_link_down(%struct.intel_dp*) #2

declare dso_local i32 @intel_dp_set_signal_levels(%struct.intel_dp*, i32*) #2

declare dso_local i32 @intel_dp_set_link_train(%struct.intel_dp*, i32, i32) #2

declare dso_local i32 @drm_dp_link_train_channel_eq_delay(i32) #2

declare dso_local i32 @intel_dp_get_link_status(%struct.intel_dp*, i32*) #2

declare dso_local i32 @drm_dp_clock_recovery_ok(i32*, i32) #2

declare dso_local i32 @intel_dp_start_link_train(%struct.intel_dp*) #2

declare dso_local i64 @drm_dp_channel_eq_ok(i32*, i32) #2

declare dso_local i32 @intel_get_adjust_train(%struct.intel_dp*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
