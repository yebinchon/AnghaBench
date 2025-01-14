
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct itd1000_state {int frequency; } ;
struct TYPE_3__ {int freq; int* values; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int FREF ;
 scalar_t__ PLLFH ;
 scalar_t__ PLLFL ;
 scalar_t__ PLLFM ;
 scalar_t__ PLLNH ;
 scalar_t__ PLLNL ;
 scalar_t__ RFST1 ;
 scalar_t__ RFTR ;
 int deb (char*,int,...) ;
 int do_div (int,int) ;
 TYPE_1__* itd1000_fre_values ;
 int itd1000_read_reg (struct itd1000_state*,scalar_t__) ;
 int itd1000_set_vco (struct itd1000_state*,int) ;
 int itd1000_write_reg (struct itd1000_state*,scalar_t__,int) ;

__attribute__((used)) static void itd1000_set_lo(struct itd1000_state *state, u32 freq_khz)
{
 int i, j;
 u32 plln, pllf;
 u64 tmp;

 plln = (freq_khz * 1000) / 2 / FREF;


 tmp = plln % 1000000;
 plln /= 1000000;

 tmp *= 1048576;
 do_div(tmp, 1000000);
 pllf = (u32) tmp;

 state->frequency = ((plln * 1000) + (pllf * 1000)/1048576) * 2*FREF;
 deb("frequency: %dkHz (wanted) %dkHz (set), PLLF = %d, PLLN = %d", freq_khz, state->frequency, pllf, plln);

 itd1000_write_reg(state, PLLNH, 0x80); ;
 itd1000_write_reg(state, PLLNL, plln & 0xff);
 itd1000_write_reg(state, PLLFH, (itd1000_read_reg(state, PLLFH) & 0xf0) | ((pllf >> 16) & 0x0f));
 itd1000_write_reg(state, PLLFM, (pllf >> 8) & 0xff);
 itd1000_write_reg(state, PLLFL, (pllf >> 0) & 0xff);

 for (i = 0; i < ARRAY_SIZE(itd1000_fre_values); i++) {
  if (freq_khz <= itd1000_fre_values[i].freq) {
   deb("fre_values: %d", i);
   itd1000_write_reg(state, RFTR, itd1000_fre_values[i].values[0]);
   for (j = 0; j < 9; j++)
    itd1000_write_reg(state, RFST1+j, itd1000_fre_values[i].values[j+1]);
   break;
  }
 }

 itd1000_set_vco(state, freq_khz);
}
