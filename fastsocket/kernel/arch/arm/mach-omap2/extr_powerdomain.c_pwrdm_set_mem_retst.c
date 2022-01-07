
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct powerdomain {int banks; int* pwrsts_mem_ret; int prcm_offs; int name; } ;


 int EEXIST ;
 int EINVAL ;
 int OMAP3430_L1FLATMEMRETSTATE ;
 int OMAP3430_L2FLATMEMRETSTATE ;
 int OMAP3430_SHAREDL1CACHEFLATRETSTATE ;
 int OMAP3430_SHAREDL2CACHEFLATRETSTATE ;
 int PM_PWSTCTRL ;
 int WARN_ON (int) ;
 int __ffs (int ) ;
 int pr_debug (char*,int ,int,int) ;
 int prm_rmw_mod_reg_bits (int ,int,int ,int ) ;

int pwrdm_set_mem_retst(struct powerdomain *pwrdm, u8 bank, u8 pwrst)
{
 u32 m;

 if (!pwrdm)
  return -EINVAL;

 if (pwrdm->banks < (bank + 1))
  return -EEXIST;

 if (!(pwrdm->pwrsts_mem_ret[bank] & (1 << pwrst)))
  return -EINVAL;

 pr_debug("powerdomain: setting next memory powerstate for domain %s "
   "bank %0x while pwrdm-RET to %0x\n", pwrdm->name, bank, pwrst);







 switch (bank) {
 case 0:
  m = OMAP3430_SHAREDL1CACHEFLATRETSTATE;
  break;
 case 1:
  m = OMAP3430_L1FLATMEMRETSTATE;
  break;
 case 2:
  m = OMAP3430_SHAREDL2CACHEFLATRETSTATE;
  break;
 case 3:
  m = OMAP3430_L2FLATMEMRETSTATE;
  break;
 default:
  WARN_ON(1);
  return -EEXIST;
 }

 prm_rmw_mod_reg_bits(m, (pwrst << __ffs(m)), pwrdm->prcm_offs,
        PM_PWSTCTRL);

 return 0;
}
