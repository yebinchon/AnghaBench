
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct stb0899_internal {int srate; int inversion; scalar_t__ status; int master_clk; int modcod; int pilots; int frame_length; scalar_t__ freq; } ;
struct stb0899_state {int verbose; int frontend; TYPE_1__* config; struct stb0899_internal internal; } ;
typedef int s32 ;
typedef enum stb0899_status { ____Placeholder_stb0899_status } stb0899_status ;
typedef enum stb0899_modcod { ____Placeholder_stb0899_modcod } stb0899_modcod ;
struct TYPE_2__ {int (* tuner_get_frequency ) (int *,scalar_t__*) ;int (* tuner_set_frequency ) (int *,scalar_t__) ;} ;


 int CRL_FREQ ;
 int CRL_NOM_FREQ ;
 int CSM_CNTRL1 ;
 int CSM_TWO_PASS ;
 int DMD_CNTRL2 ;
 scalar_t__ DVBS2_DEMOD_LOCK ;
 scalar_t__ DVBS2_FEC_LOCK ;
 int EQ_CNTRL ;
 int EQ_DISABLE_UPDATE ;
 int EQ_SHIFT ;
 int FE_DEBUG ;
 int FRESRS ;
 int IF_AGC_CNTRL ;
 int IF_AGC_CNTRL2 ;
 int IF_AGC_DUMP_PER ;
 int IF_AGC_REF ;
 int IF_LOOP_GAIN ;
 scalar_t__ INRANGE (int ,int,int ) ;



 int SPECTRUM_INVERT ;
 int STB0899_BASE_CRL_NOM_FREQ ;
 int STB0899_BASE_CSM_CNTRL1 ;
 int STB0899_BASE_DMD_CNTRL2 ;
 int STB0899_BASE_EQ_CNTRL ;
 int STB0899_BASE_IF_AGC_CNTRL ;
 int STB0899_BASE_IF_AGC_CNTRL2 ;
 int STB0899_GETFIELD (int ,void*) ;
 int STB0899_OFF0_CRL_NOM_FREQ ;
 int STB0899_OFF0_CSM_CNTRL1 ;
 int STB0899_OFF0_DMD_CNTRL2 ;
 int STB0899_OFF0_EQ_CNTRL ;
 int STB0899_OFF0_IF_AGC_CNTRL ;
 int STB0899_OFF0_IF_AGC_CNTRL2 ;
 int STB0899_QPSK_12 ;
 int STB0899_QPSK_23 ;
 int STB0899_QPSK_35 ;
 int STB0899_QPSK_910 ;
 void* STB0899_READ_S2REG (int ,int ) ;
 int STB0899_S2DEMOD ;
 int STB0899_SETFIELD_VAL (int ,void*,int) ;
 int STB0899_TSTRES ;
 int UWP_DECODE_MOD ;
 int UWP_STAT2 ;
 int dprintk (int ,int ,int,char*) ;
 void* stb0899_dvbs2_get_dmd_status (struct stb0899_state*,int) ;
 void* stb0899_dvbs2_get_fec_status (struct stb0899_state*,int) ;
 int stb0899_dvbs2_get_srate (struct stb0899_state*) ;
 int stb0899_dvbs2_init_calc (struct stb0899_state*) ;
 int stb0899_dvbs2_init_csm (struct stb0899_state*,int,int) ;
 int stb0899_dvbs2_reacquire (struct stb0899_state*) ;
 int stb0899_i2c_gate_ctrl (int *,int) ;
 void* stb0899_read_reg (struct stb0899_state*,int ) ;
 int stb0899_write_reg (struct stb0899_state*,int ,void*) ;
 int stb0899_write_s2reg (struct stb0899_state*,int ,int ,int ,void*) ;
 int stub1 (int *,scalar_t__) ;
 int stub2 (int *,scalar_t__*) ;

enum stb0899_status stb0899_dvbs2_algo(struct stb0899_state *state)
{
 struct stb0899_internal *internal = &state->internal;
 enum stb0899_modcod modcod;

 s32 offsetfreq, searchTime, FecLockTime, pilots, iqSpectrum;
 int i = 0;
 u32 reg, csm1;

 if (internal->srate <= 2000000) {
  searchTime = 5000;
  FecLockTime = 350;
 } else if (internal->srate <= 5000000) {
  searchTime = 2500;
  FecLockTime = 170;
 } else if (internal->srate <= 10000000) {
  searchTime = 1500;
  FecLockTime = 80;
 } else if (internal->srate <= 15000000) {
  searchTime = 500;
  FecLockTime = 50;
 } else if (internal->srate <= 20000000) {
  searchTime = 300;
  FecLockTime = 30;
 } else if (internal->srate <= 25000000) {
  searchTime = 250;
  FecLockTime = 25;
 } else {
  searchTime = 150;
  FecLockTime = 20;
 }


