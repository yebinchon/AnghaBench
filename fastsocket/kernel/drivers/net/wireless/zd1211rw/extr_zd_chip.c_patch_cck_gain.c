
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zd_chip {int mutex; int rf; int patch_cck_gain; } ;


 int E2P_PHY_REG ;
 int ZD_ASSERT (int ) ;
 int ZD_CR47 ;
 int dev_dbg_f (int ,char*,int) ;
 int mutex_is_locked (int *) ;
 int zd_chip_dev (struct zd_chip*) ;
 int zd_ioread32_locked (struct zd_chip*,int*,int ) ;
 int zd_iowrite16_locked (struct zd_chip*,int,int ) ;
 int zd_rf_should_patch_cck_gain (int *) ;

__attribute__((used)) static int patch_cck_gain(struct zd_chip *chip)
{
 int r;
 u32 value;

 if (!chip->patch_cck_gain || !zd_rf_should_patch_cck_gain(&chip->rf))
  return 0;

 ZD_ASSERT(mutex_is_locked(&chip->mutex));
 r = zd_ioread32_locked(chip, &value, E2P_PHY_REG);
 if (r)
  return r;
 dev_dbg_f(zd_chip_dev(chip), "patching value %x\n", value & 0xff);
 return zd_iowrite16_locked(chip, value & 0xff, ZD_CR47);
}
