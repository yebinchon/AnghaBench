
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zd_chip {int mutex; } ;


 int CR_REG1 ;
 int UNLOCK_PHY_REGS ;
 int ZD_ASSERT (int ) ;
 int dev_err (int ,char*,int) ;
 int mutex_is_locked (int *) ;
 int zd_chip_dev (struct zd_chip*) ;
 int zd_ioread32_locked (struct zd_chip*,int *,int ) ;
 int zd_iowrite32_locked (struct zd_chip*,int ,int ) ;

int zd_chip_unlock_phy_regs(struct zd_chip *chip)
{
 int r;
 u32 tmp;

 ZD_ASSERT(mutex_is_locked(&chip->mutex));
 r = zd_ioread32_locked(chip, &tmp, CR_REG1);
 if (r) {
  dev_err(zd_chip_dev(chip),
   "error ioread32(CR_REG1): %d\n", r);
  return r;
 }

 tmp |= UNLOCK_PHY_REGS;

 r = zd_iowrite32_locked(chip, tmp, CR_REG1);
 if (r)
  dev_err(zd_chip_dev(chip), "error iowrite32(CR_REG1): %d\n", r);
 return r;
}
