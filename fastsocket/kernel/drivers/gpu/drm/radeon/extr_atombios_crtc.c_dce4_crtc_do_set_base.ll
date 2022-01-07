; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_dce4_crtc_do_set_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_dce4_crtc_do_set_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_framebuffer*, %struct.TYPE_6__, %struct.drm_device* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.drm_framebuffer = type { i32, i32, i32, i32* }
%struct.radeon_crtc = type { i32, i64 }
%struct.radeon_framebuffer = type { %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { i32 }

@EVERGREEN_GRPH_ENDIAN_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"No FB bound\0A\00", align 1
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_DEPTH_8BPP = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_FORMAT_INDEXED = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_DEPTH_16BPP = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_FORMAT_ARGB1555 = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_FORMAT_ARGB565 = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_DEPTH_32BPP = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_FORMAT_ARGB8888 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unsupported screen depth %d\0A\00", align 1
@RADEON_TILING_MACRO = common dso_local global i32 0, align 4
@CHIP_TAHITI = common dso_local global i64 0, align 8
@CHIP_CAYMAN = common dso_local global i64 0, align 8
@EVERGREEN_ADDR_SURF_4_BANK = common dso_local global i32 0, align 4
@EVERGREEN_ADDR_SURF_8_BANK = common dso_local global i32 0, align 4
@EVERGREEN_ADDR_SURF_16_BANK = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_ARRAY_2D_TILED_THIN1 = common dso_local global i32 0, align 4
@RADEON_TILING_MICRO = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_ARRAY_1D_TILED_THIN1 = common dso_local global i32 0, align 4
@CHIP_PITCAIRN = common dso_local global i64 0, align 8
@SI_ADDR_SURF_P8_32x32_8x16 = common dso_local global i32 0, align 4
@CHIP_VERDE = common dso_local global i64 0, align 8
@SI_ADDR_SURF_P4_8x16 = common dso_local global i32 0, align 4
@AVIVO_D1VGA_CONTROL = common dso_local global i64 0, align 8
@AVIVO_D2VGA_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_D3VGA_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_D4VGA_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_D5VGA_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_D6VGA_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_SURFACE_ADDRESS_MASK = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_SWAP_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_SURFACE_OFFSET_X = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_SURFACE_OFFSET_Y = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_X_START = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_Y_START = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_X_END = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_Y_END = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_PITCH = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_ENABLE = common dso_local global i64 0, align 8
@EVERGREEN_DESKTOP_HEIGHT = common dso_local global i64 0, align 8
@EVERGREEN_VIEWPORT_START = common dso_local global i64 0, align 8
@EVERGREEN_VIEWPORT_SIZE = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_FLIP_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_SURFACE_UPDATE_H_RETRACE_EN = common dso_local global i32 0, align 4
@EVERGREEN_MASTER_UPDATE_MODE = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_ENDIAN_8IN16 = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_ENDIAN_8IN32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32)* @dce4_crtc_do_set_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce4_crtc_do_set_base(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %16 = alloca %struct.drm_framebuffer*, align 8
  %17 = alloca %struct.drm_gem_object*, align 8
  %18 = alloca %struct.radeon_bo*, align 8
  %19 = alloca i64, align 8
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
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %33 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %32)
  store %struct.radeon_crtc* %33, %struct.radeon_crtc** %12, align 8
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %35 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %34, i32 0, i32 2
  %36 = load %struct.drm_device*, %struct.drm_device** %35, align 8
  store %struct.drm_device* %36, %struct.drm_device** %13, align 8
  %37 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 0
  %39 = load %struct.radeon_device*, %struct.radeon_device** %38, align 8
  store %struct.radeon_device* %39, %struct.radeon_device** %14, align 8
  %40 = load i32, i32* @EVERGREEN_GRPH_ENDIAN_NONE, align 4
  %41 = call i32 @EVERGREEN_GRPH_ENDIAN_SWAP(i32 %40)
  store i32 %41, i32* %27, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %5
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %46 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %45, i32 0, i32 0
  %47 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %46, align 8
  %48 = icmp ne %struct.drm_framebuffer* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %500

51:                                               ; preds = %44, %5
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %56 = call %struct.radeon_framebuffer* @to_radeon_framebuffer(%struct.drm_framebuffer* %55)
  store %struct.radeon_framebuffer* %56, %struct.radeon_framebuffer** %15, align 8
  %57 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_framebuffer* %57, %struct.drm_framebuffer** %16, align 8
  br label %66

