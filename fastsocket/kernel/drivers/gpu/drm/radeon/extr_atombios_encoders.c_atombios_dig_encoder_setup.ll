; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_dig_encoder_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_dig_encoder_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.radeon_encoder = type { i32, i32, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i32, i32 }
%struct.drm_connector = type { i32 }
%union.dig_encoder_control = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i8*, %struct.TYPE_13__, i8*, i8* }
%struct.TYPE_13__ = type { i32 }
%struct.radeon_connector = type { %struct.TYPE_8__, %struct.radeon_connector_atom_dig* }
%struct.TYPE_8__ = type { i32 }
%struct.radeon_connector_atom_dig = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i8*, i8* }
%struct.TYPE_11__ = type { i32, i32, i32, i8*, %struct.TYPE_10__, i8*, i8* }
%struct.TYPE_10__ = type { i32 }

@RADEON_HPD_NONE = common dso_local global i32 0, align 4
@COMMAND = common dso_local global i32 0, align 4
@DIGxEncoderControl = common dso_local global i32 0, align 4
@DIG2EncoderControl = common dso_local global i32 0, align 4
@DIG1EncoderControl = common dso_local global i32 0, align 4
@ATOM_ENCODER_CMD_SETUP_PANEL_MODE = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_DPLINKRATE_2_70GHZ = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V2_TRANSMITTER1 = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V2_TRANSMITTER2 = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V2_TRANSMITTER3 = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_LINKB = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_LINKA = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V3_DPLINKRATE_2_70GHZ = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V4_DPLINKRATE_2_70GHZ = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V4_DPLINKRATE_5_40GHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown table version %d, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atombios_dig_encoder_setup(%struct.drm_encoder* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_encoder*, align 8
  %10 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %11 = alloca %struct.drm_connector*, align 8
  %12 = alloca %union.dig_encoder_control, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.radeon_connector*, align 8
  %20 = alloca %struct.radeon_connector_atom_dig*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %22 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %21, i32 0, i32 0
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  store %struct.drm_device* %23, %struct.drm_device** %7, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load %struct.radeon_device*, %struct.radeon_device** %25, align 8
  store %struct.radeon_device* %26, %struct.radeon_device** %8, align 8
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %28 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %27)
  store %struct.radeon_encoder* %28, %struct.radeon_encoder** %9, align 8
  %29 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %30 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %29, i32 0, i32 2
  %31 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %30, align 8
  store %struct.radeon_encoder_atom_dig* %31, %struct.radeon_encoder_atom_dig** %10, align 8
  %32 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %33 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %32)
  store %struct.drm_connector* %33, %struct.drm_connector** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %34 = load i32, i32* @RADEON_HPD_NONE, align 4
  store i32 %34, i32* %18, align 4
  %35 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %36 = icmp ne %struct.drm_connector* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %3
  %38 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %39 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %38)
  store %struct.radeon_connector* %39, %struct.radeon_connector** %19, align 8
  %40 = load %struct.radeon_connector*, %struct.radeon_connector** %19, align 8
  %41 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %40, i32 0, i32 1
  %42 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %41, align 8
  store %struct.radeon_connector_atom_dig* %42, %struct.radeon_connector_atom_dig** %20, align 8
  %43 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %20, align 8
  %44 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %16, align 4
  %46 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %20, align 8
  %47 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %17, align 4
  %49 = load %struct.radeon_connector*, %struct.radeon_connector** %19, align 8
  %50 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %18, align 4
  br label %53

53:                                               ; preds = %37, %3
  %54 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  %55 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %377

59:                                               ; preds = %53
  %60 = call i32 @memset(%union.dig_encoder_control* %12, i32 0, i32 48)
  %61 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %62 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @COMMAND, align 4
  %66 = load i32, i32* @DIGxEncoderControl, align 4
  %67 = call i32 @GetIndexIntoMasterTable(i32 %65, i32 %66)
  store i32 %67, i32* %13, align 4
  br label %82

68:                                               ; preds = %59
  %69 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  %70 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @COMMAND, align 4
  %75 = load i32, i32* @DIG2EncoderControl, align 4
  %76 = call i32 @GetIndexIntoMasterTable(i32 %74, i32 %75)
  store i32 %76, i32* %13, align 4
  br label %81

77:                                               ; preds = %68
  %78 = load i32, i32* @COMMAND, align 4
  %79 = load i32, i32* @DIG1EncoderControl, align 4
  %80 = call i32 @GetIndexIntoMasterTable(i32 %78, i32 %79)
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %77, %73
  br label %82

82:                                               ; preds = %81, %64
  %83 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @atom_parse_cmd_header(i32 %86, i32 %87, i32* %14, i32* %15)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %82
  br label %377

91:                                               ; preds = %82
  %92 = load i32, i32* %14, align 4
  switch i32 %92, label %365 [
    i32 1, label %93
  ]

