
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stv090x_state {int search_mode; TYPE_1__* internal; } ;
typedef int s32 ;
struct TYPE_2__ {int dev_ver; } ;


 int CARFREQ ;
 int CORRELABS ;
 int DMDCFGMD ;
 int DMDFLYW ;
 int DMDSTATE ;
 int FE_ERROR ;
 int FLYWHEEL_CPT_FIELD ;
 int HEADER_MODE_FIELD ;
 int STV090x_DVBS2 ;
 int STV090x_GETFIELD_Px (int ,int ) ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;




 scalar_t__ STV090x_WRITE_DEMOD (struct stv090x_state*,int ,int) ;
 int dprintk (int ,int,char*) ;
 int msleep (int) ;
 int stv090x_chk_signal (struct stv090x_state*) ;
 int stv090x_get_loop_params (struct stv090x_state*,int*,int*,int*) ;
 int stv090x_search_car_loop (struct stv090x_state*,int,int,int,int) ;

__attribute__((used)) static int stv090x_sw_algo(struct stv090x_state *state)
{
 int no_signal, zigzag, lock = 0;
 u32 reg;

 s32 dvbs2_fly_wheel;
 s32 inc, timeout_step, trials, steps_max;


 stv090x_get_loop_params(state, &inc, &timeout_step, &steps_max);

 switch (state->search_mode) {
 case 129:
 case 130:

  if (state->internal->dev_ver >= 0x20) {
   if (STV090x_WRITE_DEMOD(state, CARFREQ, 0x3B) < 0)
    goto err;
  }

  if (STV090x_WRITE_DEMOD(state, DMDCFGMD, 0x49) < 0)
   goto err;
  zigzag = 0;
  break;

 case 128:
  if (state->internal->dev_ver >= 0x20) {
   if (STV090x_WRITE_DEMOD(state, CORRELABS, 0x79) < 0)
    goto err;
  }

  if (STV090x_WRITE_DEMOD(state, DMDCFGMD, 0x89) < 0)
   goto err;
  zigzag = 1;
  break;

 case 131:
 default:

  if (state->internal->dev_ver >= 0x20) {
   if (STV090x_WRITE_DEMOD(state, CARFREQ, 0x3b) < 0)
    goto err;
   if (STV090x_WRITE_DEMOD(state, CORRELABS, 0x79) < 0)
    goto err;
  }

  if (STV090x_WRITE_DEMOD(state, DMDCFGMD, 0xc9) < 0)
   goto err;
  zigzag = 0;
  break;
 }

 trials = 0;
 do {
  lock = stv090x_search_car_loop(state, inc, timeout_step, zigzag, steps_max);
  no_signal = stv090x_chk_signal(state);
  trials++;


  if (lock || no_signal || (trials == 2)) {

   if (state->internal->dev_ver >= 0x20) {
    if (STV090x_WRITE_DEMOD(state, CARFREQ, 0x49) < 0)
     goto err;
    if (STV090x_WRITE_DEMOD(state, CORRELABS, 0x9e) < 0)
     goto err;
   }

   reg = STV090x_READ_DEMOD(state, DMDSTATE);
   if ((lock) && (STV090x_GETFIELD_Px(reg, HEADER_MODE_FIELD) == STV090x_DVBS2)) {

    msleep(timeout_step);
    reg = STV090x_READ_DEMOD(state, DMDFLYW);
    dvbs2_fly_wheel = STV090x_GETFIELD_Px(reg, FLYWHEEL_CPT_FIELD);
    if (dvbs2_fly_wheel < 0xd) {
     msleep(timeout_step);
     reg = STV090x_READ_DEMOD(state, DMDFLYW);
     dvbs2_fly_wheel = STV090x_GETFIELD_Px(reg, FLYWHEEL_CPT_FIELD);
    }
    if (dvbs2_fly_wheel < 0xd) {

     lock = 0;
     if (trials < 2) {
      if (state->internal->dev_ver >= 0x20) {
       if (STV090x_WRITE_DEMOD(state, CORRELABS, 0x79) < 0)
        goto err;
      }

      if (STV090x_WRITE_DEMOD(state, DMDCFGMD, 0x89) < 0)
       goto err;
     }
    }
   }
  }
 } while ((!lock) && (trials < 2) && (!no_signal));

 return lock;
err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}
