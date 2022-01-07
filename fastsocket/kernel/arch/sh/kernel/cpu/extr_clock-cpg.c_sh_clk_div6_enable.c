
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int enable_reg; int rate; } ;


 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int sh_clk_div6_set_rate (struct clk*,int ,int ) ;

__attribute__((used)) static int sh_clk_div6_enable(struct clk *clk)
{
 unsigned long value;
 int ret;

 ret = sh_clk_div6_set_rate(clk, clk->rate, 0);
 if (ret == 0) {
  value = __raw_readl(clk->enable_reg);
  value &= ~0x100;
  __raw_writel(value, clk->enable_reg);
 }
 return ret;
}
