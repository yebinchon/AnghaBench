
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int phy_flags; } ;


 int MII_TG3_AUXCTL_MISC_WIRESPD_EN ;
 int MII_TG3_AUXCTL_SHDWSEL_MISC ;
 int TG3_PHYFLG_NO_ETH_WIRE_SPEED ;
 int tg3_phy_auxctl_read (struct tg3*,int ,int*) ;
 int tg3_phy_auxctl_write (struct tg3*,int ,int) ;

__attribute__((used)) static void tg3_phy_set_wirespeed(struct tg3 *tp)
{
 int ret;
 u32 val;

 if (tp->phy_flags & TG3_PHYFLG_NO_ETH_WIRE_SPEED)
  return;

 ret = tg3_phy_auxctl_read(tp, MII_TG3_AUXCTL_SHDWSEL_MISC, &val);
 if (!ret)
  tg3_phy_auxctl_write(tp, MII_TG3_AUXCTL_SHDWSEL_MISC,
         val | MII_TG3_AUXCTL_MISC_WIRESPD_EN);
}
