; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_dig_transmitter_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_dig_transmitter_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i64, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32, %struct.TYPE_23__, %struct.TYPE_20__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.radeon_encoder = type { i32, i32, i32, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i32, i32, i32 }
%struct.drm_connector = type { i32 }
%union.dig_transmitter_control = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_18__, i8*, %struct.TYPE_17__, i8* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.radeon_connector = type { i32, %struct.TYPE_24__, %struct.radeon_connector_atom_dig* }
%struct.TYPE_24__ = type { i32 }
%struct.radeon_connector_atom_dig = type { i32, i32, i32 }
%struct.radeon_crtc = type { i32 }
%struct.TYPE_26__ = type { i32, i32, i8*, %struct.TYPE_25__, i8* }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__, i8*, %struct.TYPE_27__, i8* }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_31__, i8*, %struct.TYPE_30__, i8* }
%struct.TYPE_31__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, %struct.TYPE_21__, i32, i32, i8* }
%struct.TYPE_21__ = type { i32, i32, i32 }

@RADEON_HPD_NONE = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_INIT = common dso_local global i32 0, align 4
@OBJECT_ID_MASK = common dso_local global i32 0, align 4
@OBJECT_ID_SHIFT = common dso_local global i32 0, align 4
@COMMAND = common dso_local global i32 0, align 4
@DVOOutputControl = common dso_local global i32 0, align 4
@UNIPHYTransmitterControl = common dso_local global i32 0, align 4
@LVTMATransmitterControl = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_CLKSRC_PPLL = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_DIG2_ENCODER = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_DIG1_ENCODER = common dso_local global i32 0, align 4
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_LANE_0_3 = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_LANE_4_7 = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_LANE_8_11 = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_LANE_12_15 = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_LANE_0_7 = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_LANE_8_15 = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_LINKB = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_LINKA = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_COHERENT = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP_SUPPORT = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_8LANE_LINK = common dso_local global i32 0, align 4
@ENCODER_REFCLK_SRC_EXTCLK = common dso_local global i8* null, align 8
@ENCODER_REFCLK_SRC_DCPLL = common dso_local global i32 0, align 4
@ATOM_PHY_ID_UNIPHYB = common dso_local global i32 0, align 4
@ATOM_PHY_ID_UNIPHYA = common dso_local global i32 0, align 4
@ATOM_PHY_ID_UNIPHYD = common dso_local global i32 0, align 4
@ATOM_PHY_ID_UNIPHYC = common dso_local global i32 0, align 4
@ATOM_PHY_ID_UNIPHYF = common dso_local global i32 0, align 4
@ATOM_PHY_ID_UNIPHYE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown table version %d, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atombios_dig_transmitter_setup(%struct.drm_encoder* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.radeon_device*, align 8
  %11 = alloca %struct.radeon_encoder*, align 8
  %12 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %13 = alloca %struct.drm_connector*, align 8
  %14 = alloca %union.dig_transmitter_control, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.radeon_connector*, align 8
  %27 = alloca %struct.radeon_connector_atom_dig*, align 8
  %28 = alloca %struct.radeon_crtc*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %29 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %30 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %29, i32 0, i32 1
  %31 = load %struct.drm_device*, %struct.drm_device** %30, align 8
  store %struct.drm_device* %31, %struct.drm_device** %9, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  %34 = load %struct.radeon_device*, %struct.radeon_device** %33, align 8
  store %struct.radeon_device* %34, %struct.radeon_device** %10, align 8
  %35 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %36 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %35)
  store %struct.radeon_encoder* %36, %struct.radeon_encoder** %11, align 8
  %37 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %38 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %37, i32 0, i32 3
  %39 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %38, align 8
  store %struct.radeon_encoder_atom_dig* %39, %struct.radeon_encoder_atom_dig** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %40 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %41 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %24, align 4
  %43 = load i32, i32* @RADEON_HPD_NONE, align 4
  store i32 %43, i32* %25, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @ATOM_TRANSMITTER_ACTION_INIT, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %4
  %48 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %49 = call %struct.drm_connector* @radeon_get_connector_for_encoder_init(%struct.drm_encoder* %48)
  store %struct.drm_connector* %49, %struct.drm_connector** %13, align 8
  store i32 0, i32* %24, align 4
  br label %53

50:                                               ; preds = %4
  %51 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %52 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %51)
  store %struct.drm_connector* %52, %struct.drm_connector** %13, align 8
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.drm_connector*, %struct.drm_connector** %13, align 8
  %55 = icmp ne %struct.drm_connector* %54, null
  br i1 %55, label %56, label %82

56:                                               ; preds = %53
  %57 = load %struct.drm_connector*, %struct.drm_connector** %13, align 8
  %58 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %57)
  store %struct.radeon_connector* %58, %struct.radeon_connector** %26, align 8
  %59 = load %struct.radeon_connector*, %struct.radeon_connector** %26, align 8
  %60 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %59, i32 0, i32 2
  %61 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %60, align 8
  store %struct.radeon_connector_atom_dig* %61, %struct.radeon_connector_atom_dig** %27, align 8
  %62 = load %struct.radeon_connector*, %struct.radeon_connector** %26, align 8
  %63 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %25, align 4
  %66 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %27, align 8
  %67 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %20, align 4
  %69 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %27, align 8
  %70 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %21, align 4
  %72 = load %struct.radeon_connector*, %struct.radeon_connector** %26, align 8
  %73 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @OBJECT_ID_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @OBJECT_ID_SHIFT, align 4
  %78 = ashr i32 %76, %77
  store i32 %78, i32* %22, align 4
  %79 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %27, align 8
  %80 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %23, align 4
  br label %82

