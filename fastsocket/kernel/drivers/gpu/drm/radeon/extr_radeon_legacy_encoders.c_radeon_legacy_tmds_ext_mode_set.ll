; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_tmds_ext_mode_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_tmds_ext_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_2__*, %struct.radeon_device* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.radeon_device = type { i64, i64 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_crtc = type { i64 }
%struct.radeon_encoder = type { i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ATOM_ENABLE = common dso_local global i32 0, align 4
@RADEON_FP2_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_FP2_PANEL_FORMAT = common dso_local global i32 0, align 4
@RADEON_FP2_ON = common dso_local global i32 0, align 4
@RADEON_FP2_DVO_EN = common dso_local global i32 0, align 4
@RADEON_FP2_DVO_RATE_SEL_SDR = common dso_local global i32 0, align 4
@R300_FP2_DVO_CLOCK_MODE_SINGLE = common dso_local global i32 0, align 4
@RADEON_FP2_PAD_FLOP_EN = common dso_local global i32 0, align 4
@CHIP_R200 = common dso_local global i64 0, align 8
@R200_FP2_SOURCE_SEL_MASK = common dso_local global i32 0, align 4
@RMX_OFF = common dso_local global i64 0, align 8
@R200_FP2_SOURCE_SEL_RMX = common dso_local global i32 0, align 4
@R200_FP2_SOURCE_SEL_CRTC1 = common dso_local global i32 0, align 4
@RADEON_FP2_SRC_SEL_CRTC2 = common dso_local global i32 0, align 4
@R200_FP2_SOURCE_SEL_CRTC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @radeon_legacy_tmds_ext_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_legacy_tmds_ext_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_crtc*, align 8
  %10 = alloca %struct.radeon_encoder*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 1
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %16, align 8
  store %struct.radeon_device* %17, %struct.radeon_device** %8, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %19 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.radeon_crtc* @to_radeon_crtc(i32 %20)
  store %struct.radeon_crtc* %21, %struct.radeon_crtc** %9, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %23 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %22)
  store %struct.radeon_encoder* %23, %struct.radeon_encoder** %10, align 8
  %24 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %34 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %36 = load i32, i32* @ATOM_ENABLE, align 4
  %37 = call i32 @atombios_dvo_setup(%struct.drm_encoder* %35, i32 %36)
  %38 = load i32, i32* @RADEON_FP2_GEN_CNTL, align 4
  %39 = call i32 @RREG32(i32 %38)
  store i32 %39, i32* %11, align 4
  br label %97

40:                                               ; preds = %3
  %41 = load i32, i32* @RADEON_FP2_GEN_CNTL, align 4
  %42 = call i32 @RREG32(i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* @RADEON_FP2_PANEL_FORMAT, align 4
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* @RADEON_FP2_ON, align 4
  %47 = load i32, i32* @RADEON_FP2_DVO_EN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @RADEON_FP2_DVO_RATE_SEL_SDR, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %55 = call i64 @ASIC_IS_R300(%struct.radeon_device* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %40
  %58 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %59 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 18512
  br i1 %63, label %64, label %82

64:                                               ; preds = %57
  %65 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %66 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 4136
  br i1 %70, label %71, label %82

71:                                               ; preds = %64
  %72 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %73 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 8193
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32, i32* @R300_FP2_DVO_CLOCK_MODE_SINGLE, align 4
  %80 = load i32, i32* %11, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %11, align 4
  br label %88

82:                                               ; preds = %71, %64, %57
  %83 = load i32, i32* @RADEON_FP2_PAD_FLOP_EN, align 4
  %84 = load i32, i32* @R300_FP2_DVO_CLOCK_MODE_SINGLE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %11, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %82, %78
  br label %89

89:                                               ; preds = %88, %40
  %90 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %91 = call i32 @radeon_combios_external_tmds_setup(%struct.drm_encoder* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %95 = call i32 @radeon_external_tmds_setup(%struct.drm_encoder* %94)
  br label %96

96:                                               ; preds = %93, %89
  br label %97

97:                                               ; preds = %96, %29
  %98 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %99 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %137

102:                                              ; preds = %97
  %103 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %104 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CHIP_R200, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %102
  %109 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %110 = call i64 @ASIC_IS_R300(%struct.radeon_device* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %108, %102
  %113 = load i32, i32* @R200_FP2_SOURCE_SEL_MASK, align 4
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %11, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %11, align 4
  %117 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %118 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @RMX_OFF, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %112
  %123 = load i32, i32* @R200_FP2_SOURCE_SEL_RMX, align 4
  %124 = load i32, i32* %11, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %11, align 4
  br label %130

126:                                              ; preds = %112
  %127 = load i32, i32* @R200_FP2_SOURCE_SEL_CRTC1, align 4
  %128 = load i32, i32* %11, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %126, %122
  br label %136

131:                                              ; preds = %108
  %132 = load i32, i32* @RADEON_FP2_SRC_SEL_CRTC2, align 4
  %133 = xor i32 %132, -1
  %134 = load i32, i32* %11, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %131, %130
  br label %160

137:                                              ; preds = %97
  %138 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %139 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @CHIP_R200, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %147, label %143

143:                                              ; preds = %137
  %144 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %145 = call i64 @ASIC_IS_R300(%struct.radeon_device* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %143, %137
  %148 = load i32, i32* @R200_FP2_SOURCE_SEL_MASK, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %11, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* @R200_FP2_SOURCE_SEL_CRTC2, align 4
  %153 = load i32, i32* %11, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %11, align 4
  br label %159

155:                                              ; preds = %143
  %156 = load i32, i32* @RADEON_FP2_SRC_SEL_CRTC2, align 4
  %157 = load i32, i32* %11, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %11, align 4
  br label %159

159:                                              ; preds = %155, %147
  br label %160

160:                                              ; preds = %159, %136
  %161 = load i32, i32* @RADEON_FP2_GEN_CNTL, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @WREG32(i32 %161, i32 %162)
  %164 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %165 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %160
  %169 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %170 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %171 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @radeon_atombios_encoder_crtc_scratch_regs(%struct.drm_encoder* %169, i64 %172)
  br label %180

174:                                              ; preds = %160
  %175 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %176 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %177 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @radeon_combios_encoder_crtc_scratch_regs(%struct.drm_encoder* %175, i64 %178)
  br label %180

180:                                              ; preds = %174, %168
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(i32) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @atombios_dvo_setup(%struct.drm_encoder*, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i64 @ASIC_IS_R300(%struct.radeon_device*) #1

declare dso_local i32 @radeon_combios_external_tmds_setup(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_external_tmds_setup(%struct.drm_encoder*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_atombios_encoder_crtc_scratch_regs(%struct.drm_encoder*, i64) #1

declare dso_local i32 @radeon_combios_encoder_crtc_scratch_regs(%struct.drm_encoder*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
