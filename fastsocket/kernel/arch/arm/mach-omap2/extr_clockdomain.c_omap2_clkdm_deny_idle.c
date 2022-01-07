
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int flags; int usecount; int name; } ;


 int CLKDM_CAN_DISABLE_AUTO ;
 int _clkdm_del_autodeps (struct clockdomain*) ;
 int _omap2_clkdm_set_hwsup (struct clockdomain*,int ) ;
 scalar_t__ atomic_read (int *) ;
 int pr_debug (char*,int ) ;

void omap2_clkdm_deny_idle(struct clockdomain *clkdm)
{
 if (!clkdm)
  return;

 if (!(clkdm->flags & CLKDM_CAN_DISABLE_AUTO)) {
  pr_debug("clockdomain: automatic idle transitions cannot be "
    "disabled on %s\n", clkdm->name);
  return;
 }

 pr_debug("clockdomain: disabling automatic idle transitions for %s\n",
   clkdm->name);

 _omap2_clkdm_set_hwsup(clkdm, 0);

 if (atomic_read(&clkdm->usecount) > 0)
  _clkdm_del_autodeps(clkdm);
}