82:                                               ; preds = %56, %53
  %83 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %84 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %89 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call %struct.radeon_crtc* @to_radeon_crtc(i64 %90)
  store %struct.radeon_crtc* %91, %struct.radeon_crtc** %28, align 8
  %92 = load %struct.radeon_crtc*, %struct.radeon_crtc** %28, align 8
  %93 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %19, align 4
  br label %95

95:                                               ; preds = %87, %82
  %96 = load i32, i32* %24, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %1017

99:                                               ; preds = %95
  %100 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %101 = call i32 @atombios_get_encoder_mode(%struct.drm_encoder* %100)
  %102 = call i64 @ENCODER_MODE_IS_DP(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 1, i32* %18, align 4
  br label %105

105:                                              ; preds = %104, %99
  %106 = call i32 @memset(%union.dig_transmitter_control* %14, i32 0, i32 56)
  %107 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %108 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  switch i32 %109, label %122 [
    i32 132, label %110
    i32 130, label %114
    i32 129, label %114
    i32 128, label %114
    i32 131, label %118
  ]

110:                                              ; preds = %105
  %111 = load i32, i32* @COMMAND, align 4
  %112 = load i32, i32* @DVOOutputControl, align 4
  %113 = call i32 @GetIndexIntoMasterTable(i32 %111, i32 %112)
  store i32 %113, i32* %15, align 4
  br label %122

114:                                              ; preds = %105, %105, %105
  %115 = load i32, i32* @COMMAND, align 4
  %116 = load i32, i32* @UNIPHYTransmitterControl, align 4
  %117 = call i32 @GetIndexIntoMasterTable(i32 %115, i32 %116)
  store i32 %117, i32* %15, align 4
  br label %122

118:                                              ; preds = %105
  %119 = load i32, i32* @COMMAND, align 4
  %120 = load i32, i32* @LVTMATransmitterControl, align 4
  %121 = call i32 @GetIndexIntoMasterTable(i32 %119, i32 %120)
  store i32 %121, i32* %15, align 4
  br label %122

122:                                              ; preds = %105, %118, %114, %110
  %123 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %124 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %15, align 4
  %128 = call i32 @atom_parse_cmd_header(i32 %126, i32 %127, i32* %16, i32* %17)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %122
  br label %1017

131:                                              ; preds = %122
  %132 = load i32, i32* %16, align 4
  switch i32 %132, label %1005 [
    i32 1, label %133
  ]

133:                                              ; preds = %131
  %134 = load i32, i32* %17, align 4
  switch i32 %134, label %1000 [
    i32 1, label %135
    i32 2, label %363
    i32 3, label %493
    i32 4, label %663
    i32 5, label %841
  ]

135:                                              ; preds = %133
  %136 = load i32, i32* %6, align 4
  %137 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_26__*
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @ATOM_TRANSMITTER_ACTION_INIT, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %135
  %143 = load i32, i32* %22, align 4
  %144 = call i8* @cpu_to_le16(i32 %143)
  %145 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_26__*
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 4
  store i8* %144, i8** %146, align 8
  br label %196

147:                                              ; preds = %135
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %147
  %152 = load i32, i32* %7, align 4
  %153 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_26__*
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 8
  %156 = load i32, i32* %8, align 4
  %157 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_26__*
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 1
  store i32 %156, i32* %159, align 4
  br label %195

160:                                              ; preds = %147
  %161 = load i32, i32* %18, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load i32, i32* %20, align 4
  %165 = sdiv i32 %164, 10
  %166 = call i8* @cpu_to_le16(i32 %165)
  %167 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_26__*
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 2
  store i8* %166, i8** %168, align 8
  br label %194

169:                                              ; preds = %160
  %170 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %171 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %172 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %170, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %169
  %177 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %178 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = sdiv i32 %179, 2
  %181 = sdiv i32 %180, 10
  %182 = call i8* @cpu_to_le16(i32 %181)
  %183 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_26__*
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 2
  store i8* %182, i8** %184, align 8
  br label %193

185:                                              ; preds = %169
  %186 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %187 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = sdiv i32 %188, 10
  %190 = call i8* @cpu_to_le16(i32 %189)
  %191 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_26__*
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 2
  store i8* %190, i8** %192, align 8
  br label %193

193:                                              ; preds = %185, %176
  br label %194

194:                                              ; preds = %193, %163
  br label %195

195:                                              ; preds = %194, %151
  br label %196

196:                                              ; preds = %195, %142
  %197 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_CLKSRC_PPLL, align 4
  %198 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_26__*
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* %24, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %196
  %203 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_DIG2_ENCODER, align 4
  %204 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_26__*
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 4
  br label %214

208:                                              ; preds = %196
  %209 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_DIG1_ENCODER, align 4
  %210 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_26__*
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = or i32 %212, %209
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %208, %202
  %215 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %216 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @RADEON_IS_IGP, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %303

221:                                              ; preds = %214
  %222 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %223 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp eq i32 %224, 130
  br i1 %225, label %226, label %303

226:                                              ; preds = %221
  %227 = load i32, i32* %18, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %236, label %229

229:                                              ; preds = %226
  %230 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %231 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %232 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %230, i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %280, label %236

236:                                              ; preds = %229, %226
  %237 = load i32, i32* %23, align 4
  %238 = and i32 %237, 1
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %236
  %241 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LANE_0_3, align 4
  %242 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_26__*
  %243 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 4
  br label %279

246:                                              ; preds = %236
  %247 = load i32, i32* %23, align 4
  %248 = and i32 %247, 2
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %246
  %251 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LANE_4_7, align 4
  %252 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_26__*
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 4
  br label %278

256:                                              ; preds = %246
  %257 = load i32, i32* %23, align 4
  %258 = and i32 %257, 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %256
  %261 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LANE_8_11, align 4
  %262 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_26__*
  %263 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 4
  br label %277

266:                                              ; preds = %256
  %267 = load i32, i32* %23, align 4
  %268 = and i32 %267, 8
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %266
  %271 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LANE_12_15, align 4
  %272 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_26__*
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %270, %266
  br label %277

277:                                              ; preds = %276, %260
  br label %278

278:                                              ; preds = %277, %250
  br label %279

279:                                              ; preds = %278, %240
  br label %302

280:                                              ; preds = %229
  %281 = load i32, i32* %23, align 4
  %282 = and i32 %281, 3
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %280
  %285 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LANE_0_7, align 4
  %286 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_26__*
  %287 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 4
  br label %301

290:                                              ; preds = %280
  %291 = load i32, i32* %23, align 4
  %292 = and i32 %291, 12
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %290
  %295 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LANE_8_15, align 4
  %296 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_26__*
  %297 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %298, %295
  store i32 %299, i32* %297, align 4
  br label %300

300:                                              ; preds = %294, %290
  br label %301

301:                                              ; preds = %300, %284
  br label %302

302:                                              ; preds = %301, %279
  br label %303

303:                                              ; preds = %302, %221, %214
  %304 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %305 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %303
  %309 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LINKB, align 4
  %310 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_26__*
  %311 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = or i32 %312, %309
  store i32 %313, i32* %311, align 4
  br label %320

314:                                              ; preds = %303
  %315 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LINKA, align 4
  %316 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_26__*
  %317 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = or i32 %318, %315
  store i32 %319, i32* %317, align 4
  br label %320

320:                                              ; preds = %314, %308
  %321 = load i32, i32* %18, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %320
  %324 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_COHERENT, align 4
  %325 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_26__*
  %326 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = or i32 %327, %324
  store i32 %328, i32* %326, align 4
  br label %362

329:                                              ; preds = %320
  %330 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %331 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %361

336:                                              ; preds = %329
  %337 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %338 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %336
  %342 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_COHERENT, align 4
  %343 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_26__*
  %344 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = or i32 %345, %342
  store i32 %346, i32* %344, align 4
  br label %347

347:                                              ; preds = %341, %336
  %348 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %349 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %350 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %348, i32 %351)
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %360

