
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int phy_interface; } ;
struct smsc911x_data {int last_duplex; int last_carrier; struct phy_device* phy_dev; TYPE_2__ config; TYPE_1__* mii_bus; } ;
struct phy_device {int supported; int advertising; int irq; int dev; TYPE_3__* drv; int phy_id; int addr; } ;
struct net_device {int name; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_4__ {struct phy_device** phy_map; } ;


 int ENODEV ;
 int HW ;
 scalar_t__ IS_ERR (struct phy_device*) ;
 int PHY_BASIC_FEATURES ;
 int PHY_MAX_ADDR ;
 int PROBE ;
 int PTR_ERR (struct phy_device*) ;
 int SMSC_TRACE (int ,char*,...) ;
 int SMSC_WARNING (int ,char*) ;
 int SUPPORTED_Asym_Pause ;
 int SUPPORTED_Pause ;
 int dev_name (int *) ;
 struct smsc911x_data* netdev_priv (struct net_device*) ;
 struct phy_device* phy_connect (struct net_device*,int ,int *,int ,int ) ;
 int pr_err (char*,int ) ;
 int pr_info (char*,int ,int ,int ,int ) ;
 int smsc911x_phy_adjust_link ;
 scalar_t__ smsc911x_phy_loopbacktest (struct net_device*) ;

__attribute__((used)) static int smsc911x_mii_probe(struct net_device *dev)
{
 struct smsc911x_data *pdata = netdev_priv(dev);
 struct phy_device *phydev = ((void*)0);
 int phy_addr;


 for (phy_addr = 0; phy_addr < PHY_MAX_ADDR; phy_addr++) {
  if (pdata->mii_bus->phy_map[phy_addr]) {
   phydev = pdata->mii_bus->phy_map[phy_addr];
   SMSC_TRACE(PROBE, "PHY %d: addr %d, phy_id 0x%08X",
    phy_addr, phydev->addr, phydev->phy_id);
   break;
  }
 }

 if (!phydev) {
  pr_err("%s: no PHY found\n", dev->name);
  return -ENODEV;
 }

 phydev = phy_connect(dev, dev_name(&phydev->dev),
  &smsc911x_phy_adjust_link, 0, pdata->config.phy_interface);

 if (IS_ERR(phydev)) {
  pr_err("%s: Could not attach to PHY\n", dev->name);
  return PTR_ERR(phydev);
 }

 pr_info("%s: attached PHY driver [%s] (mii_bus:phy_addr=%s, irq=%d)\n",
  dev->name, phydev->drv->name,
  dev_name(&phydev->dev), phydev->irq);


 phydev->supported &= (PHY_BASIC_FEATURES | SUPPORTED_Pause |
         SUPPORTED_Asym_Pause);
 phydev->advertising = phydev->supported;

 pdata->phy_dev = phydev;
 pdata->last_duplex = -1;
 pdata->last_carrier = -1;
 SMSC_TRACE(HW, "phy initialised succesfully");
 return 0;
}
