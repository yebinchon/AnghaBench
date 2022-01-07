
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv090x_state {int algo; int srate; int DemodTimeout; int FecTimeout; } ;


 int FE_DEBUG ;



 int dprintk (int ,int,char*) ;

__attribute__((used)) static void stv090x_get_lock_tmg(struct stv090x_state *state)
{
 switch (state->algo) {
 case 130:
  dprintk(FE_DEBUG, 1, "Blind Search");
  if (state->srate <= 1500000) {
   state->DemodTimeout = 1500;
   state->FecTimeout = 400;
  } else if (state->srate <= 5000000) {
   state->DemodTimeout = 1000;
   state->FecTimeout = 300;
  } else {
   state->DemodTimeout = 700;
   state->FecTimeout = 100;
  }
  break;

 case 129:
 case 128:
 default:
  dprintk(FE_DEBUG, 1, "Normal Search");
  if (state->srate <= 1000000) {
   state->DemodTimeout = 4500;
   state->FecTimeout = 1700;
  } else if (state->srate <= 2000000) {
   state->DemodTimeout = 2500;
   state->FecTimeout = 1100;
  } else if (state->srate <= 5000000) {
   state->DemodTimeout = 1000;
   state->FecTimeout = 550;
  } else if (state->srate <= 10000000) {
   state->DemodTimeout = 700;
   state->FecTimeout = 250;
  } else if (state->srate <= 20000000) {
   state->DemodTimeout = 400;
   state->FecTimeout = 130;
  } else {
   state->DemodTimeout = 300;
   state->FecTimeout = 100;
  }
  break;
 }

 if (state->algo == 128)
  state->DemodTimeout /= 2;
}