354:                                              ; preds = %347
  %355 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_8LANE_LINK, align 4
  %356 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_26__*
  %357 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = or i32 %358, %355
  store i32 %359, i32* %357, align 4
  br label %360

360:                                              ; preds = %354, %347
  br label %361

361:                                              ; preds = %360, %329
  br label %362

362:                                              ; preds = %361, %323
  br label %1004

363:                                              ; preds = %133
  %364 = load i32, i32* %6, align 4
  %365 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_29__*
  %366 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %365, i32 0, i32 0
  store i32 %364, i32* %366, align 8
  %367 = load i32, i32* %6, align 4
  %368 = load i32, i32* @ATOM_TRANSMITTER_ACTION_INIT, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %370, label %375

370:                                              ; preds = %363
  %371 = load i32, i32* %22, align 4
  %372 = call i8* @cpu_to_le16(i32 %371)
  %373 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_29__*
  %374 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %373, i32 0, i32 4
  store i8* %372, i8** %374, align 8
  br label %424

375:                                              ; preds = %363
  %376 = load i32, i32* %6, align 4
  %377 = load i32, i32* @ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH, align 4
  %378 = icmp eq i32 %376, %377
  br i1 %378, label %379, label %388

379:                                              ; preds = %375
  %380 = load i32, i32* %7, align 4
  %381 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_29__*
  %382 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %381, i32 0, i32 3
  %383 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %382, i32 0, i32 0
  store i32 %380, i32* %383, align 8
  %384 = load i32, i32* %8, align 4
  %385 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_29__*
  %386 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %385, i32 0, i32 3
  %387 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %386, i32 0, i32 1
  store i32 %384, i32* %387, align 4
  br label %423

388:                                              ; preds = %375
  %389 = load i32, i32* %18, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %397

391:                                              ; preds = %388
  %392 = load i32, i32* %20, align 4
  %393 = sdiv i32 %392, 10
  %394 = call i8* @cpu_to_le16(i32 %393)
  %395 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_29__*
  %396 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %395, i32 0, i32 2
  store i8* %394, i8** %396, align 8
  br label %422

397:                                              ; preds = %388
  %398 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %399 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %400 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %398, i32 %401)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %413

404:                                              ; preds = %397
  %405 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %406 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = sdiv i32 %407, 2
  %409 = sdiv i32 %408, 10
  %410 = call i8* @cpu_to_le16(i32 %409)
  %411 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_29__*
  %412 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %411, i32 0, i32 2
  store i8* %410, i8** %412, align 8
  br label %421

413:                                              ; preds = %397
  %414 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %415 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = sdiv i32 %416, 10
  %418 = call i8* @cpu_to_le16(i32 %417)
  %419 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_29__*
  %420 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %419, i32 0, i32 2
  store i8* %418, i8** %420, align 8
  br label %421

421:                                              ; preds = %413, %404
  br label %422

422:                                              ; preds = %421, %391
  br label %423

423:                                              ; preds = %422, %379
  br label %424

424:                                              ; preds = %423, %370
  %425 = load i32, i32* %24, align 4
  %426 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_29__*
  %427 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %427, i32 0, i32 0
  store i32 %425, i32* %428, align 4
  %429 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %430 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %429, i32 0, i32 2
  %431 = load i32, i32* %430, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %437

