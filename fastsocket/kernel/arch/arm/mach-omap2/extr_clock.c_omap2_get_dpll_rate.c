
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef long long u32 ;
struct dpll_data {long long enable_mask; long long mult_mask; long long div1_mask; TYPE_2__* clk_ref; int mult_div1_reg; TYPE_1__* clk_bypass; int control_reg; } ;
struct clk {struct dpll_data* dpll_data; } ;
struct TYPE_4__ {scalar_t__ rate; } ;
struct TYPE_3__ {long long rate; } ;


 long long OMAP2XXX_EN_DPLL_FRBYPASS ;
 long long OMAP2XXX_EN_DPLL_LPBYPASS ;
 long long OMAP3XXX_EN_DPLL_FRBYPASS ;
 long long OMAP3XXX_EN_DPLL_LPBYPASS ;
 long long __ffs (long long) ;
 long long __raw_readl (int ) ;
 scalar_t__ cpu_is_omap24xx () ;
 scalar_t__ cpu_is_omap34xx () ;
 int do_div (long long,long long) ;

u32 omap2_get_dpll_rate(struct clk *clk)
{
 long long dpll_clk;
 u32 dpll_mult, dpll_div, v;
 struct dpll_data *dd;

 dd = clk->dpll_data;
 if (!dd)
  return 0;


 v = __raw_readl(dd->control_reg);
 v &= dd->enable_mask;
 v >>= __ffs(dd->enable_mask);

 if (cpu_is_omap24xx()) {
  if (v == OMAP2XXX_EN_DPLL_LPBYPASS ||
      v == OMAP2XXX_EN_DPLL_FRBYPASS)
   return dd->clk_bypass->rate;
 } else if (cpu_is_omap34xx()) {
  if (v == OMAP3XXX_EN_DPLL_LPBYPASS ||
      v == OMAP3XXX_EN_DPLL_FRBYPASS)
   return dd->clk_bypass->rate;
 }

 v = __raw_readl(dd->mult_div1_reg);
 dpll_mult = v & dd->mult_mask;
 dpll_mult >>= __ffs(dd->mult_mask);
 dpll_div = v & dd->div1_mask;
 dpll_div >>= __ffs(dd->div1_mask);

 dpll_clk = (long long)dd->clk_ref->rate * dpll_mult;
 do_div(dpll_clk, dpll_div + 1);

 return dpll_clk;
}
