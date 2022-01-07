; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_detect_dpcd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_detect_dpcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32*, i32*, i32 }

@connector_status_disconnected = common dso_local global i32 0, align 4
@DP_DOWNSTREAMPORT_PRESENT = common dso_local global i64 0, align 8
@DP_DWN_STRM_PORT_PRESENT = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@DP_DS_PORT_HPD = common dso_local global i32 0, align 4
@DP_SINK_COUNT = common dso_local global i32 0, align 4
@connector_status_unknown = common dso_local global i32 0, align 4
@DP_DS_PORT_TYPE_MASK = common dso_local global i32 0, align 4
@DP_DS_PORT_TYPE_VGA = common dso_local global i32 0, align 4
@DP_DS_PORT_TYPE_NON_EDID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Broken DP branch device, ignoring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*)* @intel_dp_detect_dpcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_detect_dpcd(%struct.intel_dp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  %8 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %9 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  %11 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %12 = call i32 @intel_dp_get_dpcd(%struct.intel_dp* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %15, i32* %2, align 4
  br label %84

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* @DP_DOWNSTREAMPORT_PRESENT, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DP_DWN_STRM_PORT_PRESENT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @connector_status_connected, align 4
  store i32 %25, i32* %2, align 4
  br label %84

26:                                               ; preds = %16
  %27 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %28 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DP_DS_PORT_HPD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %26
  %41 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %42 = load i32, i32* @DP_SINK_COUNT, align 4
  %43 = call i32 @intel_dp_aux_native_read_retry(%struct.intel_dp* %41, i32 %42, i32* %7, i32 1)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @connector_status_unknown, align 4
  store i32 %46, i32* %2, align 4
  br label %84

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @DP_GET_SINK_COUNT(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @connector_status_connected, align 4
  br label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @connector_status_disconnected, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %2, align 4
  br label %84

57:                                               ; preds = %26
  %58 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %59 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %58, i32 0, i32 2
  %60 = call i64 @drm_probe_ddc(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @connector_status_connected, align 4
  store i32 %63, i32* %2, align 4
  br label %84

64:                                               ; preds = %57
  %65 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %66 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DP_DS_PORT_TYPE_MASK, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @DP_DS_PORT_TYPE_VGA, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @DP_DS_PORT_TYPE_NON_EDID, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75, %64
  %80 = load i32, i32* @connector_status_unknown, align 4
  store i32 %80, i32* %2, align 4
  br label %84

81:                                               ; preds = %75
  %82 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %81, %79, %62, %55, %45, %24, %14
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @intel_dp_get_dpcd(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_aux_native_read_retry(%struct.intel_dp*, i32, i32*, i32) #1

declare dso_local i64 @DP_GET_SINK_COUNT(i32) #1

declare dso_local i64 @drm_probe_ddc(i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
