; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_modes.c_drm_cvt_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_modes.c_drm_cvt_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32 }

@HV_FACTOR = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@CVT_CLOCK_STEP = common dso_local global i32 0, align 4
@CVT_C_PRIME = common dso_local global i32 0, align 4
@CVT_HSYNC_PERCENTAGE = common dso_local global i32 0, align 4
@CVT_H_GRANULARITY = common dso_local global i32 0, align 4
@CVT_MARGIN_PERCENTAGE = common dso_local global i32 0, align 4
@CVT_MIN_VSYNC_BP = common dso_local global i32 0, align 4
@CVT_MIN_V_BPORCH = common dso_local global i32 0, align 4
@CVT_MIN_V_PORCH = common dso_local global i32 0, align 4
@CVT_M_PRIME = common dso_local global i32 0, align 4
@CVT_RB_H_BLANK = common dso_local global i32 0, align 4
@CVT_RB_H_SYNC = common dso_local global i32 0, align 4
@CVT_RB_MIN_VBLANK = common dso_local global i32 0, align 4
@CVT_RB_VFPORCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.drm_display_mode*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %34 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %35 = call %struct.drm_display_mode* @drm_mode_create(%struct.drm_device* %34)
  store %struct.drm_display_mode* %35, %struct.drm_display_mode** %16, align 8
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %37 = icmp ne %struct.drm_display_mode* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %7
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %8, align 8
  br label %411

39:                                               ; preds = %7
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i32 60, i32* %12, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  %48 = mul nsw i32 %47, 2
  store i32 %48, i32* %17, align 4
  br label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %17, align 4
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = srem i32 %53, 8
  %55 = sub nsw i32 %52, %54
  store i32 %55, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load i32, i32* %19, align 4
  %60 = mul nsw i32 %59, 18
  %61 = sdiv i32 %60, 1000
  store i32 %61, i32* %20, align 4
  %62 = load i32, i32* %20, align 4
  %63 = srem i32 %62, 8
  %64 = load i32, i32* %20, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %20, align 4
  br label %66

66:                                               ; preds = %58, %51
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %20, align 4
  %69 = mul nsw i32 2, %68
  %70 = add nsw i32 %67, %69
  %71 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %72 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* %11, align 4
  %77 = sdiv i32 %76, 2
  store i32 %77, i32* %21, align 4
  br label %80

78:                                               ; preds = %66
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %21, align 4
  br label %80

80:                                               ; preds = %78, %75
  store i32 0, i32* %22, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, i32* %21, align 4
  %85 = mul nsw i32 %84, 18
  %86 = sdiv i32 %85, 1000
  store i32 %86, i32* %22, align 4
  br label %87

87:                                               ; preds = %83, %80
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %22, align 4
  %90 = mul nsw i32 2, %89
  %91 = add nsw i32 %88, %90
  %92 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %93 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  store i32 1, i32* %24, align 4
  br label %98

97:                                               ; preds = %87
  store i32 0, i32* %24, align 4
  br label %98

98:                                               ; preds = %97, %96
  %99 = load i32, i32* %11, align 4
  %100 = srem i32 %99, 3
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %11, align 4
  %104 = mul nsw i32 %103, 4
  %105 = sdiv i32 %104, 3
  %106 = load i32, i32* %10, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store i32 4, i32* %23, align 4
  br label %158

109:                                              ; preds = %102, %98
  %110 = load i32, i32* %11, align 4
  %111 = srem i32 %110, 9
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %11, align 4
  %115 = mul nsw i32 %114, 16
  %116 = sdiv i32 %115, 9
  %117 = load i32, i32* %10, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  store i32 5, i32* %23, align 4
  br label %157

120:                                              ; preds = %113, %109
  %121 = load i32, i32* %11, align 4
  %122 = srem i32 %121, 10
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %131, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %11, align 4
  %126 = mul nsw i32 %125, 16
  %127 = sdiv i32 %126, 10
  %128 = load i32, i32* %10, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  store i32 6, i32* %23, align 4
  br label %156

131:                                              ; preds = %124, %120
  %132 = load i32, i32* %11, align 4
  %133 = srem i32 %132, 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %11, align 4
  %137 = mul nsw i32 %136, 5
  %138 = sdiv i32 %137, 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i32 7, i32* %23, align 4
  br label %155

142:                                              ; preds = %135, %131
  %143 = load i32, i32* %11, align 4
  %144 = srem i32 %143, 9
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %11, align 4
  %148 = mul nsw i32 %147, 15
  %149 = sdiv i32 %148, 9
  %150 = load i32, i32* %10, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  store i32 7, i32* %23, align 4
  br label %154

153:                                              ; preds = %146, %142
  store i32 10, i32* %23, align 4
  br label %154

154:                                              ; preds = %153, %152
  br label %155

155:                                              ; preds = %154, %141
  br label %156

156:                                              ; preds = %155, %130
  br label %157

157:                                              ; preds = %156, %119
  br label %158

