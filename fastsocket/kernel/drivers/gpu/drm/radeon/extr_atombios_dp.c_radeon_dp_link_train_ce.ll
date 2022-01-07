; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_link_train_ce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_link_train_ce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_dp_link_train_info = type { i32, i32*, i32, i32, i32, i32, i64 }

@DP_TRAINING_PATTERN_3 = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"displayport link status failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"channel eq failed: 5 tries\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"channel eq failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"channel eq at voltage %d pre-emphasis %d\0A\00", align 1
@DP_TRAIN_VOLTAGE_SWING_MASK = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPHASIS_MASK = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPHASIS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_dp_link_train_info*)* @radeon_dp_link_train_ce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_dp_link_train_ce(%struct.radeon_dp_link_train_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_dp_link_train_info*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_dp_link_train_info* %0, %struct.radeon_dp_link_train_info** %3, align 8
  %5 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %6 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %5, i32 0, i32 6
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %11 = load i32, i32* @DP_TRAINING_PATTERN_3, align 4
  %12 = call i32 @radeon_dp_set_tp(%struct.radeon_dp_link_train_info* %10, i32 %11)
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %15 = load i32, i32* @DP_TRAINING_PATTERN_2, align 4
  %16 = call i32 @radeon_dp_set_tp(%struct.radeon_dp_link_train_info* %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %9
  %18 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %17, %52
  %21 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @drm_dp_link_train_channel_eq_delay(i32 %23)
  %25 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %26 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @radeon_dp_get_link_status(i32 %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %20
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %69

35:                                               ; preds = %20
  %36 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %37 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %40 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @drm_dp_channel_eq_ok(i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %69

45:                                               ; preds = %35
  %46 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %47 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 5
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %69

52:                                               ; preds = %45
  %53 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %54 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %57 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @dp_get_adjust_train(i32 %55, i32 %58, i32* %61)
  %63 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %64 = call i32 @radeon_dp_update_vs_emph(%struct.radeon_dp_link_train_info* %63)
  %65 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %66 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  br label %20

69:                                               ; preds = %50, %44, %33
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %92

74:                                               ; preds = %69
  %75 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %76 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %81 = and i32 %79, %80
  %82 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %83 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_SHIFT, align 4
  %90 = ashr i32 %88, %89
  %91 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %90)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %74, %72
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @radeon_dp_set_tp(%struct.radeon_dp_link_train_info*, i32) #1

declare dso_local i32 @drm_dp_link_train_channel_eq_delay(i32) #1

declare dso_local i32 @radeon_dp_get_link_status(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @drm_dp_channel_eq_ok(i32, i32) #1

declare dso_local i32 @dp_get_adjust_train(i32, i32, i32*) #1

declare dso_local i32 @radeon_dp_update_vs_emph(%struct.radeon_dp_link_train_info*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
