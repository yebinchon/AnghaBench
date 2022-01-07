; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_get_atom_connector_info_from_supported_devices_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_get_atom_connector_info_from_supported_devices_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.radeon_mode_info }
%struct.radeon_mode_info = type { %struct.atom_context* }
%struct.atom_context = type { i32 }
%union.atom_supported_devices = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32 }
%struct.bios_connector = type { i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_21__, i64 }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_21__ = type { i32 }
%struct.radeon_router = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }

@DATA = common dso_local global i32 0, align 4
@SupportedDevicesInfo = common dso_local global i32 0, align 4
@ATOM_MAX_SUPPORTED_DEVICE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ATOM_MAX_SUPPORTED_DEVICE_INFO = common dso_local global i32 0, align 4
@ATOM_DEVICE_CV_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Skipping Component Video\0A\00", align 1
@supported_devices_connector_convert = common dso_local global i64* null, align 8
@DRM_MODE_CONNECTOR_Unknown = common dso_local global i64 0, align 8
@ATOM_DEVICE_TV1_INDEX = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV2_INDEX = common dso_local global i32 0, align 4
@RADEON_HPD_1 = common dso_local global i8* null, align 8
@RADEON_HPD_2 = common dso_local global i8* null, align 8
@RADEON_HPD_NONE = common dso_local global i8* null, align 8
@ATOM_DEVICE_DFP1_INDEX = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP2_INDEX = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT1_INDEX = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT2_INDEX = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VGA = common dso_local global i64 0, align 8
@radeon_r4xx_atom = common dso_local global i64 0, align 8
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT_SUPPORT = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DVII = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_get_atom_connector_info_from_supported_devices_table(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_mode_info*, align 8
  %6 = alloca %struct.atom_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %union.atom_supported_devices*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.bios_connector*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.radeon_router, align 4
  %21 = alloca %struct.TYPE_20__, align 8
  %22 = alloca %struct.TYPE_21__, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = load %struct.radeon_device*, %struct.radeon_device** %26, align 8
  store %struct.radeon_device* %27, %struct.radeon_device** %4, align 8
  %28 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 0
  store %struct.radeon_mode_info* %29, %struct.radeon_mode_info** %5, align 8
  %30 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %5, align 8
  %31 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %30, i32 0, i32 0
  %32 = load %struct.atom_context*, %struct.atom_context** %31, align 8
  store %struct.atom_context* %32, %struct.atom_context** %6, align 8
  %33 = load i32, i32* @DATA, align 4
  %34 = load i32, i32* @SupportedDevicesInfo, align 4
  %35 = call i32 @GetIndexIntoMasterTable(i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @ATOM_MAX_SUPPORTED_DEVICE, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 40, %37
  store i64 %38, i64* %19, align 8
  %39 = getelementptr inbounds %struct.radeon_router, %struct.radeon_router* %20, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.radeon_router, %struct.radeon_router* %20, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load i64, i64* %19, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.bios_connector* @kzalloc(i64 %41, i32 %42)
  store %struct.bios_connector* %43, %struct.bios_connector** %18, align 8
  %44 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %45 = icmp ne %struct.bios_connector* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %623

47:                                               ; preds = %1
  %48 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @atom_parse_data_header(%struct.atom_context* %48, i32 %49, i32* %8, i32* %10, i32* %11, i32* %9)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %54 = call i32 @kfree(%struct.bios_connector* %53)
  store i32 0, i32* %2, align 4
  br label %623

55:                                               ; preds = %47
  %56 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %57 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to %union.atom_supported_devices*
  store %union.atom_supported_devices* %62, %union.atom_supported_devices** %14, align 8
  %63 = load %union.atom_supported_devices*, %union.atom_supported_devices** %14, align 8
  %64 = bitcast %union.atom_supported_devices* %63 to %struct.TYPE_14__*
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @le16_to_cpu(i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %72

70:                                               ; preds = %55
  %71 = load i32, i32* @ATOM_MAX_SUPPORTED_DEVICE, align 4
  store i32 %71, i32* %17, align 4
  br label %74

72:                                               ; preds = %55
  %73 = load i32, i32* @ATOM_MAX_SUPPORTED_DEVICE_INFO, align 4
  store i32 %73, i32* %17, align 4
  br label %74

74:                                               ; preds = %72, %70
  store i32 0, i32* %15, align 4
  br label %75

75:                                               ; preds = %365, %74
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %368

79:                                               ; preds = %75
  %80 = load %union.atom_supported_devices*, %union.atom_supported_devices** %14, align 8
  %81 = bitcast %union.atom_supported_devices* %80 to %struct.TYPE_14__*
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %82, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i64 %85
  %87 = bitcast %struct.TYPE_20__* %21 to i8*
  %88 = bitcast %struct.TYPE_20__* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 24, i1 false)
  %89 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %89, i64 %91
  %93 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %15, align 4
  %96 = shl i32 1, %95
  %97 = and i32 %94, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %79
  br label %365

100:                                              ; preds = %79
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* @ATOM_DEVICE_CV_INDEX, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %365

106:                                              ; preds = %100
  %107 = load i64*, i64** @supported_devices_connector_convert, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i64, i64* %107, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %114, i64 %116
  %118 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %117, i32 0, i32 5
  store i64 %113, i64* %118, align 8
  %119 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %119, i64 %121
  %123 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @DRM_MODE_CONNECTOR_Unknown, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %106
  br label %365

128:                                              ; preds = %106
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %13, align 4
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %136, i64 %138
  %140 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %139, i32 0, i32 1
  store i32 %135, i32* %140, align 4
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* @ATOM_DEVICE_TV1_INDEX, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %156

144:                                              ; preds = %128
  %145 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %145, i64 %147
  %149 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  store i32 0, i32* %150, align 8
  %151 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %151, i64 %153
  %155 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %154, i32 0, i32 1
  store i32 50, i32* %155, align 4
  br label %207

156:                                              ; preds = %128
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* @ATOM_DEVICE_TV2_INDEX, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %172

160:                                              ; preds = %156
  %161 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %161, i64 %163
  %165 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  store i32 0, i32* %166, align 8
  %167 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %167, i64 %169
  %171 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %170, i32 0, i32 1
  store i32 51, i32* %171, align 4
  br label %206

172:                                              ; preds = %156
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* @ATOM_DEVICE_CV_INDEX, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %172
  %177 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %177, i64 %179
  %181 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 0
  store i32 0, i32* %182, align 8
  %183 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %184 = load i32, i32* %15, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %183, i64 %185
  %187 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %186, i32 0, i32 1
  store i32 52, i32* %187, align 4
  br label %205

188:                                              ; preds = %172
  %189 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %190 = load i32, i32* %15, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %189, i64 %191
  %193 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %192, i32 0, i32 4
  %194 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %195 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %196 = load i32, i32* %15, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %195, i64 %197
  %199 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @radeon_lookup_i2c_gpio(%struct.radeon_device* %194, i32 %200)
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  store i32 %201, i32* %202, align 4
  %203 = bitcast %struct.TYPE_21__* %193 to i8*
  %204 = bitcast %struct.TYPE_21__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %203, i8* align 4 %204, i64 4, i1 false)
  br label %205

205:                                              ; preds = %188, %176
  br label %206

206:                                              ; preds = %205, %160
  br label %207

207:                                              ; preds = %206, %144
  %208 = load i32, i32* %11, align 4
  %209 = icmp sgt i32 %208, 1
  br i1 %209, label %210, label %249

210:                                              ; preds = %207
  %211 = load i32, i32* %10, align 4
  %212 = icmp sgt i32 %211, 1
  br i1 %212, label %213, label %249

213:                                              ; preds = %210
  %214 = load %union.atom_supported_devices*, %union.atom_supported_devices** %14, align 8
  %215 = bitcast %union.atom_supported_devices* %214 to %struct.TYPE_19__*
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %216, align 8
  %218 = load i32, i32* %15, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %23, align 4
  %223 = load i32, i32* %23, align 4
  switch i32 %223, label %240 [
    i32 4, label %224
    i32 10, label %232
  ]

224:                                              ; preds = %213
  %225 = load i8*, i8** @RADEON_HPD_1, align 8
  %226 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %227 = load i32, i32* %15, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %226, i64 %228
  %230 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  store i8* %225, i8** %231, align 8
  br label %248

232:                                              ; preds = %213
  %233 = load i8*, i8** @RADEON_HPD_2, align 8
  %234 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %235 = load i32, i32* %15, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %234, i64 %236
  %238 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 0
  store i8* %233, i8** %239, align 8
  br label %248

240:                                              ; preds = %213
  %241 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %242 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %243 = load i32, i32* %15, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %242, i64 %244
  %246 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 0
  store i8* %241, i8** %247, align 8
  br label %248

248:                                              ; preds = %240, %232, %224
  br label %283

249:                                              ; preds = %210, %207
  %250 = load i32, i32* %15, align 4
  %251 = load i32, i32* @ATOM_DEVICE_DFP1_INDEX, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %261

253:                                              ; preds = %249
  %254 = load i8*, i8** @RADEON_HPD_1, align 8
  %255 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %256 = load i32, i32* %15, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %255, i64 %257
  %259 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 0
  store i8* %254, i8** %260, align 8
  br label %282

261:                                              ; preds = %249
  %262 = load i32, i32* %15, align 4
  %263 = load i32, i32* @ATOM_DEVICE_DFP2_INDEX, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %273

265:                                              ; preds = %261
  %266 = load i8*, i8** @RADEON_HPD_2, align 8
  %267 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %268 = load i32, i32* %15, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %267, i64 %269
  %271 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %270, i32 0, i32 3
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 0
  store i8* %266, i8** %272, align 8
  br label %281

273:                                              ; preds = %261
  %274 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %275 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %276 = load i32, i32* %15, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %275, i64 %277
  %279 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 0
  store i8* %274, i8** %280, align 8
  br label %281

281:                                              ; preds = %273, %265
  br label %282

282:                                              ; preds = %281, %253
  br label %283

283:                                              ; preds = %282, %248
  %284 = load i32, i32* %15, align 4
  %285 = load i32, i32* @ATOM_DEVICE_CRT1_INDEX, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %291, label %287

287:                                              ; preds = %283
  %288 = load i32, i32* %15, align 4
  %289 = load i32, i32* @ATOM_DEVICE_CRT2_INDEX, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %298

291:                                              ; preds = %287, %283
  %292 = load i64, i64* @DRM_MODE_CONNECTOR_VGA, align 8
  %293 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %294 = load i32, i32* %15, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %293, i64 %295
  %297 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %296, i32 0, i32 5
  store i64 %292, i64* %297, align 8
  br label %298

298:                                              ; preds = %291, %287
  %299 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %300 = load i32, i32* %15, align 4
  %301 = shl i32 1, %300
  %302 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %303 = load i32, i32* %15, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %302, i64 %304
  %306 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %305, i32 0, i32 5
  %307 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %308 = load i32, i32* %15, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %307, i64 %309
  %311 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %310, i32 0, i32 4
  %312 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %313 = load i32, i32* %15, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %312, i64 %314
  %316 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %315, i32 0, i32 1
  %317 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %318 = load i32, i32* %15, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %317, i64 %319
  %321 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %320, i32 0, i32 3
  %322 = call i32 @radeon_atom_apply_quirks(%struct.drm_device* %299, i32 %301, i64* %306, %struct.TYPE_21__* %311, i32* %316, %struct.TYPE_13__* %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %325, label %324

324:                                              ; preds = %298
  br label %365

325:                                              ; preds = %298
  %326 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %327 = load i32, i32* %15, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %326, i64 %328
  %330 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %329, i32 0, i32 0
  store i32 1, i32* %330, align 8
  %331 = load i32, i32* %15, align 4
  %332 = shl i32 1, %331
  %333 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %334 = load i32, i32* %15, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %333, i64 %335
  %337 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %336, i32 0, i32 2
  store i32 %332, i32* %337, align 8
  %338 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %339 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %344, label %341

341:                                              ; preds = %325
  %342 = load i64, i64* @radeon_r4xx_atom, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %354

344:                                              ; preds = %341, %325
  %345 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %346 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %347 = load i32, i32* %15, align 4
  %348 = shl i32 1, %347
  %349 = load i32, i32* %13, align 4
  %350 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %346, i32 %348, i32 %349)
  %351 = load i32, i32* %15, align 4
  %352 = shl i32 1, %351
  %353 = call i32 @radeon_add_atom_encoder(%struct.drm_device* %345, i32 %350, i32 %352, i32 0)
  br label %364

354:                                              ; preds = %341
  %355 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %356 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %357 = load i32, i32* %15, align 4
  %358 = shl i32 1, %357
  %359 = load i32, i32* %13, align 4
  %360 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %356, i32 %358, i32 %359)
  %361 = load i32, i32* %15, align 4
  %362 = shl i32 1, %361
  %363 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %355, i32 %360, i32 %362)
  br label %364

