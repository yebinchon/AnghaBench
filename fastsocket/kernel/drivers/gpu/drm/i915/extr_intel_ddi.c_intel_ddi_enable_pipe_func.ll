; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_enable_pipe_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_enable_pipe_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32, i32, i32, i32 }
%struct.intel_encoder = type { i32, %struct.drm_encoder }
%struct.drm_encoder = type { i32 }
%struct.intel_hdmi = type { i64 }
%struct.intel_dp = type { i32 }

@TRANS_DDI_FUNC_ENABLE = common dso_local global i32 0, align 4
@TRANS_DDI_BPC_6 = common dso_local global i32 0, align 4
@TRANS_DDI_BPC_8 = common dso_local global i32 0, align 4
@TRANS_DDI_BPC_10 = common dso_local global i32 0, align 4
@TRANS_DDI_BPC_12 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%d bpp unsupported by transcoder DDI function\0A\00", align 1
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@TRANS_DDI_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@TRANS_DDI_PHSYNC = common dso_local global i32 0, align 4
@TRANSCODER_EDP = common dso_local global i32 0, align 4
@TRANS_DDI_EDP_INPUT_A_ONOFF = common dso_local global i32 0, align 4
@TRANS_DDI_EDP_INPUT_A_ON = common dso_local global i32 0, align 4
@TRANS_DDI_EDP_INPUT_B_ONOFF = common dso_local global i32 0, align 4
@TRANS_DDI_EDP_INPUT_C_ONOFF = common dso_local global i32 0, align 4
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@TRANS_DDI_MODE_SELECT_HDMI = common dso_local global i32 0, align 4
@TRANS_DDI_MODE_SELECT_DVI = common dso_local global i32 0, align 4
@INTEL_OUTPUT_ANALOG = common dso_local global i32 0, align 4
@TRANS_DDI_MODE_SELECT_FDI = common dso_local global i32 0, align 4
@INTEL_OUTPUT_DISPLAYPORT = common dso_local global i32 0, align 4
@INTEL_OUTPUT_EDP = common dso_local global i32 0, align 4
@TRANS_DDI_MODE_SELECT_DP_SST = common dso_local global i32 0, align 4
@TRANS_DDI_PORT_WIDTH_X1 = common dso_local global i32 0, align 4
@TRANS_DDI_PORT_WIDTH_X2 = common dso_local global i32 0, align 4
@TRANS_DDI_PORT_WIDTH_X4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unsupported lane count %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Invalid encoder type %d for pipe %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_ddi_enable_pipe_func(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_hdmi*, align 8
  %13 = alloca %struct.intel_dp*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %15 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %14)
  store %struct.intel_crtc* %15, %struct.intel_crtc** %3, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %17 = call %struct.intel_encoder* @intel_ddi_get_crtc_encoder(%struct.drm_crtc* %16)
  store %struct.intel_encoder* %17, %struct.intel_encoder** %4, align 8
  %18 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %19 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %18, i32 0, i32 1
  store %struct.drm_encoder* %19, %struct.drm_encoder** %5, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %23, align 8
  store %struct.drm_i915_private* %24, %struct.drm_i915_private** %6, align 8
  %25 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %26 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %29 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %32 = call i32 @intel_ddi_get_encoder_port(%struct.intel_encoder* %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %34 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @TRANS_DDI_FUNC_ENABLE, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @TRANS_DDI_SELECT_PORT(i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %42 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %60 [
    i32 18, label %44
    i32 24, label %48
    i32 30, label %52
    i32 36, label %56
  ]

44:                                               ; preds = %1
  %45 = load i32, i32* @TRANS_DDI_BPC_6, align 4
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  br label %65

48:                                               ; preds = %1
  %49 = load i32, i32* @TRANS_DDI_BPC_8, align 4
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  br label %65

52:                                               ; preds = %1
  %53 = load i32, i32* @TRANS_DDI_BPC_10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %65

56:                                               ; preds = %1
  %57 = load i32, i32* @TRANS_DDI_BPC_12, align 4
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %11, align 4
  br label %65

60:                                               ; preds = %1
  %61 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %62 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, i32, ...) @WARN(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %56, %52, %48, %44
  %66 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %67 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32, i32* @TRANS_DDI_PVSYNC, align 4
  %75 = load i32, i32* %11, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %73, %65
  %78 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %79 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load i32, i32* @TRANS_DDI_PHSYNC, align 4
  %87 = load i32, i32* %11, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %85, %77
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @TRANSCODER_EDP, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %120

93:                                               ; preds = %89
  %94 = load i32, i32* %7, align 4
  switch i32 %94, label %117 [
    i32 130, label %95
    i32 129, label %109
    i32 128, label %113
  ]

95:                                               ; preds = %93
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %97 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32, i32* @TRANS_DDI_EDP_INPUT_A_ONOFF, align 4
  %102 = load i32, i32* %11, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %11, align 4
  br label %108

104:                                              ; preds = %95
  %105 = load i32, i32* @TRANS_DDI_EDP_INPUT_A_ON, align 4
  %106 = load i32, i32* %11, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %104, %100
  br label %119

109:                                              ; preds = %93
  %110 = load i32, i32* @TRANS_DDI_EDP_INPUT_B_ONOFF, align 4
  %111 = load i32, i32* %11, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %11, align 4
  br label %119

113:                                              ; preds = %93
  %114 = load i32, i32* @TRANS_DDI_EDP_INPUT_C_ONOFF, align 4
  %115 = load i32, i32* %11, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %11, align 4
  br label %119

117:                                              ; preds = %93
  %118 = call i32 (...) @BUG()
  br label %119

119:                                              ; preds = %117, %113, %109, %108
  br label %120

120:                                              ; preds = %119, %89
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %140

124:                                              ; preds = %120
  %125 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %126 = call %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.drm_encoder* %125)
  store %struct.intel_hdmi* %126, %struct.intel_hdmi** %12, align 8
  %127 = load %struct.intel_hdmi*, %struct.intel_hdmi** %12, align 8
  %128 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load i32, i32* @TRANS_DDI_MODE_SELECT_HDMI, align 4
  %133 = load i32, i32* %11, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %11, align 4
  br label %139

135:                                              ; preds = %124
  %136 = load i32, i32* @TRANS_DDI_MODE_SELECT_DVI, align 4
  %137 = load i32, i32* %11, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %11, align 4
  br label %139

139:                                              ; preds = %135, %131
  br label %201

140:                                              ; preds = %120
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @INTEL_OUTPUT_ANALOG, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %155

144:                                              ; preds = %140
  %145 = load i32, i32* @TRANS_DDI_MODE_SELECT_FDI, align 4
  %146 = load i32, i32* %11, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %11, align 4
  %148 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %149 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 %150, 1
  %152 = shl i32 %151, 1
  %153 = load i32, i32* %11, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %11, align 4
  br label %200

155:                                              ; preds = %140
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @INTEL_OUTPUT_DISPLAYPORT, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %193

163:                                              ; preds = %159, %155
  %164 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %165 = call %struct.intel_dp* @enc_to_intel_dp(%struct.drm_encoder* %164)
  store %struct.intel_dp* %165, %struct.intel_dp** %13, align 8
  %166 = load i32, i32* @TRANS_DDI_MODE_SELECT_DP_SST, align 4
  %167 = load i32, i32* %11, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %11, align 4
  %169 = load %struct.intel_dp*, %struct.intel_dp** %13, align 8
  %170 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  switch i32 %171, label %184 [
    i32 1, label %172
    i32 2, label %176
    i32 4, label %180
  ]

172:                                              ; preds = %163
  %173 = load i32, i32* @TRANS_DDI_PORT_WIDTH_X1, align 4
  %174 = load i32, i32* %11, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %11, align 4
  br label %192

176:                                              ; preds = %163
  %177 = load i32, i32* @TRANS_DDI_PORT_WIDTH_X2, align 4
  %178 = load i32, i32* %11, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %11, align 4
  br label %192

180:                                              ; preds = %163
  %181 = load i32, i32* @TRANS_DDI_PORT_WIDTH_X4, align 4
  %182 = load i32, i32* %11, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %11, align 4
  br label %192

184:                                              ; preds = %163
  %185 = load i32, i32* @TRANS_DDI_PORT_WIDTH_X4, align 4
  %186 = load i32, i32* %11, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %11, align 4
  %188 = load %struct.intel_dp*, %struct.intel_dp** %13, align 8
  %189 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i32, i8*, i32, ...) @WARN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %184, %180, %176, %172
  br label %199

193:                                              ; preds = %159
  %194 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %195 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %7, align 4
  %198 = call i32 (i32, i8*, i32, ...) @WARN(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %193, %192
  br label %200

200:                                              ; preds = %199, %144
  br label %201

201:                                              ; preds = %200, %139
  %202 = load i32, i32* %8, align 4
  %203 = call i32 @TRANS_DDI_FUNC_CTL(i32 %202)
  %204 = load i32, i32* %11, align 4
  %205 = call i32 @I915_WRITE(i32 %203, i32 %204)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.intel_encoder* @intel_ddi_get_crtc_encoder(%struct.drm_crtc*) #1

declare dso_local i32 @intel_ddi_get_encoder_port(%struct.intel_encoder*) #1

declare dso_local i32 @TRANS_DDI_SELECT_PORT(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.drm_encoder*) #1

declare dso_local %struct.intel_dp* @enc_to_intel_dp(%struct.drm_encoder*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @TRANS_DDI_FUNC_CTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
