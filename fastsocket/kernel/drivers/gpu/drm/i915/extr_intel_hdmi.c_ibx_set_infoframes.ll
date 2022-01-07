; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_ibx_set_infoframes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_ibx_set_infoframes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_digital_port = type { i32, %struct.intel_hdmi }
%struct.intel_hdmi = type { i32 }

@VIDEO_DIP_SELECT_AVI = common dso_local global i32 0, align 4
@VIDEO_DIP_FREQ_VSYNC = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE = common dso_local global i32 0, align 4
@VIDEO_DIP_PORT_B = common dso_local global i32 0, align 4
@VIDEO_DIP_PORT_C = common dso_local global i32 0, align 4
@VIDEO_DIP_PORT_D = common dso_local global i32 0, align 4
@VIDEO_DIP_PORT_MASK = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_VENDOR = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_GAMUT = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_GCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*)* @ibx_set_infoframes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibx_set_infoframes(%struct.drm_encoder* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca %struct.intel_digital_port*, align 8
  %8 = alloca %struct.intel_hdmi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %5, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %18 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.intel_crtc* @to_intel_crtc(i32 %19)
  store %struct.intel_crtc* %20, %struct.intel_crtc** %6, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %22 = call %struct.intel_digital_port* @enc_to_dig_port(%struct.drm_encoder* %21)
  store %struct.intel_digital_port* %22, %struct.intel_digital_port** %7, align 8
  %23 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %24 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %23, i32 0, i32 1
  store %struct.intel_hdmi* %24, %struct.intel_hdmi** %8, align 8
  %25 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %26 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @TVIDEO_DIP_CTL(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @I915_READ(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.intel_hdmi*, %struct.intel_hdmi** %8, align 8
  %32 = call i32 @assert_hdmi_port_disabled(%struct.intel_hdmi* %31)
  %33 = load i32, i32* @VIDEO_DIP_SELECT_AVI, align 4
  %34 = load i32, i32* @VIDEO_DIP_FREQ_VSYNC, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %10, align 4
  %38 = load %struct.intel_hdmi*, %struct.intel_hdmi** %8, align 8
  %39 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %2
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %121

48:                                               ; preds = %42
  %49 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @I915_WRITE(i32 %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @POSTING_READ(i32 %56)
  br label %121

58:                                               ; preds = %2
  %59 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %60 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %68 [
    i32 130, label %62
    i32 129, label %64
    i32 128, label %66
  ]

62:                                               ; preds = %58
  %63 = load i32, i32* @VIDEO_DIP_PORT_B, align 4
  store i32 %63, i32* %11, align 4
  br label %70

64:                                               ; preds = %58
  %65 = load i32, i32* @VIDEO_DIP_PORT_C, align 4
  store i32 %65, i32* %11, align 4
  br label %70

66:                                               ; preds = %58
  %67 = load i32, i32* @VIDEO_DIP_PORT_D, align 4
  store i32 %67, i32* %11, align 4
  br label %70

68:                                               ; preds = %58
  %69 = call i32 (...) @BUG()
  br label %121

70:                                               ; preds = %66, %64, %62
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @VIDEO_DIP_PORT_MASK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %99

76:                                               ; preds = %70
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %10, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @I915_WRITE(i32 %86, i32 %87)
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @POSTING_READ(i32 %89)
  br label %91

91:                                               ; preds = %81, %76
  %92 = load i32, i32* @VIDEO_DIP_PORT_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %10, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %10, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %91, %70
  %100 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %101 = load i32, i32* %10, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* @VIDEO_DIP_ENABLE_VENDOR, align 4
  %104 = load i32, i32* @VIDEO_DIP_ENABLE_GAMUT, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @VIDEO_DIP_ENABLE_GCP, align 4
  %107 = or i32 %105, %106
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %10, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @I915_WRITE(i32 %111, i32 %112)
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @POSTING_READ(i32 %114)
  %116 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %117 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %118 = call i32 @intel_hdmi_set_avi_infoframe(%struct.drm_encoder* %116, %struct.drm_display_mode* %117)
  %119 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %120 = call i32 @intel_hdmi_set_spd_infoframe(%struct.drm_encoder* %119)
  br label %121

121:                                              ; preds = %99, %68, %48, %47
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(%struct.drm_encoder*) #1

declare dso_local i32 @TVIDEO_DIP_CTL(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @assert_hdmi_port_disabled(%struct.intel_hdmi*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @intel_hdmi_set_avi_infoframe(%struct.drm_encoder*, %struct.drm_display_mode*) #1

declare dso_local i32 @intel_hdmi_set_spd_infoframe(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
