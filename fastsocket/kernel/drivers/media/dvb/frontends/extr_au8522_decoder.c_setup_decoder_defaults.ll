; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_au8522_decoder.c_setup_decoder_defaults.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_au8522_decoder.c_setup_decoder_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }
%struct.au8522_state = type { i32, i32, i32, i32 }

@AU8522_TVDEC_SHARPNESSREG009H = common dso_local global i32 0, align 4
@AU8522_TVDEC_BRIGHTNESS_REG00AH = common dso_local global i32 0, align 4
@AU8522_TVDEC_CONTRAST_REG00BH = common dso_local global i32 0, align 4
@AU8522_TVDEC_SATURATION_CB_REG00CH = common dso_local global i32 0, align 4
@AU8522_TVDEC_SATURATION_CR_REG00DH = common dso_local global i32 0, align 4
@AU8522_TVDEC_HUE_H_REG00EH = common dso_local global i32 0, align 4
@AU8522_TVDEC_HUE_L_REG00FH = common dso_local global i32 0, align 4
@AU8522_TVDEC_INT_MASK_REG010H = common dso_local global i32 0, align 4
@AU8522_VIDEO_MODE_REG011H = common dso_local global i32 0, align 4
@AU8522_TVDEC_PGA_REG012H = common dso_local global i32 0, align 4
@AU8522_TVDEC_PGA_REG012H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_MODE_REG015H = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_MODE_REG015H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDED_DBG_MODE_REG060H = common dso_local global i32 0, align 4
@AU8522_TVDED_DBG_MODE_REG060H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_FORMAT_CTRL1_REG061H = common dso_local global i32 0, align 4
@AU8522_TVDEC_FORMAT_CTRL1_REG061H_CVBS13 = common dso_local global i32 0, align 4
@AU8522_TVDEC_FORMAT_CTRL2_REG062H = common dso_local global i32 0, align 4
@AU8522_TVDEC_FORMAT_CTRL2_REG062H_CVBS13 = common dso_local global i32 0, align 4
@AU8522_TVDEC_VCR_DET_LLIM_REG063H = common dso_local global i32 0, align 4
@AU8522_TVDEC_VCR_DET_LLIM_REG063H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_VCR_DET_HLIM_REG064H = common dso_local global i32 0, align 4
@AU8522_TVDEC_VCR_DET_HLIM_REG064H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_VDIF_THR1_REG065H = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_VDIF_THR1_REG065H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_VDIF_THR2_REG066H = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_VDIF_THR2_REG066H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_VDIF_THR3_REG067H = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_VDIF_THR3_REG067H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_NOTCH_THR_REG068H = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_NOTCH_THR_REG068H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_HDIF_THR1_REG069H = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_HDIF_THR1_REG069H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_HDIF_THR2_REG06AH = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_HDIF_THR2_REG06AH_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_HDIF_THR3_REG06BH = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_HDIF_THR3_REG06BH_CVBS = common dso_local global i32 0, align 4
@AU8522_INPUT_CONTROL_REG081H_SVIDEO_CH13 = common dso_local global i32 0, align 4
@AU8522_INPUT_CONTROL_REG081H_SVIDEO_CH24 = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DCDIF_THR1_REG06CH = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DCDIF_THR1_REG06CH_SVIDEO = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DCDIF_THR2_REG06DH = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DCDIF_THR2_REG06DH_SVIDEO = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DCDIF_THR1_REG06CH_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DCDIF_THR2_REG06DH_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DCDIF_THR3_REG06EH = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DCDIF_THR3_REG06EH_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_UV_SEP_THR_REG06FH = common dso_local global i32 0, align 4
@AU8522_TVDEC_UV_SEP_THR_REG06FH_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DC_THR1_NTSC_REG070H = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DC_THR1_NTSC_REG070H_CVBS = common dso_local global i32 0, align 4
@AU8522_REG071H = common dso_local global i32 0, align 4
@AU8522_REG071H_CVBS = common dso_local global i32 0, align 4
@AU8522_REG072H = common dso_local global i32 0, align 4
@AU8522_REG072H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DC_THR2_NTSC_REG073H = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DC_THR2_NTSC_REG073H_CVBS = common dso_local global i32 0, align 4
@AU8522_REG074H = common dso_local global i32 0, align 4
@AU8522_REG074H_CVBS = common dso_local global i32 0, align 4
@AU8522_REG075H = common dso_local global i32 0, align 4
@AU8522_REG075H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_DCAGC_CTRL_REG077H = common dso_local global i32 0, align 4
@AU8522_TVDEC_DCAGC_CTRL_REG077H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_PIC_START_ADJ_REG078H = common dso_local global i32 0, align 4
@AU8522_TVDEC_PIC_START_ADJ_REG078H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_AGC_HIGH_LIMIT_REG079H = common dso_local global i32 0, align 4
@AU8522_TVDEC_AGC_HIGH_LIMIT_REG079H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_MACROVISION_SYNC_THR_REG07AH = common dso_local global i32 0, align 4
@AU8522_TVDEC_MACROVISION_SYNC_THR_REG07AH_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_INTRP_CTRL_REG07BH = common dso_local global i32 0, align 4
@AU8522_TVDEC_INTRP_CTRL_REG07BH_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_AGC_LOW_LIMIT_REG0E4H = common dso_local global i32 0, align 4
@AU8522_TVDEC_AGC_LOW_LIMIT_REG0E4H_CVBS = common dso_local global i32 0, align 4
@AU8522_TOREGAAGC_REG0E5H = common dso_local global i32 0, align 4
@AU8522_TOREGAAGC_REG0E5H_CVBS = common dso_local global i32 0, align 4
@AU8522_REG016H = common dso_local global i32 0, align 4
@AU8522_REG016H_CVBS = common dso_local global i32 0, align 4
@NUM_FILTER_COEF = common dso_local global i32 0, align 4
@filter_coef = common dso_local global %struct.TYPE_2__* null, align 8
@AU8522_REG42EH = common dso_local global i32 0, align 4
@AU8522_REG42FH = common dso_local global i32 0, align 4
@AU8522_REG430H = common dso_local global i32 0, align 4
@AU8522_REG431H = common dso_local global i32 0, align 4
@AU8522_REG432H = common dso_local global i32 0, align 4
@AU8522_REG433H = common dso_local global i32 0, align 4
@AU8522_REG434H = common dso_local global i32 0, align 4
@AU8522_REG435H = common dso_local global i32 0, align 4
@AU8522_REG436H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au8522_state*, i32)* @setup_decoder_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_decoder_defaults(%struct.au8522_state* %0, i32 %1) #0 {
  %3 = alloca %struct.au8522_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.au8522_state* %0, %struct.au8522_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %8 = load i32, i32* @AU8522_TVDEC_SHARPNESSREG009H, align 4
  %9 = call i32 @au8522_writereg(%struct.au8522_state* %7, i32 %8, i32 7)
  %10 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %11 = load i32, i32* @AU8522_TVDEC_BRIGHTNESS_REG00AH, align 4
  %12 = call i32 @au8522_writereg(%struct.au8522_state* %10, i32 %11, i32 237)
  %13 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %14 = getelementptr inbounds %struct.au8522_state, %struct.au8522_state* %13, i32 0, i32 0
  store i32 109, i32* %14, align 4
  %15 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %16 = load i32, i32* @AU8522_TVDEC_CONTRAST_REG00BH, align 4
  %17 = call i32 @au8522_writereg(%struct.au8522_state* %15, i32 %16, i32 121)
  %18 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %19 = getelementptr inbounds %struct.au8522_state, %struct.au8522_state* %18, i32 0, i32 1
  store i32 121, i32* %19, align 4
  %20 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %21 = load i32, i32* @AU8522_TVDEC_SATURATION_CB_REG00CH, align 4
  %22 = call i32 @au8522_writereg(%struct.au8522_state* %20, i32 %21, i32 128)
  %23 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %24 = load i32, i32* @AU8522_TVDEC_SATURATION_CR_REG00DH, align 4
  %25 = call i32 @au8522_writereg(%struct.au8522_state* %23, i32 %24, i32 128)
  %26 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %27 = getelementptr inbounds %struct.au8522_state, %struct.au8522_state* %26, i32 0, i32 2
  store i32 128, i32* %27, align 4
  %28 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %29 = load i32, i32* @AU8522_TVDEC_HUE_H_REG00EH, align 4
  %30 = call i32 @au8522_writereg(%struct.au8522_state* %28, i32 %29, i32 0)
  %31 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %32 = load i32, i32* @AU8522_TVDEC_HUE_L_REG00FH, align 4
  %33 = call i32 @au8522_writereg(%struct.au8522_state* %31, i32 %32, i32 0)
  %34 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %35 = getelementptr inbounds %struct.au8522_state, %struct.au8522_state* %34, i32 0, i32 3
  store i32 0, i32* %35, align 4
  %36 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %37 = load i32, i32* @AU8522_TVDEC_INT_MASK_REG010H, align 4
  %38 = call i32 @au8522_writereg(%struct.au8522_state* %36, i32 %37, i32 0)
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 35
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %43 = load i32, i32* @AU8522_VIDEO_MODE_REG011H, align 4
  %44 = call i32 @au8522_writereg(%struct.au8522_state* %42, i32 %43, i32 4)
  br label %49

