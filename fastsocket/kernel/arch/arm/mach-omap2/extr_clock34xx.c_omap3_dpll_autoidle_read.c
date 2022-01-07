
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpll_data {int autoidle_mask; int autoidle_reg; } ;
struct clk {struct dpll_data* dpll_data; } ;


 int EINVAL ;
 int __ffs (int) ;
 int __raw_readl (int ) ;

__attribute__((used)) static u32 omap3_dpll_autoidle_read(struct clk *clk)
{
 const struct dpll_data *dd;
 u32 v;

 if (!clk || !clk->dpll_data)
  return -EINVAL;

 dd = clk->dpll_data;

 v = __raw_readl(dd->autoidle_reg);
 v &= dd->autoidle_mask;
 v >>= __ffs(dd->autoidle_mask);

 return v;
}
