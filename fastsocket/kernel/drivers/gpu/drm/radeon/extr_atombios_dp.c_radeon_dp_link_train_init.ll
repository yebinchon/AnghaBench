; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_link_train_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_link_train_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_dp_link_train_info = type { i32*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.radeon_encoder = type { %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i64 }

@DP_SET_POWER = common dso_local global i32 0, align 4
@DP_SET_POWER_D0 = common dso_local global i32 0, align 4
@DP_DOWNSPREAD_CTRL = common dso_local global i32 0, align 4
@DP_SPREAD_AMP_0_5 = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@DP_PANEL_MODE_INTERNAL_DP2_MODE = common dso_local global i64 0, align 8
@DP_EDP_CONFIGURATION_SET = common dso_local global i32 0, align 4
@DP_DPCD_REV = common dso_local global i64 0, align 8
@DP_MAX_LANE_COUNT = common dso_local global i64 0, align 8
@DP_ENHANCED_FRAME_CAP = common dso_local global i32 0, align 4
@DP_LANE_COUNT_ENHANCED_FRAME_EN = common dso_local global i32 0, align 4
@DP_LANE_COUNT_SET = common dso_local global i32 0, align 4
@DP_LINK_BW_SET = common dso_local global i32 0, align 4
@ATOM_ENCODER_CMD_DP_LINK_TRAINING_START = common dso_local global i32 0, align 4
@ATOM_DP_ACTION_TRAINING_START = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_SET = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_dp_link_train_info*)* @radeon_dp_link_train_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_dp_link_train_init(%struct.radeon_dp_link_train_info* %0) #0 {
  %2 = alloca %struct.radeon_dp_link_train_info*, align 8
  %3 = alloca %struct.radeon_encoder*, align 8
  %4 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_dp_link_train_info* %0, %struct.radeon_dp_link_train_info** %2, align 8
  %6 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %7 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.radeon_encoder* @to_radeon_encoder(i32 %8)
  store %struct.radeon_encoder* %9, %struct.radeon_encoder** %3, align 8
  %10 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %10, i32 0, i32 0
  %12 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %11, align 8
  store %struct.radeon_encoder_atom_dig* %12, %struct.radeon_encoder_atom_dig** %4, align 8
  %13 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %14 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 17
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DP_SET_POWER, align 4
  %24 = load i32, i32* @DP_SET_POWER_D0, align 4
  %25 = call i32 @radeon_write_dpcd_reg(i32 %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %19, %1
  %27 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %28 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %36 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DP_DOWNSPREAD_CTRL, align 4
  %39 = load i32, i32* @DP_SPREAD_AMP_0_5, align 4
  %40 = call i32 @radeon_write_dpcd_reg(i32 %37, i32 %38, i32 %39)
  br label %47

41:                                               ; preds = %26
  %42 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %43 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DP_DOWNSPREAD_CTRL, align 4
  %46 = call i32 @radeon_write_dpcd_reg(i32 %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %41, %34
  %48 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %49 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %48, i32 0, i32 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %47
  %56 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %4, align 8
  %57 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DP_PANEL_MODE_INTERNAL_DP2_MODE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %63 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DP_EDP_CONFIGURATION_SET, align 4
  %66 = call i32 @radeon_write_dpcd_reg(i32 %64, i32 %65, i32 1)
  br label %67

67:                                               ; preds = %61, %55, %47
  %68 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %69 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %5, align 4
  %71 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %72 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @DP_DPCD_REV, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %76, 17
  br i1 %77, label %78, label %92

78:                                               ; preds = %67
  %79 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %80 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @DP_MAX_LANE_COUNT, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @DP_ENHANCED_FRAME_CAP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load i32, i32* @DP_LANE_COUNT_ENHANCED_FRAME_EN, align 4
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %88, %78, %67
  %93 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %94 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @DP_LANE_COUNT_SET, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @radeon_write_dpcd_reg(i32 %95, i32 %96, i32 %97)
  %99 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %100 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @drm_dp_link_rate_to_bw_code(i32 %101)
  store i32 %102, i32* %5, align 4
  %103 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %104 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @DP_LINK_BW_SET, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @radeon_write_dpcd_reg(i32 %105, i32 %106, i32 %107)
  %109 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %110 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @ASIC_IS_DCE4(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %92
  %115 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %116 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %114, %92
  %120 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %121 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ATOM_ENCODER_CMD_DP_LINK_TRAINING_START, align 4
  %124 = call i32 @atombios_dig_encoder_setup(i32 %122, i32 %123, i32 0)
  br label %137

125:                                              ; preds = %114
  %126 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %127 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @ATOM_DP_ACTION_TRAINING_START, align 4
  %130 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %131 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %134 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @radeon_dp_encoder_service(i32 %128, i32 %129, i32 %132, i32 %135, i32 0)
  br label %137

137:                                              ; preds = %125, %119
  %138 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %139 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @DP_TRAINING_PATTERN_SET, align 4
  %142 = load i32, i32* @DP_TRAINING_PATTERN_DISABLE, align 4
  %143 = call i32 @radeon_write_dpcd_reg(i32 %140, i32 %141, i32 %142)
  ret i32 0
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(i32) #1

declare dso_local i32 @radeon_write_dpcd_reg(i32, i32, i32) #1

declare dso_local i32 @drm_dp_link_rate_to_bw_code(i32) #1

declare dso_local i64 @ASIC_IS_DCE4(i32) #1

declare dso_local i32 @atombios_dig_encoder_setup(i32, i32, i32) #1

declare dso_local i32 @radeon_dp_encoder_service(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
