; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_avivo_crtc_do_set_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_avivo_crtc_do_set_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_framebuffer*, %struct.TYPE_2__, %struct.drm_device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64 }
%struct.drm_framebuffer = type { i32, i32, i32, i32* }
%struct.radeon_crtc = type { i64, i64 }
%struct.radeon_framebuffer = type { %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { i32 }

@R600_D1GRPH_SWAP_ENDIAN_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"No FB bound\0A\00", align 1
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_CONTROL_DEPTH_8BPP = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_CONTROL_8BPP_INDEXED = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_CONTROL_DEPTH_16BPP = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_CONTROL_16BPP_ARGB1555 = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_CONTROL_16BPP_RGB565 = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_CONTROL_DEPTH_32BPP = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_CONTROL_32BPP_ARGB8888 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unsupported screen depth %d\0A\00", align 1
@CHIP_R600 = common dso_local global i64 0, align 8
@RADEON_TILING_MACRO = common dso_local global i32 0, align 4
@R600_D1GRPH_ARRAY_MODE_2D_TILED_THIN1 = common dso_local global i32 0, align 4
@RADEON_TILING_MICRO = common dso_local global i32 0, align 4
@R600_D1GRPH_ARRAY_MODE_1D_TILED_THIN1 = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_MACRO_ADDRESS_MODE = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_TILED = common dso_local global i32 0, align 4
@AVIVO_D1VGA_CONTROL = common dso_local global i64 0, align 8
@AVIVO_D2VGA_CONTROL = common dso_local global i64 0, align 8
@CHIP_RV770 = common dso_local global i64 0, align 8
@R700_D2GRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@R700_D2GRPH_SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@R700_D1GRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@R700_D1GRPH_SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_PRIMARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_SECONDARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_CONTROL = common dso_local global i64 0, align 8
@R600_D1GRPH_SWAP_CONTROL = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_SURFACE_OFFSET_X = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_SURFACE_OFFSET_Y = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_X_START = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_Y_START = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_X_END = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_Y_END = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_PITCH = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_ENABLE = common dso_local global i64 0, align 8
@AVIVO_D1MODE_DESKTOP_HEIGHT = common dso_local global i64 0, align 8
@AVIVO_D1MODE_VIEWPORT_START = common dso_local global i64 0, align 8
@AVIVO_D1MODE_VIEWPORT_SIZE = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_FLIP_CONTROL = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_SURFACE_UPDATE_H_RETRACE_EN = common dso_local global i32 0, align 4
@AVIVO_D1MODE_MASTER_UPDATE_MODE = common dso_local global i64 0, align 8
@R600_D1GRPH_SWAP_ENDIAN_16BIT = common dso_local global i32 0, align 4
@R600_D1GRPH_SWAP_ENDIAN_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32)* @avivo_crtc_do_set_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avivo_crtc_do_set_base(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.radeon_crtc*, align 8
  %13 = alloca %struct.drm_device*, align 8
  %14 = alloca %struct.radeon_device*, align 8
  %15 = alloca %struct.radeon_framebuffer*, align 8
  %16 = alloca %struct.drm_gem_object*, align 8
  %17 = alloca %struct.radeon_bo*, align 8
  %18 = alloca %struct.drm_framebuffer*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %29 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %28)
  store %struct.radeon_crtc* %29, %struct.radeon_crtc** %12, align 8
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %31 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %30, i32 0, i32 2
  %32 = load %struct.drm_device*, %struct.drm_device** %31, align 8
  store %struct.drm_device* %32, %struct.drm_device** %13, align 8
  %33 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 0
  %35 = load %struct.radeon_device*, %struct.radeon_device** %34, align 8
  store %struct.radeon_device* %35, %struct.radeon_device** %14, align 8
  %36 = load i32, i32* @R600_D1GRPH_SWAP_ENDIAN_NONE, align 4
  store i32 %36, i32* %23, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %5
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %41 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %40, i32 0, i32 0
  %42 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %41, align 8
  %43 = icmp ne %struct.drm_framebuffer* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %418

