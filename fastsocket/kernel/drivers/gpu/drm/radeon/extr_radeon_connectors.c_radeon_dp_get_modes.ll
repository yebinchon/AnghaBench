; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_dp_get_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_dp_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.radeon_connector = type { %struct.radeon_connector_atom_dig* }
%struct.radeon_connector_atom_dig = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32, i32 }

@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i64 0, align 8
@ATOM_TRANSMITTER_ACTION_POWER_ON = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_POWER_OFF = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @radeon_dp_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_dp_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.radeon_connector*, align 8
  %5 = alloca %struct.radeon_connector_atom_dig*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %9)
  store %struct.radeon_connector* %10, %struct.radeon_connector** %4, align 8
  %11 = load %struct.radeon_connector*, %struct.radeon_connector** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %11, i32 0, i32 0
  %13 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %12, align 8
  store %struct.radeon_connector_atom_dig* %13, %struct.radeon_connector_atom_dig** %5, align 8
  %14 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %15 = call %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector* %14)
  store %struct.drm_encoder* %15, %struct.drm_encoder** %6, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %23 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DRM_MODE_CONNECTOR_LVDS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %113

27:                                               ; preds = %21, %1
  %28 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %29 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %27
  %34 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %5, align 8
  %35 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %40 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_ON, align 4
  %41 = call i32 @atombios_set_edp_panel_power(%struct.drm_connector* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.radeon_connector*, %struct.radeon_connector** %4, align 8
  %44 = call i32 @radeon_ddc_get_modes(%struct.radeon_connector* %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %5, align 8
  %46 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %51 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_OFF, align 4
  %52 = call i32 @atombios_set_edp_panel_power(%struct.drm_connector* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %42
  br label %69

54:                                               ; preds = %27
  %55 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %56 = call i64 @radeon_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector* %55)
  %57 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %61 = icmp ne %struct.drm_encoder* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %64 = call i32 @radeon_atom_ext_encoder_setup_ddc(%struct.drm_encoder* %63)
  br label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %65, %54
  %67 = load %struct.radeon_connector*, %struct.radeon_connector** %4, align 8
  %68 = call i32 @radeon_ddc_get_modes(%struct.radeon_connector* %67)
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %66, %53
  %70 = load i32, i32* %7, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %74 = icmp ne %struct.drm_encoder* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %77 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %78 = call i32 @radeon_fixup_lvds_native_mode(%struct.drm_encoder* %76, %struct.drm_connector* %77)
  %79 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %80 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %81 = call i32 @radeon_add_common_modes(%struct.drm_encoder* %79, %struct.drm_connector* %80)
  br label %82

82:                                               ; preds = %75, %72
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %130

84:                                               ; preds = %69
  %85 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %86 = icmp ne %struct.drm_encoder* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %130

88:                                               ; preds = %84
  %89 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %90 = call %struct.drm_display_mode* @radeon_fp_native_mode(%struct.drm_encoder* %89)
  store %struct.drm_display_mode* %90, %struct.drm_display_mode** %8, align 8
  %91 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %92 = icmp ne %struct.drm_display_mode* %91, null
  br i1 %92, label %93, label %112

93:                                               ; preds = %88
  store i32 1, i32* %7, align 4
  %94 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %95 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %96 = call i32 @drm_mode_probed_add(%struct.drm_connector* %94, %struct.drm_display_mode* %95)
  %97 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %98 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %101 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %104 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %107 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  %109 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %110 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %111 = call i32 @radeon_add_common_modes(%struct.drm_encoder* %109, %struct.drm_connector* %110)
  br label %112

112:                                              ; preds = %93, %88
  br label %128

113:                                              ; preds = %21
  %114 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %115 = call i64 @radeon_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector* %114)
  %116 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %120 = icmp ne %struct.drm_encoder* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %123 = call i32 @radeon_atom_ext_encoder_setup_ddc(%struct.drm_encoder* %122)
  br label %124

124:                                              ; preds = %121, %118
  br label %125

125:                                              ; preds = %124, %113
  %126 = load %struct.radeon_connector*, %struct.radeon_connector** %4, align 8
  %127 = call i32 @radeon_ddc_get_modes(%struct.radeon_connector* %126)
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %125, %112
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %128, %87, %82
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector*) #1

declare dso_local i32 @atombios_set_edp_panel_power(%struct.drm_connector*, i32) #1

declare dso_local i32 @radeon_ddc_get_modes(%struct.radeon_connector*) #1

declare dso_local i64 @radeon_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector*) #1

declare dso_local i32 @radeon_atom_ext_encoder_setup_ddc(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_fixup_lvds_native_mode(%struct.drm_encoder*, %struct.drm_connector*) #1

declare dso_local i32 @radeon_add_common_modes(%struct.drm_encoder*, %struct.drm_connector*) #1

declare dso_local %struct.drm_display_mode* @radeon_fp_native_mode(%struct.drm_encoder*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
