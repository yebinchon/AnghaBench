
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct dvb_frontend {int dummy; } ;
struct stv090x_state {int srate; int search_range; int frequency; TYPE_1__* internal; TYPE_2__* config; int tuner_bw; struct dvb_frontend frontend; } ;
typedef int s32 ;
struct TYPE_4__ {scalar_t__ (* tuner_set_frequency ) (struct dvb_frontend*,int) ;scalar_t__ (* tuner_set_bandwidth ) (struct dvb_frontend*,int ) ;scalar_t__ (* tuner_get_status ) (struct dvb_frontend*,int*) ;} ;
struct TYPE_3__ {int dev_ver; int mclk; } ;


 int AGC2I0 ;
 int AGC2I1 ;
 int AGC2REF ;
 int CARFREQ ;
 int CFRINIT0 ;
 int CFRINIT1 ;
 int CFR_AUTOSCAN_FIELD ;
 int DMDCFGMD ;
 int DMDISTATE ;
 int DMDTOM ;
 int DSTATUS ;
 int FE_DEBUG ;
 int FE_ERROR ;
 int I2C_DEMOD_MODE_FIELD ;
 int SCAN_ENABLE_FIELD ;
 int SFRINIT0 ;
 int SFRINIT1 ;
 int SFRLOW0 ;
 int SFRLOW1 ;
 int SFRSTEP ;
 int SFRUP0 ;
 int SFRUP1 ;
 int STV090x_GETFIELD_Px (int,int ) ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;
 int STV090x_SETFIELD_Px (int,int ,int) ;
 scalar_t__ STV090x_WRITE_DEMOD (struct stv090x_state*,int ,int) ;
 int TMGCFG ;
 int TMGCFG2 ;
 int TMGLOCK_QUALITY_FIELD ;
 int TMGTHFALL ;
 int TMGTHRISE ;
 int dprintk (int ,int,char*) ;
 int msleep (int) ;
 scalar_t__ stub1 (struct dvb_frontend*,int) ;
 scalar_t__ stub2 (struct dvb_frontend*,int ) ;
 scalar_t__ stub3 (struct dvb_frontend*,int*) ;
 int stv090x_get_srate (struct stv090x_state*,int ) ;
 scalar_t__ stv090x_i2c_gate_ctrl (struct stv090x_state*,int) ;

__attribute__((used)) static u32 stv090x_srate_srch_coarse(struct stv090x_state *state)
{
 struct dvb_frontend *fe = &state->frontend;

 int tmg_lock = 0, i;
 s32 tmg_cpt = 0, dir = 1, steps, cur_step = 0, freq;
 u32 srate_coarse = 0, agc2 = 0, car_step = 1200, reg;
 u32 agc2th;

 if (state->internal->dev_ver >= 0x30)
  agc2th = 0x2e00;
 else
  agc2th = 0x1f00;

 reg = STV090x_READ_DEMOD(state, DMDISTATE);
 STV090x_SETFIELD_Px(reg, I2C_DEMOD_MODE_FIELD, 0x1f);
 if (STV090x_WRITE_DEMOD(state, DMDISTATE, reg) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, TMGCFG, 0x12) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, TMGCFG2, 0xc0) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, TMGTHRISE, 0xf0) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, TMGTHFALL, 0xe0) < 0)
  goto err;
 reg = STV090x_READ_DEMOD(state, DMDCFGMD);
 STV090x_SETFIELD_Px(reg, SCAN_ENABLE_FIELD, 1);
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
 if (STV090x_WRITE_DEMOD(state, AGC2REF, 0x50) < 0)
  goto err;

 if (state->internal->dev_ver >= 0x30) {
  if (STV090x_WRITE_DEMOD(state, CARFREQ, 0x99) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, SFRSTEP, 0x98) < 0)
   goto err;

 } else if (state->internal->dev_ver >= 0x20) {
  if (STV090x_WRITE_DEMOD(state, CARFREQ, 0x6a) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, SFRSTEP, 0x95) < 0)
   goto err;
 }

 if (state->srate <= 2000000)
  car_step = 1000;
 else if (state->srate <= 5000000)
  car_step = 2000;
 else if (state->srate <= 12000000)
  car_step = 3000;
 else
  car_step = 5000;

 steps = -1 + ((state->search_range / 1000) / car_step);
 steps /= 2;
 steps = (2 * steps) + 1;
 if (steps < 0)
  steps = 1;
 else if (steps > 10) {
  steps = 11;
  car_step = (state->search_range / 1000) / 10;
 }
 cur_step = 0;
 dir = 1;
 freq = state->frequency;

 while ((!tmg_lock) && (cur_step < steps)) {
  if (STV090x_WRITE_DEMOD(state, DMDISTATE, 0x5f) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, CFRINIT1, 0x00) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, CFRINIT0, 0x00) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, SFRINIT1, 0x00) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, SFRINIT0, 0x00) < 0)
   goto err;

  if (STV090x_WRITE_DEMOD(state, DMDISTATE, 0x40) < 0)
   goto err;
  msleep(50);
  for (i = 0; i < 10; i++) {
   reg = STV090x_READ_DEMOD(state, DSTATUS);
   if (STV090x_GETFIELD_Px(reg, TMGLOCK_QUALITY_FIELD) >= 2)
    tmg_cpt++;
   agc2 += (STV090x_READ_DEMOD(state, AGC2I1) << 8) |
    STV090x_READ_DEMOD(state, AGC2I0);
  }
  agc2 /= 10;
  srate_coarse = stv090x_get_srate(state, state->internal->mclk);
  cur_step++;
  dir *= -1;
  if ((tmg_cpt >= 5) && (agc2 < agc2th) &&
      (srate_coarse < 50000000) && (srate_coarse > 850000))
   tmg_lock = 1;
  else if (cur_step < steps) {
   if (dir > 0)
    freq += cur_step * car_step;
   else
    freq -= cur_step * car_step;


   if (stv090x_i2c_gate_ctrl(state, 1) < 0)
    goto err;

   if (state->config->tuner_set_frequency) {
    if (state->config->tuner_set_frequency(fe, freq) < 0)
     goto err_gateoff;
   }

   if (state->config->tuner_set_bandwidth) {
    if (state->config->tuner_set_bandwidth(fe, state->tuner_bw) < 0)
     goto err_gateoff;
   }

   if (stv090x_i2c_gate_ctrl(state, 0) < 0)
    goto err;

   msleep(50);

   if (stv090x_i2c_gate_ctrl(state, 1) < 0)
    goto err;

   if (state->config->tuner_get_status) {
    if (state->config->tuner_get_status(fe, &reg) < 0)
     goto err_gateoff;
   }

   if (reg)
    dprintk(FE_DEBUG, 1, "Tuner phase locked");
   else
    dprintk(FE_DEBUG, 1, "Tuner unlocked");

   if (stv090x_i2c_gate_ctrl(state, 0) < 0)
    goto err;

  }
 }
 if (!tmg_lock)
  srate_coarse = 0;
 else
  srate_coarse = stv090x_get_srate(state, state->internal->mclk);

 return srate_coarse;

err_gateoff:
 stv090x_i2c_gate_ctrl(state, 0);
err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}
