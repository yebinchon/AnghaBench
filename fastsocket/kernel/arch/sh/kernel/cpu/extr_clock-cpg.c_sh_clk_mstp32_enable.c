
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int enable_bit; int enable_reg; } ;


 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static int sh_clk_mstp32_enable(struct clk *clk)
{
 __raw_writel(__raw_readl(clk->enable_reg) & ~(1 << clk->enable_bit),
       clk->enable_reg);
 return 0;
}
