
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stv090x_state {int search_mode; int demod_mode; TYPE_1__* internal; } ;
struct TYPE_2__ {int dev_ver; } ;


 int ACLC ;
 int BCLC ;
 int CAR2CFG ;
 int DMDCFGMD ;
 int DVBS1_ENABLE_FIELD ;
 int DVBS2_ENABLE_FIELD ;
 int FE_ERROR ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;




 int STV090x_SETFIELD_Px (int,int ,int) ;
 int STV090x_SINGLE ;
 int STV090x_WRITE_DEMOD (struct stv090x_state*,int ,int) ;
 int dprintk (int ,int,char*) ;
 int stv090x_activate_modcod (struct stv090x_state*) ;
 int stv090x_activate_modcod_single (struct stv090x_state*) ;
 int stv090x_dvbs_track_crl (struct stv090x_state*) ;
 int stv090x_set_vit_thacq (struct stv090x_state*) ;
 int stv090x_set_vit_thtracq (struct stv090x_state*) ;
 int stv090x_set_viterbi (struct stv090x_state*) ;
 int stv090x_vitclk_ctl (struct stv090x_state*,int) ;

__attribute__((used)) static int stv090x_delivery_search(struct stv090x_state *state)
{
 u32 reg;

 switch (state->search_mode) {
 case 129:
 case 130:
  reg = STV090x_READ_DEMOD(state, DMDCFGMD);
  STV090x_SETFIELD_Px(reg, DVBS1_ENABLE_FIELD, 1);
  STV090x_SETFIELD_Px(reg, DVBS2_ENABLE_FIELD, 0);
  if (STV090x_WRITE_DEMOD(state, DMDCFGMD, reg) < 0)
   goto err;




  if (stv090x_vitclk_ctl(state, 0) < 0)
   goto err;

  if (stv090x_dvbs_track_crl(state) < 0)
   goto err;

  if (STV090x_WRITE_DEMOD(state, CAR2CFG, 0x22) < 0)
   goto err;

  if (stv090x_set_vit_thacq(state) < 0)
   goto err;
  if (stv090x_set_viterbi(state) < 0)
   goto err;
  break;

 case 128:
  reg = STV090x_READ_DEMOD(state, DMDCFGMD);
  STV090x_SETFIELD_Px(reg, DVBS1_ENABLE_FIELD, 0);
  STV090x_SETFIELD_Px(reg, DVBS2_ENABLE_FIELD, 0);
  if (STV090x_WRITE_DEMOD(state, DMDCFGMD, reg) < 0)
   goto err;
  STV090x_SETFIELD_Px(reg, DVBS1_ENABLE_FIELD, 1);
  STV090x_SETFIELD_Px(reg, DVBS2_ENABLE_FIELD, 1);
  if (STV090x_WRITE_DEMOD(state, DMDCFGMD, reg) < 0)
   goto err;

  if (stv090x_vitclk_ctl(state, 1) < 0)
   goto err;

  if (STV090x_WRITE_DEMOD(state, ACLC, 0x1a) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, BCLC, 0x09) < 0)
   goto err;

  if (state->internal->dev_ver <= 0x20) {

   if (STV090x_WRITE_DEMOD(state, CAR2CFG, 0x26) < 0)
    goto err;
  } else {

   if (STV090x_WRITE_DEMOD(state, CAR2CFG, 0x66) < 0)
    goto err;
  }

  if (state->demod_mode != STV090x_SINGLE) {

   if (stv090x_activate_modcod(state) < 0)
    goto err;
  } else {




   if (stv090x_activate_modcod_single(state) < 0)
    goto err;
  }

  if (stv090x_set_vit_thtracq(state) < 0)
   goto err;
  break;

 case 131:
 default:

  reg = STV090x_READ_DEMOD(state, DMDCFGMD);
  STV090x_SETFIELD_Px(reg, DVBS1_ENABLE_FIELD, 0);
  STV090x_SETFIELD_Px(reg, DVBS2_ENABLE_FIELD, 0);
  if (STV090x_WRITE_DEMOD(state, DMDCFGMD, reg) < 0)
   goto err;
  STV090x_SETFIELD_Px(reg, DVBS1_ENABLE_FIELD, 1);
  STV090x_SETFIELD_Px(reg, DVBS2_ENABLE_FIELD, 1);
  if (STV090x_WRITE_DEMOD(state, DMDCFGMD, reg) < 0)
   goto err;

  if (stv090x_vitclk_ctl(state, 0) < 0)
   goto err;

  if (stv090x_dvbs_track_crl(state) < 0)
   goto err;

  if (state->internal->dev_ver <= 0x20) {

   if (STV090x_WRITE_DEMOD(state, CAR2CFG, 0x26) < 0)
    goto err;
  } else {

   if (STV090x_WRITE_DEMOD(state, CAR2CFG, 0x66) < 0)
    goto err;
  }

  if (state->demod_mode != STV090x_SINGLE) {

   if (stv090x_activate_modcod(state) < 0)
    goto err;
  } else {




   if (stv090x_activate_modcod_single(state) < 0)
    goto err;
  }

  if (stv090x_set_vit_thacq(state) < 0)
   goto err;

  if (stv090x_set_viterbi(state) < 0)
   goto err;
  break;
 }
 return 0;
err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}
