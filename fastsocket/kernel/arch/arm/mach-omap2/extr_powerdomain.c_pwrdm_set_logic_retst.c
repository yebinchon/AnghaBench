
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct powerdomain {int pwrsts_logic_ret; int prcm_offs; int name; } ;


 int EINVAL ;
 int OMAP3430_LOGICL1CACHERETSTATE ;
 int PM_PWSTCTRL ;
 int __ffs (int ) ;
 int pr_debug (char*,int ,int) ;
 int prm_rmw_mod_reg_bits (int ,int,int ,int ) ;

int pwrdm_set_logic_retst(struct powerdomain *pwrdm, u8 pwrst)
{
 if (!pwrdm)
  return -EINVAL;

 if (!(pwrdm->pwrsts_logic_ret & (1 << pwrst)))
  return -EINVAL;

 pr_debug("powerdomain: setting next logic powerstate for %s to %0x\n",
   pwrdm->name, pwrst);







 prm_rmw_mod_reg_bits(OMAP3430_LOGICL1CACHERETSTATE,
        (pwrst << __ffs(OMAP3430_LOGICL1CACHERETSTATE)),
        pwrdm->prcm_offs, PM_PWSTCTRL);

 return 0;
}
