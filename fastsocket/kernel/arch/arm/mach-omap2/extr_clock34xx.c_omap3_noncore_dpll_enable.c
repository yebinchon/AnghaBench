
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpll_data {TYPE_1__* clk_ref; TYPE_1__* clk_bypass; } ;
struct clk {scalar_t__ rate; TYPE_1__* parent; struct dpll_data* dpll_data; } ;
struct TYPE_2__ {scalar_t__ rate; } ;


 int EINVAL ;
 int WARN_ON (int) ;
 int _omap3_noncore_dpll_bypass (struct clk*) ;
 int _omap3_noncore_dpll_lock (struct clk*) ;
 struct clk dpll3_ck ;
 scalar_t__ omap2_get_dpll_rate (struct clk*) ;

__attribute__((used)) static int omap3_noncore_dpll_enable(struct clk *clk)
{
 int r;
 struct dpll_data *dd;

 if (clk == &dpll3_ck)
  return -EINVAL;

 dd = clk->dpll_data;
 if (!dd)
  return -EINVAL;

 if (clk->rate == dd->clk_bypass->rate) {
  WARN_ON(clk->parent != dd->clk_bypass);
  r = _omap3_noncore_dpll_bypass(clk);
 } else {
  WARN_ON(clk->parent != dd->clk_ref);
  r = _omap3_noncore_dpll_lock(clk);
 }

 if (!r)
  clk->rate = omap2_get_dpll_rate(clk);

 return r;
}
