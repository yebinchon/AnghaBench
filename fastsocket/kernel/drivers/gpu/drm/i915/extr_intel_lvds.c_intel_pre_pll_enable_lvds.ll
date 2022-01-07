; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_lvds.c_intel_pre_pll_enable_lvds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_lvds.c_intel_pre_pll_enable_lvds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32, i64 }
%struct.intel_lvds_encoder = type { i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_display_mode* }
%struct.drm_display_mode = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.TYPE_10__ = type { i32 }

@LVDS_PORT_EN = common dso_local global i32 0, align 4
@LVDS_A0A2_CLKA_POWER_UP = common dso_local global i32 0, align 4
@PORT_TRANS_SEL_MASK = common dso_local global i32 0, align 4
@LVDS_PIPEB_SELECT = common dso_local global i32 0, align 4
@LVDS_B0B3_POWER_UP = common dso_local global i32 0, align 4
@LVDS_CLKB_POWER_UP = common dso_local global i32 0, align 4
@LVDS_ENABLE_DITHER = common dso_local global i32 0, align 4
@LVDS_HSYNC_POLARITY = common dso_local global i32 0, align 4
@LVDS_VSYNC_POLARITY = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*)* @intel_pre_pll_enable_lvds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pre_pll_enable_lvds(%struct.intel_encoder* %0) #0 {
  %2 = alloca %struct.intel_encoder*, align 8
  %3 = alloca %struct.intel_lvds_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %2, align 8
  %10 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %11 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %10, i32 0, i32 0
  %12 = call %struct.intel_lvds_encoder* @to_lvds_encoder(%struct.TYPE_9__* %11)
  store %struct.intel_lvds_encoder* %12, %struct.intel_lvds_encoder** %3, align 8
  %13 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %14 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %4, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %18, align 8
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %5, align 8
  %20 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %21 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.intel_crtc* @to_intel_crtc(i32 %23)
  store %struct.intel_crtc* %24, %struct.intel_crtc** %6, align 8
  %25 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %3, align 8
  %26 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %25, i32 0, i32 2
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %30, align 8
  store %struct.drm_display_mode* %31, %struct.drm_display_mode** %7, align 8
  %32 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %33 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %3, align 8
  %36 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @I915_READ(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @LVDS_PORT_EN, align 4
  %40 = load i32, i32* @LVDS_A0A2_CLKA_POWER_UP, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %45 = call i64 @HAS_PCH_CPT(%struct.drm_device* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %1
  %48 = load i32, i32* @PORT_TRANS_SEL_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @PORT_TRANS_SEL_CPT(i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %69

56:                                               ; preds = %1
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* @LVDS_PIPEB_SELECT, align 4
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %68

63:                                               ; preds = %56
  %64 = load i32, i32* @LVDS_PIPEB_SELECT, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %63, %59
  br label %69

69:                                               ; preds = %68, %47
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %71 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %3, align 8
  %76 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = load i32, i32* @LVDS_B0B3_POWER_UP, align 4
  %81 = load i32, i32* @LVDS_CLKB_POWER_UP, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %92

85:                                               ; preds = %69
  %86 = load i32, i32* @LVDS_B0B3_POWER_UP, align 4
  %87 = load i32, i32* @LVDS_CLKB_POWER_UP, align 4
  %88 = or i32 %86, %87
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %85, %79
  %93 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %94 = call %struct.TYPE_10__* @INTEL_INFO(%struct.drm_device* %93)
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 4
  br i1 %97, label %98, label %113

98:                                               ; preds = %92
  %99 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %100 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @LVDS_ENABLE_DITHER, align 4
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  br label %112

107:                                              ; preds = %98
  %108 = load i32, i32* @LVDS_ENABLE_DITHER, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %9, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %107, %103
  br label %113

113:                                              ; preds = %112, %92
  %114 = load i32, i32* @LVDS_HSYNC_POLARITY, align 4
  %115 = load i32, i32* @LVDS_VSYNC_POLARITY, align 4
  %116 = or i32 %114, %115
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %9, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %9, align 4
  %120 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %121 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %113
  %127 = load i32, i32* @LVDS_HSYNC_POLARITY, align 4
  %128 = load i32, i32* %9, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %126, %113
  %131 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %132 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i32, i32* @LVDS_VSYNC_POLARITY, align 4
  %139 = load i32, i32* %9, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %137, %130
  %142 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %3, align 8
  %143 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @I915_WRITE(i32 %144, i32 %145)
  ret void
}

declare dso_local %struct.intel_lvds_encoder* @to_lvds_encoder(%struct.TYPE_9__*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_device*) #1

declare dso_local i32 @PORT_TRANS_SEL_CPT(i32) #1

declare dso_local %struct.TYPE_10__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
