; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_init_link_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_init_link_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32*, i32*, i32, i32 }

@DP_LINK_CONFIGURATION_SIZE = common dso_local global i32 0, align 4
@DP_SET_ANSI_8B10B = common dso_local global i32 0, align 4
@DP_DPCD_REV = common dso_local global i64 0, align 8
@DP_MAX_LANE_COUNT = common dso_local global i64 0, align 8
@DP_ENHANCED_FRAME_CAP = common dso_local global i32 0, align 4
@DP_LANE_COUNT_ENHANCED_FRAME_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_dp_init_link_config(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %3 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %4 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* @DP_LINK_CONFIGURATION_SIZE, align 4
  %7 = call i32 @memset(i32* %5, i32 0, i32 %6)
  %8 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %9 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %12 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %10, i32* %14, align 4
  %15 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %16 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %19 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* @DP_SET_ANSI_8B10B, align 4
  %23 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %24 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 8
  store i32 %22, i32* %26, align 4
  %27 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %28 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @DP_DPCD_REV, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %32, 17
  br i1 %33, label %34, label %52

34:                                               ; preds = %1
  %35 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %36 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @DP_MAX_LANE_COUNT, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DP_ENHANCED_FRAME_CAP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load i32, i32* @DP_LANE_COUNT_ENHANCED_FRAME_EN, align 4
  %46 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %47 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %45
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %44, %34, %1
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
