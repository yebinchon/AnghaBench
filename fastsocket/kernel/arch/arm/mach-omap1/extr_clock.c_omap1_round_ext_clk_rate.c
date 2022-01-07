
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int calc_ext_dsor (unsigned long) ;

__attribute__((used)) static long omap1_round_ext_clk_rate(struct clk * clk, unsigned long rate)
{
 return 96000000 / calc_ext_dsor(rate);
}