364:                                              ; preds = %354, %344
  br label %365

365:                                              ; preds = %364, %324, %127, %104, %99
  %366 = load i32, i32* %15, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %15, align 4
  br label %75

368:                                              ; preds = %75
  store i32 0, i32* %15, align 4
  br label %369

369:                                              ; preds = %552, %368
  %370 = load i32, i32* %15, align 4
  %371 = load i32, i32* %17, align 4
  %372 = icmp slt i32 %370, %371
  br i1 %372, label %373, label %555

373:                                              ; preds = %369
  %374 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %375 = load i32, i32* %15, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %374, i64 %376
  %378 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %551

381:                                              ; preds = %373
  store i32 0, i32* %16, align 4
  br label %382

382:                                              ; preds = %547, %381
  %383 = load i32, i32* %16, align 4
  %384 = load i32, i32* %17, align 4
  %385 = icmp slt i32 %383, %384
  br i1 %385, label %386, label %550

386:                                              ; preds = %382
  %387 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %388 = load i32, i32* %16, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %387, i64 %389
  %391 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %546

394:                                              ; preds = %386
  %395 = load i32, i32* %15, align 4
  %396 = load i32, i32* %16, align 4
  %397 = icmp ne i32 %395, %396
  br i1 %397, label %398, label %546

