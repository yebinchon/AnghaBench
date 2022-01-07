
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int enable_shift; int enable_reg; } ;


 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;

__attribute__((used)) static void clk_pccr_disable(struct clk *clk)
{
 unsigned long reg;

 if (!clk->enable_reg)
  return;

 reg = __raw_readl(clk->enable_reg);
 reg &= ~(1 << clk->enable_shift);
 __raw_writel(reg, clk->enable_reg);
}
