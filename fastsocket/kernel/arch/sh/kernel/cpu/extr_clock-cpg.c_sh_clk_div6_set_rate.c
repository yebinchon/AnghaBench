
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int enable_reg; int freq_table; } ;


 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int clk_rate_table_find (struct clk*,int ,unsigned long) ;

__attribute__((used)) static int sh_clk_div6_set_rate(struct clk *clk,
    unsigned long rate, int algo_id)
{
 unsigned long value;
 int idx;

 idx = clk_rate_table_find(clk, clk->freq_table, rate);
 if (idx < 0)
  return idx;

 value = __raw_readl(clk->enable_reg);
 value &= ~0x3f;
 value |= idx;
 __raw_writel(value, clk->enable_reg);
 return 0;
}