398:                                              ; preds = %394
  %399 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %400 = load i32, i32* %15, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %399, i64 %401
  %403 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %406 = load i32, i32* %16, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %405, i64 %407
  %409 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = icmp eq i32 %404, %410
  br i1 %411, label %412, label %545

412:                                              ; preds = %398
  %413 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %414 = load i32, i32* %15, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %413, i64 %415
  %417 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %420 = and i32 %418, %419
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %434

422:                                              ; preds = %412
  %423 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %424 = load i32, i32* %15, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %423, i64 %425
  %427 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %426, i32 0, i32 1
  store i32 53, i32* %427, align 4
  %428 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %429 = load i32, i32* %15, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %428, i64 %430
  %432 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %431, i32 0, i32 4
  %433 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %432, i32 0, i32 0
  store i32 0, i32* %433, align 8
  br label %547

434:                                              ; preds = %412
  %435 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %436 = load i32, i32* %16, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %435, i64 %437
  %439 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 8
  %441 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %442 = and i32 %440, %441
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %456

444:                                              ; preds = %434
  %445 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %446 = load i32, i32* %16, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %445, i64 %447
  %449 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %448, i32 0, i32 1
  store i32 53, i32* %449, align 4
  %450 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %451 = load i32, i32* %16, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %450, i64 %452
  %454 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %453, i32 0, i32 4
  %455 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %454, i32 0, i32 0
  store i32 0, i32* %455, align 8
  br label %547

