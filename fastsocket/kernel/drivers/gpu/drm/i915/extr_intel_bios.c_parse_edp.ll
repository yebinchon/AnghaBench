; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_bios.c_parse_edp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_bios.c_parse_edp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, %struct.edp_power_seq, i64 }
%struct.edp_power_seq = type { i32 }
%struct.bdb_header = type { i32 }
%struct.bdb_edp = type { i32, %struct.edp_link_params*, %struct.edp_power_seq* }
%struct.edp_link_params = type { i32, i32, i32, i64 }

@BDB_EDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"No eDP BDB found but eDP panel supported.\0A\00", align 1
@panel_type = common dso_local global i32 0, align 4
@DP_LINK_BW_2_7 = common dso_local global i32 0, align 4
@DP_LINK_BW_1_62 = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPHASIS_0 = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPHASIS_3_5 = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPHASIS_6 = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPHASIS_9_5 = common dso_local global i32 0, align 4
@DP_TRAIN_VOLTAGE_SWING_400 = common dso_local global i32 0, align 4
@DP_TRAIN_VOLTAGE_SWING_600 = common dso_local global i32 0, align 4
@DP_TRAIN_VOLTAGE_SWING_800 = common dso_local global i32 0, align 4
@DP_TRAIN_VOLTAGE_SWING_1200 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.bdb_header*)* @parse_edp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_edp(%struct.drm_i915_private* %0, %struct.bdb_header* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.bdb_header*, align 8
  %5 = alloca %struct.bdb_edp*, align 8
  %6 = alloca %struct.edp_power_seq*, align 8
  %7 = alloca %struct.edp_link_params*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.bdb_header* %1, %struct.bdb_header** %4, align 8
  %8 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %9 = load i32, i32* @BDB_EDP, align 4
  %10 = call %struct.bdb_edp* @find_section(%struct.bdb_header* %8, i32 %9)
  store %struct.bdb_edp* %10, %struct.bdb_edp** %5, align 8
  %11 = load %struct.bdb_edp*, %struct.bdb_edp** %5, align 8
  %12 = icmp ne %struct.bdb_edp* %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %2
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @SUPPORTS_EDP(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %19, %13
  br label %144

28:                                               ; preds = %2
  %29 = load %struct.bdb_edp*, %struct.bdb_edp** %5, align 8
  %30 = getelementptr inbounds %struct.bdb_edp, %struct.bdb_edp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @panel_type, align 4
  %33 = mul nsw i32 %32, 2
  %34 = ashr i32 %31, %33
  %35 = and i32 %34, 3
  switch i32 %35, label %48 [
    i32 130, label %36
    i32 129, label %40
    i32 128, label %44
  ]

36:                                               ; preds = %28
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 18, i32* %39, align 8
  br label %48

40:                                               ; preds = %28
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 24, i32* %43, align 8
  br label %48

44:                                               ; preds = %28
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %46 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 30, i32* %47, align 8
  br label %48

48:                                               ; preds = %28, %44, %40, %36
  %49 = load %struct.bdb_edp*, %struct.bdb_edp** %5, align 8
  %50 = getelementptr inbounds %struct.bdb_edp, %struct.bdb_edp* %49, i32 0, i32 2
  %51 = load %struct.edp_power_seq*, %struct.edp_power_seq** %50, align 8
  %52 = load i32, i32* @panel_type, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %51, i64 %53
  store %struct.edp_power_seq* %54, %struct.edp_power_seq** %6, align 8
  %55 = load %struct.bdb_edp*, %struct.bdb_edp** %5, align 8
  %56 = getelementptr inbounds %struct.bdb_edp, %struct.bdb_edp* %55, i32 0, i32 1
  %57 = load %struct.edp_link_params*, %struct.edp_link_params** %56, align 8
  %58 = load i32, i32* @panel_type, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.edp_link_params, %struct.edp_link_params* %57, i64 %59
  store %struct.edp_link_params* %60, %struct.edp_link_params** %7, align 8
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %62 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 5
  %64 = load %struct.edp_power_seq*, %struct.edp_power_seq** %6, align 8
  %65 = bitcast %struct.edp_power_seq* %63 to i8*
  %66 = bitcast %struct.edp_power_seq* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 4, i1 false)
  %67 = load %struct.edp_link_params*, %struct.edp_link_params** %7, align 8
  %68 = getelementptr inbounds %struct.edp_link_params, %struct.edp_link_params* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %48
  %72 = load i32, i32* @DP_LINK_BW_2_7, align 4
  br label %75

73:                                               ; preds = %48
  %74 = load i32, i32* @DP_LINK_BW_1_62, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %78 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 4
  store i32 %76, i32* %79, align 8
  %80 = load %struct.edp_link_params*, %struct.edp_link_params** %7, align 8
  %81 = getelementptr inbounds %struct.edp_link_params, %struct.edp_link_params* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %92 [
    i32 0, label %83
    i32 1, label %87
    i32 3, label %91
  ]

83:                                               ; preds = %75
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %85 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  br label %96

87:                                               ; preds = %75
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %89 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i32 2, i32* %90, align 4
  br label %96

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %75, %91
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %94 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  store i32 4, i32* %95, align 4
  br label %96

96:                                               ; preds = %92, %87, %83
  %97 = load %struct.edp_link_params*, %struct.edp_link_params** %7, align 8
  %98 = getelementptr inbounds %struct.edp_link_params, %struct.edp_link_params* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  switch i32 %99, label %120 [
    i32 0, label %100
    i32 1, label %105
    i32 2, label %110
    i32 3, label %115
  ]

100:                                              ; preds = %96
  %101 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_0, align 4
  %102 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %103 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  store i32 %101, i32* %104, align 4
  br label %120

105:                                              ; preds = %96
  %106 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_3_5, align 4
  %107 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %108 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  store i32 %106, i32* %109, align 4
  br label %120

110:                                              ; preds = %96
  %111 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_6, align 4
  %112 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %113 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  store i32 %111, i32* %114, align 4
  br label %120

115:                                              ; preds = %96
  %116 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_9_5, align 4
  %117 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %118 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  store i32 %116, i32* %119, align 4
  br label %120

120:                                              ; preds = %96, %115, %110, %105, %100
  %121 = load %struct.edp_link_params*, %struct.edp_link_params** %7, align 8
  %122 = getelementptr inbounds %struct.edp_link_params, %struct.edp_link_params* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  switch i32 %123, label %144 [
    i32 0, label %124
    i32 1, label %129
    i32 2, label %134
    i32 3, label %139
  ]

124:                                              ; preds = %120
  %125 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_400, align 4
  %126 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %127 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  store i32 %125, i32* %128, align 8
  br label %144

129:                                              ; preds = %120
  %130 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_600, align 4
  %131 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %132 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  store i32 %130, i32* %133, align 8
  br label %144

134:                                              ; preds = %120
  %135 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_800, align 4
  %136 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %137 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  store i32 %135, i32* %138, align 8
  br label %144

139:                                              ; preds = %120
  %140 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_1200, align 4
  %141 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %142 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 2
  store i32 %140, i32* %143, align 8
  br label %144

144:                                              ; preds = %27, %120, %139, %134, %129, %124
  ret void
}

declare dso_local %struct.bdb_edp* @find_section(%struct.bdb_header*, i32) #1

declare dso_local i64 @SUPPORTS_EDP(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
