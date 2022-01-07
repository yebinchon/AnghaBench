; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_get_legacy_connector_info_from_bios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_get_legacy_connector_info_from_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__*, %struct.radeon_device* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.radeon_device = type { i32, i64 }
%struct.radeon_i2c_bus_rec = type { i32 }
%struct.radeon_hpd = type { i8* }

@COMBIOS_CONNECTOR_INFO_TABLE = common dso_local global i32 0, align 4
@RADEON_HPD_2 = common dso_local global i8* null, align 8
@RADEON_HPD_1 = common dso_local global i8* null, align 8
@RADEON_HPD_NONE = common dso_local global i8* null, align 8
@ATOM_DEVICE_DFP2_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP1_SUPPORT = common dso_local global i32 0, align 4
@legacy_connector_convert = common dso_local global i32* null, align 8
@CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_D = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT2_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT1_SUPPORT = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_VGA = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV1_SUPPORT = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_SVIDEO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unknown connector type: %d\0A\00", align 1
@COMBIOS_DFP_INFO_TABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Found DFP table, assuming DVI connector\0A\00", align 1
@DDC_DVI = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DVII = common dso_local global i32 0, align 4
@COMBIOS_CRT_INFO_TABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Found CRT table, assuming VGA connector\0A\00", align 1
@DDC_VGA = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VGA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"No connector info found\0A\00", align 1
@RADEON_IS_MOBILITY = common dso_local global i32 0, align 4
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@COMBIOS_LCD_INFO_TABLE = common dso_local global i32 0, align 4
@COMBIOS_LCD_DDC_INFO_TABLE = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD1_SUPPORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"LCD\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"LCD DDC Info Table found!\0A\00", align 1
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_LVDS = common dso_local global i32 0, align 4
@CHIP_R100 = common dso_local global i64 0, align 8
@CHIP_R200 = common dso_local global i64 0, align 8
@COMBIOS_TV_INFO_TABLE = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_SVIDEO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_get_legacy_connector_info_from_bios(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.radeon_i2c_bus_rec, align 4
  %14 = alloca %struct.radeon_hpd, align 8
  %15 = alloca %struct.radeon_i2c_bus_rec, align 4
  %16 = alloca %struct.radeon_i2c_bus_rec, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.radeon_i2c_bus_rec, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.radeon_i2c_bus_rec, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.radeon_i2c_bus_rec, align 4
  %24 = alloca %struct.radeon_i2c_bus_rec, align 4
  %25 = alloca %struct.radeon_i2c_bus_rec, align 4
  %26 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 1
  %29 = load %struct.radeon_device*, %struct.radeon_device** %28, align 8
  store %struct.radeon_device* %29, %struct.radeon_device** %4, align 8
  store i32 0, i32* %12, align 4
  %30 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %31 = load i32, i32* @COMBIOS_CONNECTOR_INFO_TABLE, align 4
  %32 = call i32 @combios_get_table_offset(%struct.drm_device* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %296

35:                                               ; preds = %1
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %292, %35
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %295

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 2
  %42 = load i32, i32* %12, align 4
  %43 = mul nsw i32 %42, 2
  %44 = add nsw i32 %41, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @RBIOS16(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  br label %295

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @RBIOS16(i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = ashr i32 %52, 12
  %54 = and i32 %53, 15
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %8, align 4
  %56 = ashr i32 %55, 8
  %57 = and i32 %56, 15
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 5
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %62 = call i32 @radeon_combios_get_i2c_info_from_table(%struct.radeon_device* %61)
  %63 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %15, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = bitcast %struct.radeon_i2c_bus_rec* %13 to i8*
  %65 = bitcast %struct.radeon_i2c_bus_rec* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 4, i1 false)
  br label %73

66:                                               ; preds = %49
  %67 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %67, i32 %68, i32 0, i32 0)
  %70 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %16, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = bitcast %struct.radeon_i2c_bus_rec* %13 to i8*
  %72 = bitcast %struct.radeon_i2c_bus_rec* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 4, i1 false)
  br label %73

73:                                               ; preds = %66, %60
  %74 = load i32, i32* %11, align 4
  switch i32 %74, label %87 [
    i32 131, label %75
    i32 132, label %75
    i32 133, label %75
  ]

75:                                               ; preds = %73, %73, %73
  %76 = load i32, i32* %8, align 4
  %77 = ashr i32 %76, 4
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i8*, i8** @RADEON_HPD_2, align 8
  %82 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %14, i32 0, i32 0
  store i8* %81, i8** %82, align 8
  br label %86

83:                                               ; preds = %75
  %84 = load i8*, i8** @RADEON_HPD_1, align 8
  %85 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %14, i32 0, i32 0
  store i8* %84, i8** %85, align 8
  br label %86

86:                                               ; preds = %83, %80
  br label %90

87:                                               ; preds = %73
  %88 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %89 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %14, i32 0, i32 0
  store i8* %88, i8** %89, align 8
  br label %90

90:                                               ; preds = %87, %86
  %91 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @radeon_apply_legacy_quirks(%struct.drm_device* %91, i32 %92, i32* %11, %struct.radeon_i2c_bus_rec* %13, %struct.radeon_hpd* %14)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  br label %292

96:                                               ; preds = %90
  %97 = load i32, i32* %11, align 4
  switch i32 %97, label %288 [
    i32 131, label %98
    i32 135, label %124
    i32 132, label %155
    i32 133, label %242
    i32 134, label %271
    i32 130, label %271
  ]

98:                                               ; preds = %96
  %99 = load i32, i32* %8, align 4
  %100 = ashr i32 %99, 4
  %101 = and i32 %100, 1
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  store i32 %104, i32* %7, align 4
  br label %107

105:                                              ; preds = %98
  %106 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %109 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %109, i32 %110, i32 0)
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %108, i32 %111, i32 %112)
  %114 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32*, i32** @legacy_connector_convert, align 8
  %118 = load i32, i32* %11, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_D, align 4
  %123 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %114, i32 %115, i32 %116, i32 %121, %struct.radeon_i2c_bus_rec* %13, i32 %122, %struct.radeon_hpd* %14)
  br label %291