58:                                               ; preds = %51
  %59 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %60 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %59, i32 0, i32 0
  %61 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %60, align 8
  %62 = call %struct.radeon_framebuffer* @to_radeon_framebuffer(%struct.drm_framebuffer* %61)
  store %struct.radeon_framebuffer* %62, %struct.radeon_framebuffer** %15, align 8
  %63 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %64 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %63, i32 0, i32 0
  %65 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %64, align 8
  store %struct.drm_framebuffer* %65, %struct.drm_framebuffer** %16, align 8
  br label %66

66:                                               ; preds = %58, %54
  %67 = load %struct.radeon_framebuffer*, %struct.radeon_framebuffer** %15, align 8
  %68 = getelementptr inbounds %struct.radeon_framebuffer, %struct.radeon_framebuffer* %67, i32 0, i32 0
  %69 = load %struct.drm_gem_object*, %struct.drm_gem_object** %68, align 8
  store %struct.drm_gem_object* %69, %struct.drm_gem_object** %17, align 8
  %70 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %71 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %70)
  store %struct.radeon_bo* %71, %struct.radeon_bo** %18, align 8
  %72 = load %struct.radeon_bo*, %struct.radeon_bo** %18, align 8
  %73 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %72, i32 0)
  store i32 %73, i32* %31, align 4
  %74 = load i32, i32* %31, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = load i32, i32* %31, align 4
  store i32 %80, i32* %6, align 4
  br label %500

81:                                               ; preds = %66
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.radeon_bo*, %struct.radeon_bo** %18, align 8
  %86 = call i64 @radeon_bo_gpu_offset(%struct.radeon_bo* %85)
  store i64 %86, i64* %19, align 8
  br label %102

87:                                               ; preds = %81
  %88 = load %struct.radeon_bo*, %struct.radeon_bo** %18, align 8
  %89 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %90 = call i32 @radeon_bo_pin(%struct.radeon_bo* %88, i32 %89, i64* %19)
  store i32 %90, i32* %31, align 4
  %91 = load i32, i32* %31, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %87
  %97 = load %struct.radeon_bo*, %struct.radeon_bo** %18, align 8
  %98 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  br label %500

101:                                              ; preds = %87
  br label %102

102:                                              ; preds = %101, %84
  %103 = load %struct.radeon_bo*, %struct.radeon_bo** %18, align 8
  %104 = call i32 @radeon_bo_get_tiling_flags(%struct.radeon_bo* %103, i32* %22, i32* null)
  %105 = load %struct.radeon_bo*, %struct.radeon_bo** %18, align 8
  %106 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %105)
  %107 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %108 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  switch i32 %109, label %134 [
    i32 8, label %110
    i32 15, label %116
    i32 16, label %122
    i32 24, label %128
    i32 32, label %128
  ]

110:                                              ; preds = %102
  %111 = load i32, i32* @EVERGREEN_GRPH_DEPTH_8BPP, align 4
  %112 = call i32 @EVERGREEN_GRPH_DEPTH(i32 %111)
  %113 = load i32, i32* @EVERGREEN_GRPH_FORMAT_INDEXED, align 4
  %114 = call i32 @EVERGREEN_GRPH_FORMAT(i32 %113)
  %115 = or i32 %112, %114
  store i32 %115, i32* %20, align 4
  br label %141

116:                                              ; preds = %102
  %117 = load i32, i32* @EVERGREEN_GRPH_DEPTH_16BPP, align 4
  %118 = call i32 @EVERGREEN_GRPH_DEPTH(i32 %117)
  %119 = load i32, i32* @EVERGREEN_GRPH_FORMAT_ARGB1555, align 4
  %120 = call i32 @EVERGREEN_GRPH_FORMAT(i32 %119)
  %121 = or i32 %118, %120
  store i32 %121, i32* %20, align 4
  br label %141

122:                                              ; preds = %102
  %123 = load i32, i32* @EVERGREEN_GRPH_DEPTH_16BPP, align 4
  %124 = call i32 @EVERGREEN_GRPH_DEPTH(i32 %123)
  %125 = load i32, i32* @EVERGREEN_GRPH_FORMAT_ARGB565, align 4
  %126 = call i32 @EVERGREEN_GRPH_FORMAT(i32 %125)
  %127 = or i32 %124, %126
  store i32 %127, i32* %20, align 4
  br label %141