158:                                              ; preds = %157, %108
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %286, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* @HV_FACTOR, align 4
  %163 = mul nsw i32 %162, 1000000
  %164 = load i32, i32* @HV_FACTOR, align 4
  %165 = mul nsw i32 550, %164
  %166 = load i32, i32* %17, align 4
  %167 = mul i32 %165, %166
  %168 = sub i32 %163, %167
  store i32 %168, i32* %25, align 4
  %169 = load i32, i32* %21, align 4
  %170 = load i32, i32* %22, align 4
  %171 = mul nsw i32 2, %170
  %172 = add nsw i32 %169, %171
  %173 = add nsw i32 %172, 3
  %174 = mul nsw i32 %173, 2
  %175 = load i32, i32* %24, align 4
  %176 = add nsw i32 %174, %175
  store i32 %176, i32* %26, align 4
  %177 = load i32, i32* %25, align 4
  %178 = mul nsw i32 %177, 2
  %179 = load i32, i32* %26, align 4
  %180 = load i32, i32* %17, align 4
  %181 = mul i32 %179, %180
  %182 = udiv i32 %178, %181
  store i32 %182, i32* %18, align 4
  %183 = load i32, i32* @HV_FACTOR, align 4
  %184 = mul nsw i32 550, %183
  %185 = load i32, i32* %18, align 4
  %186 = udiv i32 %184, %185
  %187 = add i32 %186, 1
  store i32 %187, i32* %25, align 4
  %188 = load i32, i32* %25, align 4
  %189 = load i32, i32* %23, align 4
  %190 = add nsw i32 %189, 3
  %191 = icmp slt i32 %188, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %161
  %193 = load i32, i32* %23, align 4
  %194 = add nsw i32 %193, 3
  store i32 %194, i32* %28, align 4
  br label %197

195:                                              ; preds = %161
  %196 = load i32, i32* %25, align 4
  store i32 %196, i32* %28, align 4
  br label %197

197:                                              ; preds = %195, %192
  %198 = load i32, i32* %28, align 4
  %199 = load i32, i32* %23, align 4
  %200 = sub nsw i32 %198, %199
  store i32 %200, i32* %29, align 4
  %201 = load i32, i32* %21, align 4
  %202 = load i32, i32* %22, align 4
  %203 = mul nsw i32 2, %202
  %204 = add nsw i32 %201, %203
  %205 = load i32, i32* %28, align 4
  %206 = add nsw i32 %204, %205
  %207 = add nsw i32 %206, 3
  %208 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %209 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* @HV_FACTOR, align 4
  %211 = mul nsw i32 30, %210
  %212 = load i32, i32* %18, align 4
  %213 = mul i32 300, %212
  %214 = udiv i32 %213, 1000
  %215 = sub i32 %211, %214
  store i32 %215, i32* %27, align 4
  %216 = load i32, i32* %27, align 4
  %217 = load i32, i32* @HV_FACTOR, align 4
  %218 = mul nsw i32 20, %217
  %219 = icmp ult i32 %216, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %197
  %221 = load i32, i32* @HV_FACTOR, align 4
  %222 = mul nsw i32 20, %221
  store i32 %222, i32* %27, align 4
  br label %223

223:                                              ; preds = %220, %197
  %224 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %225 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %27, align 4
  %228 = mul i32 %226, %227
  %229 = load i32, i32* @HV_FACTOR, align 4
  %230 = mul nsw i32 100, %229
  %231 = load i32, i32* %27, align 4
  %232 = sub i32 %230, %231
  %233 = udiv i32 %228, %232
  store i32 %233, i32* %30, align 4
  %234 = load i32, i32* %30, align 4
  %235 = srem i32 %234, 16
  %236 = load i32, i32* %30, align 4
  %237 = sub nsw i32 %236, %235
  store i32 %237, i32* %30, align 4
  %238 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %239 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %30, align 4
  %242 = add nsw i32 %240, %241
  %243 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %244 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %243, i32 0, i32 3
  store i32 %242, i32* %244, align 4
  %245 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %246 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %30, align 4
  %249 = sdiv i32 %248, 2
  %250 = add nsw i32 %247, %249
  %251 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %252 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %251, i32 0, i32 4
  store i32 %250, i32* %252, align 4
  %253 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %254 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %257 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = mul nsw i32 %258, 8
  %260 = sdiv i32 %259, 100
  %261 = sub nsw i32 %255, %260
  %262 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %263 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %262, i32 0, i32 5
  store i32 %261, i32* %263, align 4
  %264 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %265 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  %267 = srem i32 %266, 8
  %268 = sub nsw i32 8, %267
  %269 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %270 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, %268
  store i32 %272, i32* %270, align 4
  %273 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %274 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 3
  %277 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %278 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %277, i32 0, i32 6
  store i32 %276, i32* %278, align 4
  %279 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %280 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %23, align 4
  %283 = add nsw i32 %281, %282
  %284 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %285 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %284, i32 0, i32 7
  store i32 %283, i32* %285, align 4
  br label %357