124:                                              ; preds = %96
  %125 = load i32, i32* %8, align 4
  %126 = and i32 %125, 1
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %124
  %129 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  store i32 %129, i32* %7, align 4
  %130 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %131 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %132 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %133 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %131, i32 %132, i32 2)
  %134 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %135 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %130, i32 %133, i32 %134)
  br label %144

136:                                              ; preds = %124
  %137 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  store i32 %137, i32* %7, align 4
  %138 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %139 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %140 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %141 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %139, i32 %140, i32 1)
  %142 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %143 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %138, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %136, %128
  %145 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i32*, i32** @legacy_connector_convert, align 8
  %149 = load i32, i32* %11, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @CONNECTOR_OBJECT_ID_VGA, align 4
  %154 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %145, i32 %146, i32 %147, i32 %152, %struct.radeon_i2c_bus_rec* %13, i32 %153, %struct.radeon_hpd* %14)
  br label %291

155:                                              ; preds = %96
  store i32 0, i32* %7, align 4
  %156 = load i32, i32* %8, align 4
  %157 = and i32 %156, 1
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %155
  %160 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %161 = load i32, i32* %7, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %7, align 4
  %163 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %164 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %165 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %166 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %164, i32 %165, i32 2)
  %167 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %168 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %163, i32 %166, i32 %167)
  br label %179

169:                                              ; preds = %155
  %170 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %171 = load i32, i32* %7, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %7, align 4
  %173 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %174 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %175 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %176 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %174, i32 %175, i32 1)
  %177 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %178 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %173, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %169, %159
  %180 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %181 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %180, i32 0, i32 0
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 20825
  br i1 %185, label %186, label %203

