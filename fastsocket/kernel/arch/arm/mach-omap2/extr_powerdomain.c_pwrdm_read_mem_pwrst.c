
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct powerdomain {int banks; int prcm_offs; } ;


 int EEXIST ;
 int EINVAL ;
 int OMAP3430_L1FLATMEMSTATEST_MASK ;
 int OMAP3430_L2FLATMEMSTATEST_MASK ;
 int OMAP3430_SHAREDL1CACHEFLATSTATEST_MASK ;
 int OMAP3430_SHAREDL2CACHEFLATSTATEST_MASK ;
 int PM_PWSTST ;
 int WARN_ON (int) ;
 int prm_read_mod_bits_shift (int ,int ,int ) ;

int pwrdm_read_mem_pwrst(struct powerdomain *pwrdm, u8 bank)
{
 u32 m;

 if (!pwrdm)
  return -EINVAL;

 if (pwrdm->banks < (bank + 1))
  return -EEXIST;







 switch (bank) {
 case 0:
  m = OMAP3430_SHAREDL1CACHEFLATSTATEST_MASK;
  break;
 case 1:
  m = OMAP3430_L1FLATMEMSTATEST_MASK;
  break;
 case 2:
  m = OMAP3430_SHAREDL2CACHEFLATSTATEST_MASK;
  break;
 case 3:
  m = OMAP3430_L2FLATMEMSTATEST_MASK;
  break;
 default:
  WARN_ON(1);
  return -EEXIST;
 }

 return prm_read_mod_bits_shift(pwrdm->prcm_offs, PM_PWSTST, m);
}