45:                                               ; preds = %2
  %46 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %47 = load i32, i32* @AU8522_VIDEO_MODE_REG011H, align 4
  %48 = call i32 @au8522_writereg(%struct.au8522_state* %46, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %51 = load i32, i32* @AU8522_TVDEC_PGA_REG012H, align 4
  %52 = load i32, i32* @AU8522_TVDEC_PGA_REG012H_CVBS, align 4
  %53 = call i32 @au8522_writereg(%struct.au8522_state* %50, i32 %51, i32 %52)
  %54 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %55 = load i32, i32* @AU8522_TVDEC_COMB_MODE_REG015H, align 4
  %56 = load i32, i32* @AU8522_TVDEC_COMB_MODE_REG015H_CVBS, align 4
  %57 = call i32 @au8522_writereg(%struct.au8522_state* %54, i32 %55, i32 %56)
  %58 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %59 = load i32, i32* @AU8522_TVDED_DBG_MODE_REG060H, align 4
  %60 = load i32, i32* @AU8522_TVDED_DBG_MODE_REG060H_CVBS, align 4
  %61 = call i32 @au8522_writereg(%struct.au8522_state* %58, i32 %59, i32 %60)
  %62 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %63 = load i32, i32* @AU8522_TVDEC_FORMAT_CTRL1_REG061H, align 4
  %64 = load i32, i32* @AU8522_TVDEC_FORMAT_CTRL1_REG061H_CVBS13, align 4
  %65 = call i32 @au8522_writereg(%struct.au8522_state* %62, i32 %63, i32 %64)
  %66 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %67 = load i32, i32* @AU8522_TVDEC_FORMAT_CTRL2_REG062H, align 4
  %68 = load i32, i32* @AU8522_TVDEC_FORMAT_CTRL2_REG062H_CVBS13, align 4
  %69 = call i32 @au8522_writereg(%struct.au8522_state* %66, i32 %67, i32 %68)
  %70 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %71 = load i32, i32* @AU8522_TVDEC_VCR_DET_LLIM_REG063H, align 4
  %72 = load i32, i32* @AU8522_TVDEC_VCR_DET_LLIM_REG063H_CVBS, align 4
  %73 = call i32 @au8522_writereg(%struct.au8522_state* %70, i32 %71, i32 %72)
  %74 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %75 = load i32, i32* @AU8522_TVDEC_VCR_DET_HLIM_REG064H, align 4
  %76 = load i32, i32* @AU8522_TVDEC_VCR_DET_HLIM_REG064H_CVBS, align 4
  %77 = call i32 @au8522_writereg(%struct.au8522_state* %74, i32 %75, i32 %76)
  %78 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %79 = load i32, i32* @AU8522_TVDEC_COMB_VDIF_THR1_REG065H, align 4
  %80 = load i32, i32* @AU8522_TVDEC_COMB_VDIF_THR1_REG065H_CVBS, align 4
  %81 = call i32 @au8522_writereg(%struct.au8522_state* %78, i32 %79, i32 %80)
  %82 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %83 = load i32, i32* @AU8522_TVDEC_COMB_VDIF_THR2_REG066H, align 4
  %84 = load i32, i32* @AU8522_TVDEC_COMB_VDIF_THR2_REG066H_CVBS, align 4
  %85 = call i32 @au8522_writereg(%struct.au8522_state* %82, i32 %83, i32 %84)
  %86 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %87 = load i32, i32* @AU8522_TVDEC_COMB_VDIF_THR3_REG067H, align 4
  %88 = load i32, i32* @AU8522_TVDEC_COMB_VDIF_THR3_REG067H_CVBS, align 4
  %89 = call i32 @au8522_writereg(%struct.au8522_state* %86, i32 %87, i32 %88)
  %90 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %91 = load i32, i32* @AU8522_TVDEC_COMB_NOTCH_THR_REG068H, align 4
  %92 = load i32, i32* @AU8522_TVDEC_COMB_NOTCH_THR_REG068H_CVBS, align 4
  %93 = call i32 @au8522_writereg(%struct.au8522_state* %90, i32 %91, i32 %92)
  %94 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %95 = load i32, i32* @AU8522_TVDEC_COMB_HDIF_THR1_REG069H, align 4
  %96 = load i32, i32* @AU8522_TVDEC_COMB_HDIF_THR1_REG069H_CVBS, align 4
  %97 = call i32 @au8522_writereg(%struct.au8522_state* %94, i32 %95, i32 %96)
  %98 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %99 = load i32, i32* @AU8522_TVDEC_COMB_HDIF_THR2_REG06AH, align 4
  %100 = load i32, i32* @AU8522_TVDEC_COMB_HDIF_THR2_REG06AH_CVBS, align 4
  %101 = call i32 @au8522_writereg(%struct.au8522_state* %98, i32 %99, i32 %100)
  %102 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %103 = load i32, i32* @AU8522_TVDEC_COMB_HDIF_THR3_REG06BH, align 4
  %104 = load i32, i32* @AU8522_TVDEC_COMB_HDIF_THR3_REG06BH_CVBS, align 4
  %105 = call i32 @au8522_writereg(%struct.au8522_state* %102, i32 %103, i32 %104)
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @AU8522_INPUT_CONTROL_REG081H_SVIDEO_CH13, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %113, label %109

109:                                              ; preds = %49
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @AU8522_INPUT_CONTROL_REG081H_SVIDEO_CH24, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %109, %49
  %114 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %115 = load i32, i32* @AU8522_TVDEC_COMB_DCDIF_THR1_REG06CH, align 4
  %116 = load i32, i32* @AU8522_TVDEC_COMB_DCDIF_THR1_REG06CH_SVIDEO, align 4
  %117 = call i32 @au8522_writereg(%struct.au8522_state* %114, i32 %115, i32 %116)
  %118 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %119 = load i32, i32* @AU8522_TVDEC_COMB_DCDIF_THR2_REG06DH, align 4
  %120 = load i32, i32* @AU8522_TVDEC_COMB_DCDIF_THR2_REG06DH_SVIDEO, align 4
  %121 = call i32 @au8522_writereg(%struct.au8522_state* %118, i32 %119, i32 %120)
  br label %131

122:                                              ; preds = %109
  %123 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %124 = load i32, i32* @AU8522_TVDEC_COMB_DCDIF_THR1_REG06CH, align 4
  %125 = load i32, i32* @AU8522_TVDEC_COMB_DCDIF_THR1_REG06CH_CVBS, align 4
  %126 = call i32 @au8522_writereg(%struct.au8522_state* %123, i32 %124, i32 %125)
  %127 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %128 = load i32, i32* @AU8522_TVDEC_COMB_DCDIF_THR2_REG06DH, align 4
  %129 = load i32, i32* @AU8522_TVDEC_COMB_DCDIF_THR2_REG06DH_CVBS, align 4
  %130 = call i32 @au8522_writereg(%struct.au8522_state* %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %122, %113
  %132 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %133 = load i32, i32* @AU8522_TVDEC_COMB_DCDIF_THR3_REG06EH, align 4
  %134 = load i32, i32* @AU8522_TVDEC_COMB_DCDIF_THR3_REG06EH_CVBS, align 4
  %135 = call i32 @au8522_writereg(%struct.au8522_state* %132, i32 %133, i32 %134)
  %136 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %137 = load i32, i32* @AU8522_TVDEC_UV_SEP_THR_REG06FH, align 4
  %138 = load i32, i32* @AU8522_TVDEC_UV_SEP_THR_REG06FH_CVBS, align 4
  %139 = call i32 @au8522_writereg(%struct.au8522_state* %136, i32 %137, i32 %138)
  %140 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %141 = load i32, i32* @AU8522_TVDEC_COMB_DC_THR1_NTSC_REG070H, align 4
  %142 = load i32, i32* @AU8522_TVDEC_COMB_DC_THR1_NTSC_REG070H_CVBS, align 4
  %143 = call i32 @au8522_writereg(%struct.au8522_state* %140, i32 %141, i32 %142)
  %144 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %145 = load i32, i32* @AU8522_REG071H, align 4
  %146 = load i32, i32* @AU8522_REG071H_CVBS, align 4
  %147 = call i32 @au8522_writereg(%struct.au8522_state* %144, i32 %145, i32 %146)
  %148 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %149 = load i32, i32* @AU8522_REG072H, align 4
  %150 = load i32, i32* @AU8522_REG072H_CVBS, align 4
  %151 = call i32 @au8522_writereg(%struct.au8522_state* %148, i32 %149, i32 %150)
  %152 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %153 = load i32, i32* @AU8522_TVDEC_COMB_DC_THR2_NTSC_REG073H, align 4
  %154 = load i32, i32* @AU8522_TVDEC_COMB_DC_THR2_NTSC_REG073H_CVBS, align 4
  %155 = call i32 @au8522_writereg(%struct.au8522_state* %152, i32 %153, i32 %154)
  %156 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %157 = load i32, i32* @AU8522_REG074H, align 4
  %158 = load i32, i32* @AU8522_REG074H_CVBS, align 4
  %159 = call i32 @au8522_writereg(%struct.au8522_state* %156, i32 %157, i32 %158)
  %160 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %161 = load i32, i32* @AU8522_REG075H, align 4
  %162 = load i32, i32* @AU8522_REG075H_CVBS, align 4
  %163 = call i32 @au8522_writereg(%struct.au8522_state* %160, i32 %161, i32 %162)
  %164 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %165 = load i32, i32* @AU8522_TVDEC_DCAGC_CTRL_REG077H, align 4
  %166 = load i32, i32* @AU8522_TVDEC_DCAGC_CTRL_REG077H_CVBS, align 4
  %167 = call i32 @au8522_writereg(%struct.au8522_state* %164, i32 %165, i32 %166)
  %168 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %169 = load i32, i32* @AU8522_TVDEC_PIC_START_ADJ_REG078H, align 4
  %170 = load i32, i32* @AU8522_TVDEC_PIC_START_ADJ_REG078H_CVBS, align 4
  %171 = call i32 @au8522_writereg(%struct.au8522_state* %168, i32 %169, i32 %170)
  %172 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %173 = load i32, i32* @AU8522_TVDEC_AGC_HIGH_LIMIT_REG079H, align 4
  %174 = load i32, i32* @AU8522_TVDEC_AGC_HIGH_LIMIT_REG079H_CVBS, align 4
  %175 = call i32 @au8522_writereg(%struct.au8522_state* %172, i32 %173, i32 %174)
  %176 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %177 = load i32, i32* @AU8522_TVDEC_MACROVISION_SYNC_THR_REG07AH, align 4
  %178 = load i32, i32* @AU8522_TVDEC_MACROVISION_SYNC_THR_REG07AH_CVBS, align 4
  %179 = call i32 @au8522_writereg(%struct.au8522_state* %176, i32 %177, i32 %178)
  %180 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %181 = load i32, i32* @AU8522_TVDEC_INTRP_CTRL_REG07BH, align 4
  %182 = load i32, i32* @AU8522_TVDEC_INTRP_CTRL_REG07BH_CVBS, align 4
  %183 = call i32 @au8522_writereg(%struct.au8522_state* %180, i32 %181, i32 %182)
  %184 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %185 = load i32, i32* @AU8522_TVDEC_AGC_LOW_LIMIT_REG0E4H, align 4
  %186 = load i32, i32* @AU8522_TVDEC_AGC_LOW_LIMIT_REG0E4H_CVBS, align 4
  %187 = call i32 @au8522_writereg(%struct.au8522_state* %184, i32 %185, i32 %186)
  %188 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %189 = load i32, i32* @AU8522_TOREGAAGC_REG0E5H, align 4
  %190 = load i32, i32* @AU8522_TOREGAAGC_REG0E5H_CVBS, align 4
  %191 = call i32 @au8522_writereg(%struct.au8522_state* %188, i32 %189, i32 %190)
  %192 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %193 = load i32, i32* @AU8522_REG016H, align 4
  %194 = load i32, i32* @AU8522_REG016H_CVBS, align 4
  %195 = call i32 @au8522_writereg(%struct.au8522_state* %192, i32 %193, i32 %194)
  %196 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %197 = call i32 @setup_vbi(%struct.au8522_state* %196, i32 0)
  %198 = load i32, i32* %4, align 4
  %199 = load i32, i32* @AU8522_INPUT_CONTROL_REG081H_SVIDEO_CH13, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %205, label %201

201:                                              ; preds = %131
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* @AU8522_INPUT_CONTROL_REG081H_SVIDEO_CH24, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %201, %131
  store i32 5, i32* %6, align 4
  br label %207

206:                                              ; preds = %201
  store i32 5, i32* %6, align 4
  br label %207

207:                                              ; preds = %206, %205
  store i32 0, i32* %5, align 4
  br label %208

208:                                              ; preds = %231, %207
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* @NUM_FILTER_COEF, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %234

212:                                              ; preds = %208
  %213 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** @filter_coef, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** @filter_coef, align 8
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %6, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @au8522_writereg(%struct.au8522_state* %213, i32 %219, i32 %229)
  br label %231

231:                                              ; preds = %212
  %232 = load i32, i32* %5, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %5, align 4
  br label %208

234:                                              ; preds = %208
  %235 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %236 = load i32, i32* @AU8522_REG42EH, align 4
  %237 = call i32 @au8522_writereg(%struct.au8522_state* %235, i32 %236, i32 135)
  %238 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %239 = load i32, i32* @AU8522_REG42FH, align 4
  %240 = call i32 @au8522_writereg(%struct.au8522_state* %238, i32 %239, i32 162)
  %241 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %242 = load i32, i32* @AU8522_REG430H, align 4
  %243 = call i32 @au8522_writereg(%struct.au8522_state* %241, i32 %242, i32 191)
  %244 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %245 = load i32, i32* @AU8522_REG431H, align 4
  %246 = call i32 @au8522_writereg(%struct.au8522_state* %244, i32 %245, i32 203)
  %247 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %248 = load i32, i32* @AU8522_REG432H, align 4
  %249 = call i32 @au8522_writereg(%struct.au8522_state* %247, i32 %248, i32 161)
  %250 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %251 = load i32, i32* @AU8522_REG433H, align 4
  %252 = call i32 @au8522_writereg(%struct.au8522_state* %250, i32 %251, i32 65)
  %253 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %254 = load i32, i32* @AU8522_REG434H, align 4
  %255 = call i32 @au8522_writereg(%struct.au8522_state* %253, i32 %254, i32 136)
  %256 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %257 = load i32, i32* @AU8522_REG435H, align 4
  %258 = call i32 @au8522_writereg(%struct.au8522_state* %256, i32 %257, i32 194)
  %259 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %260 = load i32, i32* @AU8522_REG436H, align 4
  %261 = call i32 @au8522_writereg(%struct.au8522_state* %259, i32 %260, i32 60)
  ret void
}

declare dso_local i32 @au8522_writereg(%struct.au8522_state*, i32, i32) #1

declare dso_local i32 @setup_vbi(%struct.au8522_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