433:                                              ; preds = %424
  %434 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_29__*
  %435 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %435, i32 0, i32 1
  store i32 1, i32* %436, align 4
  br label %437

437:                                              ; preds = %433, %424
  %438 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %439 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  switch i32 %440, label %453 [
    i32 130, label %441
    i32 129, label %445
    i32 128, label %449
  ]

441:                                              ; preds = %437
  %442 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_29__*
  %443 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %443, i32 0, i32 2
  store i32 0, i32* %444, align 4
  br label %453

445:                                              ; preds = %437
  %446 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_29__*
  %447 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %447, i32 0, i32 2
  store i32 1, i32* %448, align 4
  br label %453

449:                                              ; preds = %437
  %450 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_29__*
  %451 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %451, i32 0, i32 2
  store i32 2, i32* %452, align 4
  br label %453

453:                                              ; preds = %437, %449, %445, %441
  %454 = load i32, i32* %18, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %463

456:                                              ; preds = %453
  %457 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_29__*
  %458 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %457, i32 0, i32 1
  %459 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %458, i32 0, i32 3
  store i32 1, i32* %459, align 4
  %460 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_29__*
  %461 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %460, i32 0, i32 1
  %462 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %461, i32 0, i32 4
  store i32 1, i32* %462, align 4
  br label %492

463:                                              ; preds = %453
  %464 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %465 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 8
  %467 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %468 = and i32 %466, %467
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %491

470:                                              ; preds = %463
  %471 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %472 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %479

475:                                              ; preds = %470
  %476 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_29__*
  %477 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %476, i32 0, i32 1
  %478 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %477, i32 0, i32 3
  store i32 1, i32* %478, align 4
  br label %479

479:                                              ; preds = %475, %470
  %480 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %481 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %482 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 4
  %484 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %480, i32 %483)
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %490

486:                                              ; preds = %479
  %487 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_29__*
  %488 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %487, i32 0, i32 1
  %489 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %488, i32 0, i32 5
  store i32 1, i32* %489, align 4
  br label %490

490:                                              ; preds = %486, %479
  br label %491

491:                                              ; preds = %490, %463
  br label %492

492:                                              ; preds = %491, %456
  br label %1004

493:                                              ; preds = %133
  %494 = load i32, i32* %6, align 4
  %495 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_32__*
  %496 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %495, i32 0, i32 0
  store i32 %494, i32* %496, align 8
  %497 = load i32, i32* %6, align 4
  %498 = load i32, i32* @ATOM_TRANSMITTER_ACTION_INIT, align 4
  %499 = icmp eq i32 %497, %498
  br i1 %499, label %500, label %505

500:                                              ; preds = %493
  %501 = load i32, i32* %22, align 4
  %502 = call i8* @cpu_to_le16(i32 %501)
  %503 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_32__*
  %504 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %503, i32 0, i32 5
  store i8* %502, i8** %504, align 8
  br label %554

505:                                              ; preds = %493
  %506 = load i32, i32* %6, align 4
  %507 = load i32, i32* @ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH, align 4
  %508 = icmp eq i32 %506, %507
  br i1 %508, label %509, label %518

509:                                              ; preds = %505
  %510 = load i32, i32* %7, align 4
  %511 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_32__*
  %512 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %511, i32 0, i32 4
  %513 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %512, i32 0, i32 0
  store i32 %510, i32* %513, align 8
  %514 = load i32, i32* %8, align 4
  %515 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_32__*
  %516 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %515, i32 0, i32 4
  %517 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %516, i32 0, i32 1
  store i32 %514, i32* %517, align 4
  br label %553

518:                                              ; preds = %505
  %519 = load i32, i32* %18, align 4
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %527

521:                                              ; preds = %518
  %522 = load i32, i32* %20, align 4
  %523 = sdiv i32 %522, 10
  %524 = call i8* @cpu_to_le16(i32 %523)
  %525 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_32__*
  %526 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %525, i32 0, i32 3
  store i8* %524, i8** %526, align 8
  br label %552

527:                                              ; preds = %518
  %528 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %529 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %530 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 4
  %532 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %528, i32 %531)
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %543

534:                                              ; preds = %527
  %535 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %536 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %535, i32 0, i32 1
  %537 = load i32, i32* %536, align 4
  %538 = sdiv i32 %537, 2
  %539 = sdiv i32 %538, 10
  %540 = call i8* @cpu_to_le16(i32 %539)
  %541 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_32__*
  %542 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %541, i32 0, i32 3
  store i8* %540, i8** %542, align 8
  br label %551

543:                                              ; preds = %527
  %544 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %545 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %544, i32 0, i32 1
  %546 = load i32, i32* %545, align 4
  %547 = sdiv i32 %546, 10
  %548 = call i8* @cpu_to_le16(i32 %547)
  %549 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_32__*
  %550 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %549, i32 0, i32 3
  store i8* %548, i8** %550, align 8
  br label %551

551:                                              ; preds = %543, %534
  br label %552

552:                                              ; preds = %551, %521
  br label %553

553:                                              ; preds = %552, %509
  br label %554

554:                                              ; preds = %553, %500
  %555 = load i32, i32* %18, align 4
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %561

557:                                              ; preds = %554
  %558 = load i32, i32* %21, align 4
  %559 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_32__*
  %560 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %559, i32 0, i32 1
  store i32 %558, i32* %560, align 4
  br label %575

561:                                              ; preds = %554
  %562 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %563 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %564 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %563, i32 0, i32 1
  %565 = load i32, i32* %564, align 4
  %566 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %562, i32 %565)
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %571

