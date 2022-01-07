
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stb0899_internal {int master_clk; } ;
struct stb0899_state {struct stb0899_config* config; struct stb0899_internal internal; } ;
struct stb0899_config {int btr_nco_bits; } ;


 int BTR_NOM_FREQ ;
 int DECIM_CNTRL ;
 int DECIM_RATE ;
 int STB0899_GETFIELD (int ,int) ;
 int STB0899_READ_S2REG (int ,int ) ;
 int STB0899_S2DEMOD ;

__attribute__((used)) static u32 stb0899_dvbs2_get_srate(struct stb0899_state *state)
{
 struct stb0899_internal *internal = &state->internal;
 struct stb0899_config *config = state->config;

 u32 bTrNomFreq, srate, decimRate, intval1, intval2, reg;
 int div1, div2, rem1, rem2;

 div1 = config->btr_nco_bits / 2;
 div2 = config->btr_nco_bits - div1 - 1;

 bTrNomFreq = STB0899_READ_S2REG(STB0899_S2DEMOD, BTR_NOM_FREQ);

 reg = STB0899_READ_S2REG(STB0899_S2DEMOD, DECIM_CNTRL);
 decimRate = STB0899_GETFIELD(DECIM_RATE, reg);
 decimRate = (1 << decimRate);

 intval1 = internal->master_clk / (1 << div1);
 intval2 = bTrNomFreq / (1 << div2);

 rem1 = internal->master_clk % (1 << div1);
 rem2 = bTrNomFreq % (1 << div2);

 srate = (intval1 * intval2) + ((intval1 * rem2) / (1 << div2)) + ((intval2 * rem1) / (1 << div1));
 srate /= decimRate;

 return srate;
}