456:                                              ; preds = %434
  %457 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %458 = load i32, i32* %15, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %457, i64 %459
  %461 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %460, i32 0, i32 2
  %462 = load i32, i32* %461, align 8
  %463 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %464 = and i32 %462, %463
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %476

466:                                              ; preds = %456
  %467 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %468 = load i32, i32* %16, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %467, i64 %469
  %471 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 8
  %473 = load i32, i32* @ATOM_DEVICE_CRT_SUPPORT, align 4
  %474 = and i32 %472, %473
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %496, label %476

476:                                              ; preds = %466, %456
  %477 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %478 = load i32, i32* %16, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %477, i64 %479
  %481 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %480, i32 0, i32 2
  %482 = load i32, i32* %481, align 8
  %483 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %484 = and i32 %482, %483
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %544

486:                                              ; preds = %476
  %487 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %488 = load i32, i32* %15, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %487, i64 %489
  %491 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %490, i32 0, i32 2
  %492 = load i32, i32* %491, align 8
  %493 = load i32, i32* @ATOM_DEVICE_CRT_SUPPORT, align 4
  %494 = and i32 %492, %493
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %544

496:                                              ; preds = %486, %466
  %497 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %498 = load i32, i32* %16, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %497, i64 %499
  %501 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %500, i32 0, i32 2
  %502 = load i32, i32* %501, align 8
  %503 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %504 = load i32, i32* %15, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %503, i64 %505
  %507 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %506, i32 0, i32 2
  %508 = load i32, i32* %507, align 8
  %509 = or i32 %508, %502
  store i32 %509, i32* %507, align 8
  %510 = load i64, i64* @DRM_MODE_CONNECTOR_DVII, align 8
  %511 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %512 = load i32, i32* %15, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %511, i64 %513
  %515 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %514, i32 0, i32 5
  store i64 %510, i64* %515, align 8
  %516 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %517 = load i32, i32* %16, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %516, i64 %518
  %520 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %519, i32 0, i32 2
  %521 = load i32, i32* %520, align 8
  %522 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %523 = and i32 %521, %522
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %538

525:                                              ; preds = %496
  %526 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %527 = load i32, i32* %15, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %526, i64 %528
  %530 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %529, i32 0, i32 3
  %531 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %532 = load i32, i32* %16, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %531, i64 %533
  %535 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %534, i32 0, i32 3
  %536 = bitcast %struct.TYPE_13__* %530 to i8*
  %537 = bitcast %struct.TYPE_13__* %535 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %536, i8* align 8 %537, i64 8, i1 false)
  br label %538

