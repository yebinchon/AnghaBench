; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_dpms_dig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_dpms_dig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_encoder = type { i32, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i32 }
%struct.drm_connector = type { i32 }
%struct.radeon_connector = type { %struct.radeon_connector_atom_dig* }
%struct.radeon_connector_atom_dig = type { i32 }

@DP_PANEL_MODE_EXTERNAL_DP_MODE = common dso_local global i32 0, align 4
@ATOM_ENCODER_CMD_SETUP = common dso_local global i32 0, align 4
@ATOM_ENCODER_CMD_SETUP_PANEL_MODE = common dso_local global i32 0, align 4
@EXTERNAL_ENCODER_ACTION_V3_ENCODER_SETUP = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_ENABLE = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_ENABLE_OUTPUT = common dso_local global i32 0, align 4
@ATOM_ENABLE = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_SETUP = common dso_local global i32 0, align 4
@CHIP_RV710 = common dso_local global i32 0, align 4
@CHIP_RV730 = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_POWER_ON = common dso_local global i32 0, align 4
@ATOM_ENCODER_CMD_DP_VIDEO_ON = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_LCD_BLON = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_DISABLE = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_DISABLE_OUTPUT = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@ATOM_ENCODER_CMD_DP_VIDEO_OFF = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_POWER_OFF = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_LCD_BLOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @radeon_atom_encoder_dpms_dig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_atom_encoder_dpms_dig(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.drm_encoder*, align 8
  %9 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %10 = alloca %struct.drm_connector*, align 8
  %11 = alloca %struct.radeon_connector*, align 8
  %12 = alloca %struct.radeon_connector_atom_dig*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %14 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %5, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %6, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %20 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %19)
  store %struct.radeon_encoder* %20, %struct.radeon_encoder** %7, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %22 = call %struct.drm_encoder* @radeon_get_external_encoder(%struct.drm_encoder* %21)
  store %struct.drm_encoder* %22, %struct.drm_encoder** %8, align 8
  %23 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %24 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %23, i32 0, i32 1
  %25 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %24, align 8
  store %struct.radeon_encoder_atom_dig* %25, %struct.radeon_encoder_atom_dig** %9, align 8
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %27 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %26)
  store %struct.drm_connector* %27, %struct.drm_connector** %10, align 8
  store %struct.radeon_connector* null, %struct.radeon_connector** %11, align 8
  store %struct.radeon_connector_atom_dig* null, %struct.radeon_connector_atom_dig** %12, align 8
  %28 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %29 = icmp ne %struct.drm_connector* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %32 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %31)
  store %struct.radeon_connector* %32, %struct.radeon_connector** %11, align 8
  %33 = load %struct.radeon_connector*, %struct.radeon_connector** %11, align 8
  %34 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %33, i32 0, i32 0
  %35 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %34, align 8
  store %struct.radeon_connector_atom_dig* %35, %struct.radeon_connector_atom_dig** %12, align 8
  br label %36

36:                                               ; preds = %30, %2
  %37 = load i32, i32* %4, align 4
  switch i32 %37, label %249 [
    i32 130, label %38
    i32 129, label %174
    i32 128, label %174
    i32 131, label %174
  ]

