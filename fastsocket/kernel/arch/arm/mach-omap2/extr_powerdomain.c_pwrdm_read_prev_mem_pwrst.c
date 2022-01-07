
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct powerdomain {int banks; int prcm_offs; } ;


 int EEXIST ;
 int EINVAL ;
 int OMAP3430_LASTL2FLATMEMSTATEENTERED_MASK ;
 int OMAP3430_LASTMEM1STATEENTERED_MASK ;
 int OMAP3430_LASTMEM2STATEENTERED_MASK ;
 int OMAP3430_LASTSHAREDL2CACHEFLATSTATEENTERED_MASK ;
 int OMAP3430_PM_PREPWSTST ;
 int WARN_ON (int) ;
 int prm_read_mod_bits_shift (int ,int ,int ) ;

int pwrdm_read_prev_mem_pwrst(struct powerdomain *pwrdm, u8 bank)
{
 u32 m;

 if (!pwrdm)
  return -EINVAL;

 if (pwrdm->banks < (bank + 1))
  return -EEXIST;







 switch (bank) {
 case 0:
  m = OMAP3430_LASTMEM1STATEENTERED_MASK;
  break;
 case 1:
  m = OMAP3430_LASTMEM2STATEENTERED_MASK;
  break;
 case 2:
  m = OMAP3430_LASTSHAREDL2CACHEFLATSTATEENTERED_MASK;
  break;
 case 3:
  m = OMAP3430_LASTL2FLATMEMSTATEENTERED_MASK;
  break;
 default:
  WARN_ON(1);
  return -EEXIST;
 }

 return prm_read_mod_bits_shift(pwrdm->prcm_offs,
     OMAP3430_PM_PREPWSTST, m);
}
