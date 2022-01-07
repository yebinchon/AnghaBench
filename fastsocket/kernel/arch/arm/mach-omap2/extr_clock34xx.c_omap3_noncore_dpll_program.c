
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct dpll_data {int freqsel_mask; int mult_mask; int div1_mask; int mult_div1_reg; int control_reg; } ;
struct clk {struct dpll_data* dpll_data; } ;


 int __ffs (int) ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int _omap3_noncore_dpll_bypass (struct clk*) ;
 int _omap3_noncore_dpll_lock (struct clk*) ;

__attribute__((used)) static int omap3_noncore_dpll_program(struct clk *clk, u16 m, u8 n, u16 freqsel)
{
 struct dpll_data *dd = clk->dpll_data;
 u32 v;


 _omap3_noncore_dpll_bypass(clk);


 v = __raw_readl(dd->control_reg);
 v &= ~dd->freqsel_mask;
 v |= freqsel << __ffs(dd->freqsel_mask);
 __raw_writel(v, dd->control_reg);


 v = __raw_readl(dd->mult_div1_reg);
 v &= ~(dd->mult_mask | dd->div1_mask);
 v |= m << __ffs(dd->mult_mask);
 v |= (n - 1) << __ffs(dd->div1_mask);
 __raw_writel(v, dd->mult_div1_reg);





 _omap3_noncore_dpll_lock(clk);

 return 0;
}
