
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct cas {int dummy; } ;


 int BMCR_RESET ;
 int MII_BMCR ;
 int STOP_TRIES_PHY ;
 int cas_phy_read (struct cas*,int ) ;
 int cas_phy_write (struct cas*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int cas_reset_mii_phy(struct cas *cp)
{
 int limit = STOP_TRIES_PHY;
 u16 val;

 cas_phy_write(cp, MII_BMCR, BMCR_RESET);
 udelay(100);
 while (--limit) {
  val = cas_phy_read(cp, MII_BMCR);
  if ((val & BMCR_RESET) == 0)
   break;
  udelay(10);
 }
 return (limit <= 0);
}
