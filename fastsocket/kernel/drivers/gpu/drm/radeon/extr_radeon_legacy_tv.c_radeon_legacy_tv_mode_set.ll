; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_tv.c_radeon_legacy_tv_mode_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_tv.c_radeon_legacy_tv_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_encoder = type { %struct.radeon_encoder_tv_dac* }
%struct.radeon_encoder_tv_dac = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i32* }
%struct.radeon_tv_mode_constants = type { i32, i32, i32, i32, i32 }
%struct.radeon_crtc = type { i32, i64 }

@RADEON_VIN_ASYNC_RST = common dso_local global i32 0, align 4
@RADEON_CRT_FIFO_CE_EN = common dso_local global i32 0, align 4
@RADEON_TV_FIFO_CE_EN = common dso_local global i32 0, align 4
@RADEON_TV_ON = common dso_local global i32 0, align 4
@RADEON_TVCLK_ALWAYS_ONb = common dso_local global i32 0, align 4
@TV_STD_NTSC = common dso_local global i64 0, align 8
@TV_STD_NTSC_J = common dso_local global i64 0, align 8
@RADEON_RESTART_PHASE_FIX = common dso_local global i32 0, align 4
@RADEON_SLEW_RATE_LIMIT = common dso_local global i32 0, align 4
@RADEON_SYNC_TIP_LEVEL = common dso_local global i32 0, align 4
@RADEON_YFLT_EN = common dso_local global i32 0, align 4
@RADEON_UVFLT_EN = common dso_local global i32 0, align 4
@RADEON_CY_FILT_BLEND_SHIFT = common dso_local global i32 0, align 4
@RADEON_SET_UP_LEVEL_SHIFT = common dso_local global i32 0, align 4
@RADEON_BLANK_LEVEL_SHIFT = common dso_local global i32 0, align 4
@RADEON_TV_U_BURST_LEVEL_MASK = common dso_local global i32 0, align 4
@RADEON_TV_V_BURST_LEVEL_MASK = common dso_local global i32 0, align 4
@RADEON_TV_V_BURST_LEVEL_SHIFT = common dso_local global i32 0, align 4
@TV_STD_SCART_PAL = common dso_local global i64 0, align 8
@RADEON_ALT_PHASE_EN = common dso_local global i32 0, align 4
@RADEON_RGB_DITHER_EN = common dso_local global i32 0, align 4
@RADEON_TVOUT_SCALE_EN = common dso_local global i32 0, align 4
@RADEON_UVRAM_READ_MARGIN_SHIFT = common dso_local global i32 0, align 4
@RADEON_FIFORAM_FFMACRO_READ_MARGIN_SHIFT = common dso_local global i32 0, align 4
@RADEON_RGB_SRC_SEL_CRTC2 = common dso_local global i32 0, align 4
@RMX_OFF = common dso_local global i64 0, align 8
@RADEON_RGB_SRC_SEL_RMX = common dso_local global i32 0, align 4
@RADEON_RGB_SRC_SEL_CRTC1 = common dso_local global i32 0, align 4
@TV_STD_PAL_M = common dso_local global i64 0, align 8
@TV_STD_PAL_60 = common dso_local global i64 0, align 8
@NTSC_TV_LINES_PER_FRAME = common dso_local global i32 0, align 4
@PAL_TV_LINES_PER_FRAME = common dso_local global i32 0, align 4
@RADEON_TV_VSCALER_CNTL1 = common dso_local global i32 0, align 4
@FRAC_BITS = common dso_local global i32 0, align 4
@RADEON_RESTART_FIELD = common dso_local global i32 0, align 4
@RADEON_Y_DEL_W_SIG_SHIFT = common dso_local global i32 0, align 4
@SLOPE_limit = common dso_local global i32* null, align 8
@SLOPE_value = common dso_local global i32* null, align 8
@YCOEF_EN_value = common dso_local global i32* null, align 8
@YCOEF_value = common dso_local global i32* null, align 8
@RADEON_Y_FALL_PING_PONG = common dso_local global i32 0, align 4
@RADEON_Y_RISE_PING_PONG = common dso_local global i32 0, align 4
@RADEON_TV_VSCALER_CNTL2 = common dso_local global i32 0, align 4
@RADEON_DITHER_MODE = common dso_local global i32 0, align 4
@RADEON_Y_OUTPUT_DITHER_EN = common dso_local global i32 0, align 4
@RADEON_UV_OUTPUT_DITHER_EN = common dso_local global i32 0, align 4
@RADEON_UV_TO_BUF_DITHER_EN = common dso_local global i32 0, align 4
@RADEON_UV_INC_SHIFT = common dso_local global i32 0, align 4
@RADEON_UV_INC_MASK = common dso_local global i32 0, align 4
@RADEON_UV_OUTPUT_POST_SCALE_SHIFT = common dso_local global i32 0, align 4
@RADEON_TV_DAC_NBLANK = common dso_local global i32 0, align 4
@RADEON_TV_DAC_NHOLD = common dso_local global i32 0, align 4
@RADEON_TV_DAC_STD_NTSC = common dso_local global i32 0, align 4
@RADEON_TV_DAC_STD_PAL = common dso_local global i32 0, align 4
@NTSC_TV_PLL_M_27 = common dso_local global i32 0, align 4
@NTSC_TV_PLL_N_27 = common dso_local global i32 0, align 4
@NTSC_TV_PLL_P_27 = common dso_local global i32 0, align 4
@NTSC_TV_PLL_M_14 = common dso_local global i32 0, align 4
@NTSC_TV_PLL_N_14 = common dso_local global i32 0, align 4
@NTSC_TV_PLL_P_14 = common dso_local global i32 0, align 4
@PAL_TV_PLL_M_27 = common dso_local global i32 0, align 4
@PAL_TV_PLL_N_27 = common dso_local global i32 0, align 4
@PAL_TV_PLL_P_27 = common dso_local global i32 0, align 4
@PAL_TV_PLL_M_14 = common dso_local global i32 0, align 4
@PAL_TV_PLL_N_14 = common dso_local global i32 0, align 4
@PAL_TV_PLL_P_14 = common dso_local global i32 0, align 4
@RADEON_TV_M0LO_MASK = common dso_local global i32 0, align 4
@RADEON_TV_M0HI_MASK = common dso_local global i32 0, align 4
@RADEON_TV_M0HI_SHIFT = common dso_local global i32 0, align 4
@RADEON_TV_N0LO_MASK = common dso_local global i32 0, align 4
@RADEON_TV_N0LO_SHIFT = common dso_local global i32 0, align 4
@RADEON_TV_N0HI_MASK = common dso_local global i32 0, align 4
@RADEON_TV_N0HI_SHIFT = common dso_local global i32 0, align 4
@RADEON_TV_P_MASK = common dso_local global i32 0, align 4
@RADEON_TV_P_SHIFT = common dso_local global i32 0, align 4
@RADEON_TVPCP_MASK = common dso_local global i32 0, align 4
@RADEON_TVPCP_SHIFT = common dso_local global i32 0, align 4
@RADEON_TVPVG_MASK = common dso_local global i32 0, align 4
@RADEON_TVPVG_SHIFT = common dso_local global i32 0, align 4
@RADEON_TVPDC_MASK = common dso_local global i32 0, align 4
@RADEON_TVPDC_SHIFT = common dso_local global i32 0, align 4
@RADEON_TVCLK_SRC_SEL_TVPLL = common dso_local global i32 0, align 4
@RADEON_TVPLL_TEST_DIS = common dso_local global i32 0, align 4
@NTSC_TV_VFTOTAL = common dso_local global i32 0, align 4
@hor_timing_NTSC = common dso_local global i32* null, align 8
@vert_timing_NTSC = common dso_local global i32* null, align 8
@hor_timing_PAL = common dso_local global i32* null, align 8
@vert_timing_PAL = common dso_local global i32* null, align 8
@PAL_TV_VFTOTAL = common dso_local global i32 0, align 4
@MAX_H_CODE_TIMING_LEN = common dso_local global i32 0, align 4
@MAX_V_CODE_TIMING_LEN = common dso_local global i32 0, align 4
@RADEON_TV_MASTER_CNTL = common dso_local global i32 0, align 4
@RADEON_TV_ASYNC_RST = common dso_local global i32 0, align 4
@RADEON_CRT_ASYNC_RST = common dso_local global i32 0, align 4
@RADEON_TV_FIFO_ASYNC_RST = common dso_local global i32 0, align 4
@RADEON_TV_DAC_CNTL = common dso_local global i32 0, align 4
@RADEON_TV_DAC_BGSLEEP = common dso_local global i32 0, align 4
@RADEON_TV_DAC_RDACPD = common dso_local global i32 0, align 4
@RADEON_TV_DAC_GDACPD = common dso_local global i32 0, align 4
@RADEON_TV_DAC_BDACPD = common dso_local global i32 0, align 4
@RADEON_TV_PLL_CNTL1 = common dso_local global i32 0, align 4
@RADEON_TV_PLL_CNTL = common dso_local global i32 0, align 4
@RADEON_TVPLL_RESET = common dso_local global i32 0, align 4
@RADEON_TVPLL_SLEEP = common dso_local global i32 0, align 4
@RADEON_TV_RGB_CNTL = common dso_local global i32 0, align 4
@RADEON_TV_HTOTAL = common dso_local global i32 0, align 4
@RADEON_TV_HDISP = common dso_local global i32 0, align 4
@RADEON_TV_HSTART = common dso_local global i32 0, align 4
@RADEON_TV_VTOTAL = common dso_local global i32 0, align 4
@RADEON_TV_VDISP = common dso_local global i32 0, align 4
@RADEON_TV_FTOTAL = common dso_local global i32 0, align 4
@RADEON_TV_Y_FALL_CNTL = common dso_local global i32 0, align 4
@RADEON_TV_Y_RISE_CNTL = common dso_local global i32 0, align 4
@RADEON_TV_Y_SAW_TOOTH_CNTL = common dso_local global i32 0, align 4
@RADEON_TV_SYNC_CNTL = common dso_local global i32 0, align 4
@RADEON_SYNC_PUB = common dso_local global i32 0, align 4
@RADEON_TV_SYNC_IO_DRIVE = common dso_local global i32 0, align 4
@RADEON_TV_TIMING_CNTL = common dso_local global i32 0, align 4
@RADEON_TV_MODULATOR_CNTL1 = common dso_local global i32 0, align 4
@RADEON_TV_MODULATOR_CNTL2 = common dso_local global i32 0, align 4
@RADEON_TV_PRE_DAC_MUX_CNTL = common dso_local global i32 0, align 4
@RADEON_Y_RED_EN = common dso_local global i32 0, align 4
@RADEON_C_GRN_EN = common dso_local global i32 0, align 4
@RADEON_CMP_BLU_EN = common dso_local global i32 0, align 4
@RADEON_DAC_DITHER_EN = common dso_local global i32 0, align 4
@RADEON_TV_CRC_CNTL = common dso_local global i32 0, align 4
@RADEON_TV_GAIN_LIMIT_SETTINGS = common dso_local global i32 0, align 4
@RADEON_UV_GAIN_LIMIT_SHIFT = common dso_local global i32 0, align 4
@RADEON_Y_GAIN_LIMIT_SHIFT = common dso_local global i32 0, align 4
@RADEON_TV_LINEAR_GAIN_SETTINGS = common dso_local global i32 0, align 4
@RADEON_UV_GAIN_SHIFT = common dso_local global i32 0, align 4
@RADEON_Y_GAIN_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_legacy_tv_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_encoder*, align 8
  %10 = alloca %struct.radeon_encoder_tv_dac*, align 8
  %11 = alloca %struct.radeon_tv_mode_constants*, align 8
  %12 = alloca %struct.radeon_crtc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
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
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %36 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %37 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %36, i32 0, i32 1
  %38 = load %struct.drm_device*, %struct.drm_device** %37, align 8
  store %struct.drm_device* %38, %struct.drm_device** %7, align 8
  %39 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = load %struct.radeon_device*, %struct.radeon_device** %40, align 8
  store %struct.radeon_device* %41, %struct.radeon_device** %8, align 8
  %42 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %43 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %42)
  store %struct.radeon_encoder* %43, %struct.radeon_encoder** %9, align 8
  %44 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %45 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %44, i32 0, i32 0
  %46 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %45, align 8
  store %struct.radeon_encoder_tv_dac* %46, %struct.radeon_encoder_tv_dac** %10, align 8
  %47 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %48 = call %struct.radeon_tv_mode_constants* @radeon_legacy_tv_get_std_mode(%struct.radeon_encoder* %47, i32* %14)
  store %struct.radeon_tv_mode_constants* %48, %struct.radeon_tv_mode_constants** %11, align 8
  %49 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %11, align 8
  %50 = icmp ne %struct.radeon_tv_mode_constants* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %3
  br label %842

