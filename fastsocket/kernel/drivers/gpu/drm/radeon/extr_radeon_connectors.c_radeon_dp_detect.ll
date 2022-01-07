; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_dp_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_dp_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i64, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_connector = type { %struct.TYPE_2__, i64, i32*, %struct.radeon_connector_atom_dig* }
%struct.TYPE_2__ = type { i32 }
%struct.radeon_connector_atom_dig = type { i64, i32 }
%struct.drm_encoder = type { %struct.drm_encoder_helper_funcs* }
%struct.drm_encoder_helper_funcs = type { i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)* }
%struct.drm_encoder.0 = type opaque
%struct.drm_connector.1 = type opaque
%struct.radeon_encoder = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }

@connector_status_disconnected = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i64 0, align 8
@connector_status_connected = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i64 0, align 8
@ATOM_TRANSMITTER_ACTION_POWER_ON = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_POWER_OFF = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @radeon_dp_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_dp_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_connector*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_connector_atom_dig*, align 8
  %11 = alloca %struct.drm_encoder*, align 8
  %12 = alloca %struct.radeon_encoder*, align 8
  %13 = alloca %struct.drm_display_mode*, align 8
  %14 = alloca %struct.drm_encoder_helper_funcs*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 2
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %6, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load %struct.radeon_device*, %struct.radeon_device** %19, align 8
  store %struct.radeon_device* %20, %struct.radeon_device** %7, align 8
  %21 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %22 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %21)
  store %struct.radeon_connector* %22, %struct.radeon_connector** %8, align 8
  %23 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %25 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %24, i32 0, i32 3
  %26 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %25, align 8
  store %struct.radeon_connector_atom_dig* %26, %struct.radeon_connector_atom_dig** %10, align 8
  %27 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %28 = call %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector* %27)
  store %struct.drm_encoder* %28, %struct.drm_encoder** %11, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %2
  %32 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %33 = call i64 @radeon_check_hpd_status_unchanged(%struct.drm_connector* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %37 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %3, align 4
  br label %203

39:                                               ; preds = %31, %2
  %40 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %41 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %46 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @kfree(i32* %47)
  %49 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %50 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %44, %39
  %52 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %53 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %59 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DRM_MODE_CONNECTOR_LVDS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %111

63:                                               ; preds = %57, %51
  %64 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %65 = icmp ne %struct.drm_encoder* %64, null
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %68 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %67)
  store %struct.radeon_encoder* %68, %struct.radeon_encoder** %12, align 8
  %69 = load %struct.radeon_encoder*, %struct.radeon_encoder** %12, align 8
  %70 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %69, i32 0, i32 0
  store %struct.drm_display_mode* %70, %struct.drm_display_mode** %13, align 8
  %71 = load %struct.drm_display_mode*, %struct.drm_display_mode** %13, align 8
  %72 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %73, 320
  br i1 %74, label %75, label %82

75:                                               ; preds = %66
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %13, align 8
  %77 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sge i32 %78, 240
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @connector_status_connected, align 4
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %80, %75, %66
  br label %83

83:                                               ; preds = %82, %63
  %84 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %85 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %86 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %88 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %83
  %92 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %93 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_ON, align 4
  %94 = call i32 @atombios_set_edp_panel_power(%struct.drm_connector* %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %83
  %96 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %97 = call i64 @radeon_dp_getdpcd(%struct.radeon_connector* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* @connector_status_connected, align 4
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %99, %95
  %102 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %103 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %101
  %107 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %108 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_OFF, align 4
  %109 = call i32 @atombios_set_edp_panel_power(%struct.drm_connector* %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %101
  br label %198

111:                                              ; preds = %57
  %112 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %113 = call i64 @radeon_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector* %112)
  %114 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %152

116:                                              ; preds = %111
  %117 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %118 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %119 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %121 = call i64 @radeon_dp_getdpcd(%struct.radeon_connector* %120)
  %122 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %123 = icmp ne %struct.drm_encoder* %122, null
  br i1 %123, label %124, label %151

124:                                              ; preds = %116
  %125 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %126 = call i32 @radeon_atom_ext_encoder_setup_ddc(%struct.drm_encoder* %125)
  %127 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %128 = call i64 @radeon_ddc_probe(%struct.radeon_connector* %127, i32 1)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i32, i32* @connector_status_connected, align 4
  store i32 %131, i32* %9, align 4
  br label %150

132:                                              ; preds = %124
  %133 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %134 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %132
  %138 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %139 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %138, i32 0, i32 0
  %140 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %139, align 8
  store %struct.drm_encoder_helper_funcs* %140, %struct.drm_encoder_helper_funcs** %14, align 8
  %141 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %14, align 8
  %142 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %141, i32 0, i32 0
  %143 = load i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)*, i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)** %142, align 8
  %144 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %145 = bitcast %struct.drm_encoder* %144 to %struct.drm_encoder.0*
  %146 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %147 = bitcast %struct.drm_connector* %146 to %struct.drm_connector.1*
  %148 = call i32 %143(%struct.drm_encoder.0* %145, %struct.drm_connector.1* %147)
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %137, %132
  br label %150

150:                                              ; preds = %149, %130
  br label %151

151:                                              ; preds = %150, %116
  br label %197

152:                                              ; preds = %111
  %153 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %154 = call i64 @radeon_dp_getsinktype(%struct.radeon_connector* %153)
  %155 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %156 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %158 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %159 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @radeon_hpd_sense(%struct.radeon_device* %157, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %152
  %165 = load i32, i32* @connector_status_connected, align 4
  store i32 %165, i32* %9, align 4
  %166 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %167 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %164
  %172 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %173 = call i64 @radeon_dp_getdpcd(%struct.radeon_connector* %172)
  br label %174

174:                                              ; preds = %171, %164
  br label %196

175:                                              ; preds = %152
  %176 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %177 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %175
  %182 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %183 = call i64 @radeon_dp_getdpcd(%struct.radeon_connector* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = load i32, i32* @connector_status_connected, align 4
  store i32 %186, i32* %9, align 4
  br label %187

187:                                              ; preds = %185, %181
  br label %195

188:                                              ; preds = %175
  %189 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %190 = call i64 @radeon_ddc_probe(%struct.radeon_connector* %189, i32 0)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = load i32, i32* @connector_status_connected, align 4
  store i32 %193, i32* %9, align 4
  br label %194

194:                                              ; preds = %192, %188
  br label %195

195:                                              ; preds = %194, %187
  br label %196

196:                                              ; preds = %195, %174
  br label %197

197:                                              ; preds = %196, %151
  br label %198

198:                                              ; preds = %197, %110
  %199 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @radeon_connector_update_scratch_regs(%struct.drm_connector* %199, i32 %200)
  %202 = load i32, i32* %9, align 4
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %198, %35
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector*) #1

declare dso_local i64 @radeon_check_hpd_status_unchanged(%struct.drm_connector*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @atombios_set_edp_panel_power(%struct.drm_connector*, i32) #1

declare dso_local i64 @radeon_dp_getdpcd(%struct.radeon_connector*) #1

declare dso_local i64 @radeon_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector*) #1

declare dso_local i32 @radeon_atom_ext_encoder_setup_ddc(%struct.drm_encoder*) #1

declare dso_local i64 @radeon_ddc_probe(%struct.radeon_connector*, i32) #1

declare dso_local i64 @radeon_dp_getsinktype(%struct.radeon_connector*) #1

declare dso_local i64 @radeon_hpd_sense(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_connector_update_scratch_regs(%struct.drm_connector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
