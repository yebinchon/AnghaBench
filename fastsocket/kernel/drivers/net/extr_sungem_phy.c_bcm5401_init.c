
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_phy {int dummy; } ;


 int MII_BCM5201_MULTIPHY ;
 int MII_BCM5201_MULTIPHY_SERIALMODE ;
 int MII_BCM5400_GB_CONTROL ;
 int MII_BCM5400_GB_CONTROL_FULLDUPLEXCAP ;
 int MII_PHYSID2 ;
 int __phy_read (struct mii_phy*,int,int ) ;
 int __phy_write (struct mii_phy*,int,int ,int) ;
 int phy_read (struct mii_phy*,int) ;
 int phy_write (struct mii_phy*,int,int) ;
 int reset_one_mii_phy (struct mii_phy*,int) ;
 int udelay (int) ;

__attribute__((used)) static int bcm5401_init(struct mii_phy* phy)
{
 u16 data;
 int rev;

 rev = phy_read(phy, MII_PHYSID2) & 0x000f;
 if (rev == 0 || rev == 3) {
  phy_write(phy, 0x18, 0x0c20);
  phy_write(phy, 0x17, 0x0012);
  phy_write(phy, 0x15, 0x1804);
  phy_write(phy, 0x17, 0x0013);
  phy_write(phy, 0x15, 0x1204);
  phy_write(phy, 0x17, 0x8006);
  phy_write(phy, 0x15, 0x0132);
  phy_write(phy, 0x17, 0x8006);
  phy_write(phy, 0x15, 0x0232);
  phy_write(phy, 0x17, 0x201f);
  phy_write(phy, 0x15, 0x0a20);
 }


 data = phy_read(phy, MII_BCM5400_GB_CONTROL);
 data |= MII_BCM5400_GB_CONTROL_FULLDUPLEXCAP;
 phy_write(phy, MII_BCM5400_GB_CONTROL, data);

 udelay(10);


 (void)reset_one_mii_phy(phy, 0x1f);

 data = __phy_read(phy, 0x1f, MII_BCM5201_MULTIPHY);
 data |= MII_BCM5201_MULTIPHY_SERIALMODE;
 __phy_write(phy, 0x1f, MII_BCM5201_MULTIPHY, data);

 return 0;
}
