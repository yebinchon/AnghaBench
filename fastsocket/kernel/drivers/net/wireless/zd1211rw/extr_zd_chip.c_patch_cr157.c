
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct zd_chip {int patch_cr157; } ;


 int E2P_PHY_REG ;
 int ZD_CR157 ;
 int dev_dbg_f (int ,char*,int) ;
 int zd_chip_dev (struct zd_chip*) ;
 int zd_ioread16_locked (struct zd_chip*,int*,int ) ;
 int zd_iowrite32_locked (struct zd_chip*,int,int ) ;

__attribute__((used)) static int patch_cr157(struct zd_chip *chip)
{
 int r;
 u16 value;

 if (!chip->patch_cr157)
  return 0;

 r = zd_ioread16_locked(chip, &value, E2P_PHY_REG);
 if (r)
  return r;

 dev_dbg_f(zd_chip_dev(chip), "patching value %x\n", value >> 8);
 return zd_iowrite32_locked(chip, value >> 8, ZD_CR157);
}
