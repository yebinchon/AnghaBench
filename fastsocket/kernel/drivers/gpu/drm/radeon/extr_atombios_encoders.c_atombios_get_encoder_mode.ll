; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_get_encoder_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_get_encoder_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_encoder = type { i64 }
%struct.drm_connector = type { i32 }
%struct.radeon_connector = type { i32, %struct.radeon_connector_atom_dig*, i32 }
%struct.radeon_connector_atom_dig = type { i32 }

@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@ATOM_ENCODER_MODE_DP = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_DVO1 = common dso_local global i64 0, align 8
@ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1 = common dso_local global i64 0, align 8
@ATOM_ENCODER_MODE_DVO = common dso_local global i32 0, align 4
@radeon_audio = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_HDMI = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_DVI = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_CRT = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_LVDS = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_eDP = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_TV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atombios_get_encoder_mode(%struct.drm_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_encoder*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca %struct.radeon_connector*, align 8
  %9 = alloca %struct.radeon_connector_atom_dig*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %5, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %17 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %16)
  store %struct.radeon_encoder* %17, %struct.radeon_encoder** %6, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %19 = call i64 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder* %18)
  %20 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @ATOM_ENCODER_MODE_DP, align 4
  store i32 %23, i32* %2, align 4
  br label %136

24:                                               ; preds = %1
  %25 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %26 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ENCODER_OBJECT_ID_INTERNAL_DVO1, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %32 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30, %24
  %37 = load i32, i32* @ATOM_ENCODER_MODE_DVO, align 4
  store i32 %37, i32* %2, align 4
  br label %136

38:                                               ; preds = %30
  %39 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %40 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %39)
  store %struct.drm_connector* %40, %struct.drm_connector** %7, align 8
  %41 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %42 = icmp ne %struct.drm_connector* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %45 = call %struct.drm_connector* @radeon_get_connector_for_encoder_init(%struct.drm_encoder* %44)
  store %struct.drm_connector* %45, %struct.drm_connector** %7, align 8
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %48 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %47)
  store %struct.radeon_connector* %48, %struct.radeon_connector** %8, align 8
  %49 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %50 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %77 [
    i32 135, label %52
    i32 132, label %52
    i32 136, label %76
    i32 133, label %76
    i32 131, label %94
    i32 134, label %96
    i32 128, label %130
    i32 137, label %132
    i32 129, label %132
    i32 138, label %134
    i32 130, label %134
    i32 139, label %134
  ]

52:                                               ; preds = %46, %46
  %53 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %54 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @drm_detect_hdmi_monitor(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load i32, i32* @radeon_audio, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %63 = call i32 @ASIC_IS_DCE6(%struct.radeon_device* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  store i32 %66, i32* %2, align 4
  br label %136

67:                                               ; preds = %61, %58, %52
  %68 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %69 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @ATOM_ENCODER_MODE_DVI, align 4
  store i32 %73, i32* %2, align 4
  br label %136

74:                                               ; preds = %67
  %75 = load i32, i32* @ATOM_ENCODER_MODE_CRT, align 4
  store i32 %75, i32* %2, align 4
  br label %136

76:                                               ; preds = %46, %46
  br label %77

77:                                               ; preds = %46, %76
  %78 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %79 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @drm_detect_hdmi_monitor(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load i32, i32* @radeon_audio, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %88 = call i32 @ASIC_IS_DCE6(%struct.radeon_device* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  store i32 %91, i32* %2, align 4
  br label %136

92:                                               ; preds = %86, %83, %77
  %93 = load i32, i32* @ATOM_ENCODER_MODE_DVI, align 4
  store i32 %93, i32* %2, align 4
  br label %136

94:                                               ; preds = %46
  %95 = load i32, i32* @ATOM_ENCODER_MODE_LVDS, align 4
  store i32 %95, i32* %2, align 4
  br label %136

96:                                               ; preds = %46
  %97 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %98 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %97, i32 0, i32 1
  %99 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %98, align 8
  store %struct.radeon_connector_atom_dig* %99, %struct.radeon_connector_atom_dig** %9, align 8
  %100 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %9, align 8
  %101 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %96
  %106 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %9, align 8
  %107 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CONNECTOR_OBJECT_ID_eDP, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105, %96
  %112 = load i32, i32* @ATOM_ENCODER_MODE_DP, align 4
  store i32 %112, i32* %2, align 4
  br label %136

113:                                              ; preds = %105
  %114 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %115 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @drm_detect_hdmi_monitor(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %113
  %120 = load i32, i32* @radeon_audio, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %124 = call i32 @ASIC_IS_DCE6(%struct.radeon_device* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  store i32 %127, i32* %2, align 4
  br label %136

128:                                              ; preds = %122, %119, %113
  %129 = load i32, i32* @ATOM_ENCODER_MODE_DVI, align 4
  store i32 %129, i32* %2, align 4
  br label %136

130:                                              ; preds = %46
  %131 = load i32, i32* @ATOM_ENCODER_MODE_DP, align 4
  store i32 %131, i32* %2, align 4
  br label %136

132:                                              ; preds = %46, %46
  %133 = load i32, i32* @ATOM_ENCODER_MODE_CRT, align 4
  store i32 %133, i32* %2, align 4
  br label %136

134:                                              ; preds = %46, %46, %46
  %135 = load i32, i32* @ATOM_ENCODER_MODE_TV, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %134, %132, %130, %128, %126, %111, %94, %92, %90, %74, %72, %65, %36, %22
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i64 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder_init(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_detect_hdmi_monitor(i32) #1

declare dso_local i32 @ASIC_IS_DCE6(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