46:                                               ; preds = %39, %5
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %51 = call %struct.radeon_framebuffer* @to_radeon_framebuffer(%struct.drm_framebuffer* %50)
  store %struct.radeon_framebuffer* %51, %struct.radeon_framebuffer** %15, align 8
  %52 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_framebuffer* %52, %struct.drm_framebuffer** %18, align 8
  br label %61

53:                                               ; preds = %46
  %54 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %55 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %54, i32 0, i32 0
  %56 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %55, align 8
  %57 = call %struct.radeon_framebuffer* @to_radeon_framebuffer(%struct.drm_framebuffer* %56)
  store %struct.radeon_framebuffer* %57, %struct.radeon_framebuffer** %15, align 8
  %58 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %59 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %58, i32 0, i32 0
  %60 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %59, align 8
  store %struct.drm_framebuffer* %60, %struct.drm_framebuffer** %18, align 8
  br label %61

61:                                               ; preds = %53, %49
  %62 = load %struct.radeon_framebuffer*, %struct.radeon_framebuffer** %15, align 8
  %63 = getelementptr inbounds %struct.radeon_framebuffer, %struct.radeon_framebuffer* %62, i32 0, i32 0
  %64 = load %struct.drm_gem_object*, %struct.drm_gem_object** %63, align 8
  store %struct.drm_gem_object* %64, %struct.drm_gem_object** %16, align 8
  %65 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  %66 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %65)
  store %struct.radeon_bo* %66, %struct.radeon_bo** %17, align 8
  %67 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %68 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %67, i32 0)
  store i32 %68, i32* %27, align 4
  %69 = load i32, i32* %27, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = load i32, i32* %27, align 4
  store i32 %75, i32* %6, align 4
  br label %418

76:                                               ; preds = %61
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %81 = call i64 @radeon_bo_gpu_offset(%struct.radeon_bo* %80)
  store i64 %81, i64* %19, align 8
  br label %97

82:                                               ; preds = %76
  %83 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %84 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %85 = call i32 @radeon_bo_pin(%struct.radeon_bo* %83, i32 %84, i64* %19)
  store i32 %85, i32* %27, align 4
  %86 = load i32, i32* %27, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %93 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  br label %418

96:                                               ; preds = %82
  br label %97

97:                                               ; preds = %96, %79
  %98 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %99 = call i32 @radeon_bo_get_tiling_flags(%struct.radeon_bo* %98, i32* %22, i32* null)
  %100 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %101 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %100)
  %102 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %18, align 8
  %103 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  switch i32 %104, label %121 [
    i32 8, label %105
    i32 15, label %109
    i32 16, label %113
    i32 24, label %117
    i32 32, label %117
  ]

105:                                              ; preds = %97
  %106 = load i32, i32* @AVIVO_D1GRPH_CONTROL_DEPTH_8BPP, align 4
  %107 = load i32, i32* @AVIVO_D1GRPH_CONTROL_8BPP_INDEXED, align 4
  %108 = or i32 %106, %107
  store i32 %108, i32* %20, align 4
  br label %128

109:                                              ; preds = %97
  %110 = load i32, i32* @AVIVO_D1GRPH_CONTROL_DEPTH_16BPP, align 4
  %111 = load i32, i32* @AVIVO_D1GRPH_CONTROL_16BPP_ARGB1555, align 4
  %112 = or i32 %110, %111
  store i32 %112, i32* %20, align 4
  br label %128

113:                                              ; preds = %97
  %114 = load i32, i32* @AVIVO_D1GRPH_CONTROL_DEPTH_16BPP, align 4
  %115 = load i32, i32* @AVIVO_D1GRPH_CONTROL_16BPP_RGB565, align 4
  %116 = or i32 %114, %115
  store i32 %116, i32* %20, align 4
  br label %128

117:                                              ; preds = %97, %97
  %118 = load i32, i32* @AVIVO_D1GRPH_CONTROL_DEPTH_32BPP, align 4
  %119 = load i32, i32* @AVIVO_D1GRPH_CONTROL_32BPP_ARGB8888, align 4
  %120 = or i32 %118, %119
  store i32 %120, i32* %20, align 4
  br label %128

