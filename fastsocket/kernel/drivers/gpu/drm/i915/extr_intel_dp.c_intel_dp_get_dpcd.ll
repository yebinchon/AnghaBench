; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_get_dpcd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_get_dpcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32*, i32* }

@.str = private unnamed_addr constant [10 x i8] c"DPCD: %s\0A\00", align 1
@DP_DPCD_REV = common dso_local global i64 0, align 8
@DP_DOWNSTREAMPORT_PRESENT = common dso_local global i64 0, align 8
@DP_DWN_STRM_PORT_PRESENT = common dso_local global i32 0, align 4
@DP_DOWNSTREAM_PORT_0 = common dso_local global i32 0, align 4
@DP_MAX_DOWNSTREAM_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*)* @intel_dp_get_dpcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_get_dpcd(%struct.intel_dp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca [24 x i8], align 16
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  %5 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %6 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %7 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i64 @intel_dp_aux_native_read_retry(%struct.intel_dp* %5, i32 0, i32* %8, i32 8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

12:                                               ; preds = %1
  %13 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %14 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds [24 x i8], [24 x i8]* %4, i64 0, i64 0
  %17 = call i32 @hex_dump_to_buffer(i32* %15, i32 8, i32 32, i32 1, i8* %16, i32 24, i32 0)
  %18 = getelementptr inbounds [24 x i8], [24 x i8]* %4, i64 0, i64 0
  %19 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %21 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @DP_DPCD_REV, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %59

28:                                               ; preds = %12
  %29 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %30 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @DP_DOWNSTREAMPORT_PRESENT, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DP_DWN_STRM_PORT_PRESENT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %59

39:                                               ; preds = %28
  %40 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %41 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @DP_DPCD_REV, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 16
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %59

48:                                               ; preds = %39
  %49 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %50 = load i32, i32* @DP_DOWNSTREAM_PORT_0, align 4
  %51 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %52 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @DP_MAX_DOWNSTREAM_PORTS, align 4
  %55 = call i64 @intel_dp_aux_native_read_retry(%struct.intel_dp* %49, i32 %50, i32* %53, i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %59

58:                                               ; preds = %48
  store i32 1, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %57, %47, %38, %27, %11
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @intel_dp_aux_native_read_retry(%struct.intel_dp*, i32, i32*, i32) #1

declare dso_local i32 @hex_dump_to_buffer(i32*, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
