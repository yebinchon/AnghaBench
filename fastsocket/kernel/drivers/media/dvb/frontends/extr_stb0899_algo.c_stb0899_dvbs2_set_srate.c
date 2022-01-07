
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stb0899_internal {int master_clk; int srate; } ;
struct stb0899_state {struct stb0899_internal internal; } ;


 int BTR_CNTRL ;
 int BTR_FREQ_CORR ;
 int Log2Int (int) ;
 int STB0899_BASE_ANTI_ALIAS_SEL ;
 int STB0899_BASE_BTR_CNTRL ;
 int STB0899_BASE_BTR_NOM_FREQ ;
 int STB0899_BASE_DECIM_CNTRL ;
 int STB0899_BASE_FREQ_ADJ_SCALE ;
 int STB0899_OFF0_ANTI_ALIAS_SEL ;
 int STB0899_OFF0_BTR_CNTRL ;
 int STB0899_OFF0_BTR_NOM_FREQ ;
 int STB0899_OFF0_DECIM_CNTRL ;
 int STB0899_OFF0_FREQ_ADJ_SCALE ;
 int STB0899_READ_S2REG (int ,int ) ;
 int STB0899_S2DEMOD ;
 int STB0899_SETFIELD_VAL (int ,int,int) ;
 int stb0899_dvbs2_calc_dev (struct stb0899_state*) ;
 int stb0899_dvbs2_calc_srate (struct stb0899_state*) ;
 int stb0899_write_s2reg (struct stb0899_state*,int ,int ,int ,int) ;

__attribute__((used)) static void stb0899_dvbs2_set_srate(struct stb0899_state *state)
{
 struct stb0899_internal *internal = &state->internal;

 u32 dec_ratio, dec_rate, win_sel, decim, f_sym, btr_nom_freq;
 u32 correction, freq_adj, band_lim, decim_cntrl, reg;
 u8 anti_alias;


 dec_ratio = (internal->master_clk * 2) / (5 * internal->srate);
 dec_ratio = (dec_ratio == 0) ? 1 : dec_ratio;
 dec_rate = Log2Int(dec_ratio);

 win_sel = 0;
 if (dec_rate >= 5)
  win_sel = dec_rate - 4;

 decim = (1 << dec_rate);

 f_sym = internal->master_clk / ((decim * internal->srate) / 1000);

 if (f_sym <= 2250)
  band_lim = 1;
 else
  band_lim = 0;

 decim_cntrl = ((win_sel << 3) & 0x18) + ((band_lim << 5) & 0x20) + (dec_rate & 0x7);
 stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_DECIM_CNTRL, STB0899_OFF0_DECIM_CNTRL, decim_cntrl);

 if (f_sym <= 3450)
  anti_alias = 0;
 else if (f_sym <= 4250)
  anti_alias = 1;
 else
  anti_alias = 2;

 stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_ANTI_ALIAS_SEL, STB0899_OFF0_ANTI_ALIAS_SEL, anti_alias);
 btr_nom_freq = stb0899_dvbs2_calc_srate(state);
 stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_BTR_NOM_FREQ, STB0899_OFF0_BTR_NOM_FREQ, btr_nom_freq);

 correction = stb0899_dvbs2_calc_dev(state);
 reg = STB0899_READ_S2REG(STB0899_S2DEMOD, BTR_CNTRL);
 STB0899_SETFIELD_VAL(BTR_FREQ_CORR, reg, correction);
 stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_BTR_CNTRL, STB0899_OFF0_BTR_CNTRL, reg);


 freq_adj = internal->srate / (internal->master_clk / 4096);
 stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_FREQ_ADJ_SCALE, STB0899_OFF0_FREQ_ADJ_SCALE, freq_adj);
}
