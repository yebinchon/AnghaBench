
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int phy_mutex; } ;
struct net_device {int dummy; } ;
typedef int __u16 ;
typedef int __le16 ;


 int AX_CMD_WRITE_MII_REG ;
 int asix_set_hw_mii (struct usbnet*) ;
 int asix_set_sw_mii (struct usbnet*) ;
 int asix_write_cmd (struct usbnet*,int ,int,int ,int,int *) ;
 int cpu_to_le16 (int) ;
 int devdbg (struct usbnet*,char*,int,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
asix_mdio_write(struct net_device *netdev, int phy_id, int loc, int val)
{
 struct usbnet *dev = netdev_priv(netdev);
 __le16 res = cpu_to_le16(val);

 devdbg(dev, "asix_mdio_write() phy_id=0x%02x, loc=0x%02x, val=0x%04x", phy_id, loc, val);
 mutex_lock(&dev->phy_mutex);
 asix_set_sw_mii(dev);
 asix_write_cmd(dev, AX_CMD_WRITE_MII_REG, phy_id, (__u16)loc, 2, &res);
 asix_set_hw_mii(dev);
 mutex_unlock(&dev->phy_mutex);
}
