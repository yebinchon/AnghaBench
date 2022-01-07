
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int name; int usecount; } ;
struct clk {int name; } ;


 int EINVAL ;
 int ERANGE ;
 int OMAP24XX_CLKSTCTRL_ENABLE_AUTO ;
 int OMAP34XX_CLKSTCTRL_ENABLE_AUTO ;
 int WARN_ON (int) ;
 int _clkdm_del_autodeps (struct clockdomain*) ;
 int _omap2_clkdm_set_hwsup (struct clockdomain*,int) ;
 scalar_t__ atomic_dec_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ cpu_is_omap24xx () ;
 scalar_t__ cpu_is_omap34xx () ;
 int omap2_clkdm_clktrctrl_read (struct clockdomain*) ;
 int omap2_clkdm_sleep (struct clockdomain*) ;
 int pr_debug (char*,int ,int ) ;
 int pwrdm_clkdm_state_switch (struct clockdomain*) ;

int omap2_clkdm_clk_disable(struct clockdomain *clkdm, struct clk *clk)
{
 int v;






 if (!clkdm || !clk)
  return -EINVAL;
 if (atomic_dec_return(&clkdm->usecount) > 0)
  return 0;



 pr_debug("clockdomain: clkdm %s: clk %s now disabled\n", clkdm->name,
   clk->name);

 v = omap2_clkdm_clktrctrl_read(clkdm);

 if ((cpu_is_omap34xx() && v == OMAP34XX_CLKSTCTRL_ENABLE_AUTO) ||
     (cpu_is_omap24xx() && v == OMAP24XX_CLKSTCTRL_ENABLE_AUTO)) {

  _omap2_clkdm_set_hwsup(clkdm, 0);
  _clkdm_del_autodeps(clkdm);
  _omap2_clkdm_set_hwsup(clkdm, 1);
 } else {
  omap2_clkdm_sleep(clkdm);
 }

 pwrdm_clkdm_state_switch(clkdm);

 return 0;
}
