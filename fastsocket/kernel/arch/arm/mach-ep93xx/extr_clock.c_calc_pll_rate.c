
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned long long rate; } ;


 TYPE_1__ clk_xtali ;
 int do_div (unsigned long long,int) ;

__attribute__((used)) static unsigned long calc_pll_rate(u32 config_word)
{
 unsigned long long rate;
 int i;

 rate = clk_xtali.rate;
 rate *= ((config_word >> 11) & 0x1f) + 1;
 rate *= ((config_word >> 5) & 0x3f) + 1;
 do_div(rate, (config_word & 0x1f) + 1);
 for (i = 0; i < ((config_word >> 16) & 3); i++)
  rate >>= 1;

 return (unsigned long)rate;
}
