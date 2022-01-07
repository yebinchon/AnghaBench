
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 unsigned long omap2_get_apll_clkin () ;
 unsigned long omap2_get_sysclkdiv () ;

__attribute__((used)) static unsigned long omap2_osc_clk_recalc(struct clk *clk)
{
 return omap2_get_apll_clkin() * omap2_get_sysclkdiv();
}
