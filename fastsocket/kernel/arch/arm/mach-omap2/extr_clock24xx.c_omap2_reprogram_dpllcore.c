
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct prcm_config {int cm_clksel1_pll; int cm_clksel2_pll; int base_sdrc_rfr; } ;
struct dpll_data {int mult_mask; int div1_mask; int mult_div1_reg; } ;
struct clk {struct dpll_data* dpll_data; } ;
struct TYPE_2__ {int dpll_speed; int xtal_speed; } ;


 int CM_CLKSEL2 ;
 int CORE_CLK_SRC_DPLL ;
 int CORE_CLK_SRC_DPLL_X2 ;
 int EINVAL ;
 int OMAP24XX_CORE_CLK_SRC_MASK ;
 int PLL_MOD ;
 int SDRC_RFR_CTRL_BYPASS ;
 int __ffs (int) ;
 int __raw_readl (int ) ;
 void* cm_read_mod_reg (int ,int ) ;
 TYPE_1__* curr_prcm_set ;
 int dpll_ck ;
 int omap2_dpllcore_round_rate (unsigned long) ;
 int omap2_set_prcm (int,int ,int) ;
 int omap2xxx_clk_get_core_rate (int *) ;
 int omap2xxx_sdrc_dll_is_unlocked () ;
 int omap2xxx_sdrc_init_params (int ) ;
 int omap2xxx_sdrc_reprogram (int,int) ;

__attribute__((used)) static int omap2_reprogram_dpllcore(struct clk *clk, unsigned long rate)
{
 u32 cur_rate, low, mult, div, valid_rate, done_rate;
 u32 bypass = 0;
 struct prcm_config tmpset;
 const struct dpll_data *dd;

 cur_rate = omap2xxx_clk_get_core_rate(&dpll_ck);
 mult = cm_read_mod_reg(PLL_MOD, CM_CLKSEL2);
 mult &= OMAP24XX_CORE_CLK_SRC_MASK;

 if ((rate == (cur_rate / 2)) && (mult == 2)) {
  omap2xxx_sdrc_reprogram(CORE_CLK_SRC_DPLL, 1);
 } else if ((rate == (cur_rate * 2)) && (mult == 1)) {
  omap2xxx_sdrc_reprogram(CORE_CLK_SRC_DPLL_X2, 1);
 } else if (rate != cur_rate) {
  valid_rate = omap2_dpllcore_round_rate(rate);
  if (valid_rate != rate)
   return -EINVAL;

  if (mult == 1)
   low = curr_prcm_set->dpll_speed;
  else
   low = curr_prcm_set->dpll_speed / 2;

  dd = clk->dpll_data;
  if (!dd)
   return -EINVAL;

  tmpset.cm_clksel1_pll = __raw_readl(dd->mult_div1_reg);
  tmpset.cm_clksel1_pll &= ~(dd->mult_mask |
        dd->div1_mask);
  div = ((curr_prcm_set->xtal_speed / 1000000) - 1);
  tmpset.cm_clksel2_pll = cm_read_mod_reg(PLL_MOD, CM_CLKSEL2);
  tmpset.cm_clksel2_pll &= ~OMAP24XX_CORE_CLK_SRC_MASK;
  if (rate > low) {
   tmpset.cm_clksel2_pll |= CORE_CLK_SRC_DPLL_X2;
   mult = ((rate / 2) / 1000000);
   done_rate = CORE_CLK_SRC_DPLL_X2;
  } else {
   tmpset.cm_clksel2_pll |= CORE_CLK_SRC_DPLL;
   mult = (rate / 1000000);
   done_rate = CORE_CLK_SRC_DPLL;
  }
  tmpset.cm_clksel1_pll |= (div << __ffs(dd->mult_mask));
  tmpset.cm_clksel1_pll |= (mult << __ffs(dd->div1_mask));


  tmpset.base_sdrc_rfr = SDRC_RFR_CTRL_BYPASS;

  if (rate == curr_prcm_set->xtal_speed)
   bypass = 1;


  omap2xxx_sdrc_reprogram(CORE_CLK_SRC_DPLL_X2, 1);


  omap2_set_prcm(tmpset.cm_clksel1_pll, tmpset.base_sdrc_rfr,
          bypass);


  omap2xxx_sdrc_init_params(omap2xxx_sdrc_dll_is_unlocked());
  omap2xxx_sdrc_reprogram(done_rate, 0);
 }

 return 0;
}
