; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.radeon_encoder = type { i32, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i64, i32 }
%struct.drm_connector = type { i64 }
%struct.radeon_connector = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@ATOM_DEVICE_DFP_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@CHIP_R600 = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@ATOM_TRANSMITTER_ACTION_POWER_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @radeon_atom_encoder_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_atom_encoder_prepare(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_encoder*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %7 = alloca %struct.radeon_connector*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %9 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  store %struct.radeon_device* %12, %struct.radeon_device** %3, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %14 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %13)
  store %struct.radeon_encoder* %14, %struct.radeon_encoder** %4, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %16 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %15)
  store %struct.drm_connector* %16, %struct.drm_connector** %5, align 8
  %17 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %18 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %21 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %27 = call i64 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder* %26)
  %28 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %77

30:                                               ; preds = %25, %1
  %31 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %32 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %31, i32 0, i32 1
  %33 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %32, align 8
  store %struct.radeon_encoder_atom_dig* %33, %struct.radeon_encoder_atom_dig** %6, align 8
  %34 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %35 = icmp ne %struct.radeon_encoder_atom_dig* %34, null
  br i1 %35, label %36, label %76

36:                                               ; preds = %30
  %37 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %38 = call i64 @radeon_atom_pick_dig_encoder(%struct.drm_encoder* %37)
  %39 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %40 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %42 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %36
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CHIP_R600, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %59 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %64 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  br label %74

65:                                               ; preds = %47
  %66 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %73 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %65, %53
  br label %75

75:                                               ; preds = %74, %36
  br label %76

76:                                               ; preds = %75, %30
  br label %77

77:                                               ; preds = %76, %25
  %78 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %79 = call i32 @radeon_atom_output_lock(%struct.drm_encoder* %78, i32 1)
  %80 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %81 = icmp ne %struct.drm_connector* %80, null
  br i1 %81, label %82, label %104

82:                                               ; preds = %77
  %83 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %84 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %83)
  store %struct.radeon_connector* %84, %struct.radeon_connector** %7, align 8
  %85 = load %struct.radeon_connector*, %struct.radeon_connector** %7, align 8
  %86 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load %struct.radeon_connector*, %struct.radeon_connector** %7, align 8
  %92 = call i32 @radeon_router_select_cd_port(%struct.radeon_connector* %91)
  br label %93

93:                                               ; preds = %90, %82
  %94 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %95 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %101 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_ON, align 4
  %102 = call i32 @atombios_set_edp_panel_power(%struct.drm_connector* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %93
  br label %104

104:                                              ; preds = %103, %77
  %105 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %106 = call i32 @atombios_set_encoder_crtc_source(%struct.drm_encoder* %105)
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local i64 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder*) #1

declare dso_local i64 @radeon_atom_pick_dig_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_atom_output_lock(%struct.drm_encoder*, i32) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @radeon_router_select_cd_port(%struct.radeon_connector*) #1

declare dso_local i32 @atombios_set_edp_panel_power(%struct.drm_connector*, i32) #1

declare dso_local i32 @atombios_set_encoder_crtc_source(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
