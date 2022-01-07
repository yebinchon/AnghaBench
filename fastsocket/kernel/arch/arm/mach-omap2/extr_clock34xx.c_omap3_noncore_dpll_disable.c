
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int _omap3_noncore_dpll_stop (struct clk*) ;
 struct clk dpll3_ck ;

__attribute__((used)) static void omap3_noncore_dpll_disable(struct clk *clk)
{
 if (clk == &dpll3_ck)
  return;

 _omap3_noncore_dpll_stop(clk);
}
