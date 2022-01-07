
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int dummy; } ;


 int MII_TG3_MMD_ADDRESS ;
 int MII_TG3_MMD_CTRL ;
 int MII_TG3_MMD_CTRL_DATA_NOINC ;
 int tg3_readphy (struct tg3*,int ,int*) ;
 int tg3_writephy (struct tg3*,int ,int) ;

__attribute__((used)) static int tg3_phy_cl45_read(struct tg3 *tp, u32 devad, u32 addr, u32 *val)
{
 int err;

 err = tg3_writephy(tp, MII_TG3_MMD_CTRL, devad);
 if (err)
  goto done;

 err = tg3_writephy(tp, MII_TG3_MMD_ADDRESS, addr);
 if (err)
  goto done;

 err = tg3_writephy(tp, MII_TG3_MMD_CTRL,
      MII_TG3_MMD_CTRL_DATA_NOINC | devad);
 if (err)
  goto done;

 err = tg3_readphy(tp, MII_TG3_MMD_ADDRESS, val);

done:
 return err;
}
