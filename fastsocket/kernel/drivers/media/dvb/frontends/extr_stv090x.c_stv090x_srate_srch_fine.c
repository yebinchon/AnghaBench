
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stv090x_state {int srate; TYPE_1__* internal; } ;
struct TYPE_2__ {int mclk; int dev_ver; } ;


 int AGC2REF ;
 int CARFREQ ;
 int CFR1 ;
 int CFR2 ;
 int CFRINIT0 ;
 int CFRINIT1 ;
 int CFR_AUTOSCAN_FIELD ;
 int DMDCFGMD ;
 int DMDISTATE ;
 int DMDTOM ;
 int FE_ERROR ;
 int SFRINIT0 ;
 int SFRINIT1 ;
 int SFRLOW0 ;
 int SFRLOW1 ;
 int SFRUP0 ;
 int SFRUP1 ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;
 int STV090x_SETFIELD_Px (int,int ,int) ;
 scalar_t__ STV090x_WRITE_DEMOD (struct stv090x_state*,int ,int) ;
 int TMGCFG ;
 int TMGCFG2 ;
 int TMGTHFALL ;
 int TMGTHRISE ;
 int dprintk (int ,int,char*) ;
 int stv090x_get_srate (struct stv090x_state*,int) ;

__attribute__((used)) static u32 stv090x_srate_srch_fine(struct stv090x_state *state)
{
 u32 srate_coarse, freq_coarse, sym, reg;

 srate_coarse = stv090x_get_srate(state, state->internal->mclk);
 freq_coarse = STV090x_READ_DEMOD(state, CFR2) << 8;
 freq_coarse |= STV090x_READ_DEMOD(state, CFR1);
 sym = 13 * (srate_coarse / 10);

 if (sym < state->srate)
  srate_coarse = 0;
 else {
  if (STV090x_WRITE_DEMOD(state, DMDISTATE, 0x1f) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, TMGCFG2, 0xc1) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, TMGTHRISE, 0x20) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, TMGTHFALL, 0x00) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, TMGCFG, 0xd2) < 0)
   goto err;
  reg = STV090x_READ_DEMOD(state, DMDCFGMD);
  STV090x_SETFIELD_Px(reg, CFR_AUTOSCAN_FIELD, 0x00);
  if (STV090x_WRITE_DEMOD(state, DMDCFGMD, reg) < 0)
   goto err;

  if (STV090x_WRITE_DEMOD(state, AGC2REF, 0x38) < 0)
   goto err;

  if (state->internal->dev_ver >= 0x30) {
   if (STV090x_WRITE_DEMOD(state, CARFREQ, 0x79) < 0)
    goto err;
  } else if (state->internal->dev_ver >= 0x20) {
   if (STV090x_WRITE_DEMOD(state, CARFREQ, 0x49) < 0)
    goto err;
  }

  if (srate_coarse > 3000000) {
   sym = 13 * (srate_coarse / 10);
   sym = (sym / 1000) * 65536;
   sym /= (state->internal->mclk / 1000);
   if (STV090x_WRITE_DEMOD(state, SFRUP1, (sym >> 8) & 0x7f) < 0)
    goto err;
   if (STV090x_WRITE_DEMOD(state, SFRUP0, sym & 0xff) < 0)
    goto err;
   sym = 10 * (srate_coarse / 13);
   sym = (sym / 1000) * 65536;
   sym /= (state->internal->mclk / 1000);
   if (STV090x_WRITE_DEMOD(state, SFRLOW1, (sym >> 8) & 0x7f) < 0)
    goto err;
   if (STV090x_WRITE_DEMOD(state, SFRLOW0, sym & 0xff) < 0)
    goto err;
   sym = (srate_coarse / 1000) * 65536;
   sym /= (state->internal->mclk / 1000);
   if (STV090x_WRITE_DEMOD(state, SFRINIT1, (sym >> 8) & 0xff) < 0)
    goto err;
   if (STV090x_WRITE_DEMOD(state, SFRINIT0, sym & 0xff) < 0)
    goto err;
  } else {
   sym = 13 * (srate_coarse / 10);
   sym = (sym / 100) * 65536;
   sym /= (state->internal->mclk / 100);
   if (STV090x_WRITE_DEMOD(state, SFRUP1, (sym >> 8) & 0x7f) < 0)
    goto err;
   if (STV090x_WRITE_DEMOD(state, SFRUP0, sym & 0xff) < 0)
    goto err;
   sym = 10 * (srate_coarse / 14);
   sym = (sym / 100) * 65536;
   sym /= (state->internal->mclk / 100);
   if (STV090x_WRITE_DEMOD(state, SFRLOW1, (sym >> 8) & 0x7f) < 0)
    goto err;
   if (STV090x_WRITE_DEMOD(state, SFRLOW0, sym & 0xff) < 0)
    goto err;
   sym = (srate_coarse / 100) * 65536;
   sym /= (state->internal->mclk / 100);
   if (STV090x_WRITE_DEMOD(state, SFRINIT1, (sym >> 8) & 0xff) < 0)
    goto err;
   if (STV090x_WRITE_DEMOD(state, SFRINIT0, sym & 0xff) < 0)
    goto err;
  }
  if (STV090x_WRITE_DEMOD(state, DMDTOM, 0x20) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, CFRINIT1, (freq_coarse >> 8) & 0xff) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, CFRINIT0, freq_coarse & 0xff) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, DMDISTATE, 0x15) < 0)
   goto err;
 }

 return srate_coarse;

err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}
