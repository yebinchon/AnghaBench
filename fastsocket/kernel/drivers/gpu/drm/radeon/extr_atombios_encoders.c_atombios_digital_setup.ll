; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_digital_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_digital_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.radeon_encoder = type { i32, i32, i32, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i32, i32, i32 }
%union.lvds_encoder_control = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_4__ = type { i32, i32, i8* }

@ATOM_ENCODER_MODE_HDMI = common dso_local global i64 0, align 8
@COMMAND = common dso_local global i32 0, align 4
@LVDSEncoderControl = common dso_local global i32 0, align 4
@TMDS1EncoderControl = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@TMDS2EncoderControl = common dso_local global i32 0, align 4
@PANEL_ENCODER_MISC_HDMI_TYPE = common dso_local global i32 0, align 4
@ATOM_PANEL_MISC_DUAL = common dso_local global i32 0, align 4
@PANEL_ENCODER_MISC_DUAL = common dso_local global i32 0, align 4
@ATOM_PANEL_MISC_888RGB = common dso_local global i32 0, align 4
@PANEL_ENCODER_MISC_TMDS_LINKB = common dso_local global i32 0, align 4
@PANEL_ENCODER_MISC_COHERENT = common dso_local global i32 0, align 4
@ATOM_PANEL_MISC_SPATIAL = common dso_local global i32 0, align 4
@PANEL_ENCODER_SPATIAL_DITHER_EN = common dso_local global i32 0, align 4
@PANEL_ENCODER_SPATIAL_DITHER_DEPTH = common dso_local global i32 0, align 4
@ATOM_PANEL_MISC_TEMPORAL = common dso_local global i32 0, align 4
@PANEL_ENCODER_TEMPORAL_DITHER_EN = common dso_local global i32 0, align 4
@PANEL_ENCODER_TEMPORAL_DITHER_DEPTH = common dso_local global i32 0, align 4
@ATOM_PANEL_MISC_GREY_LEVEL_SHIFT = common dso_local global i32 0, align 4
@PANEL_ENCODER_TEMPORAL_LEVEL_4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown table version %d, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atombios_digital_setup(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %9 = alloca %union.lvds_encoder_control, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %15 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %5, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.radeon_device*, %struct.radeon_device** %18, align 8
  store %struct.radeon_device* %19, %struct.radeon_device** %6, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %21 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %20)
  store %struct.radeon_encoder* %21, %struct.radeon_encoder** %7, align 8
  %22 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %23 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %22, i32 0, i32 3
  %24 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %23, align 8
  store %struct.radeon_encoder_atom_dig* %24, %struct.radeon_encoder_atom_dig** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %25 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %26 = icmp ne %struct.radeon_encoder_atom_dig* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %332

28:                                               ; preds = %2
  %29 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %30 = call i64 @atombios_get_encoder_mode(%struct.drm_encoder* %29)
  %31 = load i64, i64* @ATOM_ENCODER_MODE_HDMI, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %11, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = call i32 @memset(%union.lvds_encoder_control* %9, i32 0, i32 32)
  %36 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %37 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %63 [
    i32 130, label %39
    i32 128, label %43
    i32 131, label %43
    i32 129, label %47
  ]

39:                                               ; preds = %34
  %40 = load i32, i32* @COMMAND, align 4
  %41 = load i32, i32* @LVDSEncoderControl, align 4
  %42 = call i32 @GetIndexIntoMasterTable(i32 %40, i32 %41)
  store i32 %42, i32* %10, align 4
  br label %63

