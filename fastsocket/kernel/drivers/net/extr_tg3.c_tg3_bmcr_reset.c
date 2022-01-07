
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int dummy; } ;


 int BMCR_RESET ;
 int EBUSY ;
 int MII_BMCR ;
 int tg3_readphy (struct tg3*,int ,int*) ;
 int tg3_writephy (struct tg3*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int tg3_bmcr_reset(struct tg3 *tp)
{
 u32 phy_control;
 int limit, err;




 phy_control = BMCR_RESET;
 err = tg3_writephy(tp, MII_BMCR, phy_control);
 if (err != 0)
  return -EBUSY;

 limit = 5000;
 while (limit--) {
  err = tg3_readphy(tp, MII_BMCR, &phy_control);
  if (err != 0)
   return -EBUSY;

  if ((phy_control & BMCR_RESET) == 0) {
   udelay(40);
   break;
  }
  udelay(10);
 }
 if (limit < 0)
  return -EBUSY;

 return 0;
}