128:                                              ; preds = %102, %102
  %129 = load i32, i32* @EVERGREEN_GRPH_DEPTH_32BPP, align 4
  %130 = call i32 @EVERGREEN_GRPH_DEPTH(i32 %129)
  %131 = load i32, i32* @EVERGREEN_GRPH_FORMAT_ARGB8888, align 4
  %132 = call i32 @EVERGREEN_GRPH_FORMAT(i32 %131)
  %133 = or i32 %130, %132
  store i32 %133, i32* %20, align 4
  br label %141

134:                                              ; preds = %102
  %135 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %136 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %6, align 4
  br label %500

141:                                              ; preds = %128, %122, %116, %110
  %142 = load i32, i32* %22, align 4
  %143 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %220

146:                                              ; preds = %141
  %147 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %148 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @CHIP_TAHITI, align 8
  %151 = icmp sge i64 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %146
  %153 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %154 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %28, align 4
  br label %177

158:                                              ; preds = %146
  %159 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %160 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @CHIP_CAYMAN, align 8
  %163 = icmp sge i64 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  %165 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %166 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %28, align 4
  br label %176

170:                                              ; preds = %158
  %171 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %172 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %28, align 4
  br label %176

176:                                              ; preds = %170, %164
  br label %177

177:                                              ; preds = %176, %152
  %178 = load i32, i32* %28, align 4
  %179 = and i32 %178, 240
  %180 = ashr i32 %179, 4
  switch i32 %180, label %187 [
    i32 0, label %181
    i32 1, label %186
    i32 2, label %192
  ]

181:                                              ; preds = %177
  %182 = load i32, i32* @EVERGREEN_ADDR_SURF_4_BANK, align 4
  %183 = call i32 @EVERGREEN_GRPH_NUM_BANKS(i32 %182)
  %184 = load i32, i32* %20, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %20, align 4
  br label %197

186:                                              ; preds = %177
  br label %187

187:                                              ; preds = %177, %186
  %188 = load i32, i32* @EVERGREEN_ADDR_SURF_8_BANK, align 4
  %189 = call i32 @EVERGREEN_GRPH_NUM_BANKS(i32 %188)
  %190 = load i32, i32* %20, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %20, align 4
  br label %197

192:                                              ; preds = %177
  %193 = load i32, i32* @EVERGREEN_ADDR_SURF_16_BANK, align 4
  %194 = call i32 @EVERGREEN_GRPH_NUM_BANKS(i32 %193)
  %195 = load i32, i32* %20, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %20, align 4
  br label %197

197:                                              ; preds = %192, %187, %181
  %198 = load i32, i32* @EVERGREEN_GRPH_ARRAY_2D_TILED_THIN1, align 4
  %199 = call i32 @EVERGREEN_GRPH_ARRAY_MODE(i32 %198)
  %200 = load i32, i32* %20, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %20, align 4
  %202 = load i32, i32* %22, align 4
  %203 = call i32 @evergreen_tiling_fields(i32 %202, i32* %23, i32* %24, i32* %25, i32* %26)
  %204 = load i32, i32* %26, align 4
  %205 = call i32 @EVERGREEN_GRPH_TILE_SPLIT(i32 %204)
  %206 = load i32, i32* %20, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %20, align 4
  %208 = load i32, i32* %23, align 4
  %209 = call i32 @EVERGREEN_GRPH_BANK_WIDTH(i32 %208)
  %210 = load i32, i32* %20, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %20, align 4
  %212 = load i32, i32* %24, align 4
  %213 = call i32 @EVERGREEN_GRPH_BANK_HEIGHT(i32 %212)
  %214 = load i32, i32* %20, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %20, align 4
  %216 = load i32, i32* %25, align 4
  %217 = call i32 @EVERGREEN_GRPH_MACRO_TILE_ASPECT(i32 %216)
  %218 = load i32, i32* %20, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %20, align 4
  br label %231

220:                                              ; preds = %141
  %221 = load i32, i32* %22, align 4
  %222 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %220
  %226 = load i32, i32* @EVERGREEN_GRPH_ARRAY_1D_TILED_THIN1, align 4
  %227 = call i32 @EVERGREEN_GRPH_ARRAY_MODE(i32 %226)
  %228 = load i32, i32* %20, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %20, align 4
  br label %230

230:                                              ; preds = %225, %220
  br label %231