121:                                              ; preds = %97
  %122 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %18, align 8
  %123 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %6, align 4
  br label %418

128:                                              ; preds = %117, %113, %109, %105
  %129 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %130 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @CHIP_R600, align 8
  %133 = icmp sge i64 %131, %132
  br i1 %133, label %134, label %154

134:                                              ; preds = %128
  %135 = load i32, i32* %22, align 4
  %136 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load i32, i32* @R600_D1GRPH_ARRAY_MODE_2D_TILED_THIN1, align 4
  %141 = load i32, i32* %20, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %20, align 4
  br label %153

143:                                              ; preds = %134
  %144 = load i32, i32* %22, align 4
  %145 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* @R600_D1GRPH_ARRAY_MODE_1D_TILED_THIN1, align 4
  %150 = load i32, i32* %20, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %20, align 4
  br label %152

152:                                              ; preds = %148, %143
  br label %153

153:                                              ; preds = %152, %139
  br label %173

154:                                              ; preds = %128
  %155 = load i32, i32* %22, align 4
  %156 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load i32, i32* @AVIVO_D1GRPH_MACRO_ADDRESS_MODE, align 4
  %161 = load i32, i32* %20, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %20, align 4
  br label %163

163:                                              ; preds = %159, %154
  %164 = load i32, i32* %22, align 4
  %165 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load i32, i32* @AVIVO_D1GRPH_TILED, align 4
  %170 = load i32, i32* %20, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %20, align 4
  br label %172

172:                                              ; preds = %168, %163
  br label %173

173:                                              ; preds = %172, %153
  %174 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %175 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load i64, i64* @AVIVO_D1VGA_CONTROL, align 8
  %180 = call i32 @WREG32(i64 %179, i32 0)
  br label %184

181:                                              ; preds = %173
  %182 = load i64, i64* @AVIVO_D2VGA_CONTROL, align 8
  %183 = call i32 @WREG32(i64 %182, i32 0)
  br label %184

184:                                              ; preds = %181, %178
  %185 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %186 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @CHIP_RV770, align 8
  %189 = icmp sge i64 %187, %188
  br i1 %189, label %190, label %214

190:                                              ; preds = %184
  %191 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %192 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %190
  %196 = load i64, i64* @R700_D2GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %197 = load i64, i64* %19, align 8
  %198 = call i32 @upper_32_bits(i64 %197)
  %199 = call i32 @WREG32(i64 %196, i32 %198)
  %200 = load i64, i64* @R700_D2GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, align 8
  %201 = load i64, i64* %19, align 8
  %202 = call i32 @upper_32_bits(i64 %201)
  %203 = call i32 @WREG32(i64 %200, i32 %202)
  br label %213

204:                                              ; preds = %190
  %205 = load i64, i64* @R700_D1GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %206 = load i64, i64* %19, align 8
  %207 = call i32 @upper_32_bits(i64 %206)
  %208 = call i32 @WREG32(i64 %205, i32 %207)
  %209 = load i64, i64* @R700_D1GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, align 8
  %210 = load i64, i64* %19, align 8
  %211 = call i32 @upper_32_bits(i64 %210)
  %212 = call i32 @WREG32(i64 %209, i32 %211)
  br label %213

213:                                              ; preds = %204, %195
  br label %214

214:                                              ; preds = %213, %184
  %215 = load i64, i64* @AVIVO_D1GRPH_PRIMARY_SURFACE_ADDRESS, align 8
  %216 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %217 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %215, %218
  %220 = load i64, i64* %19, align 8
  %221 = trunc i64 %220 to i32
  %222 = call i32 @WREG32(i64 %219, i32 %221)
  %223 = load i64, i64* @AVIVO_D1GRPH_SECONDARY_SURFACE_ADDRESS, align 8
  %224 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %225 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %223, %226
  %228 = load i64, i64* %19, align 8
  %229 = trunc i64 %228 to i32
  %230 = call i32 @WREG32(i64 %227, i32 %229)
  %231 = load i64, i64* @AVIVO_D1GRPH_CONTROL, align 8
  %232 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %233 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = add nsw i64 %231, %234
  %236 = load i32, i32* %20, align 4
  %237 = call i32 @WREG32(i64 %235, i32 %236)
  %238 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %239 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @CHIP_R600, align 8
  %242 = icmp sge i64 %240, %241
  br i1 %242, label %243, label %251