286:                                              ; preds = %158
  %287 = load i32, i32* @HV_FACTOR, align 4
  %288 = mul nsw i32 %287, 1000000
  %289 = load i32, i32* @HV_FACTOR, align 4
  %290 = mul nsw i32 460, %289
  %291 = load i32, i32* %17, align 4
  %292 = mul i32 %290, %291
  %293 = sub i32 %288, %292
  store i32 %293, i32* %32, align 4
  %294 = load i32, i32* %21, align 4
  %295 = load i32, i32* %22, align 4
  %296 = mul nsw i32 2, %295
  %297 = add nsw i32 %294, %296
  store i32 %297, i32* %33, align 4
  %298 = load i32, i32* %32, align 4
  %299 = load i32, i32* %33, align 4
  %300 = load i32, i32* %17, align 4
  %301 = mul i32 %299, %300
  %302 = udiv i32 %298, %301
  store i32 %302, i32* %18, align 4
  %303 = load i32, i32* @HV_FACTOR, align 4
  %304 = mul nsw i32 460, %303
  %305 = load i32, i32* %18, align 4
  %306 = udiv i32 %304, %305
  %307 = add i32 %306, 1
  store i32 %307, i32* %31, align 4
  %308 = load i32, i32* %31, align 4
  %309 = load i32, i32* %23, align 4
  %310 = add nsw i32 3, %309
  %311 = add nsw i32 %310, 6
  %312 = icmp slt i32 %308, %311
  br i1 %312, label %313, label %317

313:                                              ; preds = %286
  %314 = load i32, i32* %23, align 4
  %315 = add nsw i32 3, %314
  %316 = add nsw i32 %315, 6
  store i32 %316, i32* %31, align 4
  br label %317

317:                                              ; preds = %313, %286
  %318 = load i32, i32* %21, align 4
  %319 = load i32, i32* %22, align 4
  %320 = mul nsw i32 2, %319
  %321 = add nsw i32 %318, %320
  %322 = load i32, i32* %31, align 4
  %323 = add nsw i32 %321, %322
  %324 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %325 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %324, i32 0, i32 2
  store i32 %323, i32* %325, align 4
  %326 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %327 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = add nsw i32 %328, 160
  %330 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %331 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %330, i32 0, i32 3
  store i32 %329, i32* %331, align 4
  %332 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %333 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = add nsw i32 %334, 80
  %336 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %337 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %336, i32 0, i32 4
  store i32 %335, i32* %337, align 4
  %338 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %339 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 4
  %341 = sub nsw i32 %340, 32
  %342 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %343 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %342, i32 0, i32 5
  store i32 %341, i32* %343, align 4
  %344 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %345 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = add nsw i32 %346, 3
  %348 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %349 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %348, i32 0, i32 6
  store i32 %347, i32* %349, align 4
  %350 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %351 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %350, i32 0, i32 6
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %23, align 4
  %354 = add nsw i32 %352, %353
  %355 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %356 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %355, i32 0, i32 7
  store i32 %354, i32* %356, align 4
  br label %357

357:                                              ; preds = %317, %223
  %358 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %359 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @HV_FACTOR, align 4
  %362 = mul nsw i32 %360, %361
  %363 = mul nsw i32 %362, 1000
  %364 = load i32, i32* %18, align 4
  %365 = udiv i32 %363, %364
  %366 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %367 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %366, i32 0, i32 8
  store i32 %365, i32* %367, align 4
  %368 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %369 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %368, i32 0, i32 8
  %370 = load i32, i32* %369, align 4
  %371 = srem i32 %370, 250
  %372 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %373 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %372, i32 0, i32 8
  %374 = load i32, i32* %373, align 4
  %375 = sub nsw i32 %374, %371
  store i32 %375, i32* %373, align 4
  %376 = load i32, i32* %14, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %388

378:                                              ; preds = %357
  %379 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %380 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 4
  %382 = mul nsw i32 %381, 2
  store i32 %382, i32* %380, align 4
  %383 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %384 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %385 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %384, i32 0, i32 9
  %386 = load i32, i32* %385, align 4
  %387 = or i32 %386, %383
  store i32 %387, i32* %385, align 4
  br label %388

388:                                              ; preds = %378, %357
  %389 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %390 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %389)
  %391 = load i32, i32* %13, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %401

393:                                              ; preds = %388
  %394 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %395 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %396 = or i32 %394, %395
  %397 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %398 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %397, i32 0, i32 9
  %399 = load i32, i32* %398, align 4
  %400 = or i32 %399, %396
  store i32 %400, i32* %398, align 4
  br label %409

401:                                              ; preds = %388
  %402 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %403 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %404 = or i32 %402, %403
  %405 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %406 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %405, i32 0, i32 9
  %407 = load i32, i32* %406, align 4
  %408 = or i32 %407, %404
  store i32 %408, i32* %406, align 4
  br label %409

409:                                              ; preds = %401, %393
  %410 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  store %struct.drm_display_mode* %410, %struct.drm_display_mode** %8, align 8
  br label %411

411:                                              ; preds = %409, %38
  %412 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  ret %struct.drm_display_mode* %412
}

declare dso_local %struct.drm_display_mode* @drm_mode_create(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
