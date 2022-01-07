
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_if_info {int (* mdio_read ) (int ,int ,int ) ;int phy_id; int dev; scalar_t__ supports_gmii; } ;


 int ADVERTISE_100FULL ;
 int ADVERTISE_100HALF ;
 int BMSR_ANEGCOMPLETE ;
 int LPA_1000FULL ;
 int LPA_1000HALF ;
 int MII_ADVERTISE ;
 int MII_BMSR ;
 int MII_LPA ;
 int MII_STAT1000 ;
 int mii_link_ok (struct mii_if_info*) ;
 int mii_nway_result (int) ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ,int ,int ) ;
 int stub3 (int ,int ,int ) ;
 int stub4 (int ,int ,int ) ;

__attribute__((used)) static int mii_speed(struct mii_if_info *mii)
{
 int advert, lpa, val, media;
 int lpa2 = 0;
 int speed;

 if (!mii_link_ok(mii))
  return 0;

 val = (*mii->mdio_read) (mii->dev, mii->phy_id, MII_BMSR);
 if ((val & BMSR_ANEGCOMPLETE) == 0)
  return 0;

 advert = (*mii->mdio_read) (mii->dev, mii->phy_id, MII_ADVERTISE);
 lpa = (*mii->mdio_read) (mii->dev, mii->phy_id, MII_LPA);
 media = mii_nway_result(advert & lpa);

 if (mii->supports_gmii)
  lpa2 = mii->mdio_read(mii->dev, mii->phy_id, MII_STAT1000);

 speed = lpa2 & (LPA_1000FULL | LPA_1000HALF) ? 1000 :
   (media & (ADVERTISE_100FULL | ADVERTISE_100HALF) ? 100 : 10);
 return speed;
}
