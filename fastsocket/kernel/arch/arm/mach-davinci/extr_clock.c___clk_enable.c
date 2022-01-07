
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int flags; int lpsc; int psc_ctlr; int usecount; struct clk* parent; } ;


 int CLK_PSC ;
 int davinci_psc_config (int ,int ,int ,int) ;
 int psc_domain (struct clk*) ;

__attribute__((used)) static void __clk_enable(struct clk *clk)
{
 if (clk->parent)
  __clk_enable(clk->parent);
 if (clk->usecount++ == 0 && (clk->flags & CLK_PSC))
  davinci_psc_config(psc_domain(clk), clk->psc_ctlr,
    clk->lpsc, 1);
}