538:                                              ; preds = %525, %496
  %539 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %540 = load i32, i32* %16, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %539, i64 %541
  %543 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %542, i32 0, i32 0
  store i32 0, i32* %543, align 8
  br label %544

544:                                              ; preds = %538, %486, %476
  br label %545

545:                                              ; preds = %544, %398
  br label %546

546:                                              ; preds = %545, %394, %386
  br label %547

547:                                              ; preds = %546, %444, %422
  %548 = load i32, i32* %16, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %16, align 4
  br label %382

550:                                              ; preds = %382
  br label %551

551:                                              ; preds = %550, %373
  br label %552

552:                                              ; preds = %551
  %553 = load i32, i32* %15, align 4
  %554 = add nsw i32 %553, 1
  store i32 %554, i32* %15, align 4
  br label %369

555:                                              ; preds = %369
  store i32 0, i32* %15, align 4
  br label %556

556:                                              ; preds = %615, %555
  %557 = load i32, i32* %15, align 4
  %558 = load i32, i32* %17, align 4
  %559 = icmp slt i32 %557, %558
  br i1 %559, label %560, label %618

560:                                              ; preds = %556
  %561 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %562 = load i32, i32* %15, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %561, i64 %563
  %565 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %564, i32 0, i32 0
  %566 = load i32, i32* %565, align 8
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %614

568:                                              ; preds = %560
  %569 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %570 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %571 = load i32, i32* %15, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %570, i64 %572
  %574 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %573, i32 0, i32 5
  %575 = load i64, i64* %574, align 8
  %576 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %577 = load i32, i32* %15, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %576, i64 %578
  %580 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %579, i32 0, i32 2
  %581 = load i32, i32* %580, align 8
  %582 = call i32 @atombios_get_connector_object_id(%struct.drm_device* %569, i64 %575, i32 %581)
  store i32 %582, i32* %24, align 4
  %583 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %584 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %585 = load i32, i32* %15, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %584, i64 %586
  %588 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %587, i32 0, i32 1
  %589 = load i32, i32* %588, align 4
  %590 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %591 = load i32, i32* %15, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %590, i64 %592
  %594 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %593, i32 0, i32 2
  %595 = load i32, i32* %594, align 8
  %596 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %597 = load i32, i32* %15, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %596, i64 %598
  %600 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %599, i32 0, i32 5
  %601 = load i64, i64* %600, align 8
  %602 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %603 = load i32, i32* %15, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %602, i64 %604
  %606 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %605, i32 0, i32 4
  %607 = load i32, i32* %24, align 4
  %608 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %609 = load i32, i32* %15, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %608, i64 %610
  %612 = getelementptr inbounds %struct.bios_connector, %struct.bios_connector* %611, i32 0, i32 3
  %613 = call i32 @radeon_add_atom_connector(%struct.drm_device* %583, i32 %589, i32 %595, i64 %601, %struct.TYPE_21__* %606, i32 0, i32 %607, %struct.TYPE_13__* %612, %struct.radeon_router* %20)
  br label %614

614:                                              ; preds = %568, %560
  br label %615

615:                                              ; preds = %614
  %616 = load i32, i32* %15, align 4
  %617 = add nsw i32 %616, 1
  store i32 %617, i32* %15, align 4
  br label %556

618:                                              ; preds = %556
  %619 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %620 = call i32 @radeon_link_encoder_connector(%struct.drm_device* %619)
  %621 = load %struct.bios_connector*, %struct.bios_connector** %18, align 8
  %622 = call i32 @kfree(%struct.bios_connector* %621)
  store i32 1, i32* %2, align 4
  br label %623

623:                                              ; preds = %618, %52, %46
  %624 = load i32, i32* %2, align 4
  ret i32 %624
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local %struct.bios_connector* @kzalloc(i64, i32) #1

declare dso_local i32 @atom_parse_data_header(%struct.atom_context*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.bios_connector*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @radeon_lookup_i2c_gpio(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_atom_apply_quirks(%struct.drm_device*, i32, i64*, %struct.TYPE_21__*, i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @radeon_add_atom_encoder(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @radeon_get_encoder_enum(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @radeon_add_legacy_encoder(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @atombios_get_connector_object_id(%struct.drm_device*, i64, i32) #1

declare dso_local i32 @radeon_add_atom_connector(%struct.drm_device*, i32, i32, i64, %struct.TYPE_21__*, i32, i32, %struct.TYPE_13__*, %struct.radeon_router*) #1

declare dso_local i32 @radeon_link_encoder_connector(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
