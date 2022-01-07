; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_tv_timings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_tv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_mode_info }
%struct.radeon_mode_info = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@DATA = common dso_local global i32 0, align 4
@AnalogTV_Info = common dso_local global i32 0, align 4
@MAX_SUPPORTED_TV_TIMING = common dso_local global i32 0, align 4
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
@MAX_SUPPORTED_TV_TIMING_V1_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atom_get_tv_timings(%struct.radeon_device* %0, i32 %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.radeon_mode_info*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  %17 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  store %struct.radeon_mode_info* %18, %struct.radeon_mode_info** %8, align 8
  %19 = load i32, i32* @DATA, align 4
  %20 = load i32, i32* @AnalogTV_Info, align 4
  %21 = call i32 @GetIndexIntoMasterTable(i32 %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %8, align 8
  %23 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @atom_parse_data_header(%struct.TYPE_14__* %24, i32 %25, i32* null, i32* %13, i32* %14, i32* %15)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %412

29:                                               ; preds = %3
  %30 = load i32, i32* %14, align 4
  switch i32 %30, label %411 [
    i32 1, label %31
    i32 2, label %245
  ]

31:                                               ; preds = %29
  %32 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %8, align 8
  %33 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %15, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %9, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @MAX_SUPPORTED_TV_TIMING, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %412

45:                                               ; preds = %31
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le16_to_cpu(i32 %64)
  %66 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %67 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le16_to_cpu(i32 %75)
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %78 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le16_to_cpu(i32 %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le16_to_cpu(i32 %95)
  %97 = add nsw i32 %87, %96
  %98 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %99 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @le16_to_cpu(i32 %107)
  %109 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %110 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @le16_to_cpu(i32 %118)
  %120 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %121 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @le16_to_cpu(i32 %129)
  %131 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %132 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @le16_to_cpu(i32 %140)
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @le16_to_cpu(i32 %149)
  %151 = add nsw i32 %141, %150
  %152 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %153 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %152, i32 0, i32 7
  store i32 %151, i32* %153, align 4
  %154 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %155 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %154, i32 0, i32 9
  store i32 0, i32* %155, align 4
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @le16_to_cpu(i32 %164)
  store i32 %165, i32* %16, align 4
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* @ATOM_VSYNC_POLARITY, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %45
  %171 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %172 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %173 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %172, i32 0, i32 9
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %170, %45
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* @ATOM_HSYNC_POLARITY, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %183 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %184 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %183, i32 0, i32 9
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %181, %176
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* @ATOM_COMPOSITESYNC, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = load i32, i32* @DRM_MODE_FLAG_CSYNC, align 4
  %194 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %195 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %194, i32 0, i32 9
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %192, %187
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* @ATOM_INTERLACE, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %205 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %206 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %205, i32 0, i32 9
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 4
  br label %209

209:                                              ; preds = %203, %198
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* @ATOM_DOUBLE_CLOCK_MODE, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %209
  %215 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %216 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %217 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %216, i32 0, i32 9
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 4
  br label %220

220:                                              ; preds = %214, %209
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %222, align 8
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @le16_to_cpu(i32 %228)
  %230 = mul nsw i32 %229, 10
  %231 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %232 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %231, i32 0, i32 8
  store i32 %230, i32* %232, align 4
  %233 = load i32, i32* %6, align 4
  %234 = icmp eq i32 %233, 1
  br i1 %234, label %235, label %244

235:                                              ; preds = %220
  %236 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %237 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = sub nsw i32 %238, 1
  store i32 %239, i32* %237, align 4
  %240 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %241 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = sub nsw i32 %242, 1
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %235, %220
  br label %411

245:                                              ; preds = %29
  %246 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %8, align 8
  %247 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %246, i32 0, i32 0
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %15, align 4
  %252 = add nsw i32 %250, %251
  %253 = sext i32 %252 to i64
  %254 = inttoptr i64 %253 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %254, %struct.TYPE_12__** %10, align 8
  %255 = load i32, i32* %6, align 4
  %256 = load i32, i32* @MAX_SUPPORTED_TV_TIMING_V1_2, align 4
  %257 = icmp sge i32 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %245
  store i32 0, i32* %4, align 4
  br label %412

259:                                              ; preds = %245
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %261, align 8
  %263 = load i32, i32* %6, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i64 %264
  store %struct.TYPE_11__* %265, %struct.TYPE_11__** %11, align 8
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 8
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @le16_to_cpu(i32 %268)
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 9
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @le16_to_cpu(i32 %272)
  %274 = add nsw i32 %269, %273
  %275 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %276 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %275, i32 0, i32 0
  store i32 %274, i32* %276, align 4
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 8
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @le16_to_cpu(i32 %279)
  %281 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %282 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %281, i32 0, i32 1
  store i32 %280, i32* %282, align 4
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 8
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @le16_to_cpu(i32 %285)
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 7
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @le16_to_cpu(i32 %289)
  %291 = add nsw i32 %286, %290
  %292 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %293 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %292, i32 0, i32 2
  store i32 %291, i32* %293, align 4
  %294 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %295 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @le16_to_cpu(i32 %299)
  %301 = add nsw i32 %296, %300
  %302 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %303 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %302, i32 0, i32 3
  store i32 %301, i32* %303, align 4
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @le16_to_cpu(i32 %306)
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 5
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @le16_to_cpu(i32 %310)
  %312 = add nsw i32 %307, %311
  %313 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %314 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %313, i32 0, i32 4
  store i32 %312, i32* %314, align 4
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @le16_to_cpu(i32 %317)
  %319 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %320 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %319, i32 0, i32 5
  store i32 %318, i32* %320, align 4
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @le16_to_cpu(i32 %323)
  %325 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @le16_to_cpu(i32 %327)
  %329 = add nsw i32 %324, %328
  %330 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %331 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %330, i32 0, i32 6
  store i32 %329, i32* %331, align 4
  %332 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %333 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %332, i32 0, i32 6
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @le16_to_cpu(i32 %337)
  %339 = add nsw i32 %334, %338
  %340 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %341 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %340, i32 0, i32 7
  store i32 %339, i32* %341, align 4
  %342 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %343 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %342, i32 0, i32 9
  store i32 0, i32* %343, align 4
  %344 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @le16_to_cpu(i32 %347)
  store i32 %348, i32* %16, align 4
  %349 = load i32, i32* %16, align 4
  %350 = load i32, i32* @ATOM_VSYNC_POLARITY, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %359

353:                                              ; preds = %259
  %354 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %355 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %356 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %355, i32 0, i32 9
  %357 = load i32, i32* %356, align 4
  %358 = or i32 %357, %354
  store i32 %358, i32* %356, align 4
  br label %359

359:                                              ; preds = %353, %259
  %360 = load i32, i32* %16, align 4
  %361 = load i32, i32* @ATOM_HSYNC_POLARITY, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %359
  %365 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %366 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %367 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %366, i32 0, i32 9
  %368 = load i32, i32* %367, align 4
  %369 = or i32 %368, %365
  store i32 %369, i32* %367, align 4
  br label %370

370:                                              ; preds = %364, %359
  %371 = load i32, i32* %16, align 4
  %372 = load i32, i32* @ATOM_COMPOSITESYNC, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %381

375:                                              ; preds = %370
  %376 = load i32, i32* @DRM_MODE_FLAG_CSYNC, align 4
  %377 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %378 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %377, i32 0, i32 9
  %379 = load i32, i32* %378, align 4
  %380 = or i32 %379, %376
  store i32 %380, i32* %378, align 4
  br label %381

381:                                              ; preds = %375, %370
  %382 = load i32, i32* %16, align 4
  %383 = load i32, i32* @ATOM_INTERLACE, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %392

386:                                              ; preds = %381
  %387 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %388 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %389 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %388, i32 0, i32 9
  %390 = load i32, i32* %389, align 4
  %391 = or i32 %390, %387
  store i32 %391, i32* %389, align 4
  br label %392

392:                                              ; preds = %386, %381
  %393 = load i32, i32* %16, align 4
  %394 = load i32, i32* @ATOM_DOUBLE_CLOCK_MODE, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %403

397:                                              ; preds = %392
  %398 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %399 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %400 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %399, i32 0, i32 9
  %401 = load i32, i32* %400, align 4
  %402 = or i32 %401, %398
  store i32 %402, i32* %400, align 4
  br label %403

403:                                              ; preds = %397, %392
  %404 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %405 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = call i32 @le16_to_cpu(i32 %406)
  %408 = mul nsw i32 %407, 10
  %409 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %410 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %409, i32 0, i32 8
  store i32 %408, i32* %410, align 4
  br label %411

411:                                              ; preds = %29, %403, %244
  store i32 1, i32* %4, align 4
  br label %412

412:                                              ; preds = %411, %258, %44, %28
  %413 = load i32, i32* %4, align 4
  ret i32 %413
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_data_header(%struct.TYPE_14__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
