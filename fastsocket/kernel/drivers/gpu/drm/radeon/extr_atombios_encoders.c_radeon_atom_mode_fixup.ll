; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_display_mode = type { i32, i64, i64 }
%struct.radeon_encoder = type { i32, %struct.radeon_encoder_atom_dac* }
%struct.radeon_encoder_atom_dac = type { i64 }
%struct.drm_connector = type { i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@TV_STD_NTSC = common dso_local global i64 0, align 8
@TV_STD_NTSC_J = common dso_local global i64 0, align 8
@TV_STD_PAL_M = common dso_local global i64 0, align 8
@ATOM_DEVICE_DFP_SUPPORT = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @radeon_atom_mode_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_atom_mode_fixup(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.radeon_device*, align 8
  %10 = alloca %struct.radeon_encoder_atom_dac*, align 8
  %11 = alloca %struct.drm_connector*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %13 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %12)
  store %struct.radeon_encoder* %13, %struct.radeon_encoder** %7, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %15 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %8, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.radeon_device*, %struct.radeon_device** %18, align 8
  store %struct.radeon_device* %19, %struct.radeon_device** %9, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %21 = call i32 @radeon_encoder_set_active_device(%struct.drm_encoder* %20)
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %23 = call i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode* %22, i32 0)
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %3
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 2
  %38 = icmp slt i64 %33, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 2
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %39, %30, %3
  %47 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %48 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %56 = call i32 @radeon_panel_mode_fixup(%struct.drm_encoder* %54, %struct.drm_display_mode* %55)
  br label %57

57:                                               ; preds = %53, %46
  %58 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %59 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %98

64:                                               ; preds = %57
  %65 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %66 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %65, i32 0, i32 1
  %67 = load %struct.radeon_encoder_atom_dac*, %struct.radeon_encoder_atom_dac** %66, align 8
  store %struct.radeon_encoder_atom_dac* %67, %struct.radeon_encoder_atom_dac** %10, align 8
  %68 = load %struct.radeon_encoder_atom_dac*, %struct.radeon_encoder_atom_dac** %10, align 8
  %69 = icmp ne %struct.radeon_encoder_atom_dac* %68, null
  br i1 %69, label %70, label %97

70:                                               ; preds = %64
  %71 = load %struct.radeon_encoder_atom_dac*, %struct.radeon_encoder_atom_dac** %10, align 8
  %72 = getelementptr inbounds %struct.radeon_encoder_atom_dac, %struct.radeon_encoder_atom_dac* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TV_STD_NTSC, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %88, label %76

76:                                               ; preds = %70
  %77 = load %struct.radeon_encoder_atom_dac*, %struct.radeon_encoder_atom_dac** %10, align 8
  %78 = getelementptr inbounds %struct.radeon_encoder_atom_dac, %struct.radeon_encoder_atom_dac* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TV_STD_NTSC_J, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load %struct.radeon_encoder_atom_dac*, %struct.radeon_encoder_atom_dac** %10, align 8
  %84 = getelementptr inbounds %struct.radeon_encoder_atom_dac, %struct.radeon_encoder_atom_dac* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @TV_STD_PAL_M, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82, %76, %70
  %89 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %90 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %91 = call i32 @radeon_atom_get_tv_timings(%struct.radeon_device* %89, i32 0, %struct.drm_display_mode* %90)
  br label %96

92:                                               ; preds = %82
  %93 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %94 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %95 = call i32 @radeon_atom_get_tv_timings(%struct.radeon_device* %93, i32 1, %struct.drm_display_mode* %94)
  br label %96

96:                                               ; preds = %92, %88
  br label %97

97:                                               ; preds = %96, %64
  br label %98

98:                                               ; preds = %97, %57
  %99 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %100 = call i64 @ASIC_IS_DCE3(%struct.radeon_device* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %98
  %103 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %104 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %107 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %108 = or i32 %106, %107
  %109 = and i32 %105, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %102
  %112 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %113 = call i64 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder* %112)
  %114 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %111, %102
  %117 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %118 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %117)
  store %struct.drm_connector* %118, %struct.drm_connector** %11, align 8
  %119 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %120 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %121 = call i32 @radeon_dp_set_link_config(%struct.drm_connector* %119, %struct.drm_display_mode* %120)
  br label %122

122:                                              ; preds = %116, %111, %98
  ret i32 1
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_encoder_set_active_device(%struct.drm_encoder*) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode*, i32) #1

declare dso_local i32 @radeon_panel_mode_fixup(%struct.drm_encoder*, %struct.drm_display_mode*) #1

declare dso_local i32 @radeon_atom_get_tv_timings(%struct.radeon_device*, i32, %struct.drm_display_mode*) #1

declare dso_local i64 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i64 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_dp_set_link_config(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
