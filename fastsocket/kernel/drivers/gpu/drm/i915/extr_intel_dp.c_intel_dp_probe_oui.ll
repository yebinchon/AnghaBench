; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_probe_oui.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_probe_oui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32* }

@DP_DOWN_STREAM_PORT_COUNT = common dso_local global i64 0, align 8
@DP_OUI_SUPPORT = common dso_local global i32 0, align 4
@DP_SINK_OUI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Sink OUI: %02hx%02hx%02hx\0A\00", align 1
@DP_BRANCH_OUI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Branch OUI: %02hx%02hx%02hx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @intel_dp_probe_oui to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_probe_oui(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca [3 x i32], align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %4 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %5 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @DP_DOWN_STREAM_PORT_COUNT, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DP_OUI_SUPPORT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %16 = call i32 @ironlake_edp_panel_vdd_on(%struct.intel_dp* %15)
  %17 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %18 = load i32, i32* @DP_SINK_OUI, align 4
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %20 = call i64 @intel_dp_aux_native_read_retry(%struct.intel_dp* %17, i32 %18, i32* %19, i32 3)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %22, %14
  %31 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %32 = load i32, i32* @DP_BRANCH_OUI, align 4
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %34 = call i64 @intel_dp_aux_native_read_retry(%struct.intel_dp* %31, i32 %32, i32* %33, i32 3)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %36, %30
  %45 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %46 = call i32 @ironlake_edp_panel_vdd_off(%struct.intel_dp* %45, i32 0)
  br label %47

47:                                               ; preds = %44, %13
  ret void
}

declare dso_local i32 @ironlake_edp_panel_vdd_on(%struct.intel_dp*) #1

declare dso_local i64 @intel_dp_aux_native_read_retry(%struct.intel_dp*, i32, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

declare dso_local i32 @ironlake_edp_panel_vdd_off(%struct.intel_dp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
