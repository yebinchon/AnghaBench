
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {scalar_t__ usecount; scalar_t__ clkdm; struct clk* parent; } ;


 int _omap2_clk_disable (struct clk*) ;
 int omap2_clkdm_clk_disable (scalar_t__,struct clk*) ;

void omap2_clk_disable(struct clk *clk)
{
 if (clk->usecount > 0 && !(--clk->usecount)) {
  _omap2_clk_disable(clk);
  if (clk->parent)
   omap2_clk_disable(clk->parent);
  if (clk->clkdm)
   omap2_clkdm_clk_disable(clk->clkdm, clk);

 }
}