568:                                              ; preds = %561
  %569 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_32__*
  %570 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %569, i32 0, i32 1
  store i32 8, i32* %570, align 4
  br label %574

571:                                              ; preds = %561
  %572 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_32__*
  %573 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %572, i32 0, i32 1
  store i32 4, i32* %573, align 4
  br label %574

574:                                              ; preds = %571, %568
  br label %575

575:                                              ; preds = %574, %557
  %576 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %577 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %576, i32 0, i32 2
  %578 = load i32, i32* %577, align 4
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %580, label %584

580:                                              ; preds = %575
  %581 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_32__*
  %582 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %581, i32 0, i32 2
  %583 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %582, i32 0, i32 0
  store i32 1, i32* %583, align 8
  br label %584

584:                                              ; preds = %580, %575
  %585 = load i32, i32* %24, align 4
  %586 = and i32 %585, 1
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %592

588:                                              ; preds = %584
  %589 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_32__*
  %590 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %589, i32 0, i32 2
  %591 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %590, i32 0, i32 1
  store i32 1, i32* %591, align 4
  br label %592

592:                                              ; preds = %588, %584
  %593 = load i32, i32* %18, align 4
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %605

595:                                              ; preds = %592
  %596 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %597 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %596, i32 0, i32 2
  %598 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %597, i32 0, i32 0
  %599 = load i32, i32* %598, align 4
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %601, label %605

601:                                              ; preds = %595
  %602 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_32__*
  %603 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %602, i32 0, i32 2
  %604 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %603, i32 0, i32 2
  store i32 2, i32* %604, align 8
  br label %610

605:                                              ; preds = %595, %592
  %606 = load i32, i32* %19, align 4
  %607 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_32__*
  %608 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %607, i32 0, i32 2
  %609 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %608, i32 0, i32 2
  store i32 %606, i32* %609, align 8
  br label %610

610:                                              ; preds = %605, %601
  %611 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %612 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %611, i32 0, i32 0
  %613 = load i32, i32* %612, align 8
  switch i32 %613, label %626 [
    i32 130, label %614
    i32 129, label %618
    i32 128, label %622
  ]

614:                                              ; preds = %610
  %615 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_32__*
  %616 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %615, i32 0, i32 2
  %617 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %616, i32 0, i32 3
  store i32 0, i32* %617, align 4
  br label %626

618:                                              ; preds = %610
  %619 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_32__*
  %620 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %619, i32 0, i32 2
  %621 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %620, i32 0, i32 3
  store i32 1, i32* %621, align 4
  br label %626

622:                                              ; preds = %610
  %623 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_32__*
  %624 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %623, i32 0, i32 2
  %625 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %624, i32 0, i32 3
  store i32 2, i32* %625, align 4
  br label %626

626:                                              ; preds = %610, %622, %618, %614
  %627 = load i32, i32* %18, align 4
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %633

629:                                              ; preds = %626
  %630 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_32__*
  %631 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %630, i32 0, i32 2
  %632 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %631, i32 0, i32 4
  store i32 1, i32* %632, align 8
  br label %662

633:                                              ; preds = %626
  %634 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %635 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %634, i32 0, i32 2
  %636 = load i32, i32* %635, align 8
  %637 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %638 = and i32 %636, %637
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %661

640:                                              ; preds = %633
  %641 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %642 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %641, i32 0, i32 1
  %643 = load i32, i32* %642, align 4
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %645, label %649

645:                                              ; preds = %640
  %646 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_32__*
  %647 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %646, i32 0, i32 2
  %648 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %647, i32 0, i32 4
  store i32 1, i32* %648, align 8
  br label %649

649:                                              ; preds = %645, %640
  %650 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %651 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %652 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %651, i32 0, i32 1
  %653 = load i32, i32* %652, align 4
  %654 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %650, i32 %653)
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %656, label %660

656:                                              ; preds = %649
  %657 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_32__*
  %658 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %657, i32 0, i32 2
  %659 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %658, i32 0, i32 5
  store i32 1, i32* %659, align 4
  br label %660

660:                                              ; preds = %656, %649
  br label %661

661:                                              ; preds = %660, %633
  br label %662

662:                                              ; preds = %661, %629
  br label %1004

663:                                              ; preds = %133
  %664 = load i32, i32* %6, align 4
  %665 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_19__*
  %666 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %665, i32 0, i32 0
  store i32 %664, i32* %666, align 8
  %667 = load i32, i32* %6, align 4
  %668 = load i32, i32* @ATOM_TRANSMITTER_ACTION_INIT, align 4
  %669 = icmp eq i32 %667, %668
  br i1 %669, label %670, label %675

670:                                              ; preds = %663
  %671 = load i32, i32* %22, align 4
  %672 = call i8* @cpu_to_le16(i32 %671)
  %673 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_19__*
  %674 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %673, i32 0, i32 5
  store i8* %672, i8** %674, align 8
  br label %724

675:                                              ; preds = %663
  %676 = load i32, i32* %6, align 4
  %677 = load i32, i32* @ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH, align 4
  %678 = icmp eq i32 %676, %677
  br i1 %678, label %679, label %688

679:                                              ; preds = %675
  %680 = load i32, i32* %7, align 4
  %681 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_19__*
  %682 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %681, i32 0, i32 4
  %683 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %682, i32 0, i32 0
  store i32 %680, i32* %683, align 8
  %684 = load i32, i32* %8, align 4
  %685 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_19__*
  %686 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %685, i32 0, i32 4
  %687 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %686, i32 0, i32 1
  store i32 %684, i32* %687, align 4
  br label %723

