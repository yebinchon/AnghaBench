; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_mode_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_encoder = type { i32, i32, i32, i32 }

@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@ATOM_DEVICE_CV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@PANEL_ENCODER_ACTION_ENABLE = common dso_local global i32 0, align 4
@ATOM_ENABLE = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_HDMI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @radeon_atom_encoder_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_atom_encoder_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_encoder*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %8, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %17 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %16)
  store %struct.radeon_encoder* %17, %struct.radeon_encoder** %9, align 8
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %19 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %22 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %24 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %25 = call i32 @radeon_atom_encoder_dpms(%struct.drm_encoder* %23, i32 %24)
  %26 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %27 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %3
  %30 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %31 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %35 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %38 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %44 = call i32 @atombios_yuv_setup(%struct.drm_encoder* %43, i32 1)
  br label %48

45:                                               ; preds = %33
  %46 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %47 = call i32 @atombios_yuv_setup(%struct.drm_encoder* %46, i32 0)
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %29, %3
  %50 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %51 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %93 [
    i32 131, label %53
    i32 134, label %53
    i32 133, label %53
    i32 132, label %53
    i32 130, label %57
    i32 129, label %57
    i32 128, label %57
    i32 135, label %57
    i32 140, label %58
    i32 139, label %58
    i32 136, label %58
    i32 142, label %62
    i32 138, label %62
    i32 141, label %62
    i32 137, label %62
  ]

53:                                               ; preds = %49, %49, %49, %49
  %54 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %55 = load i32, i32* @PANEL_ENCODER_ACTION_ENABLE, align 4
  %56 = call i32 @atombios_digital_setup(%struct.drm_encoder* %54, i32 %55)
  br label %93

57:                                               ; preds = %49, %49, %49, %49
  br label %93

58:                                               ; preds = %49, %49, %49
  %59 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %60 = load i32, i32* @ATOM_ENABLE, align 4
  %61 = call i32 @atombios_dvo_setup(%struct.drm_encoder* %59, i32 %60)
  br label %93

62:                                               ; preds = %49, %49, %49, %49
  %63 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %64 = load i32, i32* @ATOM_ENABLE, align 4
  %65 = call i32 @atombios_dac_setup(%struct.drm_encoder* %63, i32 %64)
  %66 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %67 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %70 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %62
  %75 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %76 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %79 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %85 = load i32, i32* @ATOM_ENABLE, align 4
  %86 = call i32 @atombios_tv_setup(%struct.drm_encoder* %84, i32 %85)
  br label %91

87:                                               ; preds = %74
  %88 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %89 = load i32, i32* @ATOM_DISABLE, align 4
  %90 = call i32 @atombios_tv_setup(%struct.drm_encoder* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %83
  br label %92

92:                                               ; preds = %91, %62
  br label %93

93:                                               ; preds = %49, %92, %58, %57, %53
  %94 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %95 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %96 = call i32 @atombios_apply_encoder_quirks(%struct.drm_encoder* %94, %struct.drm_display_mode* %95)
  %97 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %98 = call i64 @atombios_get_encoder_mode(%struct.drm_encoder* %97)
  %99 = load i64, i64* @ATOM_ENCODER_MODE_HDMI, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %93
  %102 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %103 = call i32 @r600_hdmi_enable(%struct.drm_encoder* %102)
  %104 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %105 = call i64 @ASIC_IS_DCE6(%struct.radeon_device* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %121

108:                                              ; preds = %101
  %109 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %110 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %114 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %115 = call i32 @evergreen_hdmi_setmode(%struct.drm_encoder* %113, %struct.drm_display_mode* %114)
  br label %120

116:                                              ; preds = %108
  %117 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %118 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %119 = call i32 @r600_hdmi_setmode(%struct.drm_encoder* %117, %struct.drm_display_mode* %118)
  br label %120

120:                                              ; preds = %116, %112
  br label %121

121:                                              ; preds = %120, %107
  br label %122

122:                                              ; preds = %121, %93
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_atom_encoder_dpms(%struct.drm_encoder*, i32) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @atombios_yuv_setup(%struct.drm_encoder*, i32) #1

declare dso_local i32 @atombios_digital_setup(%struct.drm_encoder*, i32) #1

declare dso_local i32 @atombios_dvo_setup(%struct.drm_encoder*, i32) #1

declare dso_local i32 @atombios_dac_setup(%struct.drm_encoder*, i32) #1

declare dso_local i32 @atombios_tv_setup(%struct.drm_encoder*, i32) #1

declare dso_local i32 @atombios_apply_encoder_quirks(%struct.drm_encoder*, %struct.drm_display_mode*) #1

declare dso_local i64 @atombios_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i32 @r600_hdmi_enable(%struct.drm_encoder*) #1

declare dso_local i64 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_hdmi_setmode(%struct.drm_encoder*, %struct.drm_display_mode*) #1

declare dso_local i32 @r600_hdmi_setmode(%struct.drm_encoder*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