38:                                               ; preds = %36
  %39 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %40 = call i32 @ASIC_IS_DCE41(%struct.radeon_device* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %44 = call i32 @ASIC_IS_DCE5(%struct.radeon_device* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %89

46:                                               ; preds = %42, %38
  %47 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %48 = icmp ne %struct.drm_connector* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @DP_PANEL_MODE_EXTERNAL_DP_MODE, align 4
  %51 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %9, align 8
  %52 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %59

53:                                               ; preds = %46
  %54 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %55 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %56 = call i32 @radeon_dp_get_panel_mode(%struct.drm_encoder* %54, %struct.drm_connector* %55)
  %57 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %9, align 8
  %58 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %53, %49
  %60 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %61 = load i32, i32* @ATOM_ENCODER_CMD_SETUP, align 4
  %62 = call i32 @atombios_dig_encoder_setup(%struct.drm_encoder* %60, i32 %61, i32 0)
  %63 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %64 = load i32, i32* @ATOM_ENCODER_CMD_SETUP_PANEL_MODE, align 4
  %65 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %9, align 8
  %66 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @atombios_dig_encoder_setup(%struct.drm_encoder* %63, i32 %64, i32 %67)
  %69 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %70 = icmp ne %struct.drm_encoder* %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %59
  %72 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %73 = call i32 @ASIC_IS_DCE41(%struct.radeon_device* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %77 = call i32 @ASIC_IS_DCE61(%struct.radeon_device* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75, %71
  %80 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %81 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %82 = load i32, i32* @EXTERNAL_ENCODER_ACTION_V3_ENCODER_SETUP, align 4
  %83 = call i32 @atombios_external_encoder_setup(%struct.drm_encoder* %80, %struct.drm_encoder* %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %75
  br label %85

85:                                               ; preds = %84, %59
  %86 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %87 = load i32, i32* @ATOM_TRANSMITTER_ACTION_ENABLE, align 4
  %88 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %86, i32 %87, i32 0, i32 0)
  br label %130

89:                                               ; preds = %42
  %90 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %91 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %95 = load i32, i32* @ATOM_ENCODER_CMD_SETUP, align 4
  %96 = call i32 @atombios_dig_encoder_setup(%struct.drm_encoder* %94, i32 %95, i32 0)
  %97 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %98 = load i32, i32* @ATOM_TRANSMITTER_ACTION_ENABLE, align 4
  %99 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %97, i32 %98, i32 0, i32 0)
  %100 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %101 = load i32, i32* @ATOM_TRANSMITTER_ACTION_ENABLE_OUTPUT, align 4
  %102 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %100, i32 %101, i32 0, i32 0)
  br label %129

103:                                              ; preds = %89
  %104 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %105 = load i32, i32* @ATOM_ENABLE, align 4
  %106 = call i32 @atombios_dig_encoder_setup(%struct.drm_encoder* %104, i32 %105, i32 0)
  %107 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %108 = load i32, i32* @ATOM_TRANSMITTER_ACTION_SETUP, align 4
  %109 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %107, i32 %108, i32 0, i32 0)
  %110 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %111 = load i32, i32* @ATOM_TRANSMITTER_ACTION_ENABLE, align 4
  %112 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %110, i32 %111, i32 0, i32 0)
  %113 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @CHIP_RV710, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %103
  %119 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %120 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @CHIP_RV730, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %126 = load i32, i32* @ATOM_TRANSMITTER_ACTION_ENABLE_OUTPUT, align 4
  %127 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %125, i32 %126, i32 0, i32 0)
  br label %128

128:                                              ; preds = %124, %118, %103
  br label %129

129:                                              ; preds = %128, %93
  br label %130

130:                                              ; preds = %129, %85
  %131 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %132 = call i32 @atombios_get_encoder_mode(%struct.drm_encoder* %131)
  %133 = call i32 @ENCODER_MODE_IS_DP(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %162

135:                                              ; preds = %130
  %136 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %137 = icmp ne %struct.drm_connector* %136, null
  br i1 %137, label %138, label %162

138:                                              ; preds = %135
  %139 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %140 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @DRM_MODE_CONNECTOR_eDP, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %138
  %145 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %146 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_ON, align 4
  %147 = call i32 @atombios_set_edp_panel_power(%struct.drm_connector* %145, i32 %146)
  %148 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %12, align 8
  %149 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %148, i32 0, i32 0
  store i32 1, i32* %149, align 4
  br label %150

150:                                              ; preds = %144, %138
  %151 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %152 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %153 = call i32 @radeon_dp_link_train(%struct.drm_encoder* %151, %struct.drm_connector* %152)
  %154 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %155 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %150
  %158 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %159 = load i32, i32* @ATOM_ENCODER_CMD_DP_VIDEO_ON, align 4
  %160 = call i32 @atombios_dig_encoder_setup(%struct.drm_encoder* %158, i32 %159, i32 0)
  br label %161

161:                                              ; preds = %157, %150
  br label %162

162:                                              ; preds = %161, %135, %130
  %163 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %164 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %171 = load i32, i32* @ATOM_TRANSMITTER_ACTION_LCD_BLON, align 4
  %172 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %170, i32 %171, i32 0, i32 0)
  br label %173

173:                                              ; preds = %169, %162
  br label %249

