
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct clk {int name; TYPE_1__* dpll_data; } ;
struct TYPE_2__ {int modes; } ;


 int DPLL_LOW_POWER_STOP ;
 int EINVAL ;
 int _omap3_dpll_write_clken (struct clk*,int) ;
 struct clk dpll3_ck ;
 int omap3_dpll_allow_idle (struct clk*) ;
 scalar_t__ omap3_dpll_autoidle_read (struct clk*) ;
 int omap3_dpll_deny_idle (struct clk*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int _omap3_noncore_dpll_stop(struct clk *clk)
{
 u8 ai;

 if (clk == &dpll3_ck)
  return -EINVAL;

 if (!(clk->dpll_data->modes & (1 << DPLL_LOW_POWER_STOP)))
  return -EINVAL;

 pr_debug("clock: stopping DPLL %s\n", clk->name);

 ai = omap3_dpll_autoidle_read(clk);

 _omap3_dpll_write_clken(clk, DPLL_LOW_POWER_STOP);

 if (ai)
  omap3_dpll_allow_idle(clk);
 else
  omap3_dpll_deny_idle(clk);

 return 0;
}