52:                                               ; preds = %3
  %53 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %54 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.radeon_crtc* @to_radeon_crtc(i32 %55)
  store %struct.radeon_crtc* %56, %struct.radeon_crtc** %12, align 8
  %57 = load i32, i32* @RADEON_VIN_ASYNC_RST, align 4
  %58 = load i32, i32* @RADEON_CRT_FIFO_CE_EN, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @RADEON_TV_FIFO_CE_EN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @RADEON_TV_ON, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %18, align 4
  %64 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %65 = call i32 @ASIC_IS_R300(%struct.radeon_device* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %52
  %68 = load i32, i32* @RADEON_TVCLK_ALWAYS_ONb, align 4
  %69 = load i32, i32* %18, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %18, align 4
  br label %71

71:                                               ; preds = %67, %52
  %72 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %73 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TV_STD_NTSC, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %79 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TV_STD_NTSC_J, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77, %71
  %84 = load i32, i32* @RADEON_RESTART_PHASE_FIX, align 4
  %85 = load i32, i32* %18, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %18, align 4
  br label %87

87:                                               ; preds = %83, %77
  %88 = load i32, i32* @RADEON_SLEW_RATE_LIMIT, align 4
  %89 = load i32, i32* @RADEON_SYNC_TIP_LEVEL, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @RADEON_YFLT_EN, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @RADEON_UVFLT_EN, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @RADEON_CY_FILT_BLEND_SHIFT, align 4
  %96 = shl i32 6, %95
  %97 = or i32 %94, %96
  store i32 %97, i32* %21, align 4
  %98 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %99 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @TV_STD_NTSC, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %87
  %104 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %105 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @TV_STD_NTSC_J, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %103, %87
  %110 = load i32, i32* @RADEON_SET_UP_LEVEL_SHIFT, align 4
  %111 = shl i32 70, %110
  %112 = load i32, i32* @RADEON_BLANK_LEVEL_SHIFT, align 4
  %113 = shl i32 59, %112
  %114 = or i32 %111, %113
  %115 = load i32, i32* %21, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %21, align 4
  %117 = load i32, i32* @RADEON_TV_U_BURST_LEVEL_MASK, align 4
  %118 = and i32 -111, %117
  %119 = load i32, i32* @RADEON_TV_V_BURST_LEVEL_MASK, align 4
  %120 = and i32 0, %119
  %121 = load i32, i32* @RADEON_TV_V_BURST_LEVEL_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = or i32 %118, %122
  store i32 %123, i32* %22, align 4
  br label %159

124:                                              ; preds = %103
  %125 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %126 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @TV_STD_SCART_PAL, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %124
  %131 = load i32, i32* @RADEON_ALT_PHASE_EN, align 4
  %132 = load i32, i32* %21, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %21, align 4
  %134 = load i32, i32* @RADEON_TV_U_BURST_LEVEL_MASK, align 4
  %135 = and i32 0, %134
  %136 = load i32, i32* @RADEON_TV_V_BURST_LEVEL_MASK, align 4
  %137 = and i32 0, %136
  %138 = load i32, i32* @RADEON_TV_V_BURST_LEVEL_SHIFT, align 4
  %139 = shl i32 %137, %138
  %140 = or i32 %135, %139
  store i32 %140, i32* %22, align 4
  br label %158

141:                                              ; preds = %124
  %142 = load i32, i32* @RADEON_ALT_PHASE_EN, align 4
  %143 = load i32, i32* @RADEON_SET_UP_LEVEL_SHIFT, align 4
  %144 = shl i32 59, %143
  %145 = or i32 %142, %144
  %146 = load i32, i32* @RADEON_BLANK_LEVEL_SHIFT, align 4
  %147 = shl i32 59, %146
  %148 = or i32 %145, %147
  %149 = load i32, i32* %21, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %21, align 4
  %151 = load i32, i32* @RADEON_TV_U_BURST_LEVEL_MASK, align 4
  %152 = and i32 -78, %151
  %153 = load i32, i32* @RADEON_TV_V_BURST_LEVEL_MASK, align 4
  %154 = and i32 62, %153
  %155 = load i32, i32* @RADEON_TV_V_BURST_LEVEL_SHIFT, align 4
  %156 = shl i32 %154, %155
  %157 = or i32 %152, %156
  store i32 %157, i32* %22, align 4
  br label %158

158:                                              ; preds = %141, %130
  br label %159

159:                                              ; preds = %158, %109
  %160 = load i32, i32* @RADEON_RGB_DITHER_EN, align 4
  %161 = load i32, i32* @RADEON_TVOUT_SCALE_EN, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @RADEON_UVRAM_READ_MARGIN_SHIFT, align 4
  %164 = shl i32 11, %163
  %165 = or i32 %162, %164
  %166 = load i32, i32* @RADEON_FIFORAM_FFMACRO_READ_MARGIN_SHIFT, align 4
  %167 = shl i32 7, %166
  %168 = or i32 %165, %167
  %169 = call i32 @RADEON_RGB_ATTEN_SEL(i32 3)
  %170 = or i32 %168, %169
  %171 = call i32 @RADEON_RGB_ATTEN_VAL(i32 12)
  %172 = or i32 %170, %171
  store i32 %172, i32* %19, align 4
  %173 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %174 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %181

177:                                              ; preds = %159
  %178 = load i32, i32* @RADEON_RGB_SRC_SEL_CRTC2, align 4
  %179 = load i32, i32* %19, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %19, align 4
  br label %196

181:                                              ; preds = %159
  %182 = load %struct.radeon_crtc*, %struct.radeon_crtc** %12, align 8
  %183 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @RMX_OFF, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = load i32, i32* @RADEON_RGB_SRC_SEL_RMX, align 4
  %189 = load i32, i32* %19, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %19, align 4
  br label %195

191:                                              ; preds = %181
  %192 = load i32, i32* @RADEON_RGB_SRC_SEL_CRTC1, align 4
  %193 = load i32, i32* %19, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %19, align 4
  br label %195

195:                                              ; preds = %191, %187
  br label %196

196:                                              ; preds = %195, %177
  %197 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %198 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @TV_STD_NTSC, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %220, label %202

202:                                              ; preds = %196
  %203 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %204 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @TV_STD_NTSC_J, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %220, label %208

208:                                              ; preds = %202
  %209 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %210 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @TV_STD_PAL_M, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %220, label %214

214:                                              ; preds = %208
  %215 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %216 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @TV_STD_PAL_60, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %228

220:                                              ; preds = %214, %208, %202, %196
  %221 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %11, align 8
  %222 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = mul nsw i32 %223, 2
  %225 = mul nsw i32 %224, 10000
  %226 = load i32, i32* @NTSC_TV_LINES_PER_FRAME, align 4
  %227 = sdiv i32 %225, %226
  store i32 %227, i32* %15, align 4
  br label %236

228:                                              ; preds = %214
  %229 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %11, align 8
  %230 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = mul nsw i32 %231, 2
  %233 = mul nsw i32 %232, 10000
  %234 = load i32, i32* @PAL_TV_LINES_PER_FRAME, align 4
  %235 = sdiv i32 %233, %234
  store i32 %235, i32* %15, align 4
  br label %236

236:                                              ; preds = %228, %220
  %237 = load i32, i32* @RADEON_TV_VSCALER_CNTL1, align 4
  %238 = call i32 @RREG32(i32 %237)
  store i32 %238, i32* %17, align 4
  %239 = load i32, i32* %17, align 4
  %240 = and i32 %239, -469827584
  store i32 %240, i32* %17, align 4
  %241 = load i32, i32* %15, align 4
  %242 = load i32, i32* @FRAC_BITS, align 4
  %243 = shl i32 1, %242
  %244 = mul nsw i32 %241, %243
  %245 = sdiv i32 %244, 10000
  %246 = load i32, i32* %17, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %17, align 4
  %248 = load i32, i32* %17, align 4
  store i32 %248, i32* %23, align 4
  %249 = load i32, i32* %14, align 4
  %250 = icmp eq i32 %249, 2700
  br i1 %250, label %251, label %255

251:                                              ; preds = %236
  %252 = load i32, i32* @RADEON_RESTART_FIELD, align 4
  %253 = load i32, i32* %23, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %23, align 4
  br label %255

255:                                              ; preds = %251, %236
  %256 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %11, align 8
  %257 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp eq i32 %258, 1024
  br i1 %259, label %260, label %265

260:                                              ; preds = %255
  %261 = load i32, i32* @RADEON_Y_DEL_W_SIG_SHIFT, align 4
  %262 = shl i32 4, %261
  %263 = load i32, i32* %23, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %23, align 4
  br label %270

265:                                              ; preds = %255
  %266 = load i32, i32* @RADEON_Y_DEL_W_SIG_SHIFT, align 4
  %267 = shl i32 2, %266
  %268 = load i32, i32* %23, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %23, align 4
  br label %270

270:                                              ; preds = %265, %260
  %271 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %11, align 8
  %272 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = mul nsw i32 %273, 2
  %275 = mul nsw i32 %274, 1000
  store i32 %275, i32* %17, align 4
  %276 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %277 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @TV_STD_NTSC, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %299, label %281

281:                                              ; preds = %270
  %282 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %283 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @TV_STD_NTSC_J, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %299, label %287

287:                                              ; preds = %281
  %288 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %289 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @TV_STD_PAL_M, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %299, label %293

293:                                              ; preds = %287
  %294 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %295 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @TV_STD_PAL_60, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %303

299:                                              ; preds = %293, %287, %281, %270
  %300 = load i32, i32* @NTSC_TV_LINES_PER_FRAME, align 4
  %301 = load i32, i32* %17, align 4
  %302 = sdiv i32 %301, %300
  store i32 %302, i32* %17, align 4
  br label %307

303:                                              ; preds = %293
  %304 = load i32, i32* @PAL_TV_LINES_PER_FRAME, align 4
  %305 = load i32, i32* %17, align 4
  %306 = sdiv i32 %305, %304
  store i32 %306, i32* %17, align 4
  br label %307

307:                                              ; preds = %303, %299
  %308 = load i32, i32* %17, align 4
  %309 = add nsw i32 %308, 500
  %310 = sdiv i32 %309, 1000
  store i32 %310, i32* %16, align 4
  %311 = load i32, i32* %16, align 4
  %312 = icmp slt i32 %311, 3
  br i1 %312, label %313, label %314

313:                                              ; preds = %307
  store i32 3, i32* %16, align 4
  br label %314

314:                                              ; preds = %313, %307
  store i32 0, i32* %13, align 4
  br label %315

315:                                              ; preds = %330, %314
  %316 = load i32, i32* %13, align 4
  %317 = load i32*, i32** @SLOPE_limit, align 8
  %318 = call i32 @ARRAY_SIZE(i32* %317)
  %319 = icmp slt i32 %316, %318
  br i1 %319, label %320, label %333

320:                                              ; preds = %315
  %321 = load i32, i32* %16, align 4
  %322 = load i32*, i32** @SLOPE_limit, align 8
  %323 = load i32, i32* %13, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = icmp eq i32 %321, %326
  br i1 %327, label %328, label %329

328:                                              ; preds = %320
  br label %333

329:                                              ; preds = %320
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %13, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %13, align 4
  br label %315

333:                                              ; preds = %328, %315
  %334 = load i32, i32* %15, align 4
  %335 = load i32*, i32** @SLOPE_value, align 8
  %336 = load i32, i32* %13, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = mul nsw i32 %334, %339
  %341 = load i32, i32* @FRAC_BITS, align 4
  %342 = sub nsw i32 %341, 1
  %343 = shl i32 1, %342
  %344 = mul nsw i32 %340, %343
  %345 = add nsw i32 %344, 5001
  %346 = sdiv i32 %345, 10000
  %347 = sdiv i32 %346, 8
  %348 = load i32*, i32** @SLOPE_value, align 8
  %349 = load i32, i32* %13, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @FRAC_BITS, align 4
  %354 = sub nsw i32 %353, 1
  %355 = shl i32 1, %354
  %356 = mul nsw i32 %352, %355
  %357 = sdiv i32 %356, 8
  %358 = shl i32 %357, 16
  %359 = or i32 %347, %358
  store i32 %359, i32* %30, align 4
  %360 = load i32*, i32** @YCOEF_EN_value, align 8
  %361 = load i32, i32* %13, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %360, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = shl i32 %364, 17
  %366 = load i32*, i32** @YCOEF_value, align 8
  %367 = load i32, i32* %13, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = mul nsw i32 %370, 256
  %372 = sdiv i32 %371, 8
  %373 = shl i32 %372, 24
  %374 = or i32 %365, %373
  %375 = load i32, i32* @RADEON_Y_FALL_PING_PONG, align 4
  %376 = or i32 %374, %375
  %377 = load i32*, i32** @SLOPE_value, align 8
  %378 = load i32, i32* %13, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %377, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = mul nsw i32 272, %381
  %383 = sdiv i32 %382, 8
  %384 = load i32, i32* @FRAC_BITS, align 4
  %385 = sub nsw i32 %384, 1
  %386 = shl i32 1, %385
  %387 = mul nsw i32 %383, %386
  %388 = sdiv i32 %387, 1024
  %389 = or i32 %376, %388
  store i32 %389, i32* %28, align 4
  %390 = load i32, i32* @RADEON_Y_RISE_PING_PONG, align 4
  %391 = load i32, i32* %16, align 4
  %392 = mul nsw i32 %391, 1024
  %393 = sub nsw i32 %392, 272
  %394 = load i32*, i32** @SLOPE_value, align 8
  %395 = load i32, i32* %13, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %394, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = mul nsw i32 %393, %398
  %400 = sdiv i32 %399, 8
  %401 = load i32, i32* @FRAC_BITS, align 4
  %402 = sub nsw i32 %401, 1
  %403 = shl i32 1, %402
  %404 = mul nsw i32 %400, %403
  %405 = sdiv i32 %404, 1024
  %406 = or i32 %390, %405
  store i32 %406, i32* %29, align 4
  %407 = load i32, i32* @RADEON_TV_VSCALER_CNTL2, align 4
  %408 = call i32 @RREG32(i32 %407)
  %409 = and i32 %408, 16777200
  store i32 %409, i32* %24, align 4
  %410 = load i32, i32* @RADEON_DITHER_MODE, align 4
  %411 = or i32 268435456, %410
  %412 = load i32, i32* @RADEON_Y_OUTPUT_DITHER_EN, align 4
  %413 = or i32 %411, %412
  %414 = load i32, i32* @RADEON_UV_OUTPUT_DITHER_EN, align 4
  %415 = or i32 %413, %414
  %416 = load i32, i32* @RADEON_UV_TO_BUF_DITHER_EN, align 4
  %417 = or i32 %415, %416
  %418 = load i32, i32* %24, align 4
  %419 = or i32 %418, %417
  store i32 %419, i32* %24, align 4
  %420 = load i32, i32* %23, align 4
  %421 = load i32, i32* @RADEON_UV_INC_SHIFT, align 4
  %422 = ashr i32 %420, %421
  %423 = load i32, i32* @RADEON_UV_INC_MASK, align 4
  %424 = and i32 %422, %423
  store i32 %424, i32* %17, align 4
  %425 = load i32, i32* %17, align 4
  %426 = sdiv i32 41943040, %425
  %427 = add nsw i32 %426, 5
  %428 = sdiv i32 %427, 10
  store i32 %428, i32* %17, align 4
  %429 = load i32, i32* %17, align 4
  %430 = load i32, i32* @RADEON_UV_OUTPUT_POST_SCALE_SHIFT, align 4
  %431 = shl i32 %429, %430
  %432 = or i32 %431, 720896
  store i32 %432, i32* %17, align 4
  %433 = load i32, i32* %17, align 4
  %434 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %435 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %434, i32 0, i32 3
  %436 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %435, i32 0, i32 0
  store i32 %433, i32* %436, align 8
  %437 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %438 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %437, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = load i64, i64* @TV_STD_NTSC, align 8
  %441 = icmp eq i64 %439, %440
  br i1 %441, label %460, label %442

442:                                              ; preds = %333
  %443 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %444 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = load i64, i64* @TV_STD_NTSC_J, align 8
  %447 = icmp eq i64 %445, %446
  br i1 %447, label %460, label %448

448:                                              ; preds = %442
  %449 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %450 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = load i64, i64* @TV_STD_PAL_M, align 8
  %453 = icmp eq i64 %451, %452
  br i1 %453, label %460, label %454

454:                                              ; preds = %448
  %455 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %456 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %455, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = load i64, i64* @TV_STD_PAL_60, align 8
  %459 = icmp eq i64 %457, %458
  br i1 %459, label %460, label %464

460:                                              ; preds = %454, %448, %442, %333
  %461 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %462 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 8
  store i32 %463, i32* %20, align 4
  br label %468

464:                                              ; preds = %454
  %465 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %466 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 4
  store i32 %467, i32* %20, align 4
  br label %468

468:                                              ; preds = %464, %460
  %469 = load i32, i32* @RADEON_TV_DAC_NBLANK, align 4
  %470 = load i32, i32* @RADEON_TV_DAC_NHOLD, align 4
  %471 = or i32 %469, %470
  %472 = load i32, i32* %20, align 4
  %473 = or i32 %472, %471
  store i32 %473, i32* %20, align 4
  %474 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %475 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %474, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = load i64, i64* @TV_STD_NTSC, align 8
  %478 = icmp eq i64 %476, %477
  br i1 %478, label %485, label %479

479:                                              ; preds = %468
  %480 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %481 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %480, i32 0, i32 0
  %482 = load i64, i64* %481, align 8
  %483 = load i64, i64* @TV_STD_NTSC_J, align 8
  %484 = icmp eq i64 %482, %483
  br i1 %484, label %485, label %489

485:                                              ; preds = %479, %468
  %486 = load i32, i32* @RADEON_TV_DAC_STD_NTSC, align 4
  %487 = load i32, i32* %20, align 4
  %488 = or i32 %487, %486
  store i32 %488, i32* %20, align 4
  br label %493

489:                                              ; preds = %479
  %490 = load i32, i32* @RADEON_TV_DAC_STD_PAL, align 4
  %491 = load i32, i32* %20, align 4
  %492 = or i32 %491, %490
  store i32 %492, i32* %20, align 4
  br label %493

493:                                              ; preds = %489, %485
  %494 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %495 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %494, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = load i64, i64* @TV_STD_NTSC, align 8
  %498 = icmp eq i64 %496, %497
  br i1 %498, label %505, label %499

499:                                              ; preds = %493
  %500 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %501 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %500, i32 0, i32 0
  %502 = load i64, i64* %501, align 8
  %503 = load i64, i64* @TV_STD_NTSC_J, align 8
  %504 = icmp eq i64 %502, %503
  br i1 %504, label %505, label %517

505:                                              ; preds = %499, %493
  %506 = load i32, i32* %14, align 4
  %507 = icmp eq i32 %506, 2700
  br i1 %507, label %508, label %512

508:                                              ; preds = %505
  %509 = load i32, i32* @NTSC_TV_PLL_M_27, align 4
  store i32 %509, i32* %31, align 4
  %510 = load i32, i32* @NTSC_TV_PLL_N_27, align 4
  store i32 %510, i32* %32, align 4
  %511 = load i32, i32* @NTSC_TV_PLL_P_27, align 4
  store i32 %511, i32* %33, align 4
  br label %516

512:                                              ; preds = %505
  %513 = load i32, i32* @NTSC_TV_PLL_M_14, align 4
  store i32 %513, i32* %31, align 4
  %514 = load i32, i32* @NTSC_TV_PLL_N_14, align 4
  store i32 %514, i32* %32, align 4
  %515 = load i32, i32* @NTSC_TV_PLL_P_14, align 4
  store i32 %515, i32* %33, align 4
  br label %516

516:                                              ; preds = %512, %508
  br label %529

517:                                              ; preds = %499
  %518 = load i32, i32* %14, align 4
  %519 = icmp eq i32 %518, 2700
  br i1 %519, label %520, label %524

520:                                              ; preds = %517
  %521 = load i32, i32* @PAL_TV_PLL_M_27, align 4
  store i32 %521, i32* %31, align 4
  %522 = load i32, i32* @PAL_TV_PLL_N_27, align 4
  store i32 %522, i32* %32, align 4
  %523 = load i32, i32* @PAL_TV_PLL_P_27, align 4
  store i32 %523, i32* %33, align 4
  br label %528

524:                                              ; preds = %517
  %525 = load i32, i32* @PAL_TV_PLL_M_14, align 4
  store i32 %525, i32* %31, align 4
  %526 = load i32, i32* @PAL_TV_PLL_N_14, align 4
  store i32 %526, i32* %32, align 4
  %527 = load i32, i32* @PAL_TV_PLL_P_14, align 4
  store i32 %527, i32* %33, align 4
  br label %528

528:                                              ; preds = %524, %520
  br label %529

529:                                              ; preds = %528, %516
  %530 = load i32, i32* %31, align 4
  %531 = load i32, i32* @RADEON_TV_M0LO_MASK, align 4
  %532 = and i32 %530, %531
  %533 = load i32, i32* %31, align 4
  %534 = ashr i32 %533, 8
  %535 = load i32, i32* @RADEON_TV_M0HI_MASK, align 4
  %536 = and i32 %534, %535
  %537 = load i32, i32* @RADEON_TV_M0HI_SHIFT, align 4
  %538 = shl i32 %536, %537
  %539 = or i32 %532, %538
  %540 = load i32, i32* %32, align 4
  %541 = load i32, i32* @RADEON_TV_N0LO_MASK, align 4
  %542 = and i32 %540, %541
  %543 = load i32, i32* @RADEON_TV_N0LO_SHIFT, align 4
  %544 = shl i32 %542, %543
  %545 = or i32 %539, %544
  %546 = load i32, i32* %32, align 4
  %547 = ashr i32 %546, 9
  %548 = load i32, i32* @RADEON_TV_N0HI_MASK, align 4
  %549 = and i32 %547, %548
  %550 = load i32, i32* @RADEON_TV_N0HI_SHIFT, align 4
  %551 = shl i32 %549, %550
  %552 = or i32 %545, %551
  %553 = load i32, i32* %33, align 4
  %554 = load i32, i32* @RADEON_TV_P_MASK, align 4
  %555 = and i32 %553, %554
  %556 = load i32, i32* @RADEON_TV_P_SHIFT, align 4
  %557 = shl i32 %555, %556
  %558 = or i32 %552, %557
  store i32 %558, i32* %25, align 4
  %559 = load i32, i32* @RADEON_TVPCP_MASK, align 4
  %560 = and i32 4, %559
  %561 = load i32, i32* @RADEON_TVPCP_SHIFT, align 4
  %562 = shl i32 %560, %561
  %563 = load i32, i32* @RADEON_TVPVG_MASK, align 4
  %564 = and i32 4, %563
  %565 = load i32, i32* @RADEON_TVPVG_SHIFT, align 4
  %566 = shl i32 %564, %565
  %567 = or i32 %562, %566
  %568 = load i32, i32* @RADEON_TVPDC_MASK, align 4
  %569 = and i32 1, %568
  %570 = load i32, i32* @RADEON_TVPDC_SHIFT, align 4
  %571 = shl i32 %569, %570
  %572 = or i32 %567, %571
  %573 = load i32, i32* @RADEON_TVCLK_SRC_SEL_TVPLL, align 4
  %574 = or i32 %572, %573
  %575 = load i32, i32* @RADEON_TVPLL_TEST_DIS, align 4
  %576 = or i32 %574, %575
  store i32 %576, i32* %26, align 4
  %577 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %578 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %577, i32 0, i32 3
  %579 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %578, i32 0, i32 1
  store i32 200, i32* %579, align 4
  %580 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %581 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %580, i32 0, i32 0
  %582 = load i64, i64* %581, align 8
  %583 = load i64, i64* @TV_STD_NTSC, align 8
  %584 = icmp eq i64 %582, %583
  br i1 %584, label %603, label %585

585:                                              ; preds = %529
  %586 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %587 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %586, i32 0, i32 0
  %588 = load i64, i64* %587, align 8
  %589 = load i64, i64* @TV_STD_NTSC_J, align 8
  %590 = icmp eq i64 %588, %589
  br i1 %590, label %603, label %591

591:                                              ; preds = %585
  %592 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %593 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %592, i32 0, i32 0
  %594 = load i64, i64* %593, align 8
  %595 = load i64, i64* @TV_STD_PAL_M, align 8
  %596 = icmp eq i64 %594, %595
  br i1 %596, label %603, label %597

597:                                              ; preds = %591
  %598 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %599 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %598, i32 0, i32 0
  %600 = load i64, i64* %599, align 8
  %601 = load i64, i64* @TV_STD_PAL_60, align 8
  %602 = icmp eq i64 %600, %601
  br i1 %602, label %603, label %607

603:                                              ; preds = %597, %591, %585, %529
  %604 = load i32, i32* @NTSC_TV_VFTOTAL, align 4
  store i32 %604, i32* %27, align 4
  %605 = load i32*, i32** @hor_timing_NTSC, align 8
  store i32* %605, i32** %34, align 8
  %606 = load i32*, i32** @vert_timing_NTSC, align 8
  store i32* %606, i32** %35, align 8
  br label %611

607:                                              ; preds = %597
  %608 = load i32*, i32** @hor_timing_PAL, align 8
  store i32* %608, i32** %34, align 8
  %609 = load i32*, i32** @vert_timing_PAL, align 8
  store i32* %609, i32** %35, align 8
  %610 = load i32, i32* @PAL_TV_VFTOTAL, align 4
  store i32 %610, i32* %27, align 4
  br label %611

611:                                              ; preds = %607, %603
  store i32 0, i32* %13, align 4
  br label %612

612:                                              ; preds = %632, %611
  %613 = load i32, i32* %13, align 4
  %614 = load i32, i32* @MAX_H_CODE_TIMING_LEN, align 4
  %615 = icmp slt i32 %613, %614
  br i1 %615, label %616, label %635

616:                                              ; preds = %612
  %617 = load i32*, i32** %34, align 8
  %618 = load i32, i32* %13, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds i32, i32* %617, i64 %619
  %621 = load i32, i32* %620, align 4
  %622 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %623 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %622, i32 0, i32 3
  %624 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %623, i32 0, i32 2
  %625 = load i32*, i32** %624, align 8
  %626 = load i32, i32* %13, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds i32, i32* %625, i64 %627
  store i32 %621, i32* %628, align 4
  %629 = icmp eq i32 %621, 0
  br i1 %629, label %630, label %631

630:                                              ; preds = %616
  br label %635

631:                                              ; preds = %616
  br label %632

632:                                              ; preds = %631
  %633 = load i32, i32* %13, align 4
  %634 = add nsw i32 %633, 1
  store i32 %634, i32* %13, align 4
  br label %612

635:                                              ; preds = %630, %612
  store i32 0, i32* %13, align 4
  br label %636

636:                                              ; preds = %656, %635
  %637 = load i32, i32* %13, align 4
  %638 = load i32, i32* @MAX_V_CODE_TIMING_LEN, align 4
  %639 = icmp slt i32 %637, %638
  br i1 %639, label %640, label %659

640:                                              ; preds = %636
  %641 = load i32*, i32** %35, align 8
  %642 = load i32, i32* %13, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds i32, i32* %641, i64 %643
  %645 = load i32, i32* %644, align 4
  %646 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %647 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %646, i32 0, i32 3
  %648 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %647, i32 0, i32 3
  %649 = load i32*, i32** %648, align 8
  %650 = load i32, i32* %13, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds i32, i32* %649, i64 %651
  store i32 %645, i32* %652, align 4
  %653 = icmp eq i32 %645, 0
  br i1 %653, label %654, label %655

654:                                              ; preds = %640
  br label %659

655:                                              ; preds = %640
  br label %656

656:                                              ; preds = %655
  %657 = load i32, i32* %13, align 4
  %658 = add nsw i32 %657, 1
  store i32 %658, i32* %13, align 4
  br label %636

659:                                              ; preds = %654, %636
  %660 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %661 = call i32 @radeon_legacy_tv_init_restarts(%struct.drm_encoder* %660)
  %662 = load i32, i32* @RADEON_TV_MASTER_CNTL, align 4
  %663 = load i32, i32* %18, align 4
  %664 = load i32, i32* @RADEON_TV_ASYNC_RST, align 4
  %665 = or i32 %663, %664
  %666 = load i32, i32* @RADEON_CRT_ASYNC_RST, align 4
  %667 = or i32 %665, %666
  %668 = load i32, i32* @RADEON_TV_FIFO_ASYNC_RST, align 4
  %669 = or i32 %667, %668
  %670 = call i32 @WREG32(i32 %662, i32 %669)
  %671 = load i32, i32* @RADEON_TV_DAC_CNTL, align 4
  %672 = call i32 @RREG32(i32 %671)
  store i32 %672, i32* %17, align 4
  %673 = load i32, i32* @RADEON_TV_DAC_NBLANK, align 4
  %674 = xor i32 %673, -1
  %675 = load i32, i32* %17, align 4
  %676 = and i32 %675, %674
  store i32 %676, i32* %17, align 4
  %677 = load i32, i32* @RADEON_TV_DAC_BGSLEEP, align 4
  %678 = load i32, i32* @RADEON_TV_DAC_RDACPD, align 4
  %679 = or i32 %677, %678
  %680 = load i32, i32* @RADEON_TV_DAC_GDACPD, align 4
  %681 = or i32 %679, %680
  %682 = load i32, i32* @RADEON_TV_DAC_BDACPD, align 4
  %683 = or i32 %681, %682
  %684 = load i32, i32* %17, align 4
  %685 = or i32 %684, %683
  store i32 %685, i32* %17, align 4
  %686 = load i32, i32* @RADEON_TV_DAC_CNTL, align 4
  %687 = load i32, i32* %17, align 4
  %688 = call i32 @WREG32(i32 %686, i32 %687)
  %689 = load i32, i32* @RADEON_TV_PLL_CNTL1, align 4
  %690 = load i32, i32* @RADEON_TVCLK_SRC_SEL_TVPLL, align 4
  %691 = xor i32 %690, -1
  %692 = call i32 @WREG32_PLL_P(i32 %689, i32 0, i32 %691)
  %693 = load i32, i32* @RADEON_TV_PLL_CNTL, align 4
  %694 = load i32, i32* %25, align 4
  %695 = call i32 @WREG32_PLL(i32 %693, i32 %694)
  %696 = load i32, i32* @RADEON_TV_PLL_CNTL1, align 4
  %697 = load i32, i32* @RADEON_TVPLL_RESET, align 4
  %698 = load i32, i32* @RADEON_TVPLL_RESET, align 4
  %699 = xor i32 %698, -1
  %700 = call i32 @WREG32_PLL_P(i32 %696, i32 %697, i32 %699)
  %701 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %702 = call i32 @radeon_wait_pll_lock(%struct.drm_encoder* %701, i32 200, i32 800, i32 135)
  %703 = load i32, i32* @RADEON_TV_PLL_CNTL1, align 4
  %704 = load i32, i32* @RADEON_TVPLL_RESET, align 4
  %705 = xor i32 %704, -1
  %706 = call i32 @WREG32_PLL_P(i32 %703, i32 0, i32 %705)
  %707 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %708 = call i32 @radeon_wait_pll_lock(%struct.drm_encoder* %707, i32 300, i32 160, i32 27)
  %709 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %710 = call i32 @radeon_wait_pll_lock(%struct.drm_encoder* %709, i32 200, i32 800, i32 135)
  %711 = load i32, i32* @RADEON_TV_PLL_CNTL1, align 4
  %712 = call i32 @WREG32_PLL_P(i32 %711, i32 0, i32 -16)
  %713 = load i32, i32* @RADEON_TV_PLL_CNTL1, align 4
  %714 = load i32, i32* @RADEON_TVCLK_SRC_SEL_TVPLL, align 4
  %715 = load i32, i32* @RADEON_TVCLK_SRC_SEL_TVPLL, align 4
  %716 = xor i32 %715, -1
  %717 = call i32 @WREG32_PLL_P(i32 %713, i32 %714, i32 %716)
  %718 = load i32, i32* @RADEON_TV_PLL_CNTL1, align 4
  %719 = load i32, i32* @RADEON_TVPDC_SHIFT, align 4
  %720 = shl i32 1, %719
  %721 = load i32, i32* @RADEON_TVPDC_MASK, align 4
  %722 = xor i32 %721, -1
  %723 = call i32 @WREG32_PLL_P(i32 %718, i32 %720, i32 %722)
  %724 = load i32, i32* @RADEON_TV_PLL_CNTL1, align 4
  %725 = load i32, i32* @RADEON_TVPLL_SLEEP, align 4
  %726 = xor i32 %725, -1
  %727 = call i32 @WREG32_PLL_P(i32 %724, i32 0, i32 %726)
  %728 = load i32, i32* @RADEON_TV_RGB_CNTL, align 4
  %729 = load i32, i32* %19, align 4
  %730 = call i32 @WREG32(i32 %728, i32 %729)
  %731 = load i32, i32* @RADEON_TV_HTOTAL, align 4
  %732 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %11, align 8
  %733 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %732, i32 0, i32 2
  %734 = load i32, i32* %733, align 4
  %735 = sub nsw i32 %734, 1
  %736 = call i32 @WREG32(i32 %731, i32 %735)
  %737 = load i32, i32* @RADEON_TV_HDISP, align 4
  %738 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %11, align 8
  %739 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %738, i32 0, i32 1
  %740 = load i32, i32* %739, align 4
  %741 = sub nsw i32 %740, 1
  %742 = call i32 @WREG32(i32 %737, i32 %741)
  %743 = load i32, i32* @RADEON_TV_HSTART, align 4
  %744 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %11, align 8
  %745 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %744, i32 0, i32 3
  %746 = load i32, i32* %745, align 4
  %747 = call i32 @WREG32(i32 %743, i32 %746)
  %748 = load i32, i32* @RADEON_TV_VTOTAL, align 4
  %749 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %11, align 8
  %750 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %749, i32 0, i32 0
  %751 = load i32, i32* %750, align 4
  %752 = sub nsw i32 %751, 1
  %753 = call i32 @WREG32(i32 %748, i32 %752)
  %754 = load i32, i32* @RADEON_TV_VDISP, align 4
  %755 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %11, align 8
  %756 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %755, i32 0, i32 4
  %757 = load i32, i32* %756, align 4
  %758 = sub nsw i32 %757, 1
  %759 = call i32 @WREG32(i32 %754, i32 %758)
  %760 = load i32, i32* @RADEON_TV_FTOTAL, align 4
  %761 = load i32, i32* %27, align 4
  %762 = call i32 @WREG32(i32 %760, i32 %761)
  %763 = load i32, i32* @RADEON_TV_VSCALER_CNTL1, align 4
  %764 = load i32, i32* %23, align 4
  %765 = call i32 @WREG32(i32 %763, i32 %764)
  %766 = load i32, i32* @RADEON_TV_VSCALER_CNTL2, align 4
  %767 = load i32, i32* %24, align 4
  %768 = call i32 @WREG32(i32 %766, i32 %767)
  %769 = load i32, i32* @RADEON_TV_Y_FALL_CNTL, align 4
  %770 = load i32, i32* %28, align 4
  %771 = call i32 @WREG32(i32 %769, i32 %770)
  %772 = load i32, i32* @RADEON_TV_Y_RISE_CNTL, align 4
  %773 = load i32, i32* %29, align 4
  %774 = call i32 @WREG32(i32 %772, i32 %773)
  %775 = load i32, i32* @RADEON_TV_Y_SAW_TOOTH_CNTL, align 4
  %776 = load i32, i32* %30, align 4
  %777 = call i32 @WREG32(i32 %775, i32 %776)
  %778 = load i32, i32* @RADEON_TV_MASTER_CNTL, align 4
  %779 = load i32, i32* %18, align 4
  %780 = load i32, i32* @RADEON_TV_ASYNC_RST, align 4
  %781 = or i32 %779, %780
  %782 = load i32, i32* @RADEON_CRT_ASYNC_RST, align 4
  %783 = or i32 %781, %782
  %784 = call i32 @WREG32(i32 %778, i32 %783)
  %785 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %786 = call i32 @radeon_legacy_write_tv_restarts(%struct.radeon_encoder* %785)
  %787 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %788 = call i32 @radeon_restore_tv_timing_tables(%struct.radeon_encoder* %787)
  %789 = load i32, i32* @RADEON_TV_MASTER_CNTL, align 4
  %790 = load i32, i32* %18, align 4
  %791 = load i32, i32* @RADEON_TV_ASYNC_RST, align 4
  %792 = or i32 %790, %791
  %793 = call i32 @WREG32(i32 %789, i32 %792)
  %794 = load i32, i32* @RADEON_TV_SYNC_CNTL, align 4
  %795 = load i32, i32* @RADEON_SYNC_PUB, align 4
  %796 = load i32, i32* @RADEON_TV_SYNC_IO_DRIVE, align 4
  %797 = or i32 %795, %796
  %798 = call i32 @WREG32(i32 %794, i32 %797)
  %799 = load i32, i32* @RADEON_TV_TIMING_CNTL, align 4
  %800 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %10, align 8
  %801 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %800, i32 0, i32 3
  %802 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %801, i32 0, i32 0
  %803 = load i32, i32* %802, align 8
  %804 = call i32 @WREG32(i32 %799, i32 %803)
  %805 = load i32, i32* @RADEON_TV_MODULATOR_CNTL1, align 4
  %806 = load i32, i32* %21, align 4
  %807 = call i32 @WREG32(i32 %805, i32 %806)
  %808 = load i32, i32* @RADEON_TV_MODULATOR_CNTL2, align 4
  %809 = load i32, i32* %22, align 4
  %810 = call i32 @WREG32(i32 %808, i32 %809)
  %811 = load i32, i32* @RADEON_TV_PRE_DAC_MUX_CNTL, align 4
  %812 = load i32, i32* @RADEON_Y_RED_EN, align 4
  %813 = load i32, i32* @RADEON_C_GRN_EN, align 4
  %814 = or i32 %812, %813
  %815 = load i32, i32* @RADEON_CMP_BLU_EN, align 4
  %816 = or i32 %814, %815
  %817 = load i32, i32* @RADEON_DAC_DITHER_EN, align 4
  %818 = or i32 %816, %817
  %819 = call i32 @WREG32(i32 %811, i32 %818)
  %820 = load i32, i32* @RADEON_TV_CRC_CNTL, align 4
  %821 = call i32 @WREG32(i32 %820, i32 0)
  %822 = load i32, i32* @RADEON_TV_MASTER_CNTL, align 4
  %823 = load i32, i32* %18, align 4
  %824 = call i32 @WREG32(i32 %822, i32 %823)
  %825 = load i32, i32* @RADEON_TV_GAIN_LIMIT_SETTINGS, align 4
  %826 = load i32, i32* @RADEON_UV_GAIN_LIMIT_SHIFT, align 4
  %827 = shl i32 383, %826
  %828 = load i32, i32* @RADEON_Y_GAIN_LIMIT_SHIFT, align 4
  %829 = shl i32 1535, %828
  %830 = or i32 %827, %829
  %831 = call i32 @WREG32(i32 %825, i32 %830)
  %832 = load i32, i32* @RADEON_TV_LINEAR_GAIN_SETTINGS, align 4
  %833 = load i32, i32* @RADEON_UV_GAIN_SHIFT, align 4
  %834 = shl i32 256, %833
  %835 = load i32, i32* @RADEON_Y_GAIN_SHIFT, align 4
  %836 = shl i32 256, %835
  %837 = or i32 %834, %836
  %838 = call i32 @WREG32(i32 %832, i32 %837)
  %839 = load i32, i32* @RADEON_TV_DAC_CNTL, align 4
  %840 = load i32, i32* %20, align 4
  %841 = call i32 @WREG32(i32 %839, i32 %840)
  br label %842

842:                                              ; preds = %659, %51
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_tv_mode_constants* @radeon_legacy_tv_get_std_mode(%struct.radeon_encoder*, i32*) #1

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(i32) #1

declare dso_local i32 @ASIC_IS_R300(%struct.radeon_device*) #1

declare dso_local i32 @RADEON_RGB_ATTEN_SEL(i32) #1

declare dso_local i32 @RADEON_RGB_ATTEN_VAL(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @radeon_legacy_tv_init_restarts(%struct.drm_encoder*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_PLL_P(i32, i32, i32) #1

declare dso_local i32 @WREG32_PLL(i32, i32) #1

declare dso_local i32 @radeon_wait_pll_lock(%struct.drm_encoder*, i32, i32, i32) #1

declare dso_local i32 @radeon_legacy_write_tv_restarts(%struct.radeon_encoder*) #1

declare dso_local i32 @radeon_restore_tv_timing_tables(%struct.radeon_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
