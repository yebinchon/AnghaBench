; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_tv_dac_mode_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_tv_dac_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, i64 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_crtc = type { i64 }
%struct.radeon_encoder = type { i32, %struct.radeon_encoder_tv_dac* }
%struct.radeon_encoder_tv_dac = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@CHIP_R200 = common dso_local global i64 0, align 8
@RADEON_TV_DAC_CNTL = common dso_local global i32 0, align 4
@CHIP_R420 = common dso_local global i64 0, align 8
@CHIP_R423 = common dso_local global i64 0, align 8
@CHIP_RV410 = common dso_local global i64 0, align 8
@RADEON_TV_DAC_STD_MASK = common dso_local global i32 0, align 4
@RADEON_TV_DAC_BGADJ_MASK = common dso_local global i32 0, align 4
@R420_TV_DAC_DACADJ_MASK = common dso_local global i32 0, align 4
@R420_TV_DAC_RDACPD = common dso_local global i32 0, align 4
@R420_TV_DAC_GDACPD = common dso_local global i32 0, align 4
@R420_TV_DAC_BDACPD = common dso_local global i32 0, align 4
@R420_TV_DAC_TVENABLE = common dso_local global i32 0, align 4
@RADEON_TV_DAC_DACADJ_MASK = common dso_local global i32 0, align 4
@RADEON_TV_DAC_RDACPD = common dso_local global i32 0, align 4
@RADEON_TV_DAC_GDACPD = common dso_local global i32 0, align 4
@RADEON_TV_DAC_BDACPD = common dso_local global i32 0, align 4
@RADEON_TV_DAC_NBLANK = common dso_local global i32 0, align 4
@RADEON_TV_DAC_NHOLD = common dso_local global i32 0, align 4
@TV_STD_NTSC = common dso_local global i64 0, align 8
@TV_STD_NTSC_J = common dso_local global i64 0, align 8
@TV_STD_PAL_M = common dso_local global i64 0, align 8
@TV_STD_PAL_60 = common dso_local global i64 0, align 8
@RADEON_TV_DAC_STD_NTSC = common dso_local global i32 0, align 4
@RADEON_TV_DAC_STD_PAL = common dso_local global i32 0, align 4
@RADEON_TV_DAC_STD_PS2 = common dso_local global i32 0, align 4
@RADEON_GPIOPAD_A = common dso_local global i32 0, align 4
@RADEON_DISP_OUTPUT_CNTL = common dso_local global i32 0, align 4
@RADEON_DISP_HW_DEBUG = common dso_local global i32 0, align 4
@RADEON_FP2_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_DISP_TV_OUT_CNTL = common dso_local global i32 0, align 4
@RADEON_DAC_CNTL = common dso_local global i32 0, align 4
@RADEON_DAC_TVO_EN = common dso_local global i32 0, align 4
@RADEON_DAC_CNTL2 = common dso_local global i32 0, align 4
@RADEON_DAC2_DAC2_CLK_SEL = common dso_local global i32 0, align 4
@RADEON_DISP_TVDAC_SOURCE_MASK = common dso_local global i32 0, align 4
@RADEON_DISP_TVDAC_SOURCE_CRTC = common dso_local global i32 0, align 4
@RADEON_DISP_TV_SOURCE_CRTC = common dso_local global i32 0, align 4
@RADEON_DISP_TV_PATH_SRC_CRTC2 = common dso_local global i32 0, align 4
@RADEON_CRT2_DISP1_SEL = common dso_local global i32 0, align 4
@R200_FP2_SOURCE_SEL_MASK = common dso_local global i32 0, align 4
@RADEON_FP2_DVO_RATE_SEL_SDR = common dso_local global i32 0, align 4
@RADEON_DISP_TVDAC_SOURCE_CRTC2 = common dso_local global i32 0, align 4
@R200_FP2_SOURCE_SEL_CRTC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @radeon_legacy_tv_dac_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_legacy_tv_dac_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_crtc*, align 8
  %10 = alloca %struct.radeon_encoder*, align 8
  %11 = alloca %struct.radeon_encoder_tv_dac*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %22 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %21, i32 0, i32 1
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  store %struct.drm_device* %23, %struct.drm_device** %7, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load %struct.radeon_device*, %struct.radeon_device** %25, align 8
  store %struct.radeon_device* %26, %struct.radeon_device** %8, align 8
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %28 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.radeon_crtc* @to_radeon_crtc(i32 %29)
  store %struct.radeon_crtc* %30, %struct.radeon_crtc** %9, align 8
  %31 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %32 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %31)
  store %struct.radeon_encoder* %32, %struct.radeon_encoder** %10, align 8
  %33 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %34 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %33, i32 0, i32 1
  %35 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %34, align 8
  store %struct.radeon_encoder_tv_dac* %35, %struct.radeon_encoder_tv_dac** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %36 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %38 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  store i32 %44, i32* %19, align 4
  %45 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CHIP_R200, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %179