688:                                              ; preds = %675
  %689 = load i32, i32* %18, align 4
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %691, label %697

691:                                              ; preds = %688
  %692 = load i32, i32* %20, align 4
  %693 = sdiv i32 %692, 10
  %694 = call i8* @cpu_to_le16(i32 %693)
  %695 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_19__*
  %696 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %695, i32 0, i32 3
  store i8* %694, i8** %696, align 8
  br label %722

697:                                              ; preds = %688
  %698 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %699 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %700 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %699, i32 0, i32 1
  %701 = load i32, i32* %700, align 4
  %702 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %698, i32 %701)
  %703 = icmp ne i32 %702, 0
  br i1 %703, label %704, label %713

704:                                              ; preds = %697
  %705 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %706 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %705, i32 0, i32 1
  %707 = load i32, i32* %706, align 4
  %708 = sdiv i32 %707, 2
  %709 = sdiv i32 %708, 10
  %710 = call i8* @cpu_to_le16(i32 %709)
  %711 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_19__*
  %712 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %711, i32 0, i32 3
  store i8* %710, i8** %712, align 8
  br label %721

713:                                              ; preds = %697
  %714 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %715 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %714, i32 0, i32 1
  %716 = load i32, i32* %715, align 4
  %717 = sdiv i32 %716, 10
  %718 = call i8* @cpu_to_le16(i32 %717)
  %719 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_19__*
  %720 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %719, i32 0, i32 3
  store i8* %718, i8** %720, align 8
  br label %721

721:                                              ; preds = %713, %704
  br label %722

722:                                              ; preds = %721, %691
  br label %723

723:                                              ; preds = %722, %679
  br label %724

724:                                              ; preds = %723, %670
  %725 = load i32, i32* %18, align 4
  %726 = icmp ne i32 %725, 0
  br i1 %726, label %727, label %731

727:                                              ; preds = %724
  %728 = load i32, i32* %21, align 4
  %729 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_19__*
  %730 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %729, i32 0, i32 1
  store i32 %728, i32* %730, align 4
  br label %745

731:                                              ; preds = %724
  %732 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %733 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %734 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %733, i32 0, i32 1
  %735 = load i32, i32* %734, align 4
  %736 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %732, i32 %735)
  %737 = icmp ne i32 %736, 0
  br i1 %737, label %738, label %741

738:                                              ; preds = %731
  %739 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_19__*
  %740 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %739, i32 0, i32 1
  store i32 8, i32* %740, align 4
  br label %744

741:                                              ; preds = %731
  %742 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_19__*
  %743 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %742, i32 0, i32 1
  store i32 4, i32* %743, align 4
  br label %744

744:                                              ; preds = %741, %738
  br label %745

745:                                              ; preds = %744, %727
  %746 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %747 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %746, i32 0, i32 2
  %748 = load i32, i32* %747, align 4
  %749 = icmp ne i32 %748, 0
  br i1 %749, label %750, label %754

750:                                              ; preds = %745
  %751 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_19__*
  %752 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %751, i32 0, i32 2
  %753 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %752, i32 0, i32 0
  store i32 1, i32* %753, align 8
  br label %754

754:                                              ; preds = %750, %745
  %755 = load i32, i32* %24, align 4
  %756 = and i32 %755, 1
  %757 = icmp ne i32 %756, 0
  br i1 %757, label %758, label %762

758:                                              ; preds = %754
  %759 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_19__*
  %760 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %759, i32 0, i32 2
  %761 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %760, i32 0, i32 1
  store i32 1, i32* %761, align 4
  br label %762

762:                                              ; preds = %758, %754
  %763 = load i32, i32* %18, align 4
  %764 = icmp ne i32 %763, 0
  br i1 %764, label %765, label %783

765:                                              ; preds = %762
  %766 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %767 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %766, i32 0, i32 2
  %768 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %767, i32 0, i32 0
  %769 = load i32, i32* %768, align 4
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %771, label %777

771:                                              ; preds = %765
  %772 = load i8*, i8** @ENCODER_REFCLK_SRC_EXTCLK, align 8
  %773 = ptrtoint i8* %772 to i32
  %774 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_19__*
  %775 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %774, i32 0, i32 2
  %776 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %775, i32 0, i32 2
  store i32 %773, i32* %776, align 8
  br label %782

777:                                              ; preds = %765
  %778 = load i32, i32* @ENCODER_REFCLK_SRC_DCPLL, align 4
  %779 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_19__*
  %780 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %779, i32 0, i32 2
  %781 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %780, i32 0, i32 2
  store i32 %778, i32* %781, align 8
  br label %782

782:                                              ; preds = %777, %771
  br label %788

783:                                              ; preds = %762
  %784 = load i32, i32* %19, align 4
  %785 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_19__*
  %786 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %785, i32 0, i32 2
  %787 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %786, i32 0, i32 2
  store i32 %784, i32* %787, align 8
  br label %788

788:                                              ; preds = %783, %782
  %789 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %790 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %789, i32 0, i32 0
  %791 = load i32, i32* %790, align 8
  switch i32 %791, label %804 [
    i32 130, label %792
    i32 129, label %796
    i32 128, label %800
  ]

792:                                              ; preds = %788
  %793 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_19__*
  %794 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %793, i32 0, i32 2
  %795 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %794, i32 0, i32 3
  store i32 0, i32* %795, align 4
  br label %804

796:                                              ; preds = %788
  %797 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_19__*
  %798 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %797, i32 0, i32 2
  %799 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %798, i32 0, i32 3
  store i32 1, i32* %799, align 4
  br label %804

