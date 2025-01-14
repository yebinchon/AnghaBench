
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stv090x_state {int search_range; TYPE_1__* internal; } ;
typedef int s32 ;
struct TYPE_2__ {int mclk; } ;


 int AGC2I0 ;
 int AGC2I1 ;
 int AGC2REF ;
 int CFRINIT0 ;
 int CFRINIT1 ;
 int CFR_AUTOSCAN_FIELD ;
 int DMDCFGMD ;
 int DMDISTATE ;
 int DMDTOM ;
 int FE_ERROR ;
 int SCAN_ENABLE_FIELD ;
 int SFRLOW0 ;
 int SFRLOW1 ;
 int SFRUP0 ;
 int SFRUP1 ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;
 int STV090x_SETFIELD_Px (int,int ,int ) ;
 scalar_t__ STV090x_WRITE_DEMOD (struct stv090x_state*,int ,int) ;
 int dprintk (int ,int,char*) ;
 int msleep (int) ;
 scalar_t__ stv090x_set_srate (struct stv090x_state*,int) ;

__attribute__((used)) static int stv090x_get_agc2_min_level(struct stv090x_state *state)
{
 u32 agc2_min = 0xffff, agc2 = 0, freq_init, freq_step, reg;
 s32 i, j, steps, dir;

 if (STV090x_WRITE_DEMOD(state, AGC2REF, 0x38) < 0)
  goto err;
 reg = STV090x_READ_DEMOD(state, DMDCFGMD);
 STV090x_SETFIELD_Px(reg, SCAN_ENABLE_FIELD, 0);
 STV090x_SETFIELD_Px(reg, CFR_AUTOSCAN_FIELD, 0);
 if (STV090x_WRITE_DEMOD(state, DMDCFGMD, reg) < 0)
  goto err;

 if (STV090x_WRITE_DEMOD(state, SFRUP1, 0x83) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, SFRUP0, 0xc0) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, SFRLOW1, 0x82) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, SFRLOW0, 0xa0) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, DMDTOM, 0x00) < 0)
  goto err;
 if (stv090x_set_srate(state, 1000000) < 0)
  goto err;

 steps = state->search_range / 1000000;
 if (steps <= 0)
  steps = 1;

 dir = 1;
 freq_step = (1000000 * 256) / (state->internal->mclk / 256);
 freq_init = 0;

 for (i = 0; i < steps; i++) {
  if (dir > 0)
   freq_init = freq_init + (freq_step * i);
  else
   freq_init = freq_init - (freq_step * i);

  dir *= -1;

  if (STV090x_WRITE_DEMOD(state, DMDISTATE, 0x5c) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, CFRINIT1, (freq_init >> 8) & 0xff) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, CFRINIT0, freq_init & 0xff) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, DMDISTATE, 0x58) < 0)
   goto err;
  msleep(10);

  agc2 = 0;
  for (j = 0; j < 10; j++) {
   agc2 += (STV090x_READ_DEMOD(state, AGC2I1) << 8) |
    STV090x_READ_DEMOD(state, AGC2I0);
  }
  agc2 /= 10;
  if (agc2 < agc2_min)
   agc2_min = agc2;
 }

 return agc2_min;
err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}
