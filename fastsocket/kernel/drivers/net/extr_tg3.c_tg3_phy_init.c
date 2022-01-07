
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tg3 {int phy_flags; TYPE_2__* mdio_bus; TYPE_1__* pdev; int dev; } ;
struct phy_device {int interface; int supported; int advertising; int dev_flags; int dev; } ;
struct TYPE_4__ {struct phy_device** phy_map; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct phy_device*) ;
 int PHY_BASIC_FEATURES ;
 int PHY_GBIT_FEATURES ;



 int PTR_ERR (struct phy_device*) ;
 int SUPPORTED_Asym_Pause ;
 int SUPPORTED_Pause ;
 int TG3_PHYFLG_10_100_ONLY ;
 int TG3_PHYFLG_IS_CONNECTED ;
 size_t TG3_PHY_MII_ADDR ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 struct phy_device* phy_connect (int ,int ,int ,int ,int) ;
 int phy_disconnect (struct phy_device*) ;
 int tg3_adjust_link ;
 int tg3_bmcr_reset (struct tg3*) ;

__attribute__((used)) static int tg3_phy_init(struct tg3 *tp)
{
 struct phy_device *phydev;

 if (tp->phy_flags & TG3_PHYFLG_IS_CONNECTED)
  return 0;


 tg3_bmcr_reset(tp);

 phydev = tp->mdio_bus->phy_map[TG3_PHY_MII_ADDR];


 phydev = phy_connect(tp->dev, dev_name(&phydev->dev), tg3_adjust_link,
        phydev->dev_flags, phydev->interface);
 if (IS_ERR(phydev)) {
  dev_err(&tp->pdev->dev, "Could not attach to PHY\n");
  return PTR_ERR(phydev);
 }


 switch (phydev->interface) {
 case 130:
 case 128:
  if (!(tp->phy_flags & TG3_PHYFLG_10_100_ONLY)) {
   phydev->supported &= (PHY_GBIT_FEATURES |
           SUPPORTED_Pause |
           SUPPORTED_Asym_Pause);
   break;
  }

 case 129:
  phydev->supported &= (PHY_BASIC_FEATURES |
          SUPPORTED_Pause |
          SUPPORTED_Asym_Pause);
  break;
 default:
  phy_disconnect(tp->mdio_bus->phy_map[TG3_PHY_MII_ADDR]);
  return -EINVAL;
 }

 tp->phy_flags |= TG3_PHYFLG_IS_CONNECTED;

 phydev->advertising = phydev->supported;

 return 0;
}
