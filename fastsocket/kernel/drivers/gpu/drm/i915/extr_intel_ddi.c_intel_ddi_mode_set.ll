; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_mode_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.intel_crtc = type { i32, i32 }
%struct.intel_encoder = type { i32 }
%struct.intel_dp = type { i32, i32, i64 }
%struct.intel_digital_port = type { i32 }
%struct.intel_hdmi = type { i32 (%struct.drm_encoder.0*, %struct.drm_display_mode.1*)*, i64 }
%struct.drm_encoder.0 = type opaque
%struct.drm_display_mode.1 = type opaque

@.str = private unnamed_addr constant [52 x i8] c"Preparing DDI mode for Haswell on port %c, pipe %c\0A\00", align 1
@INTEL_OUTPUT_DISPLAYPORT = common dso_local global i32 0, align 4
@INTEL_OUTPUT_EDP = common dso_local global i32 0, align 4
@DDI_BUF_CTL_ENABLE = common dso_local global i32 0, align 4
@DDI_BUF_EMP_400MV_0DB_HSW = common dso_local global i32 0, align 4
@DDI_PORT_WIDTH_X1 = common dso_local global i32 0, align 4
@DDI_PORT_WIDTH_X2 = common dso_local global i32 0, align 4
@DDI_PORT_WIDTH_X4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unexpected DP lane count %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"DP audio on pipe %c on DDI\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"DP audio: write eld information\0A\00", align 1
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"HDMI audio on pipe %c on DDI\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"HDMI audio: write eld information\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @intel_ddi_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ddi_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.intel_crtc*, align 8
  %9 = alloca %struct.intel_encoder*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.intel_dp*, align 8
  %14 = alloca %struct.intel_digital_port*, align 8
  %15 = alloca %struct.intel_hdmi*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %17 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %16, i32 0, i32 0
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %17, align 8
  store %struct.drm_crtc* %18, %struct.drm_crtc** %7, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %20 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %19)
  store %struct.intel_crtc* %20, %struct.intel_crtc** %8, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %22 = call %struct.intel_encoder* @to_intel_encoder(%struct.drm_encoder* %21)
  store %struct.intel_encoder* %22, %struct.intel_encoder** %9, align 8
  %23 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %24 = call i32 @intel_ddi_get_encoder_port(%struct.intel_encoder* %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %26 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %29 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @port_name(i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @pipe_name(i32 %33)
  %35 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %34)
  %36 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %37 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @INTEL_OUTPUT_DISPLAYPORT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %3
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %108

45:                                               ; preds = %41, %3
  %46 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %47 = call %struct.intel_dp* @enc_to_intel_dp(%struct.drm_encoder* %46)
  store %struct.intel_dp* %47, %struct.intel_dp** %13, align 8
  %48 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %49 = call %struct.intel_digital_port* @enc_to_dig_port(%struct.drm_encoder* %48)
  store %struct.intel_digital_port* %49, %struct.intel_digital_port** %14, align 8
  %50 = load %struct.intel_digital_port*, %struct.intel_digital_port** %14, align 8
  %51 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DDI_BUF_CTL_ENABLE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @DDI_BUF_EMP_400MV_0DB_HSW, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.intel_dp*, %struct.intel_dp** %13, align 8
  %58 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.intel_dp*, %struct.intel_dp** %13, align 8
  %60 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %80 [
    i32 1, label %62
    i32 2, label %68
    i32 4, label %74
  ]

62:                                               ; preds = %45
  %63 = load i32, i32* @DDI_PORT_WIDTH_X1, align 4
  %64 = load %struct.intel_dp*, %struct.intel_dp** %13, align 8
  %65 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %90

68:                                               ; preds = %45
  %69 = load i32, i32* @DDI_PORT_WIDTH_X2, align 4
  %70 = load %struct.intel_dp*, %struct.intel_dp** %13, align 8
  %71 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %90

74:                                               ; preds = %45
  %75 = load i32, i32* @DDI_PORT_WIDTH_X4, align 4
  %76 = load %struct.intel_dp*, %struct.intel_dp** %13, align 8
  %77 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %90

80:                                               ; preds = %45
  %81 = load i32, i32* @DDI_PORT_WIDTH_X4, align 4
  %82 = load %struct.intel_dp*, %struct.intel_dp** %13, align 8
  %83 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.intel_dp*, %struct.intel_dp** %13, align 8
  %87 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %80, %74, %68, %62
  %91 = load %struct.intel_dp*, %struct.intel_dp** %13, align 8
  %92 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %97 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pipe_name(i32 %98)
  %100 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %102 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %103 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %104 = call i32 @intel_write_eld(%struct.drm_encoder* %102, %struct.drm_display_mode* %103)
  br label %105

105:                                              ; preds = %95, %90
  %106 = load %struct.intel_dp*, %struct.intel_dp** %13, align 8
  %107 = call i32 @intel_dp_init_link_config(%struct.intel_dp* %106)
  br label %139

108:                                              ; preds = %41
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %138

112:                                              ; preds = %108
  %113 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %114 = call %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.drm_encoder* %113)
  store %struct.intel_hdmi* %114, %struct.intel_hdmi** %15, align 8
  %115 = load %struct.intel_hdmi*, %struct.intel_hdmi** %15, align 8
  %116 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %112
  %120 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %121 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @pipe_name(i32 %122)
  %124 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  %125 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %126 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %127 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %128 = call i32 @intel_write_eld(%struct.drm_encoder* %126, %struct.drm_display_mode* %127)
  br label %129

129:                                              ; preds = %119, %112
  %130 = load %struct.intel_hdmi*, %struct.intel_hdmi** %15, align 8
  %131 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %130, i32 0, i32 0
  %132 = load i32 (%struct.drm_encoder.0*, %struct.drm_display_mode.1*)*, i32 (%struct.drm_encoder.0*, %struct.drm_display_mode.1*)** %131, align 8
  %133 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %134 = bitcast %struct.drm_encoder* %133 to %struct.drm_encoder.0*
  %135 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %136 = bitcast %struct.drm_display_mode* %135 to %struct.drm_display_mode.1*
  %137 = call i32 %132(%struct.drm_encoder.0* %134, %struct.drm_display_mode.1* %136)
  br label %138

138:                                              ; preds = %129, %108
  br label %139

139:                                              ; preds = %138, %105
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.intel_encoder* @to_intel_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @intel_ddi_get_encoder_port(%struct.intel_encoder*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local %struct.intel_dp* @enc_to_intel_dp(%struct.drm_encoder*) #1

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(%struct.drm_encoder*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

declare dso_local i32 @intel_write_eld(%struct.drm_encoder*, %struct.drm_display_mode*) #1

declare dso_local i32 @intel_dp_init_link_config(%struct.intel_dp*) #1

declare dso_local %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
