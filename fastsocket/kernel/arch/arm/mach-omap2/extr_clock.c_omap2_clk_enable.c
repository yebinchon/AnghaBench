
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int usecount; scalar_t__ clkdm; struct clk* parent; } ;


 int _omap2_clk_enable (struct clk*) ;
 int omap2_clk_disable (struct clk*) ;
 int omap2_clkdm_clk_disable (scalar_t__,struct clk*) ;
 int omap2_clkdm_clk_enable (scalar_t__,struct clk*) ;

int omap2_clk_enable(struct clk *clk)
{
 int ret = 0;

 if (clk->usecount++ == 0) {
  if (clk->clkdm)
   omap2_clkdm_clk_enable(clk->clkdm, clk);

  if (clk->parent) {
   ret = omap2_clk_enable(clk->parent);
   if (ret)
    goto err;
  }

  ret = _omap2_clk_enable(clk);
  if (ret) {
   if (clk->parent)
    omap2_clk_disable(clk->parent);

   goto err;
  }
 }
 return ret;

err:
 if (clk->clkdm)
  omap2_clkdm_clk_disable(clk->clkdm, clk);
 clk->usecount--;
 return ret;
}
