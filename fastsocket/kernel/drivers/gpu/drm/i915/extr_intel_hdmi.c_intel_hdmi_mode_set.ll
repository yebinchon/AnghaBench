; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_intel_hdmi_mode_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_intel_hdmi_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.intel_crtc = type { i32, i64 }
%struct.intel_hdmi = type { i32 (%struct.drm_encoder.0*, %struct.drm_display_mode.1*)*, i32, i64, i64, i32 }
%struct.drm_encoder.0 = type opaque
%struct.drm_display_mode.1 = type opaque

@SDVO_ENCODING_HDMI = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@SDVO_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@SDVO_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@COLOR_FORMAT_12bpc = common dso_local global i32 0, align 4
@COLOR_FORMAT_8bpc = common dso_local global i32 0, align 4
@HDMI_MODE_SELECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Enabling HDMI audio on pipe %c\0A\00", align 1
@SDVO_AUDIO_ENABLE = common dso_local global i32 0, align 4
@SDVO_NULL_PACKETS_DURING_VSYNC = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i64 0, align 8
@SDVO_PIPE_B_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @intel_hdmi_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_hdmi_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.intel_crtc*, align 8
  %10 = alloca %struct.intel_hdmi*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 1
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %8, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %19 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.intel_crtc* @to_intel_crtc(i32 %20)
  store %struct.intel_crtc* %21, %struct.intel_crtc** %9, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %23 = call %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.drm_encoder* %22)
  store %struct.intel_hdmi* %23, %struct.intel_hdmi** %10, align 8
  %24 = load i32, i32* @SDVO_ENCODING_HDMI, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %26 = call i32 @HAS_PCH_SPLIT(%struct.drm_device* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = load %struct.intel_hdmi*, %struct.intel_hdmi** %10, align 8
  %30 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %28, %3
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @SDVO_VSYNC_ACTIVE_HIGH, align 4
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @SDVO_HSYNC_ACTIVE_HIGH, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %52, %45
  %57 = load %struct.intel_crtc*, %struct.intel_crtc** %9, align 8
  %58 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %59, 24
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @COLOR_FORMAT_12bpc, align 4
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %11, align 4
  br label %69

65:                                               ; preds = %56
  %66 = load i32, i32* @COLOR_FORMAT_8bpc, align 4
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.intel_hdmi*, %struct.intel_hdmi** %10, align 8
  %71 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %76 = call i64 @HAS_PCH_CPT(%struct.drm_device* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* @HDMI_MODE_SELECT, align 4
  %80 = load i32, i32* %11, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %78, %74, %69
  %83 = load %struct.intel_hdmi*, %struct.intel_hdmi** %10, align 8
  %84 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %82
  %88 = load %struct.intel_crtc*, %struct.intel_crtc** %9, align 8
  %89 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @pipe_name(i64 %90)
  %92 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @SDVO_AUDIO_ENABLE, align 4
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* @SDVO_NULL_PACKETS_DURING_VSYNC, align 4
  %97 = load i32, i32* %11, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %11, align 4
  %99 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %100 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %101 = call i32 @intel_write_eld(%struct.drm_encoder* %99, %struct.drm_display_mode* %100)
  br label %102

102:                                              ; preds = %87, %82
  %103 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %104 = call i64 @HAS_PCH_CPT(%struct.drm_device* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load %struct.intel_crtc*, %struct.intel_crtc** %9, align 8
  %108 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @PORT_TRANS_SEL_CPT(i64 %109)
  %111 = load i32, i32* %11, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %11, align 4
  br label %124

113:                                              ; preds = %102
  %114 = load %struct.intel_crtc*, %struct.intel_crtc** %9, align 8
  %115 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @PIPE_B, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load i32, i32* @SDVO_PIPE_B_SELECT, align 4
  %121 = load i32, i32* %11, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %119, %113
  br label %124

124:                                              ; preds = %123, %106
  %125 = load %struct.intel_hdmi*, %struct.intel_hdmi** %10, align 8
  %126 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @I915_WRITE(i32 %127, i32 %128)
  %130 = load %struct.intel_hdmi*, %struct.intel_hdmi** %10, align 8
  %131 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @POSTING_READ(i32 %132)
  %134 = load %struct.intel_hdmi*, %struct.intel_hdmi** %10, align 8
  %135 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %134, i32 0, i32 0
  %136 = load i32 (%struct.drm_encoder.0*, %struct.drm_display_mode.1*)*, i32 (%struct.drm_encoder.0*, %struct.drm_display_mode.1*)** %135, align 8
  %137 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %138 = bitcast %struct.drm_encoder* %137 to %struct.drm_encoder.0*
  %139 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %140 = bitcast %struct.drm_display_mode* %139 to %struct.drm_display_mode.1*
  %141 = call i32 %136(%struct.drm_encoder.0* %138, %struct.drm_display_mode.1* %140)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.drm_encoder*) #1

declare dso_local i32 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @pipe_name(i64) #1

declare dso_local i32 @intel_write_eld(%struct.drm_encoder*, %struct.drm_display_mode*) #1

declare dso_local i32 @PORT_TRANS_SEL_CPT(i64) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
