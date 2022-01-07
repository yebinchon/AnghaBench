
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stb0899_internal {int av_frame_fine; int av_frame_coarse; } ;
struct stb0899_state {struct stb0899_config* config; struct stb0899_internal internal; } ;
struct stb0899_config {int sof_search_timeout; int uwp_threshold_track; int uwp_threshold_acq; int miss_threshold; int uwp_threshold_sof; int esno_quant; int esno_ave; } ;


 int FE_COARSE_TRK ;
 int FE_FINE_TRK ;
 int SOF_SEARCH_TIMEOUT ;
 int SOF_SRCH_TO ;
 int STB0899_BASE_SOF_SRCH_TO ;
 int STB0899_BASE_UWP_CNTRL1 ;
 int STB0899_BASE_UWP_CNTRL2 ;
 int STB0899_BASE_UWP_CNTRL3 ;
 int STB0899_OFF0_SOF_SRCH_TO ;
 int STB0899_OFF0_UWP_CNTRL1 ;
 int STB0899_OFF0_UWP_CNTRL2 ;
 int STB0899_OFF0_UWP_CNTRL3 ;
 int STB0899_READ_S2REG (int ,int ) ;
 int STB0899_S2DEMOD ;
 int STB0899_SETFIELD_VAL (int ,int ,int ) ;
 int UWP_CNTRL1 ;
 int UWP_CNTRL2 ;
 int UWP_CNTRL3 ;
 int UWP_ESN0_AVE ;
 int UWP_ESN0_QUANT ;
 int UWP_MISS_TH ;
 int UWP_TH_ACQ ;
 int UWP_TH_SOF ;
 int UWP_TH_TRACK ;
 int stb0899_write_s2reg (struct stb0899_state*,int ,int ,int ,int ) ;

__attribute__((used)) static void stb0899_dvbs2_config_uwp(struct stb0899_state *state)
{
 struct stb0899_internal *internal = &state->internal;
 struct stb0899_config *config = state->config;
 u32 uwp1, uwp2, uwp3, reg;

 uwp1 = STB0899_READ_S2REG(STB0899_S2DEMOD, UWP_CNTRL1);
 uwp2 = STB0899_READ_S2REG(STB0899_S2DEMOD, UWP_CNTRL2);
 uwp3 = STB0899_READ_S2REG(STB0899_S2DEMOD, UWP_CNTRL3);

 STB0899_SETFIELD_VAL(UWP_ESN0_AVE, uwp1, config->esno_ave);
 STB0899_SETFIELD_VAL(UWP_ESN0_QUANT, uwp1, config->esno_quant);
 STB0899_SETFIELD_VAL(UWP_TH_SOF, uwp1, config->uwp_threshold_sof);

 STB0899_SETFIELD_VAL(FE_COARSE_TRK, uwp2, internal->av_frame_coarse);
 STB0899_SETFIELD_VAL(FE_FINE_TRK, uwp2, internal->av_frame_fine);
 STB0899_SETFIELD_VAL(UWP_MISS_TH, uwp2, config->miss_threshold);

 STB0899_SETFIELD_VAL(UWP_TH_ACQ, uwp3, config->uwp_threshold_acq);
 STB0899_SETFIELD_VAL(UWP_TH_TRACK, uwp3, config->uwp_threshold_track);

 stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_UWP_CNTRL1, STB0899_OFF0_UWP_CNTRL1, uwp1);
 stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_UWP_CNTRL2, STB0899_OFF0_UWP_CNTRL2, uwp2);
 stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_UWP_CNTRL3, STB0899_OFF0_UWP_CNTRL3, uwp3);

 reg = STB0899_READ_S2REG(STB0899_S2DEMOD, SOF_SRCH_TO);
 STB0899_SETFIELD_VAL(SOF_SEARCH_TIMEOUT, reg, config->sof_search_timeout);
 stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_SOF_SRCH_TO, STB0899_OFF0_SOF_SRCH_TO, reg);
}