174:                                              ; preds = %36, %36, %36
  %175 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %176 = call i32 @ASIC_IS_DCE41(%struct.radeon_device* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %180 = call i32 @ASIC_IS_DCE5(%struct.radeon_device* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %178, %174
  %183 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %184 = load i32, i32* @ATOM_TRANSMITTER_ACTION_DISABLE, align 4
  %185 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %183, i32 %184, i32 0, i32 0)
  br label %208

186:                                              ; preds = %178
  %187 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %188 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %186
  %191 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %192 = load i32, i32* @ATOM_TRANSMITTER_ACTION_DISABLE_OUTPUT, align 4
  %193 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %191, i32 %192, i32 0, i32 0)
  %194 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %195 = load i32, i32* @ATOM_TRANSMITTER_ACTION_DISABLE, align 4
  %196 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %194, i32 %195, i32 0, i32 0)
  br label %207

197:                                              ; preds = %186
  %198 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %199 = load i32, i32* @ATOM_TRANSMITTER_ACTION_DISABLE_OUTPUT, align 4
  %200 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %198, i32 %199, i32 0, i32 0)
  %201 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %202 = load i32, i32* @ATOM_TRANSMITTER_ACTION_DISABLE, align 4
  %203 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %201, i32 %202, i32 0, i32 0)
  %204 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %205 = load i32, i32* @ATOM_DISABLE, align 4
  %206 = call i32 @atombios_dig_encoder_setup(%struct.drm_encoder* %204, i32 %205, i32 0)
  br label %207

207:                                              ; preds = %197, %190
  br label %208

208:                                              ; preds = %207, %182
  %209 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %210 = call i32 @atombios_get_encoder_mode(%struct.drm_encoder* %209)
  %211 = call i32 @ENCODER_MODE_IS_DP(i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %237

213:                                              ; preds = %208
  %214 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %215 = icmp ne %struct.drm_connector* %214, null
  br i1 %215, label %216, label %237

216:                                              ; preds = %213
  %217 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %218 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %216
  %221 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %222 = load i32, i32* @ATOM_ENCODER_CMD_DP_VIDEO_OFF, align 4
  %223 = call i32 @atombios_dig_encoder_setup(%struct.drm_encoder* %221, i32 %222, i32 0)
  br label %224

224:                                              ; preds = %220, %216
  %225 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %226 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @DRM_MODE_CONNECTOR_eDP, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %224
  %231 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %232 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_OFF, align 4
  %233 = call i32 @atombios_set_edp_panel_power(%struct.drm_connector* %231, i32 %232)
  %234 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %12, align 8
  %235 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %234, i32 0, i32 0
  store i32 0, i32* %235, align 4
  br label %236

236:                                              ; preds = %230, %224
  br label %237

237:                                              ; preds = %236, %213, %208
  %238 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %239 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %237
  %245 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %246 = load i32, i32* @ATOM_TRANSMITTER_ACTION_LCD_BLOFF, align 4
  %247 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %245, i32 %246, i32 0, i32 0)
  br label %248

248:                                              ; preds = %244, %237
  br label %249

249:                                              ; preds = %36, %248, %173
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_encoder* @radeon_get_external_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @ASIC_IS_DCE41(%struct.radeon_device*) #1

declare dso_local i32 @ASIC_IS_DCE5(%struct.radeon_device*) #1

declare dso_local i32 @radeon_dp_get_panel_mode(%struct.drm_encoder*, %struct.drm_connector*) #1

declare dso_local i32 @atombios_dig_encoder_setup(%struct.drm_encoder*, i32, i32) #1

declare dso_local i32 @ASIC_IS_DCE61(%struct.radeon_device*) #1

declare dso_local i32 @atombios_external_encoder_setup(%struct.drm_encoder*, %struct.drm_encoder*, i32) #1

declare dso_local i32 @atombios_dig_transmitter_setup(%struct.drm_encoder*, i32, i32, i32) #1

declare dso_local i32 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @ENCODER_MODE_IS_DP(i32) #1

declare dso_local i32 @atombios_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i32 @atombios_set_edp_panel_power(%struct.drm_connector*, i32) #1

declare dso_local i32 @radeon_dp_link_train(%struct.drm_encoder*, %struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