243:                                              ; preds = %214
  %244 = load i64, i64* @R600_D1GRPH_SWAP_CONTROL, align 8
  %245 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %246 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = add nsw i64 %244, %247
  %249 = load i32, i32* %23, align 4
  %250 = call i32 @WREG32(i64 %248, i32 %249)
  br label %251

251:                                              ; preds = %243, %214
  %252 = load i64, i64* @AVIVO_D1GRPH_SURFACE_OFFSET_X, align 8
  %253 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %254 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %252, %255
  %257 = call i32 @WREG32(i64 %256, i32 0)
  %258 = load i64, i64* @AVIVO_D1GRPH_SURFACE_OFFSET_Y, align 8
  %259 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %260 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = add nsw i64 %258, %261
  %263 = call i32 @WREG32(i64 %262, i32 0)
  %264 = load i64, i64* @AVIVO_D1GRPH_X_START, align 8
  %265 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %266 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = add nsw i64 %264, %267
  %269 = call i32 @WREG32(i64 %268, i32 0)
  %270 = load i64, i64* @AVIVO_D1GRPH_Y_START, align 8
  %271 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %272 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = add nsw i64 %270, %273
  %275 = call i32 @WREG32(i64 %274, i32 0)
  %276 = load i64, i64* @AVIVO_D1GRPH_X_END, align 8
  %277 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %278 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = add nsw i64 %276, %279
  %281 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %18, align 8
  %282 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @WREG32(i64 %280, i32 %283)
  %285 = load i64, i64* @AVIVO_D1GRPH_Y_END, align 8
  %286 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %287 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = add nsw i64 %285, %288
  %290 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %18, align 8
  %291 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @WREG32(i64 %289, i32 %292)
  %294 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %18, align 8
  %295 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %294, i32 0, i32 3
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 0
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %18, align 8
  %300 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = sdiv i32 %301, 8
  %303 = sdiv i32 %298, %302
  store i32 %303, i32* %21, align 4
  %304 = load i64, i64* @AVIVO_D1GRPH_PITCH, align 8
  %305 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %306 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = add nsw i64 %304, %307
  %309 = load i32, i32* %21, align 4
  %310 = call i32 @WREG32(i64 %308, i32 %309)
  %311 = load i64, i64* @AVIVO_D1GRPH_ENABLE, align 8
  %312 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %313 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = add nsw i64 %311, %314
  %316 = call i32 @WREG32(i64 %315, i32 1)
  %317 = load i64, i64* @AVIVO_D1MODE_DESKTOP_HEIGHT, align 8
  %318 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %319 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = add nsw i64 %317, %320
  %322 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %18, align 8
  %323 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @WREG32(i64 %321, i32 %324)
  %326 = load i32, i32* %9, align 4
  %327 = and i32 %326, -4
  store i32 %327, i32* %9, align 4
  %328 = load i32, i32* %10, align 4
  %329 = and i32 %328, -2
  store i32 %329, i32* %10, align 4
  %330 = load i64, i64* @AVIVO_D1MODE_VIEWPORT_START, align 8
  %331 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %332 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = add nsw i64 %330, %333
  %335 = load i32, i32* %9, align 4
  %336 = shl i32 %335, 16
  %337 = load i32, i32* %10, align 4
  %338 = or i32 %336, %337
  %339 = call i32 @WREG32(i64 %334, i32 %338)
  %340 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %341 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  store i32 %343, i32* %25, align 4
  %344 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %345 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = add nsw i32 %347, 1
  %349 = and i32 %348, -2
  store i32 %349, i32* %26, align 4
  %350 = load i64, i64* @AVIVO_D1MODE_VIEWPORT_SIZE, align 8
  %351 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %352 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %351, i32 0, i32 1
  %353 = load i64, i64* %352, align 8
  %354 = add nsw i64 %350, %353
  %355 = load i32, i32* %25, align 4
  %356 = shl i32 %355, 16
  %357 = load i32, i32* %26, align 4
  %358 = or i32 %356, %357
  %359 = call i32 @WREG32(i64 %354, i32 %358)
  %360 = load i64, i64* @AVIVO_D1GRPH_FLIP_CONTROL, align 8
  %361 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %362 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %361, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = add nsw i64 %360, %363
  %365 = call i32 @RREG32(i64 %364)
  store i32 %365, i32* %24, align 4
  %366 = load i32, i32* @AVIVO_D1GRPH_SURFACE_UPDATE_H_RETRACE_EN, align 4
  %367 = xor i32 %366, -1
  %368 = load i32, i32* %24, align 4
  %369 = and i32 %368, %367
  store i32 %369, i32* %24, align 4
  %370 = load i64, i64* @AVIVO_D1GRPH_FLIP_CONTROL, align 8
  %371 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %372 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = add nsw i64 %370, %373
  %375 = load i32, i32* %24, align 4
  %376 = call i32 @WREG32(i64 %374, i32 %375)
  %377 = load i64, i64* @AVIVO_D1MODE_MASTER_UPDATE_MODE, align 8
  %378 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %379 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %378, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = add nsw i64 %377, %380
  %382 = call i32 @WREG32(i64 %381, i32 0)
  %383 = load i32, i32* %11, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %415, label %385