186:                                              ; preds = %179
  %187 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %188 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %187, i32 0, i32 0
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 4116
  br i1 %192, label %193, label %203

193:                                              ; preds = %186
  %194 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %195 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %194, i32 0, i32 0
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 666
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = load i32, i32* %8, align 4
  %202 = and i32 %201, -17
  store i32 %202, i32* %8, align 4
  br label %203

203:                                              ; preds = %200, %193, %186, %179
  %204 = load i32, i32* %8, align 4
  %205 = ashr i32 %204, 4
  %206 = and i32 %205, 1
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %220

208:                                              ; preds = %203
  %209 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %210 = load i32, i32* %7, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %7, align 4
  %212 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %213 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %214 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %215 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %213, i32 %214, i32 0)
  %216 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %217 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %212, i32 %215, i32 %216)
  %218 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %219 = call i32 @combios_check_dl_dvi(%struct.drm_device* %218, i32 0)
  store i32 %219, i32* %9, align 4
  br label %231

220:                                              ; preds = %203
  %221 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %222 = load i32, i32* %7, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %7, align 4
  %224 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %225 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %226 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %227 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %225, i32 %226, i32 0)
  %228 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %229 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %224, i32 %227, i32 %228)
  %230 = load i32, i32* @CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I, align 4
  store i32 %230, i32* %9, align 4
  br label %231

231:                                              ; preds = %220, %208
  %232 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %233 = load i32, i32* %12, align 4
  %234 = load i32, i32* %7, align 4
  %235 = load i32*, i32** @legacy_connector_convert, align 8
  %236 = load i32, i32* %11, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %9, align 4
  %241 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %232, i32 %233, i32 %234, i32 %239, %struct.radeon_i2c_bus_rec* %13, i32 %240, %struct.radeon_hpd* %14)
  br label %291

242:                                              ; preds = %96
  %243 = load i32, i32* %8, align 4
  %244 = ashr i32 %243, 4
  %245 = and i32 %244, 1
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %242
  %248 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  store i32 %248, i32* %7, align 4
  %249 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %250 = call i32 @combios_check_dl_dvi(%struct.drm_device* %249, i32 1)
  store i32 %250, i32* %9, align 4
  br label %254

251:                                              ; preds = %242
  %252 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  store i32 %252, i32* %7, align 4
  %253 = load i32, i32* @CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I, align 4
  store i32 %253, i32* %9, align 4
  br label %254

254:                                              ; preds = %251, %247
  %255 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %256 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %257 = load i32, i32* %7, align 4
  %258 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %256, i32 %257, i32 0)
  %259 = load i32, i32* %7, align 4
  %260 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %255, i32 %258, i32 %259)
  %261 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %262 = load i32, i32* %12, align 4
  %263 = load i32, i32* %7, align 4
  %264 = load i32*, i32** @legacy_connector_convert, align 8
  %265 = load i32, i32* %11, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %9, align 4
  %270 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %261, i32 %262, i32 %263, i32 %268, %struct.radeon_i2c_bus_rec* %13, i32 %269, %struct.radeon_hpd* %14)
  br label %291

271:                                              ; preds = %96, %96
  %272 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %273 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %274 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %275 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %273, i32 %274, i32 2)
  %276 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %277 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %272, i32 %275, i32 %276)
  %278 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %279 = load i32, i32* %12, align 4
  %280 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %281 = load i32*, i32** @legacy_connector_convert, align 8
  %282 = load i32, i32* %11, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @CONNECTOR_OBJECT_ID_SVIDEO, align 4
  %287 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %278, i32 %279, i32 %280, i32 %285, %struct.radeon_i2c_bus_rec* %13, i32 %286, %struct.radeon_hpd* %14)
  br label %291

288:                                              ; preds = %96
  %289 = load i32, i32* %11, align 4
  %290 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %289)
  br label %292

