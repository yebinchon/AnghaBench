
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct powerdomain {int banks; int* pwrsts_mem_on; int prcm_offs; int name; } ;


 int EEXIST ;
 int EINVAL ;
 int OMAP3430_L1FLATMEMONSTATE_MASK ;
 int OMAP3430_L2FLATMEMONSTATE_MASK ;
 int OMAP3430_SHAREDL1CACHEFLATONSTATE_MASK ;
 int OMAP3430_SHAREDL2CACHEFLATONSTATE_MASK ;
 int PM_PWSTCTRL ;
 int WARN_ON (int) ;
 int __ffs (int ) ;
 int pr_debug (char*,int ,int,int) ;
 int prm_rmw_mod_reg_bits (int ,int,int ,int ) ;

int pwrdm_set_mem_onst(struct powerdomain *pwrdm, u8 bank, u8 pwrst)
{
 u32 m;

 if (!pwrdm)
  return -EINVAL;

 if (pwrdm->banks < (bank + 1))
  return -EEXIST;

 if (!(pwrdm->pwrsts_mem_on[bank] & (1 << pwrst)))
  return -EINVAL;

 pr_debug("powerdomain: setting next memory powerstate for domain %s "
   "bank %0x while pwrdm-ON to %0x\n", pwrdm->name, bank, pwrst);







 switch (bank) {
 case 0:
  m = OMAP3430_SHAREDL1CACHEFLATONSTATE_MASK;
  break;
 case 1:
  m = OMAP3430_L1FLATMEMONSTATE_MASK;
  break;
 case 2:
  m = OMAP3430_SHAREDL2CACHEFLATONSTATE_MASK;
  break;
 case 3:
  m = OMAP3430_L2FLATMEMONSTATE_MASK;
  break;
 default:
  WARN_ON(1);
  return -EEXIST;
 }

 prm_rmw_mod_reg_bits(m, (pwrst << __ffs(m)),
        pwrdm->prcm_offs, PM_PWSTCTRL);

 return 0;
}