800:                                              ; preds = %788
  %801 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_19__*
  %802 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %801, i32 0, i32 2
  %803 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %802, i32 0, i32 3
  store i32 2, i32* %803, align 4
  br label %804

804:                                              ; preds = %788, %800, %796, %792
  %805 = load i32, i32* %18, align 4
  %806 = icmp ne i32 %805, 0
  br i1 %806, label %807, label %811

807:                                              ; preds = %804
  %808 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_19__*
  %809 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %808, i32 0, i32 2
  %810 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %809, i32 0, i32 4
  store i32 1, i32* %810, align 8
  br label %840

811:                                              ; preds = %804
  %812 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %813 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %812, i32 0, i32 2
  %814 = load i32, i32* %813, align 8
  %815 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %816 = and i32 %814, %815
  %817 = icmp ne i32 %816, 0
  br i1 %817, label %818, label %839

818:                                              ; preds = %811
  %819 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %820 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %819, i32 0, i32 1
  %821 = load i32, i32* %820, align 4
  %822 = icmp ne i32 %821, 0
  br i1 %822, label %823, label %827

823:                                              ; preds = %818
  %824 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_19__*
  %825 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %824, i32 0, i32 2
  %826 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %825, i32 0, i32 4
  store i32 1, i32* %826, align 8
  br label %827

827:                                              ; preds = %823, %818
  %828 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %829 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %830 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %829, i32 0, i32 1
  %831 = load i32, i32* %830, align 4
  %832 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %828, i32 %831)
  %833 = icmp ne i32 %832, 0
  br i1 %833, label %834, label %838

834:                                              ; preds = %827
  %835 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_19__*
  %836 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %835, i32 0, i32 2
  %837 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %836, i32 0, i32 5
  store i32 1, i32* %837, align 4
  br label %838

838:                                              ; preds = %834, %827
  br label %839

839:                                              ; preds = %838, %811
  br label %840

840:                                              ; preds = %839, %807
  br label %1004

841:                                              ; preds = %133
  %842 = load i32, i32* %6, align 4
  %843 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %844 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %843, i32 0, i32 0
  store i32 %842, i32* %844, align 8
  %845 = load i32, i32* %18, align 4
  %846 = icmp ne i32 %845, 0
  br i1 %846, label %847, label %853

847:                                              ; preds = %841
  %848 = load i32, i32* %20, align 4
  %849 = sdiv i32 %848, 10
  %850 = call i8* @cpu_to_le16(i32 %849)
  %851 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %852 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %851, i32 0, i32 8
  store i8* %850, i8** %852, align 8
  br label %861

853:                                              ; preds = %841
  %854 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %855 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %854, i32 0, i32 1
  %856 = load i32, i32* %855, align 4
  %857 = sdiv i32 %856, 10
  %858 = call i8* @cpu_to_le16(i32 %857)
  %859 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %860 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %859, i32 0, i32 8
  store i8* %858, i8** %860, align 8
  br label %861

861:                                              ; preds = %853, %847
  %862 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %863 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %862, i32 0, i32 0
  %864 = load i32, i32* %863, align 8
  switch i32 %864, label %907 [
    i32 130, label %865
    i32 129, label %879
    i32 128, label %893
  ]

865:                                              ; preds = %861
  %866 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %867 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %866, i32 0, i32 2
  %868 = load i32, i32* %867, align 4
  %869 = icmp ne i32 %868, 0
  br i1 %869, label %870, label %874

870:                                              ; preds = %865
  %871 = load i32, i32* @ATOM_PHY_ID_UNIPHYB, align 4
  %872 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %873 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %872, i32 0, i32 7
  store i32 %871, i32* %873, align 4
  br label %878

874:                                              ; preds = %865
  %875 = load i32, i32* @ATOM_PHY_ID_UNIPHYA, align 4
  %876 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %877 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %876, i32 0, i32 7
  store i32 %875, i32* %877, align 4
  br label %878

878:                                              ; preds = %874, %870
  br label %907

879:                                              ; preds = %861
  %880 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %881 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %880, i32 0, i32 2
  %882 = load i32, i32* %881, align 4
  %883 = icmp ne i32 %882, 0
  br i1 %883, label %884, label %888

884:                                              ; preds = %879
  %885 = load i32, i32* @ATOM_PHY_ID_UNIPHYD, align 4
  %886 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %887 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %886, i32 0, i32 7
  store i32 %885, i32* %887, align 4
  br label %892

888:                                              ; preds = %879
  %889 = load i32, i32* @ATOM_PHY_ID_UNIPHYC, align 4
  %890 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %891 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %890, i32 0, i32 7
  store i32 %889, i32* %891, align 4
  br label %892

892:                                              ; preds = %888, %884
  br label %907

893:                                              ; preds = %861
  %894 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %895 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %894, i32 0, i32 2
  %896 = load i32, i32* %895, align 4
  %897 = icmp ne i32 %896, 0
  br i1 %897, label %898, label %902

898:                                              ; preds = %893
  %899 = load i32, i32* @ATOM_PHY_ID_UNIPHYF, align 4
  %900 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %901 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %900, i32 0, i32 7
  store i32 %899, i32* %901, align 4
  br label %906

902:                                              ; preds = %893
  %903 = load i32, i32* @ATOM_PHY_ID_UNIPHYE, align 4
  %904 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %905 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %904, i32 0, i32 7
  store i32 %903, i32* %905, align 4
  br label %906

906:                                              ; preds = %902, %898
  br label %907

907:                                              ; preds = %861, %906, %892, %878
  %908 = load i32, i32* %18, align 4
  %909 = icmp ne i32 %908, 0
  br i1 %909, label %910, label %914

