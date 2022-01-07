
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_div_mult_table {int nr_divisors; } ;
struct clk {TYPE_1__* freq_table; int enable_reg; } ;
struct TYPE_2__ {unsigned long frequency; } ;


 int __raw_readl (int ) ;
 int clk_rate_table_build (struct clk*,TYPE_1__*,int ,struct clk_div_mult_table*,int *) ;
 struct clk_div_mult_table sh_clk_div6_table ;

__attribute__((used)) static unsigned long sh_clk_div6_recalc(struct clk *clk)
{
 struct clk_div_mult_table *table = &sh_clk_div6_table;
 unsigned int idx;

 clk_rate_table_build(clk, clk->freq_table, table->nr_divisors,
        table, ((void*)0));

 idx = __raw_readl(clk->enable_reg) & 0x003f;

 return clk->freq_table[idx].frequency;
}
