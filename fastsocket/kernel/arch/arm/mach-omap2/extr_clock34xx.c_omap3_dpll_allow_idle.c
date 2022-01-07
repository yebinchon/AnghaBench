
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpll_data {int autoidle_mask; int autoidle_reg; } ;
struct clk {struct dpll_data* dpll_data; } ;


 int DPLL_AUTOIDLE_LOW_POWER_STOP ;
 int __ffs (int) ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static void omap3_dpll_allow_idle(struct clk *clk)
{
 const struct dpll_data *dd;
 u32 v;

 if (!clk || !clk->dpll_data)
  return;

 dd = clk->dpll_data;






 v = __raw_readl(dd->autoidle_reg);
 v &= ~dd->autoidle_mask;
 v |= DPLL_AUTOIDLE_LOW_POWER_STOP << __ffs(dd->autoidle_mask);
 __raw_writel(v, dd->autoidle_reg);
}
