
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk {int flags; int enable_bit; TYPE_1__* ops; int * enable_reg; int name; } ;
struct TYPE_2__ {scalar_t__ find_idlest; } ;


 int INVERT_ENABLE ;
 int __raw_readl (int *) ;
 int __raw_writel (int,int *) ;
 int omap2_module_wait_ready (struct clk*) ;
 int pr_err (char*,int ) ;
 scalar_t__ unlikely (int ) ;

int omap2_dflt_clk_enable(struct clk *clk)
{
 u32 v;

 if (unlikely(clk->enable_reg == ((void*)0))) {
  pr_err("clock.c: Enable for %s without enable code\n",
         clk->name);
  return 0;
 }

 v = __raw_readl(clk->enable_reg);
 if (clk->flags & INVERT_ENABLE)
  v &= ~(1 << clk->enable_bit);
 else
  v |= (1 << clk->enable_bit);
 __raw_writel(v, clk->enable_reg);
 v = __raw_readl(clk->enable_reg);

 if (clk->ops->find_idlest)
  omap2_module_wait_ready(clk);

 return 0;
}
