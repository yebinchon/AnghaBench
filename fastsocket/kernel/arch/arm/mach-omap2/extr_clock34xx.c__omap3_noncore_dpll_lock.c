
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct clk {int name; } ;


 int DPLL_LOCKED ;
 int EINVAL ;
 int _omap3_dpll_write_clken (struct clk*,int ) ;
 int _omap3_wait_dpll_status (struct clk*,int) ;
 struct clk dpll3_ck ;
 int omap3_dpll_allow_idle (struct clk*) ;
 scalar_t__ omap3_dpll_autoidle_read (struct clk*) ;
 int omap3_dpll_deny_idle (struct clk*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int _omap3_noncore_dpll_lock(struct clk *clk)
{
 u8 ai;
 int r;

 if (clk == &dpll3_ck)
  return -EINVAL;

 pr_debug("clock: locking DPLL %s\n", clk->name);

 ai = omap3_dpll_autoidle_read(clk);

 omap3_dpll_deny_idle(clk);

 _omap3_dpll_write_clken(clk, DPLL_LOCKED);

 r = _omap3_wait_dpll_status(clk, 1);

 if (ai)
  omap3_dpll_allow_idle(clk);

 return r;
}
