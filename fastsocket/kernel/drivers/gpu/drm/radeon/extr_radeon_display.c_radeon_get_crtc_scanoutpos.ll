; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_get_crtc_scanoutpos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_get_crtc_scanoutpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@EVERGREEN_CRTC_V_BLANK_START_END = common dso_local global i64 0, align 8
@EVERGREEN_CRTC0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC_STATUS_POSITION = common dso_local global i64 0, align 8
@DRM_SCANOUTPOS_VALID = common dso_local global i32 0, align 4
@EVERGREEN_CRTC1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC2_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC3_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC4_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC5_REGISTER_OFFSET = common dso_local global i64 0, align 8
@AVIVO_D1CRTC_V_BLANK_START_END = common dso_local global i64 0, align 8
@AVIVO_D1CRTC_STATUS_POSITION = common dso_local global i64 0, align 8
@AVIVO_D2CRTC_V_BLANK_START_END = common dso_local global i64 0, align 8
@AVIVO_D2CRTC_STATUS_POSITION = common dso_local global i64 0, align 8
@RADEON_CRTC_V_TOTAL_DISP = common dso_local global i64 0, align 8
@RADEON_CRTC_V_DISP = common dso_local global i32 0, align 4
@RADEON_CRTC_V_DISP_SHIFT = common dso_local global i32 0, align 4
@RADEON_CRTC_VLINE_CRNT_VLINE = common dso_local global i64 0, align 8
@RADEON_CRTC_V_TOTAL = common dso_local global i32 0, align 4
@RADEON_CRTC_STATUS = common dso_local global i64 0, align 8
@RADEON_CRTC2_V_TOTAL_DISP = common dso_local global i64 0, align 8
@RADEON_CRTC2_VLINE_CRNT_VLINE = common dso_local global i64 0, align 8
@RADEON_CRTC2_STATUS = common dso_local global i64 0, align 8
@DRM_SCANOUTPOS_ACCURATE = common dso_local global i32 0, align 4
@DRM_SCANOUTPOS_INVBL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_get_crtc_scanoutpos(%struct.drm_device* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.radeon_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load %struct.radeon_device*, %struct.radeon_device** %19, align 8
  store %struct.radeon_device* %20, %struct.radeon_device** %17, align 8
  %21 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  %22 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %115

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load i64, i64* @EVERGREEN_CRTC_V_BLANK_START_END, align 8
  %29 = load i64, i64* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @RREG32(i64 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i64, i64* @EVERGREEN_CRTC_STATUS_POSITION, align 8
  %33 = load i64, i64* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @RREG32(i64 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %37 = load i32, i32* %15, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %15, align 4
  br label %39

39:                                               ; preds = %27, %24
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i64, i64* @EVERGREEN_CRTC_V_BLANK_START_END, align 8
  %44 = load i64, i64* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @RREG32(i64 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i64, i64* @EVERGREEN_CRTC_STATUS_POSITION, align 8
  %48 = load i64, i64* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @RREG32(i64 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %52 = load i32, i32* %15, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %15, align 4
  br label %54

54:                                               ; preds = %42, %39
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load i64, i64* @EVERGREEN_CRTC_V_BLANK_START_END, align 8
  %59 = load i64, i64* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @RREG32(i64 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i64, i64* @EVERGREEN_CRTC_STATUS_POSITION, align 8
  %63 = load i64, i64* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @RREG32(i64 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %67 = load i32, i32* %15, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %15, align 4
  br label %69

69:                                               ; preds = %57, %54
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load i64, i64* @EVERGREEN_CRTC_V_BLANK_START_END, align 8
  %74 = load i64, i64* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @RREG32(i64 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i64, i64* @EVERGREEN_CRTC_STATUS_POSITION, align 8
  %78 = load i64, i64* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @RREG32(i64 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %82 = load i32, i32* %15, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %72, %69
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %85, 4
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load i64, i64* @EVERGREEN_CRTC_V_BLANK_START_END, align 8
  %89 = load i64, i64* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @RREG32(i64 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i64, i64* @EVERGREEN_CRTC_STATUS_POSITION, align 8
  %93 = load i64, i64* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @RREG32(i64 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %97 = load i32, i32* %15, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %87, %84
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %100, 5
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = load i64, i64* @EVERGREEN_CRTC_V_BLANK_START_END, align 8
  %104 = load i64, i64* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @RREG32(i64 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i64, i64* @EVERGREEN_CRTC_STATUS_POSITION, align 8
  %108 = load i64, i64* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @RREG32(i64 %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %112 = load i32, i32* %15, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %15, align 4
  br label %114

114:                                              ; preds = %102, %99
  br label %194

115:                                              ; preds = %4
  %116 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  %117 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %142

119:                                              ; preds = %115
  %120 = load i32, i32* %6, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %119
  %123 = load i64, i64* @AVIVO_D1CRTC_V_BLANK_START_END, align 8
  %124 = call i32 @RREG32(i64 %123)
  store i32 %124, i32* %10, align 4
  %125 = load i64, i64* @AVIVO_D1CRTC_STATUS_POSITION, align 8
  %126 = call i32 @RREG32(i64 %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %128 = load i32, i32* %15, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %15, align 4
  br label %130

130:                                              ; preds = %122, %119
  %131 = load i32, i32* %6, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load i64, i64* @AVIVO_D2CRTC_V_BLANK_START_END, align 8
  %135 = call i32 @RREG32(i64 %134)
  store i32 %135, i32* %10, align 4
  %136 = load i64, i64* @AVIVO_D2CRTC_STATUS_POSITION, align 8
  %137 = call i32 @RREG32(i64 %136)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %139 = load i32, i32* %15, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %15, align 4
  br label %141

141:                                              ; preds = %133, %130
  br label %193

142:                                              ; preds = %115
  %143 = load i32, i32* %6, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %167

145:                                              ; preds = %142
  %146 = load i64, i64* @RADEON_CRTC_V_TOTAL_DISP, align 8
  %147 = call i32 @RREG32(i64 %146)
  %148 = load i32, i32* @RADEON_CRTC_V_DISP, align 4
  %149 = and i32 %147, %148
  %150 = load i32, i32* @RADEON_CRTC_V_DISP_SHIFT, align 4
  %151 = ashr i32 %149, %150
  store i32 %151, i32* %10, align 4
  %152 = load i64, i64* @RADEON_CRTC_VLINE_CRNT_VLINE, align 8
  %153 = call i32 @RREG32(i64 %152)
  %154 = ashr i32 %153, 16
  %155 = load i32, i32* @RADEON_CRTC_V_TOTAL, align 4
  %156 = and i32 %154, %155
  store i32 %156, i32* %11, align 4
  %157 = load i64, i64* @RADEON_CRTC_STATUS, align 8
  %158 = call i32 @RREG32(i64 %157)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = and i32 %159, 1
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %145
  store i32 0, i32* %16, align 4
  br label %163

163:                                              ; preds = %162, %145
  %164 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %165 = load i32, i32* %15, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %15, align 4
  br label %167

167:                                              ; preds = %163, %142
  %168 = load i32, i32* %6, align 4
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %192

170:                                              ; preds = %167
  %171 = load i64, i64* @RADEON_CRTC2_V_TOTAL_DISP, align 8
  %172 = call i32 @RREG32(i64 %171)
  %173 = load i32, i32* @RADEON_CRTC_V_DISP, align 4
  %174 = and i32 %172, %173
  %175 = load i32, i32* @RADEON_CRTC_V_DISP_SHIFT, align 4
  %176 = ashr i32 %174, %175
  store i32 %176, i32* %10, align 4
  %177 = load i64, i64* @RADEON_CRTC2_VLINE_CRNT_VLINE, align 8
  %178 = call i32 @RREG32(i64 %177)
  %179 = ashr i32 %178, 16
  %180 = load i32, i32* @RADEON_CRTC_V_TOTAL, align 4
  %181 = and i32 %179, %180
  store i32 %181, i32* %11, align 4
  %182 = load i64, i64* @RADEON_CRTC2_STATUS, align 8
  %183 = call i32 @RREG32(i64 %182)
  store i32 %183, i32* %9, align 4
  %184 = load i32, i32* %9, align 4
  %185 = and i32 %184, 1
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %170
  store i32 0, i32* %16, align 4
  br label %188

188:                                              ; preds = %187, %170
  %189 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %190 = load i32, i32* %15, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %15, align 4
  br label %192

192:                                              ; preds = %188, %167
  br label %193

193:                                              ; preds = %192, %141
  br label %194

194:                                              ; preds = %193, %114
  %195 = load i32, i32* %11, align 4
  %196 = and i32 %195, 8191
  %197 = load i32*, i32** %7, align 8
  store i32 %196, i32* %197, align 4
  %198 = load i32, i32* %11, align 4
  %199 = ashr i32 %198, 16
  %200 = and i32 %199, 8191
  %201 = load i32*, i32** %8, align 8
  store i32 %200, i32* %201, align 4
  %202 = load i32, i32* %10, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %194
  %205 = load i32, i32* @DRM_SCANOUTPOS_ACCURATE, align 4
  %206 = load i32, i32* %15, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %15, align 4
  %208 = load i32, i32* %10, align 4
  %209 = and i32 %208, 8191
  store i32 %209, i32* %12, align 4
  %210 = load i32, i32* %10, align 4
  %211 = ashr i32 %210, 16
  %212 = and i32 %211, 8191
  store i32 %212, i32* %13, align 4
  br label %226

213:                                              ; preds = %194
  %214 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  %215 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %217, i64 %219
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %226

226:                                              ; preds = %213, %204
  %227 = load i32*, i32** %7, align 8
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %12, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %237

231:                                              ; preds = %226
  %232 = load i32*, i32** %7, align 8
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %13, align 4
  %235 = icmp sge i32 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %231
  store i32 0, i32* %16, align 4
  br label %237

237:                                              ; preds = %236, %231, %226
  %238 = load i32, i32* %16, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %263

240:                                              ; preds = %237
  %241 = load i32*, i32** %7, align 8
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %12, align 4
  %244 = icmp sge i32 %242, %243
  br i1 %244, label %245, label %263

245:                                              ; preds = %240
  %246 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  %247 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %248, align 8
  %250 = load i32, i32* %6, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %249, i64 %251
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  store i32 %257, i32* %14, align 4
  %258 = load i32*, i32** %7, align 8
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %14, align 4
  %261 = sub nsw i32 %259, %260
  %262 = load i32*, i32** %7, align 8
  store i32 %261, i32* %262, align 4
  br label %263

263:                                              ; preds = %245, %240, %237
  %264 = load i32*, i32** %7, align 8
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %13, align 4
  %267 = sub nsw i32 %265, %266
  %268 = load i32*, i32** %7, align 8
  store i32 %267, i32* %268, align 4
  %269 = load i32, i32* %16, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %263
  %272 = load i32, i32* @DRM_SCANOUTPOS_INVBL, align 4
  %273 = load i32, i32* %15, align 4
  %274 = or i32 %273, %272
  store i32 %274, i32* %15, align 4
  br label %275

275:                                              ; preds = %271, %263
  %276 = load i32, i32* %15, align 4
  ret i32 %276
}

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
