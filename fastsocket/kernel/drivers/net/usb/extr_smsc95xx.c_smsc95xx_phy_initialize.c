
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phy_id_mask; int reg_num_mask; int phy_id; int (* mdio_write ) (int ,int ,int ,int) ;int (* mdio_read ) (int ,int ,int ) ;int dev; } ;
struct usbnet {TYPE_1__ mii; int net; } ;


 int ADVERTISE_ALL ;
 int ADVERTISE_CSMA ;
 int ADVERTISE_PAUSE_ASYM ;
 int ADVERTISE_PAUSE_CAP ;
 int BMCR_RESET ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int PHY_INT_MASK ;
 int PHY_INT_MASK_DEFAULT_ ;
 int PHY_INT_SRC ;
 int SMSC95XX_INTERNAL_PHY_ID ;
 int devdbg (struct usbnet*,char*) ;
 int mii_nway_restart (TYPE_1__*) ;
 scalar_t__ netif_msg_ifup (struct usbnet*) ;
 int smsc95xx_mdio_read (int ,int ,int ) ;
 int smsc95xx_mdio_write (int ,int ,int ,int) ;

__attribute__((used)) static int smsc95xx_phy_initialize(struct usbnet *dev)
{

 dev->mii.dev = dev->net;
 dev->mii.mdio_read = smsc95xx_mdio_read;
 dev->mii.mdio_write = smsc95xx_mdio_write;
 dev->mii.phy_id_mask = 0x1f;
 dev->mii.reg_num_mask = 0x1f;
 dev->mii.phy_id = SMSC95XX_INTERNAL_PHY_ID;

 smsc95xx_mdio_write(dev->net, dev->mii.phy_id, MII_BMCR, BMCR_RESET);
 smsc95xx_mdio_write(dev->net, dev->mii.phy_id, MII_ADVERTISE,
  ADVERTISE_ALL | ADVERTISE_CSMA | ADVERTISE_PAUSE_CAP |
  ADVERTISE_PAUSE_ASYM);


 smsc95xx_mdio_read(dev->net, dev->mii.phy_id, PHY_INT_SRC);

 smsc95xx_mdio_write(dev->net, dev->mii.phy_id, PHY_INT_MASK,
  PHY_INT_MASK_DEFAULT_);
 mii_nway_restart(&dev->mii);

 if (netif_msg_ifup(dev))
  devdbg(dev, "phy initialised succesfully");
 return 0;
}
