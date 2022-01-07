
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {scalar_t__ use_cnt; struct clk* parent; int csp_id; } ;


 int BUG_ON (int) ;
 int chipcHw_bypassClockDisable (int ) ;
 int chipcHw_pll1Disable () ;
 int chipcHw_pll2Disable () ;
 int chipcHw_setClockDisable (int ) ;
 scalar_t__ clk_is_pll1 (struct clk*) ;
 scalar_t__ clk_is_pll2 (struct clk*) ;
 int clk_is_primary (struct clk*) ;
 scalar_t__ clk_is_using_xtal (struct clk*) ;

__attribute__((used)) static void __clk_disable(struct clk *clk)
{
 if (!clk)
  return;

 BUG_ON(clk->use_cnt == 0);

 if (--clk->use_cnt == 0) {
  if (clk_is_pll1(clk)) {
   chipcHw_pll1Disable();
  } else if (clk_is_pll2(clk)) {
   chipcHw_pll2Disable();
  } else if (clk_is_using_xtal(clk)) {
   if (!clk_is_primary(clk))
    chipcHw_bypassClockDisable(clk->csp_id);
  } else {
   chipcHw_setClockDisable(clk->csp_id);
  }
 }

 if (clk->parent)
  __clk_disable(clk->parent);
}
