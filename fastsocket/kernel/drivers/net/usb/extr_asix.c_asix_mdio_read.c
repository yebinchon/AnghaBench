
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int phy_mutex; } ;
struct net_device {int dummy; } ;
typedef int __u16 ;
typedef int __le16 ;


 int AX_CMD_READ_MII_REG ;
 int asix_read_cmd (struct usbnet*,int ,int,int ,int,int *) ;
 int asix_set_hw_mii (struct usbnet*) ;
 int asix_set_sw_mii (struct usbnet*) ;
 int devdbg (struct usbnet*,char*,int,int,int) ;
 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static int asix_mdio_read(struct net_device *netdev, int phy_id, int loc)
{
 struct usbnet *dev = netdev_priv(netdev);
 __le16 res;

 mutex_lock(&dev->phy_mutex);
 asix_set_sw_mii(dev);
 asix_read_cmd(dev, AX_CMD_READ_MII_REG, phy_id,
    (__u16)loc, 2, &res);
 asix_set_hw_mii(dev);
 mutex_unlock(&dev->phy_mutex);

 devdbg(dev, "asix_mdio_read() phy_id=0x%02x, loc=0x%02x, returns=0x%04x", phy_id, loc, le16_to_cpu(res));

 return le16_to_cpu(res);
}
