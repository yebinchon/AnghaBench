
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mii_if_info {int phy_id; } ;
struct usbnet {int net; struct mii_if_info mii; scalar_t__* data; } ;
struct smsc95xx_priv {int mac_cr; int mac_cr_lock; } ;
struct ethtool_cmd {scalar_t__ duplex; int speed; } ;


 scalar_t__ DUPLEX_FULL ;
 int INT_STS ;
 int MAC_CR ;
 int MAC_CR_FDPX_ ;
 int MAC_CR_RCVOWN_ ;
 int MII_ADVERTISE ;
 int MII_LPA ;
 int PHY_INT_SRC ;
 int devdbg (struct usbnet*,char*,int ,scalar_t__,int ,int ) ;
 int mii_check_media (struct mii_if_info*,int,int) ;
 int mii_ethtool_gset (struct mii_if_info*,struct ethtool_cmd*) ;
 scalar_t__ netif_msg_link (struct usbnet*) ;
 int smsc95xx_mdio_read (int ,int ,int ) ;
 int smsc95xx_phy_update_flowcontrol (struct usbnet*,scalar_t__,int ,int ) ;
 int smsc95xx_write_reg (struct usbnet*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int smsc95xx_link_reset(struct usbnet *dev)
{
 struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
 struct mii_if_info *mii = &dev->mii;
 struct ethtool_cmd ecmd;
 unsigned long flags;
 u16 lcladv, rmtadv;
 u32 intdata;


 smsc95xx_mdio_read(dev->net, mii->phy_id, PHY_INT_SRC);
 intdata = 0xFFFFFFFF;
 smsc95xx_write_reg(dev, INT_STS, intdata);

 mii_check_media(mii, 1, 1);
 mii_ethtool_gset(&dev->mii, &ecmd);
 lcladv = smsc95xx_mdio_read(dev->net, mii->phy_id, MII_ADVERTISE);
 rmtadv = smsc95xx_mdio_read(dev->net, mii->phy_id, MII_LPA);

 if (netif_msg_link(dev))
  devdbg(dev, "speed: %d duplex: %d lcladv: %04x rmtadv: %04x",
   ecmd.speed, ecmd.duplex, lcladv, rmtadv);

 spin_lock_irqsave(&pdata->mac_cr_lock, flags);
 if (ecmd.duplex != DUPLEX_FULL) {
  pdata->mac_cr &= ~MAC_CR_FDPX_;
  pdata->mac_cr |= MAC_CR_RCVOWN_;
 } else {
  pdata->mac_cr &= ~MAC_CR_RCVOWN_;
  pdata->mac_cr |= MAC_CR_FDPX_;
 }
 spin_unlock_irqrestore(&pdata->mac_cr_lock, flags);

 smsc95xx_write_reg(dev, MAC_CR, pdata->mac_cr);

 smsc95xx_phy_update_flowcontrol(dev, ecmd.duplex, lcladv, rmtadv);

 return 0;
}
