
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stv090x_state {int search_range; TYPE_1__* internal; } ;
typedef int s32 ;
struct TYPE_2__ {int mclk; } ;


 int AGC2I0 ;
 int AGC2I1 ;
 int CFR1 ;
 int CFR2 ;
 int FE_DEBUG ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;
 int comp2 (int,int) ;
 int dprintk (int ,int,char*) ;

__attribute__((used)) static int stv090x_chk_signal(struct stv090x_state *state)
{
 s32 offst_car, agc2, car_max;
 int no_signal;

 offst_car = STV090x_READ_DEMOD(state, CFR2) << 8;
 offst_car |= STV090x_READ_DEMOD(state, CFR1);
 offst_car = comp2(offst_car, 16);

 agc2 = STV090x_READ_DEMOD(state, AGC2I1) << 8;
 agc2 |= STV090x_READ_DEMOD(state, AGC2I0);
 car_max = state->search_range / 1000;

 car_max += (car_max / 10);
 car_max = (65536 * car_max / 2);
 car_max /= state->internal->mclk / 1000;

 if (car_max > 0x4000)
  car_max = 0x4000;

 if ((agc2 > 0x2000) || (offst_car > 2 * car_max) || (offst_car < -2 * car_max)) {
  no_signal = 1;
  dprintk(FE_DEBUG, 1, "No Signal");
 } else {
  no_signal = 0;
  dprintk(FE_DEBUG, 1, "Found Signal");
 }

 return no_signal;
}
