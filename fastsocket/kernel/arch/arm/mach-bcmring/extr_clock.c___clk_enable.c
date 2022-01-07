
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int csp_id; int rate_hz; int use_cnt; struct clk* parent; } ;


 int chipcHw_bypassClockEnable (int ) ;
 int chipcHw_pll1Enable (int ,int ) ;
 int chipcHw_pll2Enable (int ) ;
 int chipcHw_setClockEnable (int ) ;
 scalar_t__ clk_is_pll1 (struct clk*) ;
 scalar_t__ clk_is_pll2 (struct clk*) ;
 int clk_is_primary (struct clk*) ;
 scalar_t__ clk_is_using_xtal (struct clk*) ;

__attribute__((used)) static void __clk_enable(struct clk *clk)
{
 if (!clk)
  return;


 if (clk->parent)
  __clk_enable(clk->parent);

 if (clk->use_cnt++ == 0) {
  if (clk_is_pll1(clk)) {
   chipcHw_pll1Enable(clk->rate_hz, 0);
  } else if (clk_is_pll2(clk)) {
   chipcHw_pll2Enable(clk->rate_hz);
  } else if (clk_is_using_xtal(clk)) {
   if (!clk_is_primary(clk))
    chipcHw_bypassClockEnable(clk->csp_id);
  } else {
   chipcHw_setClockEnable(clk->csp_id);
  }
 }
}
