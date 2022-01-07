; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_lvds_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_lvds_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_encoder_atom_dig = type { i32, i32, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.radeon_encoder = type { i32, %struct.TYPE_15__, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.radeon_mode_info }
%struct.radeon_mode_info = type { i32, %struct.edid*, %struct.TYPE_16__* }
%struct.edid = type { i32 }
%struct.TYPE_16__ = type { i32 }
%union.lvds_info = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_13__ = type { i32, i32 }

@DATA = common dso_local global i32 0, align 4
@LVDS_Info = common dso_local global i32 0, align 4
@ENUM_ID_MASK = common dso_local global i32 0, align 4
@ENUM_ID_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ATOM_VSYNC_POLARITY = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@ATOM_HSYNC_POLARITY = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@ATOM_COMPOSITESYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_CSYNC = common dso_local global i32 0, align 4
@ATOM_INTERLACE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@ATOM_DOUBLE_CLOCK_MODE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@CRTC_INTERLACE_HALVE_V = common dso_local global i32 0, align 4
@ATOM_RECORD_END_TYPE = common dso_local global i32 0, align 4
@EDID_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Bad LCD record %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radeon_encoder_atom_dig* @radeon_atombios_get_lvds_info(%struct.radeon_encoder* %0) #0 {
  %2 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %3 = alloca %struct.radeon_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_mode_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.lvds_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.edid*, align 8
  %20 = alloca i32, align 4
  store %struct.radeon_encoder* %0, %struct.radeon_encoder** %3, align 8
  %21 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  store %struct.drm_device* %24, %struct.drm_device** %4, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = load %struct.radeon_device*, %struct.radeon_device** %26, align 8
  store %struct.radeon_device* %27, %struct.radeon_device** %5, align 8
  %28 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 0
  store %struct.radeon_mode_info* %29, %struct.radeon_mode_info** %6, align 8
  %30 = load i32, i32* @DATA, align 4
  %31 = load i32, i32* @LVDS_Info, align 4
  %32 = call i32 @GetIndexIntoMasterTable(i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  store %struct.radeon_encoder_atom_dig* null, %struct.radeon_encoder_atom_dig** %13, align 8
  %33 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %34 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ENUM_ID_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @ENUM_ID_SHIFT, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %14, align 4
  %40 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %6, align 8
  %41 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %40, i32 0, i32 2
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @atom_parse_data_header(%struct.TYPE_16__* %42, i32 %43, i32* null, i32* %11, i32* %12, i32* %8)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %436

46:                                               ; preds = %1
  %47 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %6, align 8
  %48 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %47, i32 0, i32 2
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to %union.lvds_info*
  store %union.lvds_info* %55, %union.lvds_info** %10, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.radeon_encoder_atom_dig* @kzalloc(i32 64, i32 %56)
  store %struct.radeon_encoder_atom_dig* %57, %struct.radeon_encoder_atom_dig** %13, align 8
  %58 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %59 = icmp ne %struct.radeon_encoder_atom_dig* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %46
  store %struct.radeon_encoder_atom_dig* null, %struct.radeon_encoder_atom_dig** %2, align 8
  br label %438

61:                                               ; preds = %46
  %62 = load %union.lvds_info*, %union.lvds_info** %10, align 8
  %63 = bitcast %union.lvds_info* %62 to %struct.TYPE_11__*
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 11
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le16_to_cpu(i32 %66)
  %68 = mul nsw i32 %67, 10
  %69 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %70 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load %union.lvds_info*, %union.lvds_info** %10, align 8
  %73 = bitcast %union.lvds_info* %72 to %struct.TYPE_11__*
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le16_to_cpu(i32 %76)
  %78 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %79 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load %union.lvds_info*, %union.lvds_info** %10, align 8
  %82 = bitcast %union.lvds_info* %81 to %struct.TYPE_11__*
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le16_to_cpu(i32 %85)
  %87 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %88 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 4
  %90 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %91 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %union.lvds_info*, %union.lvds_info** %10, align 8
  %95 = bitcast %union.lvds_info* %94 to %struct.TYPE_11__*
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le16_to_cpu(i32 %98)
  %100 = add nsw i32 %93, %99
  %101 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %102 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 3
  store i32 %100, i32* %103, align 4
  %104 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %105 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %union.lvds_info*, %union.lvds_info** %10, align 8
  %109 = bitcast %union.lvds_info* %108 to %struct.TYPE_11__*
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @le16_to_cpu(i32 %112)
  %114 = add nsw i32 %107, %113
  %115 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %116 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 4
  store i32 %114, i32* %117, align 4
  %118 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %119 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load %union.lvds_info*, %union.lvds_info** %10, align 8
  %123 = bitcast %union.lvds_info* %122 to %struct.TYPE_11__*
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @le16_to_cpu(i32 %126)
  %128 = add nsw i32 %121, %127
  %129 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %130 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 5
  store i32 %128, i32* %131, align 4
  %132 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %133 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %union.lvds_info*, %union.lvds_info** %10, align 8
  %137 = bitcast %union.lvds_info* %136 to %struct.TYPE_11__*
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @le16_to_cpu(i32 %140)
  %142 = add nsw i32 %135, %141
  %143 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %144 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 6
  store i32 %142, i32* %145, align 4
  %146 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %147 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %union.lvds_info*, %union.lvds_info** %10, align 8
  %151 = bitcast %union.lvds_info* %150 to %struct.TYPE_11__*
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @le16_to_cpu(i32 %154)
  %156 = add nsw i32 %149, %155
  %157 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %158 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 7
  store i32 %156, i32* %159, align 4
  %160 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %161 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 4
  %164 = load %union.lvds_info*, %union.lvds_info** %10, align 8
  %165 = bitcast %union.lvds_info* %164 to %struct.TYPE_11__*
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @le16_to_cpu(i32 %168)
  %170 = add nsw i32 %163, %169
  %171 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %172 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 8
  store i32 %170, i32* %173, align 4
  %174 = load %union.lvds_info*, %union.lvds_info** %10, align 8
  %175 = bitcast %union.lvds_info* %174 to %struct.TYPE_11__*
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @le16_to_cpu(i32 %177)
  %179 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %180 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 4
  %181 = load %union.lvds_info*, %union.lvds_info** %10, align 8
  %182 = bitcast %union.lvds_info* %181 to %struct.TYPE_11__*
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %186 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %185, i32 0, i32 4
  store i32 %184, i32* %186, align 4
  %187 = load %union.lvds_info*, %union.lvds_info** %10, align 8
  %188 = bitcast %union.lvds_info* %187 to %struct.TYPE_11__*
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @le16_to_cpu(i32 %192)
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* @ATOM_VSYNC_POLARITY, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %61
  %199 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %200 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %201 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 11
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %199
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %198, %61
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* @ATOM_HSYNC_POLARITY, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %205
  %211 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %212 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %213 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 11
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %211
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %210, %205
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* @ATOM_COMPOSITESYNC, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %217
  %223 = load i32, i32* @DRM_MODE_FLAG_CSYNC, align 4
  %224 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %225 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 11
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %223
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %222, %217
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* @ATOM_INTERLACE, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %229
  %235 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %236 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %237 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 11
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, %235
  store i32 %240, i32* %238, align 4
  br label %241

241:                                              ; preds = %234, %229
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* @ATOM_DOUBLE_CLOCK_MODE, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %241
  %247 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %248 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %249 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 11
  %251 = load i32, i32* %250, align 4
  %252 = or i32 %251, %247
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %246, %241
  %254 = load %union.lvds_info*, %union.lvds_info** %10, align 8
  %255 = bitcast %union.lvds_info* %254 to %struct.TYPE_11__*
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @le16_to_cpu(i32 %258)
  %260 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %261 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 9
  store i32 %259, i32* %262, align 4
  %263 = load %union.lvds_info*, %union.lvds_info** %10, align 8
  %264 = bitcast %union.lvds_info* %263 to %struct.TYPE_11__*
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @le16_to_cpu(i32 %267)
  %269 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %270 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 10
  store i32 %268, i32* %271, align 4
  %272 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %273 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %272, i32 0, i32 2
  %274 = load i32, i32* @CRTC_INTERLACE_HALVE_V, align 4
  %275 = call i32 @drm_mode_set_crtcinfo(%struct.TYPE_15__* %273, i32 %274)
  %276 = load %union.lvds_info*, %union.lvds_info** %10, align 8
  %277 = bitcast %union.lvds_info* %276 to %struct.TYPE_11__*
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %281 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %280, i32 0, i32 3
  store i32 %279, i32* %281, align 4
  %282 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %283 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %282, i32 0, i32 1
  %284 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %285 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %284, i32 0, i32 2
  %286 = bitcast %struct.TYPE_15__* %283 to i8*
  %287 = bitcast %struct.TYPE_15__* %285 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %286, i8* align 4 %287, i64 48, i1 false)
  %288 = load i32, i32* %14, align 4
  %289 = icmp eq i32 %288, 2
  br i1 %289, label %290, label %293

290:                                              ; preds = %253
  %291 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %292 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %291, i32 0, i32 1
  store i32 1, i32* %292, align 4
  br label %296

293:                                              ; preds = %253
  %294 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %295 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %294, i32 0, i32 1
  store i32 0, i32* %295, align 4
  br label %296

296:                                              ; preds = %293, %290
  %297 = load %union.lvds_info*, %union.lvds_info** %10, align 8
  %298 = bitcast %union.lvds_info* %297 to %struct.TYPE_11__*
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @le16_to_cpu(i32 %300)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %435

303:                                              ; preds = %296
  store i32 0, i32* %17, align 4
  %304 = load i32, i32* %11, align 4
  %305 = icmp eq i32 %304, 1
  br i1 %305, label %306, label %323

306:                                              ; preds = %303
  %307 = load i32, i32* %12, align 4
  %308 = icmp slt i32 %307, 2
  br i1 %308, label %309, label %323

309:                                              ; preds = %306
  %310 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %6, align 8
  %311 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %310, i32 0, i32 2
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load %union.lvds_info*, %union.lvds_info** %10, align 8
  %316 = bitcast %union.lvds_info* %315 to %struct.TYPE_11__*
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @le16_to_cpu(i32 %318)
  %320 = add nsw i32 %314, %319
  %321 = sext i32 %320 to i64
  %322 = inttoptr i64 %321 to i32*
  store i32* %322, i32** %18, align 8
  br label %339

323:                                              ; preds = %306, %303
  %324 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %6, align 8
  %325 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %324, i32 0, i32 2
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %8, align 4
  %330 = add nsw i32 %328, %329
  %331 = load %union.lvds_info*, %union.lvds_info** %10, align 8
  %332 = bitcast %union.lvds_info* %331 to %struct.TYPE_11__*
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @le16_to_cpu(i32 %334)
  %336 = add nsw i32 %330, %335
  %337 = sext i32 %336 to i64
  %338 = inttoptr i64 %337 to i32*
  store i32* %338, i32** %18, align 8
  br label %339

339:                                              ; preds = %323, %309
  br label %340

340:                                              ; preds = %433, %339
  %341 = load i32*, i32** %18, align 8
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* @ATOM_RECORD_END_TYPE, align 4
  %344 = icmp ne i32 %342, %343
  br i1 %344, label %345, label %434

345:                                              ; preds = %340
  %346 = load i32*, i32** %18, align 8
  %347 = load i32, i32* %346, align 4
  switch i32 %347, label %425 [
    i32 130, label %348
    i32 128, label %351
    i32 132, label %354
    i32 131, label %357
    i32 129, label %408
  ]

348:                                              ; preds = %345
  %349 = load i32*, i32** %18, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 4
  store i32* %350, i32** %18, align 8
  br label %429

351:                                              ; preds = %345
  %352 = load i32*, i32** %18, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 4
  store i32* %353, i32** %18, align 8
  br label %429

354:                                              ; preds = %345
  %355 = load i32*, i32** %18, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 4
  store i32* %356, i32** %18, align 8
  br label %429

357:                                              ; preds = %345
  %358 = load i32*, i32** %18, align 8
  %359 = bitcast i32* %358 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %359, %struct.TYPE_14__** %15, align 8
  %360 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %405

364:                                              ; preds = %357
  %365 = load i64, i64* @EDID_LENGTH, align 8
  %366 = trunc i64 %365 to i32
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = trunc i64 %369 to i32
  %371 = call i32 @max(i32 %366, i32 %370)
  store i32 %371, i32* %20, align 4
  %372 = load i32, i32* %20, align 4
  %373 = load i32, i32* @GFP_KERNEL, align 4
  %374 = call %struct.edid* @kmalloc(i32 %372, i32 %373)
  store %struct.edid* %374, %struct.edid** %19, align 8
  %375 = load %struct.edid*, %struct.edid** %19, align 8
  %376 = icmp ne %struct.edid* %375, null
  br i1 %376, label %377, label %404

377:                                              ; preds = %364
  %378 = load %struct.edid*, %struct.edid** %19, align 8
  %379 = bitcast %struct.edid* %378 to i32*
  %380 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %381 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %380, i32 0, i32 1
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 0
  %384 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = call i32 @memcpy(i32* %379, i32* %383, i64 %386)
  %388 = load %struct.edid*, %struct.edid** %19, align 8
  %389 = call i32 @drm_edid_is_valid(%struct.edid* %388)
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %400

391:                                              ; preds = %377
  %392 = load %struct.edid*, %struct.edid** %19, align 8
  %393 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %394 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %394, i32 0, i32 1
  store %struct.edid* %392, %struct.edid** %395, align 8
  %396 = load i32, i32* %20, align 4
  %397 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %398 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %398, i32 0, i32 0
  store i32 %396, i32* %399, align 8
  br label %403

400:                                              ; preds = %377
  %401 = load %struct.edid*, %struct.edid** %19, align 8
  %402 = call i32 @kfree(%struct.edid* %401)
  br label %403

403:                                              ; preds = %400, %391
  br label %404

404:                                              ; preds = %403, %364
  br label %405

405:                                              ; preds = %404, %357
  %406 = load i32*, i32** %18, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 16
  store i32* %407, i32** %18, align 8
  br label %429

408:                                              ; preds = %345
  %409 = load i32*, i32** %18, align 8
  %410 = bitcast i32* %409 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %410, %struct.TYPE_13__** %16, align 8
  %411 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %412 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %415 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %414, i32 0, i32 2
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %415, i32 0, i32 9
  store i32 %413, i32* %416, align 4
  %417 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %418 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %421 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %420, i32 0, i32 2
  %422 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %421, i32 0, i32 10
  store i32 %419, i32* %422, align 4
  %423 = load i32*, i32** %18, align 8
  %424 = getelementptr inbounds i32, i32* %423, i64 8
  store i32* %424, i32** %18, align 8
  br label %429

425:                                              ; preds = %345
  %426 = load i32*, i32** %18, align 8
  %427 = load i32, i32* %426, align 4
  %428 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %427)
  store i32 1, i32* %17, align 4
  br label %429

429:                                              ; preds = %425, %408, %405, %354, %351, %348
  %430 = load i32, i32* %17, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %433

432:                                              ; preds = %429
  br label %434

433:                                              ; preds = %429
  br label %340

434:                                              ; preds = %432, %340
  br label %435

435:                                              ; preds = %434, %296
  br label %436

436:                                              ; preds = %435, %1
  %437 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  store %struct.radeon_encoder_atom_dig* %437, %struct.radeon_encoder_atom_dig** %2, align 8
  br label %438

438:                                              ; preds = %436, %60
  %439 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %2, align 8
  ret %struct.radeon_encoder_atom_dig* %439
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_16__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.radeon_encoder_atom_dig* @kzalloc(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.TYPE_15__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.edid* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @drm_edid_is_valid(%struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
