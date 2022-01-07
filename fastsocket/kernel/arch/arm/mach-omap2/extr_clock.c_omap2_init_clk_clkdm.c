
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int dummy; } ;
struct clk {int clkdm_name; int name; struct clockdomain* clkdm; } ;


 struct clockdomain* clkdm_lookup (int ) ;
 int pr_debug (char*,int ,int ) ;

void omap2_init_clk_clkdm(struct clk *clk)
{
 struct clockdomain *clkdm;

 if (!clk->clkdm_name)
  return;

 clkdm = clkdm_lookup(clk->clkdm_name);
 if (clkdm) {
  pr_debug("clock: associated clk %s to clkdm %s\n",
    clk->name, clk->clkdm_name);
  clk->clkdm = clkdm;
 } else {
  pr_debug("clock: could not associate clk %s to "
    "clkdm %s\n", clk->name, clk->clkdm_name);
 }
}
