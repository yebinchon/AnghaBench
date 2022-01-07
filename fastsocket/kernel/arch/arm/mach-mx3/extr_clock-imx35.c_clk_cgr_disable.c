
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int enable_shift; int enable_reg; } ;


 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static void clk_cgr_disable(struct clk *clk)
{
 u32 reg;

 reg = __raw_readl(clk->enable_reg);
 reg &= ~(3 << clk->enable_shift);
 __raw_writel(reg, clk->enable_reg);
}
