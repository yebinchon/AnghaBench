
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {unsigned int cken; } ;


 scalar_t__ SUBCLK ;
 scalar_t__ W90X900_VA_CLKPWR ;
 unsigned long __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned long,scalar_t__) ;

void nuc900_subclk_enable(struct clk *clk, int enable)
{
 unsigned int clocks = clk->cken;
 unsigned long clken;

 clken = __raw_readl(W90X900_VA_CLKPWR + SUBCLK);

 if (enable)
  clken |= clocks;
 else
  clken &= ~clocks;

 __raw_writel(clken, W90X900_VA_CLKPWR + SUBCLK);
}
