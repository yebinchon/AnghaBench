
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int phy_id_mask; int reg_num_mask; } ;
struct usbnet {int phy_mutex; TYPE_1__ mii; } ;
struct net_device {int dummy; } ;


 int MII_ADDR ;
 int MII_DATA ;
 int MII_WRITE_ ;
 int devwarn (struct usbnet*,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 scalar_t__ smsc95xx_phy_wait_not_busy (struct usbnet*) ;
 int smsc95xx_write_reg (struct usbnet*,int ,int) ;

__attribute__((used)) static void smsc95xx_mdio_write(struct net_device *netdev, int phy_id, int idx,
    int regval)
{
 struct usbnet *dev = netdev_priv(netdev);
 u32 val, addr;

 mutex_lock(&dev->phy_mutex);


 if (smsc95xx_phy_wait_not_busy(dev)) {
  devwarn(dev, "MII is busy in smsc95xx_mdio_write");
  mutex_unlock(&dev->phy_mutex);
  return;
 }

 val = regval;
 smsc95xx_write_reg(dev, MII_DATA, val);


 phy_id &= dev->mii.phy_id_mask;
 idx &= dev->mii.reg_num_mask;
 addr = (phy_id << 11) | (idx << 6) | MII_WRITE_;
 smsc95xx_write_reg(dev, MII_ADDR, addr);

 if (smsc95xx_phy_wait_not_busy(dev))
  devwarn(dev, "Timed out writing MII reg %02X", idx);

 mutex_unlock(&dev->phy_mutex);
}
