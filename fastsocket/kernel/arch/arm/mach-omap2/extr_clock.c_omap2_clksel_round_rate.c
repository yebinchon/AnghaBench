
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int dummy; } ;


 long omap2_clksel_round_rate_div (struct clk*,unsigned long,int *) ;

long omap2_clksel_round_rate(struct clk *clk, unsigned long target_rate)
{
 u32 new_div;

 return omap2_clksel_round_rate_div(clk, target_rate, &new_div);
}
