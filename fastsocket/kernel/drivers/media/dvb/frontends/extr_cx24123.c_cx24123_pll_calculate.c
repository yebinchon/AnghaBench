
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ symbol_rate; } ;
struct TYPE_4__ {TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {int frequency; TYPE_2__ u; } ;
struct dvb_frontend {struct cx24123_state* demodulator_priv; } ;
struct cx24123_state {int pllarg; int bandselectarg; int FILTune; int VGAarg; int VCAarg; } ;
struct cx24123_bandselect_val {int VCOdivider; scalar_t__ symbolrate_low; scalar_t__ symbolrate_high; int freq_low; int freq_high; int progdata; int FILTune; int VGAprogdata; int VCAprogdata; } ;
struct cx24123_AGC_val {int VCOdivider; scalar_t__ symbolrate_low; scalar_t__ symbolrate_high; int freq_low; int freq_high; int progdata; int FILTune; int VGAprogdata; int VCAprogdata; } ;


 int ARRAY_SIZE (struct cx24123_bandselect_val*) ;
 int XTAL ;
 struct cx24123_bandselect_val* cx24123_AGC_vals ;
 struct cx24123_bandselect_val* cx24123_bandselect_vals ;
 int force_band ;

__attribute__((used)) static int cx24123_pll_calculate(struct dvb_frontend *fe,
 struct dvb_frontend_parameters *p)
{
 struct cx24123_state *state = fe->demodulator_priv;
 u32 ndiv = 0, adiv = 0, vco_div = 0;
 int i = 0;
 int pump = 2;
 int band = 0;
 int num_bands = ARRAY_SIZE(cx24123_bandselect_vals);
 struct cx24123_bandselect_val *bsv = ((void*)0);
 struct cx24123_AGC_val *agcv = ((void*)0);


 state->VCAarg = cx24123_AGC_vals[0].VCAprogdata;
 state->VGAarg = cx24123_AGC_vals[0].VGAprogdata;
 state->bandselectarg = cx24123_bandselect_vals[0].progdata;
 vco_div = cx24123_bandselect_vals[0].VCOdivider;



 for (i = 0; i < ARRAY_SIZE(cx24123_AGC_vals); i++) {
  agcv = &cx24123_AGC_vals[i];
  if ((agcv->symbolrate_low <= p->u.qpsk.symbol_rate) &&
      (agcv->symbolrate_high >= p->u.qpsk.symbol_rate)) {
   state->VCAarg = agcv->VCAprogdata;
   state->VGAarg = agcv->VGAprogdata;
   state->FILTune = agcv->FILTune;
  }
 }


 if (force_band < 1 || force_band > num_bands) {
  for (i = 0; i < num_bands; i++) {
   bsv = &cx24123_bandselect_vals[i];
   if ((bsv->freq_low <= p->frequency) &&
    (bsv->freq_high >= p->frequency))
    band = i;
  }
 } else
  band = force_band - 1;

 state->bandselectarg = cx24123_bandselect_vals[band].progdata;
 vco_div = cx24123_bandselect_vals[band].VCOdivider;


 if (p->frequency < (cx24123_bandselect_vals[band].freq_low +
  cx24123_bandselect_vals[band].freq_high) / 2)
  pump = 0x01;
 else
  pump = 0x02;




 ndiv = (((p->frequency * vco_div * 10) /
  (2 * XTAL / 1000)) / 32) & 0x1ff;
 adiv = (((p->frequency * vco_div * 10) /
  (2 * XTAL / 1000)) % 32) & 0x1f;

 if (adiv == 0 && ndiv > 0)
  ndiv--;



 state->pllarg = (3 << 19) | (3 << 17) | (1 << 16) |
  (pump << 14) | (ndiv << 5) | adiv;

 return 0;
}
