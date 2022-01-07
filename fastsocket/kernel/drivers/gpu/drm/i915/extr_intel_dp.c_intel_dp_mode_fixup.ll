; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.intel_dp = type { i32, i32, i64, i64, i32, %struct.intel_connector* }
%struct.intel_connector = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@intel_dp_mode_fixup.bws = internal global [2 x i32] [i32 129, i32 128], align 4
@DRM_MODE_FLAG_DBLCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"DP link computation with max lane count %i max bw %02x pixel clock %iKHz\0A\00", align 1
@INTEL_MODE_DP_FORCE_6BPC = common dso_local global i32 0, align 4
@DP_COLOR_RANGE_16_235 = common dso_local global i64 0, align 8
@INTEL_MODE_LIMITED_COLOR_RANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"DP link bw %02x lane count %d clock %d bpp %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"DP link bw required %i available %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_dp_mode_fixup(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.intel_dp*, align 8
  %10 = alloca %struct.intel_connector*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %5, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %6, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %20 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %19, i32 0, i32 0
  %21 = load %struct.drm_device*, %struct.drm_device** %20, align 8
  store %struct.drm_device* %21, %struct.drm_device** %8, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %23 = call %struct.intel_dp* @enc_to_intel_dp(%struct.drm_encoder* %22)
  store %struct.intel_dp* %23, %struct.intel_dp** %9, align 8
  %24 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %25 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %24, i32 0, i32 5
  %26 = load %struct.intel_connector*, %struct.intel_connector** %25, align 8
  store %struct.intel_connector* %26, %struct.intel_connector** %10, align 8
  %27 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %28 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @drm_dp_max_lane_count(i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %32 = call i64 @intel_dp_max_link_bw(%struct.intel_dp* %31)
  %33 = icmp eq i64 %32, 128
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  store i32 %35, i32* %14, align 4
  %36 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %37 = call i64 @is_edp(%struct.intel_dp* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %3
  %40 = load %struct.intel_connector*, %struct.intel_connector** %10, align 8
  %41 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load %struct.intel_connector*, %struct.intel_connector** %10, align 8
  %47 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %51 = call i32 @intel_fixed_panel_mode(i64 %49, %struct.drm_display_mode* %50)
  %52 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %53 = load %struct.intel_connector*, %struct.intel_connector** %10, align 8
  %54 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %59 = call i32 @intel_pch_panel_fitting(%struct.drm_device* %52, i32 %56, %struct.drm_display_mode* %57, %struct.drm_display_mode* %58)
  br label %60

60:                                               ; preds = %45, %39, %3
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DRM_MODE_FLAG_DBLCLK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %185

68:                                               ; preds = %60
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* @intel_dp_mode_fixup.bws, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %75 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %73, i32 %76)
  %78 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %80 = call i32 @intel_dp_adjust_dithering(%struct.intel_dp* %78, %struct.drm_display_mode* %79, i32 1)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %185

83:                                               ; preds = %68
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %85 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @INTEL_MODE_DP_FORCE_6BPC, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 18, i32 24
  store i32 %91, i32* %15, align 4
  %92 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %93 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %83
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 18
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %101 = call i32 @drm_match_cea_mode(%struct.drm_display_mode* %100)
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i64, i64* @DP_COLOR_RANGE_16_235, align 8
  %105 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %106 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %105, i32 0, i32 2
  store i64 %104, i64* %106, align 8
  br label %110

107:                                              ; preds = %99, %96
  %108 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %109 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %108, i32 0, i32 2
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %107, %103
  br label %111

111:                                              ; preds = %110, %83
  %112 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %113 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load i32, i32* @INTEL_MODE_LIMITED_COLOR_RANGE, align 4
  %118 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %119 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %116, %111
  %123 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %124 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @intel_dp_link_required(i32 %125, i32 %126)
  store i32 %127, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %128

128:                                              ; preds = %181, %122
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp sle i32 %129, %130
  br i1 %131, label %132, label %184

132:                                              ; preds = %128
  store i32 1, i32* %11, align 4
  br label %133

133:                                              ; preds = %177, %132
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp sle i32 %134, %135
  br i1 %136, label %137, label %180

137:                                              ; preds = %133
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* @intel_dp_mode_fixup.bws, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @drm_dp_bw_code_to_link_rate(i32 %141)
  store i32 %142, i32* %17, align 4
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @intel_dp_max_data_rate(i32 %143, i32 %144)
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %18, align 4
  %148 = icmp sle i32 %146, %147
  br i1 %148, label %149, label %176

149:                                              ; preds = %137
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [2 x i32], [2 x i32]* @intel_dp_mode_fixup.bws, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %155 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %158 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %17, align 4
  %160 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %161 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %163 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %166 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %169 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %15, align 4
  %172 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %164, i32 %167, i32 %170, i32 %171)
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* %18, align 4
  %175 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %173, i32 %174)
  store i32 1, i32* %4, align 4
  br label %185

176:                                              ; preds = %137
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %11, align 4
  %179 = shl i32 %178, 1
  store i32 %179, i32* %11, align 4
  br label %133

180:                                              ; preds = %133
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %12, align 4
  br label %128

184:                                              ; preds = %128
  store i32 0, i32* %4, align 4
  br label %185

185:                                              ; preds = %184, %149, %82, %67
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local %struct.intel_dp* @enc_to_intel_dp(%struct.drm_encoder*) #1

declare dso_local i32 @drm_dp_max_lane_count(i32) #1

declare dso_local i64 @intel_dp_max_link_bw(%struct.intel_dp*) #1

declare dso_local i64 @is_edp(%struct.intel_dp*) #1

declare dso_local i32 @intel_fixed_panel_mode(i64, %struct.drm_display_mode*) #1

declare dso_local i32 @intel_pch_panel_fitting(%struct.drm_device*, i32, %struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, ...) #1

declare dso_local i32 @intel_dp_adjust_dithering(%struct.intel_dp*, %struct.drm_display_mode*, i32) #1

declare dso_local i32 @drm_match_cea_mode(%struct.drm_display_mode*) #1

declare dso_local i32 @intel_dp_link_required(i32, i32) #1

declare dso_local i32 @drm_dp_bw_code_to_link_rate(i32) #1

declare dso_local i32 @intel_dp_max_data_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
