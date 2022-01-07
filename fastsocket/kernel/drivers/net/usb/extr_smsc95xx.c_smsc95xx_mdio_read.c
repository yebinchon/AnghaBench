
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int phy_id_mask; int reg_num_mask; } ;
struct usbnet {int phy_mutex; TYPE_1__ mii; } ;
struct net_device {int dummy; } ;


 int EIO ;
 int MII_ADDR ;
 int MII_DATA ;
 int MII_READ_ ;
 int devwarn (struct usbnet*,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 scalar_t__ smsc95xx_phy_wait_not_busy (struct usbnet*) ;
 int smsc95xx_read_reg (struct usbnet*,int ,int*) ;
 int smsc95xx_write_reg (struct usbnet*,int ,int) ;

__attribute__((used)) static int smsc95xx_mdio_read(struct net_device *netdev, int phy_id, int idx)
{
 struct usbnet *dev = netdev_priv(netdev);
 u32 val, addr;

 mutex_lock(&dev->phy_mutex);


 if (smsc95xx_phy_wait_not_busy(dev)) {
  devwarn(dev, "MII is busy in smsc95xx_mdio_read");
  mutex_unlock(&dev->phy_mutex);
  return -EIO;
 }


 phy_id &= dev->mii.phy_id_mask;
 idx &= dev->mii.reg_num_mask;
 addr = (phy_id << 11) | (idx << 6) | MII_READ_;
 smsc95xx_write_reg(dev, MII_ADDR, addr);

 if (smsc95xx_phy_wait_not_busy(dev)) {
  devwarn(dev, "Timed out reading MII reg %02X", idx);
  mutex_unlock(&dev->phy_mutex);
  return -EIO;
 }

 smsc95xx_read_reg(dev, MII_DATA, &val);

 mutex_unlock(&dev->phy_mutex);

 return (u16)(val & 0xFFFF);
}