910:                                              ; preds = %907
  %911 = load i32, i32* %21, align 4
  %912 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %913 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %912, i32 0, i32 1
  store i32 %911, i32* %913, align 4
  br label %926

914:                                              ; preds = %907
  %915 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %916 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %915, i32 0, i32 1
  %917 = load i32, i32* %916, align 4
  %918 = icmp sgt i32 %917, 165000
  br i1 %918, label %919, label %922

919:                                              ; preds = %914
  %920 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %921 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %920, i32 0, i32 1
  store i32 8, i32* %921, align 4
  br label %925

922:                                              ; preds = %914
  %923 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %924 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %923, i32 0, i32 1
  store i32 4, i32* %924, align 4
  br label %925

925:                                              ; preds = %922, %919
  br label %926

926:                                              ; preds = %925, %910
  %927 = load i32, i32* %22, align 4
  %928 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %929 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %928, i32 0, i32 2
  store i32 %927, i32* %929, align 8
  %930 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %931 = call i32 @atombios_get_encoder_mode(%struct.drm_encoder* %930)
  %932 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %933 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %932, i32 0, i32 6
  store i32 %931, i32* %933, align 8
  %934 = load i32, i32* %18, align 4
  %935 = icmp ne i32 %934, 0
  br i1 %935, label %936, label %948

936:                                              ; preds = %926
  %937 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %938 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %937, i32 0, i32 2
  %939 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %938, i32 0, i32 0
  %940 = load i32, i32* %939, align 4
  %941 = icmp ne i32 %940, 0
  br i1 %941, label %942, label %948

942:                                              ; preds = %936
  %943 = load i8*, i8** @ENCODER_REFCLK_SRC_EXTCLK, align 8
  %944 = ptrtoint i8* %943 to i32
  %945 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %946 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %945, i32 0, i32 5
  %947 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %946, i32 0, i32 0
  store i32 %944, i32* %947, align 4
  br label %953

948:                                              ; preds = %936, %926
  %949 = load i32, i32* %19, align 4
  %950 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %951 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %950, i32 0, i32 5
  %952 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %951, i32 0, i32 0
  store i32 %949, i32* %952, align 4
  br label %953

953:                                              ; preds = %948, %942
  %954 = load i32, i32* %18, align 4
  %955 = icmp ne i32 %954, 0
  br i1 %955, label %956, label %960

956:                                              ; preds = %953
  %957 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %958 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %957, i32 0, i32 5
  %959 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %958, i32 0, i32 1
  store i32 1, i32* %959, align 4
  br label %978

960:                                              ; preds = %953
  %961 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %962 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %961, i32 0, i32 2
  %963 = load i32, i32* %962, align 8
  %964 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %965 = and i32 %963, %964
  %966 = icmp ne i32 %965, 0
  br i1 %966, label %967, label %977

967:                                              ; preds = %960
  %968 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %969 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %968, i32 0, i32 1
  %970 = load i32, i32* %969, align 4
  %971 = icmp ne i32 %970, 0
  br i1 %971, label %972, label %976

972:                                              ; preds = %967
  %973 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %974 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %973, i32 0, i32 5
  %975 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %974, i32 0, i32 1
  store i32 1, i32* %975, align 4
  br label %976

976:                                              ; preds = %972, %967
  br label %977

977:                                              ; preds = %976, %960
  br label %978

978:                                              ; preds = %977, %956
  %979 = load i32, i32* %25, align 4
  %980 = load i32, i32* @RADEON_HPD_NONE, align 4
  %981 = icmp eq i32 %979, %980
  br i1 %981, label %982, label %986

982:                                              ; preds = %978
  %983 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %984 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %983, i32 0, i32 5
  %985 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %984, i32 0, i32 2
  store i32 0, i32* %985, align 4
  br label %992

986:                                              ; preds = %978
  %987 = load i32, i32* %25, align 4
  %988 = add nsw i32 %987, 1
  %989 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %990 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %989, i32 0, i32 5
  %991 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %990, i32 0, i32 2
  store i32 %988, i32* %991, align 4
  br label %992

992:                                              ; preds = %986, %982
  %993 = load i32, i32* %24, align 4
  %994 = shl i32 1, %993
  %995 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %996 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %995, i32 0, i32 3
  store i32 %994, i32* %996, align 4
  %997 = load i32, i32* %8, align 4
  %998 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_22__*
  %999 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %998, i32 0, i32 4
  store i32 %997, i32* %999, align 8
  br label %1004

1000:                                             ; preds = %133
  %1001 = load i32, i32* %16, align 4
  %1002 = load i32, i32* %17, align 4
  %1003 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %1001, i32 %1002)
  br label %1004

1004:                                             ; preds = %1000, %992, %840, %662, %492, %362
  br label %1009

1005:                                             ; preds = %131
  %1006 = load i32, i32* %16, align 4
  %1007 = load i32, i32* %17, align 4
  %1008 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %1006, i32 %1007)
  br label %1009

1009:                                             ; preds = %1005, %1004
  %1010 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %1011 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1010, i32 0, i32 1
  %1012 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1011, i32 0, i32 0
  %1013 = load i32, i32* %1012, align 4
  %1014 = load i32, i32* %15, align 4
  %1015 = bitcast %union.dig_transmitter_control* %14 to i32*
  %1016 = call i32 @atom_execute_table(i32 %1013, i32 %1014, i32* %1015)
  br label %1017

1017:                                             ; preds = %1009, %130, %98
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder_init(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(i64) #1

declare dso_local i64 @ENCODER_MODE_IS_DP(i32) #1

declare dso_local i32 @atombios_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i32 @memset(%union.dig_transmitter_control*, i32, i32) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
