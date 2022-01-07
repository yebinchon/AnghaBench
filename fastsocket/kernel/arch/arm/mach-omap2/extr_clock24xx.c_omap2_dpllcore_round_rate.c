
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct TYPE_2__ {int dpll_speed; } ;


 int CM_CLKSEL2 ;
 unsigned long CORE_CLK_SRC_DPLL ;
 unsigned long OMAP24XX_CORE_CLK_SRC_MASK ;
 int PLL_MOD ;
 unsigned long cm_read_mod_reg (int ,int ) ;
 TYPE_1__* curr_prcm_set ;

__attribute__((used)) static long omap2_dpllcore_round_rate(unsigned long target_rate)
{
 u32 high, low, core_clk_src;

 core_clk_src = cm_read_mod_reg(PLL_MOD, CM_CLKSEL2);
 core_clk_src &= OMAP24XX_CORE_CLK_SRC_MASK;

 if (core_clk_src == CORE_CLK_SRC_DPLL) {
  high = curr_prcm_set->dpll_speed * 2;
  low = curr_prcm_set->dpll_speed;
 } else {
  high = curr_prcm_set->dpll_speed;
  low = curr_prcm_set->dpll_speed / 2;
 }







 if (target_rate > low)
  return high;
 else
  return low;


}
