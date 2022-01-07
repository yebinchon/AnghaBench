
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {scalar_t__ usecount; int flags; struct clk* parent; int lpsc; int psc_ctlr; } ;


 int CLK_PLL ;
 scalar_t__ WARN_ON (int) ;
 int davinci_psc_config (int ,int ,int ,int ) ;
 int psc_domain (struct clk*) ;

__attribute__((used)) static void __clk_disable(struct clk *clk)
{
 if (WARN_ON(clk->usecount == 0))
  return;
 if (--clk->usecount == 0 && !(clk->flags & CLK_PLL))
  davinci_psc_config(psc_domain(clk), clk->psc_ctlr,
    clk->lpsc, 0);
 if (clk->parent)
  __clk_disable(clk->parent);
}