231:                                              ; preds = %230, %197
  %232 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %233 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @CHIP_TAHITI, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %243, label %237

237:                                              ; preds = %231
  %238 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %239 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @CHIP_PITCAIRN, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %248

243:                                              ; preds = %237, %231
  %244 = load i32, i32* @SI_ADDR_SURF_P8_32x32_8x16, align 4
  %245 = call i32 @SI_GRPH_PIPE_CONFIG(i32 %244)
  %246 = load i32, i32* %20, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %20, align 4
  br label %260

248:                                              ; preds = %237
  %249 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %250 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @CHIP_VERDE, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %248
  %255 = load i32, i32* @SI_ADDR_SURF_P4_8x16, align 4
  %256 = call i32 @SI_GRPH_PIPE_CONFIG(i32 %255)
  %257 = load i32, i32* %20, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %20, align 4
  br label %259

259:                                              ; preds = %254, %248
  br label %260

260:                                              ; preds = %259, %243
  %261 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %262 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  switch i32 %263, label %282 [
    i32 0, label %264
    i32 1, label %267
    i32 2, label %270
    i32 3, label %273
    i32 4, label %276
    i32 5, label %279
  ]

264:                                              ; preds = %260
  %265 = load i64, i64* @AVIVO_D1VGA_CONTROL, align 8
  %266 = call i32 @WREG32(i64 %265, i32 0)
  br label %283

267:                                              ; preds = %260
  %268 = load i64, i64* @AVIVO_D2VGA_CONTROL, align 8
  %269 = call i32 @WREG32(i64 %268, i32 0)
  br label %283

270:                                              ; preds = %260
  %271 = load i64, i64* @EVERGREEN_D3VGA_CONTROL, align 8
  %272 = call i32 @WREG32(i64 %271, i32 0)
  br label %283

273:                                              ; preds = %260
  %274 = load i64, i64* @EVERGREEN_D4VGA_CONTROL, align 8
  %275 = call i32 @WREG32(i64 %274, i32 0)
  br label %283

276:                                              ; preds = %260
  %277 = load i64, i64* @EVERGREEN_D5VGA_CONTROL, align 8
  %278 = call i32 @WREG32(i64 %277, i32 0)
  br label %283

279:                                              ; preds = %260
  %280 = load i64, i64* @EVERGREEN_D6VGA_CONTROL, align 8
  %281 = call i32 @WREG32(i64 %280, i32 0)
  br label %283

282:                                              ; preds = %260
  br label %283

