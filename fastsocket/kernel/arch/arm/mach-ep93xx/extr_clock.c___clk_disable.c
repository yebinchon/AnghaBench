
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {struct clk* parent; scalar_t__ enable_reg; scalar_t__ sw_locked; int enable_mask; int users; } ;


 int __raw_readl (scalar_t__) ;
 int __raw_writel (int ,scalar_t__) ;
 int ep93xx_syscon_swlocked_write (int ,scalar_t__) ;

__attribute__((used)) static void __clk_disable(struct clk *clk)
{
 if (!--clk->users) {
  if (clk->enable_reg) {
   u32 v;

   v = __raw_readl(clk->enable_reg);
   v &= ~clk->enable_mask;
   if (clk->sw_locked)
    ep93xx_syscon_swlocked_write(v, clk->enable_reg);
   else
    __raw_writel(v, clk->enable_reg);
  }

  if (clk->parent)
   __clk_disable(clk->parent);
 }
}