43:                                               ; preds = %34, %34
  %44 = load i32, i32* @COMMAND, align 4
  %45 = load i32, i32* @TMDS1EncoderControl, align 4
  %46 = call i32 @GetIndexIntoMasterTable(i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  br label %63

47:                                               ; preds = %34
  %48 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %49 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @COMMAND, align 4
  %56 = load i32, i32* @LVDSEncoderControl, align 4
  %57 = call i32 @GetIndexIntoMasterTable(i32 %55, i32 %56)
  store i32 %57, i32* %10, align 4
  br label %62

58:                                               ; preds = %47
  %59 = load i32, i32* @COMMAND, align 4
  %60 = load i32, i32* @TMDS2EncoderControl, align 4
  %61 = call i32 @GetIndexIntoMasterTable(i32 %59, i32 %60)
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %34, %62, %43, %39
  %64 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @atom_parse_cmd_header(i32 %67, i32 %68, i32* %12, i32* %13)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %332

72:                                               ; preds = %63
  %73 = load i32, i32* %12, align 4
  switch i32 %73, label %320 [
    i32 1, label %74
    i32 2, label %74
  ]

74:                                               ; preds = %72, %72
  %75 = load i32, i32* %13, align 4
  switch i32 %75, label %315 [
    i32 1, label %76
    i32 2, label %162
    i32 3, label %162
  ]

76:                                               ; preds = %74
  %77 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_4__*
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load i32, i32* %4, align 4
  %80 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_4__*
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load i32, i32* @PANEL_ENCODER_MISC_HDMI_TYPE, align 4
  %86 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_4__*
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %84, %76
  %91 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %92 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sdiv i32 %93, 10
  %95 = call i8* @cpu_to_le16(i32 %94)
  %96 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_4__*
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %99 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %131

104:                                              ; preds = %90
  %105 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %106 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @ATOM_PANEL_MISC_DUAL, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load i32, i32* @PANEL_ENCODER_MISC_DUAL, align 4
  %113 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_4__*
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %111, %104
  %118 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %119 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @ATOM_PANEL_MISC_888RGB, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load i32, i32* @ATOM_PANEL_MISC_888RGB, align 4
  %126 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_4__*
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %124, %117
  br label %161

131:                                              ; preds = %90
  %132 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %133 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load i32, i32* @PANEL_ENCODER_MISC_TMDS_LINKB, align 4
  %138 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_4__*
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %136, %131
  %143 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %144 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %145 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %143, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load i32, i32* @PANEL_ENCODER_MISC_DUAL, align 4
  %151 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_4__*
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %149, %142
  %156 = load i32, i32* @ATOM_PANEL_MISC_888RGB, align 4
  %157 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_4__*
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %155, %130
  br label %319

162:                                              ; preds = %74, %74
  %163 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_5__*
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  store i32 0, i32* %164, align 8
  %165 = load i32, i32* %4, align 4
  %166 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_5__*
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %13, align 4
  %169 = icmp eq i32 %168, 3
  br i1 %169, label %170, label %182

170:                                              ; preds = %162
  %171 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %172 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i32, i32* @PANEL_ENCODER_MISC_COHERENT, align 4
  %177 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_5__*
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %175, %170
  br label %182

182:                                              ; preds = %181, %162
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = load i32, i32* @PANEL_ENCODER_MISC_HDMI_TYPE, align 4
  %187 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_5__*
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 8
  br label %191

191:                                              ; preds = %185, %182
  %192 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %193 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = sdiv i32 %194, 10
  %196 = call i8* @cpu_to_le16(i32 %195)
  %197 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_5__*
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 6
  store i8* %196, i8** %198, align 8
  %199 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_5__*
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 5
  store i32 0, i32* %200, align 4
  %201 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_5__*
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 3
  store i32 0, i32* %202, align 4
  %203 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_5__*
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 2
  store i32 0, i32* %204, align 8
  %205 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_5__*
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 4
  store i32 0, i32* %206, align 8
  %207 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %208 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %289

213:                                              ; preds = %191
  %214 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %215 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @ATOM_PANEL_MISC_DUAL, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %213
  %221 = load i32, i32* @PANEL_ENCODER_MISC_DUAL, align 4
  %222 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_5__*
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 8
  br label %226

226:                                              ; preds = %220, %213
  %227 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %228 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @ATOM_PANEL_MISC_SPATIAL, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %250

233:                                              ; preds = %226
  %234 = load i32, i32* @PANEL_ENCODER_SPATIAL_DITHER_EN, align 4
  %235 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_5__*
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 3
  store i32 %234, i32* %236, align 4
  %237 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %238 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @ATOM_PANEL_MISC_888RGB, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %233
  %244 = load i32, i32* @PANEL_ENCODER_SPATIAL_DITHER_DEPTH, align 4
  %245 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_5__*
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 4
  br label %249

249:                                              ; preds = %243, %233
  br label %250

250:                                              ; preds = %249, %226
  %251 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %252 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @ATOM_PANEL_MISC_TEMPORAL, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %288

257:                                              ; preds = %250
  %258 = load i32, i32* @PANEL_ENCODER_TEMPORAL_DITHER_EN, align 4
  %259 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_5__*
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 2
  store i32 %258, i32* %260, align 8
  %261 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %262 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @ATOM_PANEL_MISC_888RGB, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %257
  %268 = load i32, i32* @PANEL_ENCODER_TEMPORAL_DITHER_DEPTH, align 4
  %269 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_5__*
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 8
  br label %273

273:                                              ; preds = %267, %257
  %274 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %275 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @ATOM_PANEL_MISC_GREY_LEVEL_SHIFT, align 4
  %278 = ashr i32 %276, %277
  %279 = and i32 %278, 3
  %280 = icmp eq i32 %279, 2
  br i1 %280, label %281, label %287

281:                                              ; preds = %273
  %282 = load i32, i32* @PANEL_ENCODER_TEMPORAL_LEVEL_4, align 4
  %283 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_5__*
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = or i32 %285, %282
  store i32 %286, i32* %284, align 8
  br label %287

287:                                              ; preds = %281, %273
  br label %288

288:                                              ; preds = %287, %250
  br label %314

289:                                              ; preds = %191
  %290 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %291 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %289
  %295 = load i32, i32* @PANEL_ENCODER_MISC_TMDS_LINKB, align 4
  %296 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_5__*
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = or i32 %298, %295
  store i32 %299, i32* %297, align 8
  br label %300

300:                                              ; preds = %294, %289
  %301 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %302 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %303 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %301, i32 %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %300
  %308 = load i32, i32* @PANEL_ENCODER_MISC_DUAL, align 4
  %309 = bitcast %union.lvds_encoder_control* %9 to %struct.TYPE_5__*
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = or i32 %311, %308
  store i32 %312, i32* %310, align 8
  br label %313

313:                                              ; preds = %307, %300
  br label %314

314:                                              ; preds = %313, %288
  br label %319

315:                                              ; preds = %74
  %316 = load i32, i32* %12, align 4
  %317 = load i32, i32* %13, align 4
  %318 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %316, i32 %317)
  br label %319

319:                                              ; preds = %315, %314, %161
  br label %324

320:                                              ; preds = %72
  %321 = load i32, i32* %12, align 4
  %322 = load i32, i32* %13, align 4
  %323 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %321, i32 %322)
  br label %324

324:                                              ; preds = %320, %319
  %325 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %326 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %10, align 4
  %330 = bitcast %union.lvds_encoder_control* %9 to i32*
  %331 = call i32 @atom_execute_table(i32 %328, i32 %329, i32* %330)
  br label %332

332:                                              ; preds = %324, %71, %27
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i64 @atombios_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i32 @memset(%union.lvds_encoder_control*, i32, i32) #1

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