283:                                              ; preds = %282, %279, %276, %273, %270, %267, %264
  %284 = load i64, i64* @EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %285 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %286 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = add nsw i64 %284, %287
  %289 = load i64, i64* %19, align 8
  %290 = call i32 @upper_32_bits(i64 %289)
  %291 = call i32 @WREG32(i64 %288, i32 %290)
  %292 = load i64, i64* @EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, align 8
  %293 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %294 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = add nsw i64 %292, %295
  %297 = load i64, i64* %19, align 8
  %298 = call i32 @upper_32_bits(i64 %297)
  %299 = call i32 @WREG32(i64 %296, i32 %298)
  %300 = load i64, i64* @EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS, align 8
  %301 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %302 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = add nsw i64 %300, %303
  %305 = load i64, i64* %19, align 8
  %306 = trunc i64 %305 to i32
  %307 = load i32, i32* @EVERGREEN_GRPH_SURFACE_ADDRESS_MASK, align 4
  %308 = and i32 %306, %307
  %309 = call i32 @WREG32(i64 %304, i32 %308)
  %310 = load i64, i64* @EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS, align 8
  %311 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %312 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = add nsw i64 %310, %313
  %315 = load i64, i64* %19, align 8
  %316 = trunc i64 %315 to i32
  %317 = load i32, i32* @EVERGREEN_GRPH_SURFACE_ADDRESS_MASK, align 4
  %318 = and i32 %316, %317
  %319 = call i32 @WREG32(i64 %314, i32 %318)
  %320 = load i64, i64* @EVERGREEN_GRPH_CONTROL, align 8
  %321 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %322 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = add nsw i64 %320, %323
  %325 = load i32, i32* %20, align 4
  %326 = call i32 @WREG32(i64 %324, i32 %325)
  %327 = load i64, i64* @EVERGREEN_GRPH_SWAP_CONTROL, align 8
  %328 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %329 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = add nsw i64 %327, %330
  %332 = load i32, i32* %27, align 4
  %333 = call i32 @WREG32(i64 %331, i32 %332)
  %334 = load i64, i64* @EVERGREEN_GRPH_SURFACE_OFFSET_X, align 8
  %335 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %336 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = add nsw i64 %334, %337
  %339 = call i32 @WREG32(i64 %338, i32 0)
  %340 = load i64, i64* @EVERGREEN_GRPH_SURFACE_OFFSET_Y, align 8
  %341 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %342 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = add nsw i64 %340, %343
  %345 = call i32 @WREG32(i64 %344, i32 0)
  %346 = load i64, i64* @EVERGREEN_GRPH_X_START, align 8
  %347 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %348 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = add nsw i64 %346, %349
  %351 = call i32 @WREG32(i64 %350, i32 0)
  %352 = load i64, i64* @EVERGREEN_GRPH_Y_START, align 8
  %353 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %354 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %353, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = add nsw i64 %352, %355
  %357 = call i32 @WREG32(i64 %356, i32 0)
  %358 = load i64, i64* @EVERGREEN_GRPH_X_END, align 8
  %359 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %360 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = add nsw i64 %358, %361
  %363 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %364 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @WREG32(i64 %362, i32 %365)
  %367 = load i64, i64* @EVERGREEN_GRPH_Y_END, align 8
  %368 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %369 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = add nsw i64 %367, %370
  %372 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %373 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 8
  %375 = call i32 @WREG32(i64 %371, i32 %374)
  %376 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %377 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %376, i32 0, i32 3
  %378 = load i32*, i32** %377, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 0
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %382 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = sdiv i32 %383, 8
  %385 = sdiv i32 %380, %384
  store i32 %385, i32* %21, align 4
  %386 = load i64, i64* @EVERGREEN_GRPH_PITCH, align 8
  %387 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %388 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = add nsw i64 %386, %389
  %391 = load i32, i32* %21, align 4
  %392 = call i32 @WREG32(i64 %390, i32 %391)
  %393 = load i64, i64* @EVERGREEN_GRPH_ENABLE, align 8
  %394 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %395 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %394, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = add nsw i64 %393, %396
  %398 = call i32 @WREG32(i64 %397, i32 1)
  %399 = load i64, i64* @EVERGREEN_DESKTOP_HEIGHT, align 8
  %400 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %401 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = add nsw i64 %399, %402
  %404 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %405 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = call i32 @WREG32(i64 %403, i32 %406)
  %408 = load i32, i32* %9, align 4
  %409 = and i32 %408, -4
  store i32 %409, i32* %9, align 4
  %410 = load i32, i32* %10, align 4
  %411 = and i32 %410, -2
  store i32 %411, i32* %10, align 4
  %412 = load i64, i64* @EVERGREEN_VIEWPORT_START, align 8
  %413 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %414 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %413, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = add nsw i64 %412, %415
  %417 = load i32, i32* %9, align 4
  %418 = shl i32 %417, 16
  %419 = load i32, i32* %10, align 4
  %420 = or i32 %418, %419
  %421 = call i32 @WREG32(i64 %416, i32 %420)
  %422 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %423 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  store i32 %425, i32* %29, align 4
  %426 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %427 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = add nsw i32 %429, 1
  %431 = and i32 %430, -2
  store i32 %431, i32* %30, align 4
  %432 = load i64, i64* @EVERGREEN_VIEWPORT_SIZE, align 8
  %433 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %434 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %433, i32 0, i32 1
  %435 = load i64, i64* %434, align 8
  %436 = add nsw i64 %432, %435
  %437 = load i32, i32* %29, align 4
  %438 = shl i32 %437, 16
  %439 = load i32, i32* %30, align 4
  %440 = or i32 %438, %439
  %441 = call i32 @WREG32(i64 %436, i32 %440)
  %442 = load i64, i64* @EVERGREEN_GRPH_FLIP_CONTROL, align 8
  %443 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %444 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %443, i32 0, i32 1
  %445 = load i64, i64* %444, align 8
  %446 = add nsw i64 %442, %445
  %447 = call i32 @RREG32(i64 %446)
  store i32 %447, i32* %28, align 4
  %448 = load i32, i32* @EVERGREEN_GRPH_SURFACE_UPDATE_H_RETRACE_EN, align 4
  %449 = xor i32 %448, -1
  %450 = load i32, i32* %28, align 4
  %451 = and i32 %450, %449
  store i32 %451, i32* %28, align 4
  %452 = load i64, i64* @EVERGREEN_GRPH_FLIP_CONTROL, align 8
  %453 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %454 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %453, i32 0, i32 1
  %455 = load i64, i64* %454, align 8
  %456 = add nsw i64 %452, %455
  %457 = load i32, i32* %28, align 4
  %458 = call i32 @WREG32(i64 %456, i32 %457)
  %459 = load i64, i64* @EVERGREEN_MASTER_UPDATE_MODE, align 8
  %460 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %461 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %460, i32 0, i32 1
  %462 = load i64, i64* %461, align 8
  %463 = add nsw i64 %459, %462
  %464 = call i32 @WREG32(i64 %463, i32 0)
  %465 = load i32, i32* %11, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %497, label %467

