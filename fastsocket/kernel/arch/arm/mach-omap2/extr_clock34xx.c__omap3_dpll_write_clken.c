
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dpll_data {int enable_mask; int control_reg; } ;
struct clk {struct dpll_data* dpll_data; } ;


 int __ffs (int) ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static void _omap3_dpll_write_clken(struct clk *clk, u8 clken_bits)
{
 const struct dpll_data *dd;
 u32 v;

 dd = clk->dpll_data;

 v = __raw_readl(dd->control_reg);
 v &= ~dd->enable_mask;
 v |= clken_bits << __ffs(dd->enable_mask);
 __raw_writel(v, dd->control_reg);
}