291:                                              ; preds = %271, %254, %231, %144, %107
  br label %292

292:                                              ; preds = %291, %288, %95
  %293 = load i32, i32* %12, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %12, align 4
  br label %36

295:                                              ; preds = %48, %36
  br label %362

296:                                              ; preds = %1
  %297 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %298 = load i32, i32* @COMBIOS_DFP_INFO_TABLE, align 4
  %299 = call i32 @combios_get_table_offset(%struct.drm_device* %297, i32 %298)
  store i32 %299, i32* %17, align 4
  %300 = load i32, i32* %17, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %331

302:                                              ; preds = %296
  %303 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %304 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %305 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %306 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %307 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %305, i32 %306, i32 1)
  %308 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %309 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %304, i32 %307, i32 %308)
  %310 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %311 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %312 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %313 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %311, i32 %312, i32 0)
  %314 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %315 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %310, i32 %313, i32 %314)
  %316 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %317 = load i32, i32* @DDC_DVI, align 4
  %318 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %316, i32 %317, i32 0, i32 0)
  %319 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %18, i32 0, i32 0
  store i32 %318, i32* %319, align 4
  %320 = bitcast %struct.radeon_i2c_bus_rec* %13 to i8*
  %321 = bitcast %struct.radeon_i2c_bus_rec* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %320, i8* align 4 %321, i64 4, i1 false)
  %322 = load i8*, i8** @RADEON_HPD_1, align 8
  %323 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %14, i32 0, i32 0
  store i8* %322, i8** %323, align 8
  %324 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %325 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %326 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %327 = or i32 %325, %326
  %328 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %329 = load i32, i32* @CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I, align 4
  %330 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %324, i32 0, i32 %327, i32 %328, %struct.radeon_i2c_bus_rec* %13, i32 %329, %struct.radeon_hpd* %14)
  br label %361

331:                                              ; preds = %296
  %332 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %333 = load i32, i32* @COMBIOS_CRT_INFO_TABLE, align 4
  %334 = call i32 @combios_get_table_offset(%struct.drm_device* %332, i32 %333)
  store i32 %334, i32* %19, align 4
  %335 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %336 = load i32, i32* %19, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %358

338:                                              ; preds = %331
  %339 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %340 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %341 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %342 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %340, i32 %341, i32 1)
  %343 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %344 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %339, i32 %342, i32 %343)
  %345 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %346 = load i32, i32* @DDC_VGA, align 4
  %347 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %345, i32 %346, i32 0, i32 0)
  %348 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %20, i32 0, i32 0
  store i32 %347, i32* %348, align 4
  %349 = bitcast %struct.radeon_i2c_bus_rec* %13 to i8*
  %350 = bitcast %struct.radeon_i2c_bus_rec* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %349, i8* align 4 %350, i64 4, i1 false)
  %351 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %352 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %14, i32 0, i32 0
  store i8* %351, i8** %352, align 8
  %353 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %354 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %355 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %356 = load i32, i32* @CONNECTOR_OBJECT_ID_VGA, align 4
  %357 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %353, i32 0, i32 %354, i32 %355, %struct.radeon_i2c_bus_rec* %13, i32 %356, %struct.radeon_hpd* %14)
  br label %360

358:                                              ; preds = %331
  %359 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %497

360:                                              ; preds = %338
  br label %361

361:                                              ; preds = %360, %302
  br label %362

362:                                              ; preds = %361, %295
  %363 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %364 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @RADEON_IS_MOBILITY, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %376, label %369

369:                                              ; preds = %362
  %370 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %371 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @RADEON_IS_IGP, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %448

376:                                              ; preds = %369, %362
  %377 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %378 = load i32, i32* @COMBIOS_LCD_INFO_TABLE, align 4
  %379 = call i32 @combios_get_table_offset(%struct.drm_device* %377, i32 %378)
  store i32 %379, i32* %21, align 4
  %380 = load i32, i32* %21, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %447