467:                                              ; preds = %283
  %468 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %469 = icmp ne %struct.drm_framebuffer* %468, null
  br i1 %469, label %470, label %497

470:                                              ; preds = %467
  %471 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %472 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %473 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %472, i32 0, i32 0
  %474 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %473, align 8
  %475 = icmp ne %struct.drm_framebuffer* %471, %474
  br i1 %475, label %476, label %497

476:                                              ; preds = %470
  %477 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %478 = call %struct.radeon_framebuffer* @to_radeon_framebuffer(%struct.drm_framebuffer* %477)
  store %struct.radeon_framebuffer* %478, %struct.radeon_framebuffer** %15, align 8
  %479 = load %struct.radeon_framebuffer*, %struct.radeon_framebuffer** %15, align 8
  %480 = getelementptr inbounds %struct.radeon_framebuffer, %struct.radeon_framebuffer* %479, i32 0, i32 0
  %481 = load %struct.drm_gem_object*, %struct.drm_gem_object** %480, align 8
  %482 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %481)
  store %struct.radeon_bo* %482, %struct.radeon_bo** %18, align 8
  %483 = load %struct.radeon_bo*, %struct.radeon_bo** %18, align 8
  %484 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %483, i32 0)
  store i32 %484, i32* %31, align 4
  %485 = load i32, i32* %31, align 4
  %486 = icmp ne i32 %485, 0
  %487 = zext i1 %486 to i32
  %488 = call i64 @unlikely(i32 %487)
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %492

490:                                              ; preds = %476
  %491 = load i32, i32* %31, align 4
  store i32 %491, i32* %6, align 4
  br label %500

492:                                              ; preds = %476
  %493 = load %struct.radeon_bo*, %struct.radeon_bo** %18, align 8
  %494 = call i32 @radeon_bo_unpin(%struct.radeon_bo* %493)
  %495 = load %struct.radeon_bo*, %struct.radeon_bo** %18, align 8
  %496 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %495)
  br label %497

497:                                              ; preds = %492, %470, %467, %283
  %498 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  %499 = call i32 @radeon_bandwidth_update(%struct.radeon_device* %498)
  store i32 0, i32* %6, align 4
  br label %500

500:                                              ; preds = %497, %490, %134, %96, %79, %49
  %501 = load i32, i32* %6, align 4
  ret i32 %501
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @EVERGREEN_GRPH_ENDIAN_SWAP(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local %struct.radeon_framebuffer* @to_radeon_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @radeon_bo_gpu_offset(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_pin(%struct.radeon_bo*, i32, i64*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_get_tiling_flags(%struct.radeon_bo*, i32*, i32*) #1

declare dso_local i32 @EVERGREEN_GRPH_DEPTH(i32) #1

declare dso_local i32 @EVERGREEN_GRPH_FORMAT(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @EVERGREEN_GRPH_NUM_BANKS(i32) #1

declare dso_local i32 @EVERGREEN_GRPH_ARRAY_MODE(i32) #1

declare dso_local i32 @evergreen_tiling_fields(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EVERGREEN_GRPH_TILE_SPLIT(i32) #1

declare dso_local i32 @EVERGREEN_GRPH_BANK_WIDTH(i32) #1

declare dso_local i32 @EVERGREEN_GRPH_BANK_HEIGHT(i32) #1

declare dso_local i32 @EVERGREEN_GRPH_MACRO_TILE_ASPECT(i32) #1

declare dso_local i32 @SI_GRPH_PIPE_CONFIG(i32) #1

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
