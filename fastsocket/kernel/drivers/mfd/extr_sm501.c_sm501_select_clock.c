
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501_clock {unsigned long mclk; unsigned long divider; unsigned long shift; } ;


 int sm501_calc_clock (unsigned long,struct sm501_clock*,int,unsigned long,long*) ;

__attribute__((used)) static unsigned long sm501_select_clock(unsigned long freq,
     struct sm501_clock *clock,
     int max_div)
{
 unsigned long mclk;
 long best_diff = 999999999;


 for (mclk = 288000000; mclk <= 336000000; mclk += 48000000) {
  sm501_calc_clock(freq, clock, max_div, mclk, &best_diff);
 }


 return clock->mclk / (clock->divider << clock->shift);
}