382:                                              ; preds = %376
  %383 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %384 = load i32, i32* @COMBIOS_LCD_DDC_INFO_TABLE, align 4
  %385 = call i32 @combios_get_table_offset(%struct.drm_device* %383, i32 %384)
  store i32 %385, i32* %22, align 4
  %386 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %387 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %388 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %389 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %387, i32 %388, i32 0)
  %390 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %391 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %386, i32 %389, i32 %390)
  %392 = load i32, i32* %22, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %437

394:                                              ; preds = %382
  %395 = load i32, i32* %22, align 4
  %396 = add nsw i32 %395, 2
  %397 = call signext i8 @RBIOS8(i32 %396)
  %398 = sext i8 %397 to i32
  store i32 %398, i32* %10, align 4
  %399 = load i32, i32* %10, align 4
  switch i32 %399, label %428 [
    i32 128, label %400
    i32 129, label %414
  ]

400:                                              ; preds = %394
  %401 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %402 = load i32, i32* %22, align 4
  %403 = add nsw i32 %402, 3
  %404 = call i32 @RBIOS32(i32 %403)
  %405 = load i32, i32* %22, align 4
  %406 = add nsw i32 %405, 7
  %407 = call i32 @RBIOS32(i32 %406)
  %408 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %401, i32 128, i32 %404, i32 %407)
  %409 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %23, i32 0, i32 0
  store i32 %408, i32* %409, align 4
  %410 = bitcast %struct.radeon_i2c_bus_rec* %13 to i8*
  %411 = bitcast %struct.radeon_i2c_bus_rec* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %410, i8* align 4 %411, i64 4, i1 false)
  %412 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %413 = call i32 @radeon_i2c_add(%struct.radeon_device* %412, %struct.radeon_i2c_bus_rec* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %435

414:                                              ; preds = %394
  %415 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %416 = load i32, i32* %22, align 4
  %417 = add nsw i32 %416, 3
  %418 = call i32 @RBIOS32(i32 %417)
  %419 = load i32, i32* %22, align 4
  %420 = add nsw i32 %419, 7
  %421 = call i32 @RBIOS32(i32 %420)
  %422 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %415, i32 129, i32 %418, i32 %421)
  %423 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %24, i32 0, i32 0
  store i32 %422, i32* %423, align 4
  %424 = bitcast %struct.radeon_i2c_bus_rec* %13 to i8*
  %425 = bitcast %struct.radeon_i2c_bus_rec* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %424, i8* align 4 %425, i64 4, i1 false)
  %426 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %427 = call i32 @radeon_i2c_add(%struct.radeon_device* %426, %struct.radeon_i2c_bus_rec* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %435

428:                                              ; preds = %394
  %429 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %430 = load i32, i32* %10, align 4
  %431 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %429, i32 %430, i32 0, i32 0)
  %432 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %25, i32 0, i32 0
  store i32 %431, i32* %432, align 4
  %433 = bitcast %struct.radeon_i2c_bus_rec* %13 to i8*
  %434 = bitcast %struct.radeon_i2c_bus_rec* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %433, i8* align 4 %434, i64 4, i1 false)
  br label %435

435:                                              ; preds = %428, %414, %400
  %436 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %439

437:                                              ; preds = %382
  %438 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %13, i32 0, i32 0
  store i32 0, i32* %438, align 4
  br label %439

439:                                              ; preds = %437, %435
  %440 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %441 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %14, i32 0, i32 0
  store i8* %440, i8** %441, align 8
  %442 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %443 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %444 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %445 = load i32, i32* @CONNECTOR_OBJECT_ID_LVDS, align 4
  %446 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %442, i32 5, i32 %443, i32 %444, %struct.radeon_i2c_bus_rec* %13, i32 %445, %struct.radeon_hpd* %14)
  br label %447

447:                                              ; preds = %439, %376
  br label %448