385:                                              ; preds = %251
  %386 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %387 = icmp ne %struct.drm_framebuffer* %386, null
  br i1 %387, label %388, label %415

388:                                              ; preds = %385
  %389 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %390 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %391 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %390, i32 0, i32 0
  %392 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %391, align 8
  %393 = icmp ne %struct.drm_framebuffer* %389, %392
  br i1 %393, label %394, label %415

394:                                              ; preds = %388
  %395 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %396 = call %struct.radeon_framebuffer* @to_radeon_framebuffer(%struct.drm_framebuffer* %395)
  store %struct.radeon_framebuffer* %396, %struct.radeon_framebuffer** %15, align 8
  %397 = load %struct.radeon_framebuffer*, %struct.radeon_framebuffer** %15, align 8
  %398 = getelementptr inbounds %struct.radeon_framebuffer, %struct.radeon_framebuffer* %397, i32 0, i32 0
  %399 = load %struct.drm_gem_object*, %struct.drm_gem_object** %398, align 8
  %400 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %399)
  store %struct.radeon_bo* %400, %struct.radeon_bo** %17, align 8
  %401 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %402 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %401, i32 0)
  store i32 %402, i32* %27, align 4
  %403 = load i32, i32* %27, align 4
  %404 = icmp ne i32 %403, 0
  %405 = zext i1 %404 to i32
  %406 = call i64 @unlikely(i32 %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %410

408:                                              ; preds = %394
  %409 = load i32, i32* %27, align 4
  store i32 %409, i32* %6, align 4
  br label %418

410:                                              ; preds = %394
  %411 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %412 = call i32 @radeon_bo_unpin(%struct.radeon_bo* %411)
  %413 = load %struct.radeon_bo*, %struct.radeon_bo** %17, align 8
  %414 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %413)
  br label %415

415:                                              ; preds = %410, %388, %385, %251
  %416 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %417 = call i32 @radeon_bandwidth_update(%struct.radeon_device* %416)
  store i32 0, i32* %6, align 4
  br label %418

418:                                              ; preds = %415, %408, %121, %91, %74, %44
  %419 = load i32, i32* %6, align 4
  ret i32 %419
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local %struct.radeon_framebuffer* @to_radeon_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @radeon_bo_gpu_offset(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_pin(%struct.radeon_bo*, i32, i64*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_get_tiling_flags(%struct.radeon_bo*, i32*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @radeon_bo_unpin(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bandwidth_update(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
