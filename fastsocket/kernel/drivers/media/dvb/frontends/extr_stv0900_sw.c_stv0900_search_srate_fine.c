
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv0900_state {int demod; struct stv0900_internal* internal; } ;
struct stv0900_internal {int mclk; int* symbol_rate; int chip_id; } ;
struct dvb_frontend {struct stv0900_state* demodulator_priv; } ;
typedef enum fe_stv0900_demod_num { ____Placeholder_fe_stv0900_demod_num } fe_stv0900_demod_num ;


 int AGC2REF ;
 int CARFREQ ;
 int CFR1 ;
 int CFR2 ;
 int CFRINIT0 ;
 int CFRINIT1 ;
 int CFR_AUTOSCAN ;
 int DMDISTATE ;
 int DMDT0M ;
 int SFRINIT0 ;
 int SFRINIT1 ;
 int SFRLOW0 ;
 int SFRLOW1 ;
 int SFRUP0 ;
 int SFRUP1 ;
 int TMGCFG ;
 int TMGCFG2 ;
 int TMGTHFALL ;
 int TMGTHRISE ;
 int stv0900_get_symbol_rate (struct stv0900_internal*,int,int) ;
 int stv0900_read_reg (struct stv0900_internal*,int ) ;
 int stv0900_write_bits (struct stv0900_internal*,int ,int ) ;
 int stv0900_write_reg (struct stv0900_internal*,int ,int) ;

__attribute__((used)) static u32 stv0900_search_srate_fine(struct dvb_frontend *fe)
{
 struct stv0900_state *state = fe->demodulator_priv;
 struct stv0900_internal *intp = state->internal;
 enum fe_stv0900_demod_num demod = state->demod;
 u32 coarse_srate,
  coarse_freq,
  symb,
  symbmax,
  symbmin,
  symbcomp;

 coarse_srate = stv0900_get_symbol_rate(intp, intp->mclk, demod);

 if (coarse_srate > 3000000) {
  symbmax = 13 * (coarse_srate / 10);
  symbmax = (symbmax / 1000) * 65536;
  symbmax /= (intp->mclk / 1000);

  symbmin = 10 * (coarse_srate / 13);
  symbmin = (symbmin / 1000)*65536;
  symbmin /= (intp->mclk / 1000);

  symb = (coarse_srate / 1000) * 65536;
  symb /= (intp->mclk / 1000);
 } else {
  symbmax = 13 * (coarse_srate / 10);
  symbmax = (symbmax / 100) * 65536;
  symbmax /= (intp->mclk / 100);

  symbmin = 10 * (coarse_srate / 14);
  symbmin = (symbmin / 100) * 65536;
  symbmin /= (intp->mclk / 100);

  symb = (coarse_srate / 100) * 65536;
  symb /= (intp->mclk / 100);
 }

 symbcomp = 13 * (coarse_srate / 10);
  coarse_freq = (stv0900_read_reg(intp, CFR2) << 8)
     | stv0900_read_reg(intp, CFR1);

 if (symbcomp < intp->symbol_rate[demod])
  coarse_srate = 0;
 else {
  stv0900_write_reg(intp, DMDISTATE, 0x1f);
  stv0900_write_reg(intp, TMGCFG2, 0xc1);
  stv0900_write_reg(intp, TMGTHRISE, 0x20);
  stv0900_write_reg(intp, TMGTHFALL, 0x00);
  stv0900_write_reg(intp, TMGCFG, 0xd2);
  stv0900_write_bits(intp, CFR_AUTOSCAN, 0);
  stv0900_write_reg(intp, AGC2REF, 0x38);

  if (intp->chip_id >= 0x30)
   stv0900_write_reg(intp, CARFREQ, 0x79);
  else if (intp->chip_id >= 0x20)
   stv0900_write_reg(intp, CARFREQ, 0x49);
  else
   stv0900_write_reg(intp, CARFREQ, 0xed);

  stv0900_write_reg(intp, SFRUP1, (symbmax >> 8) & 0x7f);
  stv0900_write_reg(intp, SFRUP0, (symbmax & 0xff));

  stv0900_write_reg(intp, SFRLOW1, (symbmin >> 8) & 0x7f);
  stv0900_write_reg(intp, SFRLOW0, (symbmin & 0xff));

  stv0900_write_reg(intp, SFRINIT1, (symb >> 8) & 0xff);
  stv0900_write_reg(intp, SFRINIT0, (symb & 0xff));

  stv0900_write_reg(intp, DMDT0M, 0x20);
  stv0900_write_reg(intp, CFRINIT1, (coarse_freq >> 8) & 0xff);
  stv0900_write_reg(intp, CFRINIT0, coarse_freq & 0xff);
  stv0900_write_reg(intp, DMDISTATE, 0x15);
 }

 return coarse_srate;
}