448:                                              ; preds = %447, %369
  %449 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %450 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %449, i32 0, i32 1
  %451 = load i64, i64* %450, align 8
  %452 = load i64, i64* @CHIP_R100, align 8
  %453 = icmp ne i64 %451, %452
  br i1 %453, label %454, label %494

454:                                              ; preds = %448
  %455 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %456 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %455, i32 0, i32 1
  %457 = load i64, i64* %456, align 8
  %458 = load i64, i64* @CHIP_R200, align 8
  %459 = icmp ne i64 %457, %458
  br i1 %459, label %460, label %494

460:                                              ; preds = %454
  %461 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %462 = load i32, i32* @COMBIOS_TV_INFO_TABLE, align 4
  %463 = call i32 @combios_get_table_offset(%struct.drm_device* %461, i32 %462)
  store i32 %463, i32* %26, align 4
  %464 = load i32, i32* %26, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %493

466:                                              ; preds = %460
  %467 = load i32, i32* %26, align 4
  %468 = add nsw i32 %467, 6
  %469 = call signext i8 @RBIOS8(i32 %468)
  %470 = sext i8 %469 to i32
  %471 = icmp eq i32 %470, 84
  br i1 %471, label %472, label %492

472:                                              ; preds = %466
  %473 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %474 = call i64 @radeon_apply_legacy_tv_quirks(%struct.drm_device* %473)
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %476, label %491

476:                                              ; preds = %472
  %477 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %478 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %14, i32 0, i32 0
  store i8* %477, i8** %478, align 8
  %479 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %13, i32 0, i32 0
  store i32 0, i32* %479, align 4
  %480 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %481 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %482 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %483 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %481, i32 %482, i32 2)
  %484 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %485 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %480, i32 %483, i32 %484)
  %486 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %487 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %488 = load i32, i32* @DRM_MODE_CONNECTOR_SVIDEO, align 4
  %489 = load i32, i32* @CONNECTOR_OBJECT_ID_SVIDEO, align 4
  %490 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %486, i32 6, i32 %487, i32 %488, %struct.radeon_i2c_bus_rec* %13, i32 %489, %struct.radeon_hpd* %14)
  br label %491

491:                                              ; preds = %476, %472
  br label %492

492:                                              ; preds = %491, %466
  br label %493

493:                                              ; preds = %492, %460
  br label %494

494:                                              ; preds = %493, %454, %448
  %495 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %496 = call i32 @radeon_link_encoder_connector(%struct.drm_device* %495)
  store i32 1, i32* %2, align 4
  br label %497

497:                                              ; preds = %494, %358
  %498 = load i32, i32* %2, align 4
  ret i32 %498
}

declare dso_local i32 @combios_get_table_offset(%struct.drm_device*, i32) #1

declare dso_local i32 @RBIOS16(i32) #1

declare dso_local i32 @radeon_combios_get_i2c_info_from_table(%struct.radeon_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @combios_setup_i2c_bus(%struct.radeon_device*, i32, i32, i32) #1

declare dso_local i32 @radeon_apply_legacy_quirks(%struct.drm_device*, i32, i32*, %struct.radeon_i2c_bus_rec*, %struct.radeon_hpd*) #1

declare dso_local i32 @radeon_add_legacy_encoder(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @radeon_get_encoder_enum(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @radeon_add_legacy_connector(%struct.drm_device*, i32, i32, i32, %struct.radeon_i2c_bus_rec*, i32, %struct.radeon_hpd*) #1

declare dso_local i32 @combios_check_dl_dvi(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local signext i8 @RBIOS8(i32) #1

declare dso_local i32 @RBIOS32(i32) #1

declare dso_local i32 @radeon_i2c_add(%struct.radeon_device*, %struct.radeon_i2c_bus_rec*, i8*) #1

declare dso_local i64 @radeon_apply_legacy_tv_quirks(%struct.drm_device*) #1

declare dso_local i32 @radeon_link_encoder_connector(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
