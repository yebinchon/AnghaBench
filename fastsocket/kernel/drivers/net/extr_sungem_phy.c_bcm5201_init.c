
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_phy {int dummy; } ;


 int MII_BCM5201_INTERRUPT ;
 int MII_BCM5201_MULTIPHY ;
 int MII_BCM5201_MULTIPHY_SUPERISOLATE ;
 int phy_read (struct mii_phy*,int ) ;
 int phy_write (struct mii_phy*,int ,int ) ;

__attribute__((used)) static int bcm5201_init(struct mii_phy* phy)
{
 u16 data;

 data = phy_read(phy, MII_BCM5201_MULTIPHY);
 data &= ~MII_BCM5201_MULTIPHY_SUPERISOLATE;
 phy_write(phy, MII_BCM5201_MULTIPHY, data);

 phy_write(phy, MII_BCM5201_INTERRUPT, 0);

 return 0;
}