 reg = stb0899_read_reg(state, STB0899_TSTRES);
 STB0899_SETFIELD_VAL(FRESRS, reg, 1);
 stb0899_write_reg(state, STB0899_TSTRES, reg);


 stb0899_i2c_gate_ctrl(&state->frontend, 1);


 if (state->config->tuner_set_frequency)
  state->config->tuner_set_frequency(&state->frontend, internal->freq);
 if (state->config->tuner_get_frequency)
  state->config->tuner_get_frequency(&state->frontend, &internal->freq);


 stb0899_i2c_gate_ctrl(&state->frontend, 0);


 reg = STB0899_READ_S2REG(STB0899_S2DEMOD, IF_AGC_CNTRL);
 STB0899_SETFIELD_VAL(IF_LOOP_GAIN, reg, 4);
 STB0899_SETFIELD_VAL(IF_AGC_REF, reg, 32);
 stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_IF_AGC_CNTRL, STB0899_OFF0_IF_AGC_CNTRL, reg);

 reg = STB0899_READ_S2REG(STB0899_S2DEMOD, IF_AGC_CNTRL2);
 STB0899_SETFIELD_VAL(IF_AGC_DUMP_PER, reg, 0);
 stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_IF_AGC_CNTRL2, STB0899_OFF0_IF_AGC_CNTRL2, reg);


 stb0899_dvbs2_init_calc(state);

 reg = STB0899_READ_S2REG(STB0899_S2DEMOD, DMD_CNTRL2);
 switch (internal->inversion) {
 case 129:
  STB0899_SETFIELD_VAL(SPECTRUM_INVERT, reg, 0);
  break;
 case 128:
  STB0899_SETFIELD_VAL(SPECTRUM_INVERT, reg, 1);
  break;
 case 130:
  STB0899_SETFIELD_VAL(SPECTRUM_INVERT, reg, 1);
  break;
 }
 stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_DMD_CNTRL2, STB0899_OFF0_DMD_CNTRL2, reg);
 stb0899_dvbs2_reacquire(state);


 internal->status = stb0899_dvbs2_get_dmd_status(state, searchTime);

 if (internal->status == DVBS2_DEMOD_LOCK) {
  dprintk(state->verbose, FE_DEBUG, 1, "------------> DVB-S2 DEMOD LOCK !");
  i = 0;

  internal->status = stb0899_dvbs2_get_fec_status(state, FecLockTime);


  while ((internal->status != DVBS2_FEC_LOCK) && (i < 3)) {

   offsetfreq = STB0899_READ_S2REG(STB0899_S2DEMOD, CRL_FREQ);


   reg = STB0899_READ_S2REG(STB0899_S2DEMOD, CRL_NOM_FREQ);
   STB0899_SETFIELD_VAL(CRL_NOM_FREQ, reg, offsetfreq);
   stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_CRL_NOM_FREQ, STB0899_OFF0_CRL_NOM_FREQ, reg);
   stb0899_dvbs2_reacquire(state);
   internal->status = stb0899_dvbs2_get_fec_status(state, searchTime);
   i++;
  }
 }

 if (internal->status != DVBS2_FEC_LOCK) {
  if (internal->inversion == 130) {
   reg = STB0899_READ_S2REG(STB0899_S2DEMOD, DMD_CNTRL2);
   iqSpectrum = STB0899_GETFIELD(SPECTRUM_INVERT, reg);

   STB0899_SETFIELD_VAL(SPECTRUM_INVERT, reg, !iqSpectrum);
   stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_DMD_CNTRL2, STB0899_OFF0_DMD_CNTRL2, reg);

   stb0899_dvbs2_reacquire(state);


   internal->status = stb0899_dvbs2_get_dmd_status(state, searchTime);
   if (internal->status == DVBS2_DEMOD_LOCK) {
    i = 0;

    internal->status = stb0899_dvbs2_get_fec_status(state, FecLockTime);

    while ((internal->status != DVBS2_FEC_LOCK) && (i < 3)) {

     offsetfreq = STB0899_READ_S2REG(STB0899_S2DEMOD, CRL_FREQ);


     reg = STB0899_READ_S2REG(STB0899_S2DEMOD, CRL_NOM_FREQ);
     STB0899_SETFIELD_VAL(CRL_NOM_FREQ, reg, offsetfreq);
     stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_CRL_NOM_FREQ, STB0899_OFF0_CRL_NOM_FREQ, reg);

     stb0899_dvbs2_reacquire(state);
     internal->status = stb0899_dvbs2_get_fec_status(state, searchTime);
     i++;
    }
   }




  }
 }
 if (internal->status == DVBS2_FEC_LOCK) {
  dprintk(state->verbose, FE_DEBUG, 1, "----------------> DVB-S2 FEC Lock !");
  reg = STB0899_READ_S2REG(STB0899_S2DEMOD, UWP_STAT2);
  modcod = STB0899_GETFIELD(UWP_DECODE_MOD, reg) >> 2;
  pilots = STB0899_GETFIELD(UWP_DECODE_MOD, reg) & 0x01;

  if ((((10 * internal->master_clk) / (internal->srate / 10)) <= 410) &&
        (INRANGE(STB0899_QPSK_23, modcod, STB0899_QPSK_910)) &&
        (pilots == 1)) {

   stb0899_dvbs2_init_csm(state, pilots, modcod);

   internal->status = stb0899_dvbs2_get_fec_status(state, FecLockTime);

   i = 0;
   while ((internal->status != DVBS2_FEC_LOCK) && (i < 3)) {
    csm1 = STB0899_READ_S2REG(STB0899_S2DEMOD, CSM_CNTRL1);
    STB0899_SETFIELD_VAL(CSM_TWO_PASS, csm1, 1);
    stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_CSM_CNTRL1, STB0899_OFF0_CSM_CNTRL1, csm1);
    csm1 = STB0899_READ_S2REG(STB0899_S2DEMOD, CSM_CNTRL1);
    STB0899_SETFIELD_VAL(CSM_TWO_PASS, csm1, 0);
    stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_CSM_CNTRL1, STB0899_OFF0_CSM_CNTRL1, csm1);

    internal->status = stb0899_dvbs2_get_fec_status(state, FecLockTime);
    i++;
   }
  }

  if ((((10 * internal->master_clk) / (internal->srate / 10)) <= 410) &&
        (INRANGE(STB0899_QPSK_12, modcod, STB0899_QPSK_35)) &&
        (pilots == 1)) {


   reg = STB0899_READ_S2REG(STB0899_S2DEMOD, EQ_CNTRL);
   STB0899_SETFIELD_VAL(EQ_DISABLE_UPDATE, reg, 1);
   stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_EQ_CNTRL, STB0899_OFF0_EQ_CNTRL, reg);
  }


  reg = STB0899_READ_S2REG(STB0899_S2DEMOD, EQ_CNTRL);
  STB0899_SETFIELD_VAL(EQ_SHIFT, reg, 0x02);
  stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_EQ_CNTRL, STB0899_OFF0_EQ_CNTRL, reg);


  offsetfreq = STB0899_READ_S2REG(STB0899_S2DEMOD, CRL_FREQ);

  offsetfreq = offsetfreq / ((1 << 30) / 1000);
  offsetfreq *= (internal->master_clk / 1000000);
  reg = STB0899_READ_S2REG(STB0899_S2DEMOD, DMD_CNTRL2);
  if (STB0899_GETFIELD(SPECTRUM_INVERT, reg))
   offsetfreq *= -1;

  internal->freq = internal->freq - offsetfreq;
  internal->srate = stb0899_dvbs2_get_srate(state);

  reg = STB0899_READ_S2REG(STB0899_S2DEMOD, UWP_STAT2);
  internal->modcod = STB0899_GETFIELD(UWP_DECODE_MOD, reg) >> 2;
  internal->pilots = STB0899_GETFIELD(UWP_DECODE_MOD, reg) & 0x01;
  internal->frame_length = (STB0899_GETFIELD(UWP_DECODE_MOD, reg) >> 1) & 0x01;


  reg = STB0899_READ_S2REG(STB0899_S2DEMOD, IF_AGC_CNTRL);
  STB0899_SETFIELD_VAL(IF_LOOP_GAIN, reg, 3);


  if (INRANGE(STB0899_QPSK_12, internal->modcod, STB0899_QPSK_23))
   STB0899_SETFIELD_VAL(IF_AGC_REF, reg, 16);

  stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_IF_AGC_CNTRL, STB0899_OFF0_IF_AGC_CNTRL, reg);

  reg = STB0899_READ_S2REG(STB0899_S2DEMOD, IF_AGC_CNTRL2);
  STB0899_SETFIELD_VAL(IF_AGC_DUMP_PER, reg, 7);
  stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_IF_AGC_CNTRL2, STB0899_OFF0_IF_AGC_CNTRL2, reg);
 }


 reg = stb0899_read_reg(state, STB0899_TSTRES);
 STB0899_SETFIELD_VAL(FRESRS, reg, 0);
 stb0899_write_reg(state, STB0899_TSTRES, reg);

 return internal->status;
}