93:                                               ; preds = %91
  %94 = load i32, i32* %15, align 4
  switch i32 %94, label %360 [
    i32 1, label %95
    i32 2, label %191
    i32 3, label %191
    i32 4, label %264
  ]

95:                                               ; preds = %93
  %96 = load i32, i32* %5, align 4
  %97 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %100 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sdiv i32 %101, 10
  %103 = call i8* @cpu_to_le16(i32 %102)
  %104 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 4
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @ATOM_ENCODER_CMD_SETUP_PANEL_MODE, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %95
  %110 = load i32, i32* %6, align 4
  %111 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_11__*
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %118

113:                                              ; preds = %95
  %114 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %115 = call i8* @atombios_get_encoder_mode(%struct.drm_encoder* %114)
  %116 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 3
  store i8* %115, i8** %117, align 8
  br label %118

118:                                              ; preds = %113, %109
  %119 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 3
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @ENCODER_MODE_IS_DP(i8* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i32, i32* %17, align 4
  %126 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  br label %142

128:                                              ; preds = %118
  %129 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %130 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %131 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %129, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  store i32 8, i32* %137, align 4
  br label %141

138:                                              ; preds = %128
  %139 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  store i32 4, i32* %140, align 4
  br label %141

141:                                              ; preds = %138, %135
  br label %142

142:                                              ; preds = %141, %124
  %143 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 3
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @ENCODER_MODE_IS_DP(i8* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %142
  %149 = load i32, i32* %16, align 4
  %150 = icmp eq i32 %149, 270000
  br i1 %150, label %151, label %157

151:                                              ; preds = %148
  %152 = load i32, i32* @ATOM_ENCODER_CONFIG_DPLINKRATE_2_70GHZ, align 4
  %153 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %151, %148, %142
  %158 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %159 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  switch i32 %160, label %173 [
    i32 130, label %161
    i32 129, label %165
    i32 131, label %165
    i32 128, label %169
  ]

161:                                              ; preds = %157
  %162 = load i32, i32* @ATOM_ENCODER_CONFIG_V2_TRANSMITTER1, align 4
  %163 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  br label %173

165:                                              ; preds = %157, %157
  %166 = load i32, i32* @ATOM_ENCODER_CONFIG_V2_TRANSMITTER2, align 4
  %167 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  br label %173

169:                                              ; preds = %157
  %170 = load i32, i32* @ATOM_ENCODER_CONFIG_V2_TRANSMITTER3, align 4
  %171 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 8
  br label %173

173:                                              ; preds = %157, %169, %165, %161
  %174 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  %175 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = load i32, i32* @ATOM_ENCODER_CONFIG_LINKB, align 4
  %180 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 8
  br label %190

184:                                              ; preds = %173
  %185 = load i32, i32* @ATOM_ENCODER_CONFIG_LINKA, align 4
  %186 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %184, %178
  br label %364

191:                                              ; preds = %93, %93
  %192 = load i32, i32* %5, align 4
  %193 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_11__*
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %196 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = sdiv i32 %197, 10
  %199 = call i8* @cpu_to_le16(i32 %198)
  %200 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_11__*
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 6
  store i8* %199, i8** %201, align 8
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* @ATOM_ENCODER_CMD_SETUP_PANEL_MODE, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %191
  %206 = load i32, i32* %6, align 4
  %207 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_11__*
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  br label %214

209:                                              ; preds = %191
  %210 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %211 = call i8* @atombios_get_encoder_mode(%struct.drm_encoder* %210)
  %212 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_11__*
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 5
  store i8* %211, i8** %213, align 8
  br label %214

214:                                              ; preds = %209, %205
  %215 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_11__*
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 5
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @ENCODER_MODE_IS_DP(i8* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %214
  %221 = load i32, i32* %17, align 4
  %222 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_11__*
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 8
  br label %238

224:                                              ; preds = %214
  %225 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %226 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %227 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %225, i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %224
  %232 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_11__*
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 2
  store i32 8, i32* %233, align 8
  br label %237

234:                                              ; preds = %224
  %235 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_11__*
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 2
  store i32 4, i32* %236, align 8
  br label %237

237:                                              ; preds = %234, %231
  br label %238

238:                                              ; preds = %237, %220
  %239 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_11__*
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 5
  %241 = load i8*, i8** %240, align 8
  %242 = call i32 @ENCODER_MODE_IS_DP(i8* %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %238
  %245 = load i32, i32* %16, align 4
  %246 = icmp eq i32 %245, 270000
  br i1 %246, label %247, label %253

247:                                              ; preds = %244
  %248 = load i32, i32* @ATOM_ENCODER_CONFIG_V3_DPLINKRATE_2_70GHZ, align 4
  %249 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 8
  br label %253

253:                                              ; preds = %247, %244, %238
  %254 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  %255 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_11__*
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 4
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  store i32 %256, i32* %259, align 8
  %260 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %261 = call i8* @radeon_atom_get_bpc(%struct.drm_encoder* %260)
  %262 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_11__*
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 3
  store i8* %261, i8** %263, align 8
  br label %364

264:                                              ; preds = %93
  %265 = load i32, i32* %5, align 4
  %266 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_14__*
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 8
  %268 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %269 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = sdiv i32 %270, 10
  %272 = call i8* @cpu_to_le16(i32 %271)
  %273 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_14__*
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 7
  store i8* %272, i8** %274, align 8
  %275 = load i32, i32* %5, align 4
  %276 = load i32, i32* @ATOM_ENCODER_CMD_SETUP_PANEL_MODE, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %282

278:                                              ; preds = %264
  %279 = load i32, i32* %6, align 4
  %280 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_14__*
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 4
  br label %287

282:                                              ; preds = %264
  %283 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %284 = call i8* @atombios_get_encoder_mode(%struct.drm_encoder* %283)
  %285 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_14__*
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 6
  store i8* %284, i8** %286, align 8
  br label %287

287:                                              ; preds = %282, %278
  %288 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_14__*
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 6
  %290 = load i8*, i8** %289, align 8
  %291 = call i32 @ENCODER_MODE_IS_DP(i8* %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %287
  %294 = load i32, i32* %17, align 4
  %295 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_14__*
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 2
  store i32 %294, i32* %296, align 8
  br label %311

297:                                              ; preds = %287
  %298 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %299 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %300 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %298, i32 %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %297
  %305 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_14__*
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 2
  store i32 8, i32* %306, align 8
  br label %310

307:                                              ; preds = %297
  %308 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_14__*
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 2
  store i32 4, i32* %309, align 8
  br label %310

310:                                              ; preds = %307, %304
  br label %311

311:                                              ; preds = %310, %293
  %312 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_14__*
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 6
  %314 = load i8*, i8** %313, align 8
  %315 = call i32 @ENCODER_MODE_IS_DP(i8* %314)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %337

317:                                              ; preds = %311
  %318 = load i32, i32* %16, align 4
  %319 = icmp eq i32 %318, 270000
  br i1 %319, label %320, label %326

320:                                              ; preds = %317
  %321 = load i32, i32* @ATOM_ENCODER_CONFIG_V4_DPLINKRATE_2_70GHZ, align 4
  %322 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = or i32 %324, %321
  store i32 %325, i32* %323, align 8
  br label %336

326:                                              ; preds = %317
  %327 = load i32, i32* %16, align 4
  %328 = icmp eq i32 %327, 540000
  br i1 %328, label %329, label %335

329:                                              ; preds = %326
  %330 = load i32, i32* @ATOM_ENCODER_CONFIG_V4_DPLINKRATE_5_40GHZ, align 4
  %331 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = or i32 %333, %330
  store i32 %334, i32* %332, align 8
  br label %335

335:                                              ; preds = %329, %326
  br label %336

336:                                              ; preds = %335, %320
  br label %337

337:                                              ; preds = %336, %311
  %338 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  %339 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_14__*
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 5
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 0
  store i32 %340, i32* %343, align 8
  %344 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %345 = call i8* @radeon_atom_get_bpc(%struct.drm_encoder* %344)
  %346 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_14__*
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i32 0, i32 4
  store i8* %345, i8** %347, align 8
  %348 = load i32, i32* %18, align 4
  %349 = load i32, i32* @RADEON_HPD_NONE, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %351, label %354

351:                                              ; preds = %337
  %352 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_14__*
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i32 0, i32 3
  store i32 0, i32* %353, align 4
  br label %359

354:                                              ; preds = %337
  %355 = load i32, i32* %18, align 4
  %356 = add nsw i32 %355, 1
  %357 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_14__*
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 3
  store i32 %356, i32* %358, align 4
  br label %359

359:                                              ; preds = %354, %351
  br label %364

360:                                              ; preds = %93
  %361 = load i32, i32* %14, align 4
  %362 = load i32, i32* %15, align 4
  %363 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %361, i32 %362)
  br label %364

364:                                              ; preds = %360, %359, %253, %190
  br label %369

365:                                              ; preds = %91
  %366 = load i32, i32* %14, align 4
  %367 = load i32, i32* %15, align 4
  %368 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %366, i32 %367)
  br label %369

369:                                              ; preds = %365, %364
  %370 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %371 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* %13, align 4
  %375 = bitcast %union.dig_encoder_control* %12 to i32*
  %376 = call i32 @atom_execute_table(i32 %373, i32 %374, i32* %375)
  br label %377

377:                                              ; preds = %369, %90, %58
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @memset(%union.dig_encoder_control*, i32, i32) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @atombios_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i32 @ENCODER_MODE_IS_DP(i8*) #1

declare dso_local i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder*, i32) #1

declare dso_local i8* @radeon_atom_get_bpc(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
