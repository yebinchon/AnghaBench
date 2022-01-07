
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int flags; int usecount; int name; } ;


 int CLKDM_CAN_ENABLE_AUTO ;
 int _clkdm_add_autodeps (struct clockdomain*) ;
 int _omap2_clkdm_set_hwsup (struct clockdomain*,int) ;
 scalar_t__ atomic_read (int *) ;
 int pr_debug (char*,int ) ;
 int pwrdm_clkdm_state_switch (struct clockdomain*) ;

void omap2_clkdm_allow_idle(struct clockdomain *clkdm)
{
 if (!clkdm)
  return;

 if (!(clkdm->flags & CLKDM_CAN_ENABLE_AUTO)) {
  pr_debug("clock: automatic idle transitions cannot be enabled "
    "on clockdomain %s\n", clkdm->name);
  return;
 }

 pr_debug("clockdomain: enabling automatic idle transitions for %s\n",
   clkdm->name);

 if (atomic_read(&clkdm->usecount) > 0)
  _clkdm_add_autodeps(clkdm);

 _omap2_clkdm_set_hwsup(clkdm, 1);

 pwrdm_clkdm_state_switch(clkdm);
}
