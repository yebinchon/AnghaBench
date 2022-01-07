; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_get_lvds_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_get_lvds_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_encoder_lvds = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.radeon_encoder = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@COMBIOS_LCD_INFO_TABLE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Panel ID String: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Panel Size %dx%d\0A\00", align 1
@u16 = common dso_local global i32 0, align 4
@RADEON_LVDS_PANEL_FORMAT = common dso_local global i32 0, align 4
@RADEON_LVDS_PANEL_TYPE = common dso_local global i32 0, align 4
@RADEON_LVDS_NO_FM = common dso_local global i32 0, align 4
@RADEON_LVDS_2_GREY = common dso_local global i32 0, align 4
@RADEON_LVDS_4_GREY = common dso_local global i32 0, align 4
@RADEON_LVDS_FP_POL_LOW = common dso_local global i32 0, align 4
@RADEON_LVDS_LP_POL_LOW = common dso_local global i32 0, align 4
@RADEON_LVDS_DTM_POL_LOW = common dso_local global i32 0, align 4
@RADEON_LVDS_BL_CLK_SEL = common dso_local global i32 0, align 4
@CRTC_INTERLACE_HALVE_V = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"No panel info found in BIOS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radeon_encoder_lvds* @radeon_combios_get_lvds_info(%struct.radeon_encoder* %0) #0 {
  %2 = alloca %struct.radeon_encoder_lvds*, align 8
  %3 = alloca %struct.radeon_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [30 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.radeon_encoder_lvds*, align 8
  store %struct.radeon_encoder* %0, %struct.radeon_encoder** %3, align 8
  %12 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %4, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %5, align 8
  store %struct.radeon_encoder_lvds* null, %struct.radeon_encoder_lvds** %11, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = load i32, i32* @COMBIOS_LCD_INFO_TABLE, align 4
  %21 = call i32 @combios_get_table_offset(%struct.drm_device* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %368

24:                                               ; preds = %1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.radeon_encoder_lvds* @kzalloc(i32 88, i32 %25)
  store %struct.radeon_encoder_lvds* %26, %struct.radeon_encoder_lvds** %11, align 8
  %27 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %28 = icmp ne %struct.radeon_encoder_lvds* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store %struct.radeon_encoder_lvds* null, %struct.radeon_encoder_lvds** %2, align 8
  br label %384

30:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %44, %30
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 24
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %35, %36
  %38 = add nsw i32 %37, 1
  %39 = call i32 @RBIOS8(i32 %38)
  %40 = trunc i32 %39 to i8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 %42
  store i8 %40, i8* %43, align 1
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %31

47:                                               ; preds = %31
  %48 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 24
  store i8 0, i8* %48, align 8
  %49 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 0
  %50 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 25
  %53 = call i32 @RBIOS16(i32 %52)
  %54 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %55 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %54, i32 0, i32 9
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 27
  %59 = call i32 @RBIOS16(i32 %58)
  %60 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %61 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %60, i32 0, i32 9
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %64 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %63, i32 0, i32 9
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %68 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %67, i32 0, i32 9
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 44
  %74 = call i32 @RBIOS16(i32 %73)
  %75 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %76 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @u16, align 4
  %78 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %79 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @min_t(i32 %77, i32 %80, i32 2000)
  %82 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %83 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 36
  %86 = call i32 @RBIOS8(i32 %85)
  %87 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %88 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 56
  %91 = call i32 @RBIOS16(i32 %90)
  %92 = and i32 %91, 15
  %93 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %94 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 56
  %97 = call i32 @RBIOS16(i32 %96)
  %98 = ashr i32 %97, 4
  %99 = and i32 %98, 15
  %100 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %101 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 46
  %104 = call i32 @RBIOS16(i32 %103)
  %105 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %106 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 48
  %109 = call i32 @RBIOS8(i32 %108)
  %110 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %111 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 49
  %114 = call i32 @RBIOS16(i32 %113)
  %115 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %116 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 8
  %117 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %118 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %47
  %122 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %123 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = icmp sgt i32 %124, 3
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %128 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %127, i32 0, i32 7
  store i32 1, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %121, %47
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 57
  %132 = call i32 @RBIOS32(i32 %131)
  store i32 %132, i32* %7, align 4
  %133 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %134 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %133, i32 0, i32 8
  store i32 65280, i32* %134, align 8
  %135 = load i32, i32* %7, align 4
  %136 = and i32 %135, 1
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %129
  %139 = load i32, i32* @RADEON_LVDS_PANEL_FORMAT, align 4
  %140 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %141 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %138, %129
  %145 = load i32, i32* %7, align 4
  %146 = ashr i32 %145, 4
  %147 = and i32 %146, 1
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load i32, i32* @RADEON_LVDS_PANEL_TYPE, align 4
  %151 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %152 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %151, i32 0, i32 8
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %149, %144
  %156 = load i32, i32* %7, align 4
  %157 = ashr i32 %156, 8
  %158 = and i32 %157, 7
  switch i32 %158, label %177 [
    i32 0, label %159
    i32 1, label %165
    i32 2, label %171
  ]

159:                                              ; preds = %155
  %160 = load i32, i32* @RADEON_LVDS_NO_FM, align 4
  %161 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %162 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %178

165:                                              ; preds = %155
  %166 = load i32, i32* @RADEON_LVDS_2_GREY, align 4
  %167 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %168 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %167, i32 0, i32 8
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %178

171:                                              ; preds = %155
  %172 = load i32, i32* @RADEON_LVDS_4_GREY, align 4
  %173 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %174 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %173, i32 0, i32 8
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %178

177:                                              ; preds = %155
  br label %178

178:                                              ; preds = %177, %171, %165, %159
  %179 = load i32, i32* %7, align 4
  %180 = ashr i32 %179, 16
  %181 = and i32 %180, 1
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %178
  %184 = load i32, i32* @RADEON_LVDS_FP_POL_LOW, align 4
  %185 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %186 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %183, %178
  %190 = load i32, i32* %7, align 4
  %191 = ashr i32 %190, 17
  %192 = and i32 %191, 1
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %189
  %195 = load i32, i32* @RADEON_LVDS_LP_POL_LOW, align 4
  %196 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %197 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %194, %189
  %201 = load i32, i32* %7, align 4
  %202 = ashr i32 %201, 18
  %203 = and i32 %202, 1
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = load i32, i32* @RADEON_LVDS_DTM_POL_LOW, align 4
  %207 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %208 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %207, i32 0, i32 8
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %205, %200
  %212 = load i32, i32* %7, align 4
  %213 = ashr i32 %212, 23
  %214 = and i32 %213, 1
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  %217 = load i32, i32* @RADEON_LVDS_BL_CLK_SEL, align 4
  %218 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %219 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %218, i32 0, i32 8
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 8
  br label %222

222:                                              ; preds = %216, %211
  %223 = load i32, i32* %7, align 4
  %224 = and i32 %223, -268435456
  %225 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %226 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %225, i32 0, i32 8
  %227 = load i32, i32* %226, align 8
  %228 = or i32 %227, %224
  store i32 %228, i32* %226, align 8
  store i32 0, i32* %10, align 4
  br label %229

229:                                              ; preds = %364, %222
  %230 = load i32, i32* %10, align 4
  %231 = icmp slt i32 %230, 32
  br i1 %231, label %232, label %367

232:                                              ; preds = %229
  %233 = load i32, i32* %6, align 4
  %234 = add nsw i32 %233, 64
  %235 = load i32, i32* %10, align 4
  %236 = mul nsw i32 %235, 2
  %237 = add nsw i32 %234, %236
  %238 = call i32 @RBIOS16(i32 %237)
  store i32 %238, i32* %9, align 4
  %239 = load i32, i32* %9, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %232
  br label %367

242:                                              ; preds = %232
  %243 = load i32, i32* %9, align 4
  %244 = call i32 @RBIOS16(i32 %243)
  %245 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %246 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %245, i32 0, i32 9
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp eq i32 %244, %248
  br i1 %249, label %250, label %363

250:                                              ; preds = %242
  %251 = load i32, i32* %9, align 4
  %252 = add nsw i32 %251, 2
  %253 = call i32 @RBIOS16(i32 %252)
  %254 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %255 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %254, i32 0, i32 9
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = icmp eq i32 %253, %257
  br i1 %258, label %259, label %363

259:                                              ; preds = %250
  %260 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %261 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %260, i32 0, i32 9
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* %9, align 4
  %265 = add nsw i32 %264, 17
  %266 = call i32 @RBIOS16(i32 %265)
  %267 = load i32, i32* %9, align 4
  %268 = add nsw i32 %267, 19
  %269 = call i32 @RBIOS16(i32 %268)
  %270 = sub nsw i32 %266, %269
  %271 = mul nsw i32 %270, 8
  %272 = add nsw i32 %263, %271
  %273 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %274 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %273, i32 0, i32 9
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 2
  store i32 %272, i32* %275, align 8
  %276 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %277 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %276, i32 0, i32 9
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 %280, 21
  %282 = call i32 @RBIOS16(i32 %281)
  %283 = load i32, i32* %9, align 4
  %284 = add nsw i32 %283, 19
  %285 = call i32 @RBIOS16(i32 %284)
  %286 = sub nsw i32 %282, %285
  %287 = sub nsw i32 %286, 1
  %288 = mul nsw i32 %287, 8
  %289 = add nsw i32 %279, %288
  %290 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %291 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %290, i32 0, i32 9
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 3
  store i32 %289, i32* %292, align 4
  %293 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %294 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %293, i32 0, i32 9
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %9, align 4
  %298 = add nsw i32 %297, 23
  %299 = call i32 @RBIOS8(i32 %298)
  %300 = mul nsw i32 %299, 8
  %301 = add nsw i32 %296, %300
  %302 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %303 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %302, i32 0, i32 9
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 4
  store i32 %301, i32* %304, align 8
  %305 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %306 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %305, i32 0, i32 9
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %9, align 4
  %310 = add nsw i32 %309, 24
  %311 = call i32 @RBIOS16(i32 %310)
  %312 = load i32, i32* %9, align 4
  %313 = add nsw i32 %312, 26
  %314 = call i32 @RBIOS16(i32 %313)
  %315 = sub nsw i32 %311, %314
  %316 = add nsw i32 %308, %315
  %317 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %318 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %317, i32 0, i32 9
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 5
  store i32 %316, i32* %319, align 4
  %320 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %321 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %320, i32 0, i32 9
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %9, align 4
  %325 = add nsw i32 %324, 28
  %326 = call i32 @RBIOS16(i32 %325)
  %327 = and i32 %326, 2047
  %328 = load i32, i32* %9, align 4
  %329 = add nsw i32 %328, 26
  %330 = call i32 @RBIOS16(i32 %329)
  %331 = sub nsw i32 %327, %330
  %332 = add nsw i32 %323, %331
  %333 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %334 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %333, i32 0, i32 9
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 6
  store i32 %332, i32* %335, align 8
  %336 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %337 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %336, i32 0, i32 9
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 6
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* %9, align 4
  %341 = add nsw i32 %340, 28
  %342 = call i32 @RBIOS16(i32 %341)
  %343 = and i32 %342, 63488
  %344 = ashr i32 %343, 11
  %345 = add nsw i32 %339, %344
  %346 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %347 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %346, i32 0, i32 9
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 7
  store i32 %345, i32* %348, align 4
  %349 = load i32, i32* %9, align 4
  %350 = add nsw i32 %349, 9
  %351 = call i32 @RBIOS16(i32 %350)
  %352 = mul nsw i32 %351, 10
  %353 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %354 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %353, i32 0, i32 9
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 8
  store i32 %352, i32* %355, align 8
  %356 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %357 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %356, i32 0, i32 9
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 9
  store i64 0, i64* %358, align 8
  %359 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %360 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %359, i32 0, i32 9
  %361 = load i32, i32* @CRTC_INTERLACE_HALVE_V, align 4
  %362 = call i32 @drm_mode_set_crtcinfo(%struct.TYPE_4__* %360, i32 %361)
  br label %363

363:                                              ; preds = %259, %250, %242
  br label %364

364:                                              ; preds = %363
  %365 = load i32, i32* %10, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %10, align 4
  br label %229

367:                                              ; preds = %241, %229
  br label %372

368:                                              ; preds = %1
  %369 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %370 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %371 = call %struct.radeon_encoder_lvds* @radeon_legacy_get_lvds_info_from_regs(%struct.radeon_device* %370)
  store %struct.radeon_encoder_lvds* %371, %struct.radeon_encoder_lvds** %11, align 8
  br label %372

372:                                              ; preds = %368, %367
  %373 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %374 = icmp ne %struct.radeon_encoder_lvds* %373, null
  br i1 %374, label %375, label %382

375:                                              ; preds = %372
  %376 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %377 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %376, i32 0, i32 0
  %378 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %379 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %378, i32 0, i32 9
  %380 = bitcast %struct.TYPE_4__* %377 to i8*
  %381 = bitcast %struct.TYPE_4__* %379 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %380, i8* align 8 %381, i64 48, i1 false)
  br label %382

382:                                              ; preds = %375, %372
  %383 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  store %struct.radeon_encoder_lvds* %383, %struct.radeon_encoder_lvds** %2, align 8
  br label %384

384:                                              ; preds = %382, %29
  %385 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %2, align 8
  ret %struct.radeon_encoder_lvds* %385
}

declare dso_local i32 @combios_get_table_offset(%struct.drm_device*, i32) #1

declare dso_local %struct.radeon_encoder_lvds* @kzalloc(i32, i32) #1

declare dso_local i32 @RBIOS8(i32) #1

declare dso_local i32 @DRM_INFO(i8*, ...) #1

declare dso_local i32 @RBIOS16(i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @RBIOS32(i32) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.radeon_encoder_lvds* @radeon_legacy_get_lvds_info_from_regs(%struct.radeon_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
