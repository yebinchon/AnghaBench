
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int enable_reg; } ;


 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;

__attribute__((used)) static void sh_clk_div6_disable(struct clk *clk)
{
 unsigned long value;

 value = __raw_readl(clk->enable_reg);
 value |= 0x100;
 value |= 0x3f;
 __raw_writel(value, clk->enable_reg);
}