50:                                               ; preds = %3
  %51 = load i32, i32* @RADEON_TV_DAC_CNTL, align 4
  %52 = call i32 @RREG32(i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CHIP_R420, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %70, label %58

58:                                               ; preds = %50
  %59 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CHIP_R423, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CHIP_RV410, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %64, %58, %50
  %71 = load i32, i32* @RADEON_TV_DAC_STD_MASK, align 4
  %72 = load i32, i32* @RADEON_TV_DAC_BGADJ_MASK, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @R420_TV_DAC_DACADJ_MASK, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @R420_TV_DAC_RDACPD, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @R420_TV_DAC_GDACPD, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @R420_TV_DAC_BDACPD, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @R420_TV_DAC_TVENABLE, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %12, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %12, align 4
  br label %102

87:                                               ; preds = %64
  %88 = load i32, i32* @RADEON_TV_DAC_STD_MASK, align 4
  %89 = load i32, i32* @RADEON_TV_DAC_BGADJ_MASK, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @RADEON_TV_DAC_DACADJ_MASK, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @RADEON_TV_DAC_RDACPD, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @RADEON_TV_DAC_GDACPD, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @RADEON_TV_DAC_BDACPD, align 4
  %98 = or i32 %96, %97
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %12, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %87, %70
  %103 = load i32, i32* @RADEON_TV_DAC_NBLANK, align 4
  %104 = load i32, i32* @RADEON_TV_DAC_NHOLD, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* %12, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %19, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %167

110:                                              ; preds = %102
  %111 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %11, align 8
  %112 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @TV_STD_NTSC, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %134, label %116

116:                                              ; preds = %110
  %117 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %11, align 8
  %118 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @TV_STD_NTSC_J, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %134, label %122

122:                                              ; preds = %116
  %123 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %11, align 8
  %124 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @TV_STD_PAL_M, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %11, align 8
  %130 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @TV_STD_PAL_60, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %128, %122, %116, %110
  %135 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %11, align 8
  %136 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %12, align 4
  br label %146

140:                                              ; preds = %128
  %141 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %11, align 8
  %142 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %12, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %140, %134
  %147 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %11, align 8
  %148 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @TV_STD_NTSC, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %11, align 8
  %154 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @TV_STD_NTSC_J, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %152, %146
  %159 = load i32, i32* @RADEON_TV_DAC_STD_NTSC, align 4
  %160 = load i32, i32* %12, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %12, align 4
  br label %166

162:                                              ; preds = %152
  %163 = load i32, i32* @RADEON_TV_DAC_STD_PAL, align 4
  %164 = load i32, i32* %12, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %12, align 4
  br label %166

166:                                              ; preds = %162, %158
  br label %175

167:                                              ; preds = %102
  %168 = load i32, i32* @RADEON_TV_DAC_STD_PS2, align 4
  %169 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %11, align 8
  %170 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %168, %171
  %173 = load i32, i32* %12, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %12, align 4
  br label %175

175:                                              ; preds = %167, %166
  %176 = load i32, i32* @RADEON_TV_DAC_CNTL, align 4
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @WREG32(i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %175, %3
  %180 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %181 = call i64 @ASIC_IS_R300(%struct.radeon_device* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %179
  %184 = load i32, i32* @RADEON_GPIOPAD_A, align 4
  %185 = call i32 @RREG32(i32 %184)
  %186 = or i32 %185, 1
  store i32 %186, i32* %13, align 4
  %187 = load i32, i32* @RADEON_DISP_OUTPUT_CNTL, align 4
  %188 = call i32 @RREG32(i32 %187)
  store i32 %188, i32* %15, align 4
  br label %209

189:                                              ; preds = %179
  %190 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %191 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @CHIP_R200, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %189
  %196 = load i32, i32* @RADEON_DISP_HW_DEBUG, align 4
  %197 = call i32 @RREG32(i32 %196)
  store i32 %197, i32* %16, align 4
  br label %208

198:                                              ; preds = %189
  %199 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %200 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @CHIP_R200, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %198
  %205 = load i32, i32* @RADEON_FP2_GEN_CNTL, align 4
  %206 = call i32 @RREG32(i32 %205)
  store i32 %206, i32* %17, align 4
  br label %207

207:                                              ; preds = %204, %198
  br label %208

208:                                              ; preds = %207, %195
  br label %209

209:                                              ; preds = %208, %183
  %210 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %211 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @CHIP_R200, align 8
  %214 = icmp sge i64 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %209
  %216 = load i32, i32* @RADEON_DISP_TV_OUT_CNTL, align 4
  %217 = call i32 @RREG32(i32 %216)
  store i32 %217, i32* %18, align 4
  br label %218

218:                                              ; preds = %215, %209
  %219 = load i32, i32* %19, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %310

221:                                              ; preds = %218
  %222 = load i32, i32* @RADEON_DAC_CNTL, align 4
  %223 = call i32 @RREG32(i32 %222)
  store i32 %223, i32* %20, align 4
  %224 = load i32, i32* @RADEON_DAC_TVO_EN, align 4
  %225 = xor i32 %224, -1
  %226 = load i32, i32* %20, align 4
  %227 = and i32 %226, %225
  store i32 %227, i32* %20, align 4
  %228 = load i32, i32* @RADEON_DAC_CNTL, align 4
  %229 = load i32, i32* %20, align 4
  %230 = call i32 @WREG32(i32 %228, i32 %229)
  %231 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %232 = call i64 @ASIC_IS_R300(%struct.radeon_device* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %221
  %235 = load i32, i32* @RADEON_GPIOPAD_A, align 4
  %236 = call i32 @RREG32(i32 %235)
  %237 = and i32 %236, -2
  store i32 %237, i32* %13, align 4
  br label %238

238:                                              ; preds = %234, %221
  %239 = load i32, i32* @RADEON_DAC_CNTL2, align 4
  %240 = call i32 @RREG32(i32 %239)
  %241 = load i32, i32* @RADEON_DAC2_DAC2_CLK_SEL, align 4
  %242 = xor i32 %241, -1
  %243 = and i32 %240, %242
  store i32 %243, i32* %14, align 4
  %244 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %245 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %278

248:                                              ; preds = %238
  %249 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %250 = call i64 @ASIC_IS_R300(%struct.radeon_device* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %262

252:                                              ; preds = %248
  %253 = load i32, i32* @RADEON_DISP_TVDAC_SOURCE_MASK, align 4
  %254 = xor i32 %253, -1
  %255 = load i32, i32* %15, align 4
  %256 = and i32 %255, %254
  store i32 %256, i32* %15, align 4
  %257 = load i32, i32* @RADEON_DISP_TVDAC_SOURCE_CRTC, align 4
  %258 = load i32, i32* @RADEON_DISP_TV_SOURCE_CRTC, align 4
  %259 = or i32 %257, %258
  %260 = load i32, i32* %15, align 4
  %261 = or i32 %260, %259
  store i32 %261, i32* %15, align 4
  br label %262

262:                                              ; preds = %252, %248
  %263 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %264 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @CHIP_R200, align 8
  %267 = icmp sge i64 %265, %266
  br i1 %267, label %268, label %273

268:                                              ; preds = %262
  %269 = load i32, i32* @RADEON_DISP_TV_PATH_SRC_CRTC2, align 4
  %270 = xor i32 %269, -1
  %271 = load i32, i32* %18, align 4
  %272 = and i32 %271, %270
  store i32 %272, i32* %18, align 4
  br label %277

273:                                              ; preds = %262
  %274 = load i32, i32* @RADEON_CRT2_DISP1_SEL, align 4
  %275 = load i32, i32* %16, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %16, align 4
  br label %277

277:                                              ; preds = %273, %268
  br label %306

278:                                              ; preds = %238
  %279 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %280 = call i64 @ASIC_IS_R300(%struct.radeon_device* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %290

282:                                              ; preds = %278
  %283 = load i32, i32* @RADEON_DISP_TVDAC_SOURCE_MASK, align 4
  %284 = xor i32 %283, -1
  %285 = load i32, i32* %15, align 4
  %286 = and i32 %285, %284
  store i32 %286, i32* %15, align 4
  %287 = load i32, i32* @RADEON_DISP_TV_SOURCE_CRTC, align 4
  %288 = load i32, i32* %15, align 4
  %289 = or i32 %288, %287
  store i32 %289, i32* %15, align 4
  br label %290

290:                                              ; preds = %282, %278
  %291 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %292 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @CHIP_R200, align 8
  %295 = icmp sge i64 %293, %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %290
  %297 = load i32, i32* @RADEON_DISP_TV_PATH_SRC_CRTC2, align 4
  %298 = load i32, i32* %18, align 4
  %299 = or i32 %298, %297
  store i32 %299, i32* %18, align 4
  br label %305

300:                                              ; preds = %290
  %301 = load i32, i32* @RADEON_CRT2_DISP1_SEL, align 4
  %302 = xor i32 %301, -1
  %303 = load i32, i32* %16, align 4
  %304 = and i32 %303, %302
  store i32 %304, i32* %16, align 4
  br label %305

305:                                              ; preds = %300, %296
  br label %306

306:                                              ; preds = %305, %277
  %307 = load i32, i32* @RADEON_DAC_CNTL2, align 4
  %308 = load i32, i32* %14, align 4
  %309 = call i32 @WREG32(i32 %307, i32 %308)
  br label %389

310:                                              ; preds = %218
  %311 = load i32, i32* @RADEON_DAC_CNTL2, align 4
  %312 = call i32 @RREG32(i32 %311)
  %313 = load i32, i32* @RADEON_DAC2_DAC2_CLK_SEL, align 4
  %314 = or i32 %312, %313
  store i32 %314, i32* %14, align 4
  %315 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %316 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %319, label %350

319:                                              ; preds = %310
  %320 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %321 = call i64 @ASIC_IS_R300(%struct.radeon_device* %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %319
  %324 = load i32, i32* @RADEON_DISP_TVDAC_SOURCE_MASK, align 4
  %325 = xor i32 %324, -1
  %326 = load i32, i32* %15, align 4
  %327 = and i32 %326, %325
  store i32 %327, i32* %15, align 4
  %328 = load i32, i32* @RADEON_DISP_TVDAC_SOURCE_CRTC, align 4
  %329 = load i32, i32* %15, align 4
  %330 = or i32 %329, %328
  store i32 %330, i32* %15, align 4
  br label %349

331:                                              ; preds = %319
  %332 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %333 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @CHIP_R200, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %344

337:                                              ; preds = %331
  %338 = load i32, i32* @R200_FP2_SOURCE_SEL_MASK, align 4
  %339 = load i32, i32* @RADEON_FP2_DVO_RATE_SEL_SDR, align 4
  %340 = or i32 %338, %339
  %341 = xor i32 %340, -1
  %342 = load i32, i32* %17, align 4
  %343 = and i32 %342, %341
  store i32 %343, i32* %17, align 4
  br label %348

344:                                              ; preds = %331
  %345 = load i32, i32* @RADEON_CRT2_DISP1_SEL, align 4
  %346 = load i32, i32* %16, align 4
  %347 = or i32 %346, %345
  store i32 %347, i32* %16, align 4
  br label %348

348:                                              ; preds = %344, %337
  br label %349

349:                                              ; preds = %348, %323
  br label %385

350:                                              ; preds = %310
  %351 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %352 = call i64 @ASIC_IS_R300(%struct.radeon_device* %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %362

354:                                              ; preds = %350
  %355 = load i32, i32* @RADEON_DISP_TVDAC_SOURCE_MASK, align 4
  %356 = xor i32 %355, -1
  %357 = load i32, i32* %15, align 4
  %358 = and i32 %357, %356
  store i32 %358, i32* %15, align 4
  %359 = load i32, i32* @RADEON_DISP_TVDAC_SOURCE_CRTC2, align 4
  %360 = load i32, i32* %15, align 4
  %361 = or i32 %360, %359
  store i32 %361, i32* %15, align 4
  br label %384

362:                                              ; preds = %350
  %363 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %364 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @CHIP_R200, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %378

368:                                              ; preds = %362
  %369 = load i32, i32* @R200_FP2_SOURCE_SEL_MASK, align 4
  %370 = load i32, i32* @RADEON_FP2_DVO_RATE_SEL_SDR, align 4
  %371 = or i32 %369, %370
  %372 = xor i32 %371, -1
  %373 = load i32, i32* %17, align 4
  %374 = and i32 %373, %372
  store i32 %374, i32* %17, align 4
  %375 = load i32, i32* @R200_FP2_SOURCE_SEL_CRTC2, align 4
  %376 = load i32, i32* %17, align 4
  %377 = or i32 %376, %375
  store i32 %377, i32* %17, align 4
  br label %383

378:                                              ; preds = %362
  %379 = load i32, i32* @RADEON_CRT2_DISP1_SEL, align 4
  %380 = xor i32 %379, -1
  %381 = load i32, i32* %16, align 4
  %382 = and i32 %381, %380
  store i32 %382, i32* %16, align 4
  br label %383

383:                                              ; preds = %378, %368
  br label %384

384:                                              ; preds = %383, %354
  br label %385

385:                                              ; preds = %384, %349
  %386 = load i32, i32* @RADEON_DAC_CNTL2, align 4
  %387 = load i32, i32* %14, align 4
  %388 = call i32 @WREG32(i32 %386, i32 %387)
  br label %389

389:                                              ; preds = %385, %306
  %390 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %391 = call i64 @ASIC_IS_R300(%struct.radeon_device* %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %400

393:                                              ; preds = %389
  %394 = load i32, i32* @RADEON_GPIOPAD_A, align 4
  %395 = load i32, i32* %13, align 4
  %396 = call i32 @WREG32_P(i32 %394, i32 %395, i32 -2)
  %397 = load i32, i32* @RADEON_DISP_OUTPUT_CNTL, align 4
  %398 = load i32, i32* %15, align 4
  %399 = call i32 @WREG32(i32 %397, i32 %398)
  br label %422

400:                                              ; preds = %389
  %401 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %402 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = load i64, i64* @CHIP_R200, align 8
  %405 = icmp ne i64 %403, %404
  br i1 %405, label %406, label %410

406:                                              ; preds = %400
  %407 = load i32, i32* @RADEON_DISP_HW_DEBUG, align 4
  %408 = load i32, i32* %16, align 4
  %409 = call i32 @WREG32(i32 %407, i32 %408)
  br label %421

410:                                              ; preds = %400
  %411 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %412 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = load i64, i64* @CHIP_R200, align 8
  %415 = icmp eq i64 %413, %414
  br i1 %415, label %416, label %420

416:                                              ; preds = %410
  %417 = load i32, i32* @RADEON_FP2_GEN_CNTL, align 4
  %418 = load i32, i32* %17, align 4
  %419 = call i32 @WREG32(i32 %417, i32 %418)
  br label %420

420:                                              ; preds = %416, %410
  br label %421

421:                                              ; preds = %420, %406
  br label %422

422:                                              ; preds = %421, %393
  %423 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %424 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = load i64, i64* @CHIP_R200, align 8
  %427 = icmp sge i64 %425, %426
  br i1 %427, label %428, label %432

428:                                              ; preds = %422
  %429 = load i32, i32* @RADEON_DISP_TV_OUT_CNTL, align 4
  %430 = load i32, i32* %18, align 4
  %431 = call i32 @WREG32(i32 %429, i32 %430)
  br label %432

432:                                              ; preds = %428, %422
  %433 = load i32, i32* %19, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %440

435:                                              ; preds = %432
  %436 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %437 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %438 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %439 = call i32 @radeon_legacy_tv_mode_set(%struct.drm_encoder* %436, %struct.drm_display_mode* %437, %struct.drm_display_mode* %438)
  br label %440

440:                                              ; preds = %435, %432
  %441 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %442 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %441, i32 0, i32 1
  %443 = load i64, i64* %442, align 8
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %451

445:                                              ; preds = %440
  %446 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %447 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %448 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %447, i32 0, i32 0
  %449 = load i64, i64* %448, align 8
  %450 = call i32 @radeon_atombios_encoder_crtc_scratch_regs(%struct.drm_encoder* %446, i64 %449)
  br label %457

451:                                              ; preds = %440
  %452 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %453 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %454 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  %456 = call i32 @radeon_combios_encoder_crtc_scratch_regs(%struct.drm_encoder* %452, i64 %455)
  br label %457

457:                                              ; preds = %451, %445
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(i32) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i64 @ASIC_IS_R300(%struct.radeon_device*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @radeon_legacy_tv_mode_set(%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @radeon_atombios_encoder_crtc_scratch_regs(%struct.drm_encoder*, i64) #1

declare dso_local i32 @radeon_combios_encoder_crtc_scratch_regs(%struct.drm_encoder*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
