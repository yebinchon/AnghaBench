
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501_clock {unsigned long mclk; int divider; int shift; } ;


 unsigned long sm501fb_round_div (unsigned long,int) ;

__attribute__((used)) static int sm501_calc_clock(unsigned long freq,
       struct sm501_clock *clock,
       int max_div,
       unsigned long mclk,
       long *best_diff)
{
 int ret = 0;
 int divider;
 int shift;
 long diff;




 for (divider = 1; divider <= max_div; divider += 2) {

  for (shift = 0; shift < 8; shift++) {

   diff = sm501fb_round_div(mclk, divider << shift) - freq;
   if (diff < 0)
    diff = -diff;


   if (diff < *best_diff) {
    *best_diff = diff;

    clock->mclk = mclk;
    clock->divider = divider;
    clock->shift = shift;
    ret = 1;
   }
  }
 }

 return ret;
}
