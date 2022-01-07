
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int clksel_mask; int clksel_reg; } ;


 int __ffs (int) ;
 int __raw_readl (int ) ;
 int omap2_clksel_to_divisor (struct clk*,int) ;

u32 omap2_clksel_get_divisor(struct clk *clk)
{
 u32 v;

 if (!clk->clksel_mask)
  return 0;

 v = __raw_readl(clk->clksel_reg) & clk->clksel_mask;
 v >>= __ffs(clk->clksel_mask);

 return omap2_clksel_to_divisor(clk, v);
}
