
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int enable_shift; scalar_t__ enable_reg; scalar_t__ enable_negate; } ;


 int EINVAL ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;

__attribute__((used)) static int std_clk_disable(struct clk *clk)
{
 if (clk->enable_reg) {
  u32 clk_reg = __raw_readl(clk->enable_reg);
  if (clk->enable_negate)
   clk_reg |= (1 << clk->enable_shift);
  else
   clk_reg &= ~(1 << clk->enable_shift);
  __raw_writel(clk_reg, clk->enable_reg);
  return 0;
 } else
  return -EINVAL;
}
