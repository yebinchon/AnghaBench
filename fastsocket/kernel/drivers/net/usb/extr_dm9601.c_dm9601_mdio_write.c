
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
typedef int __le16 ;


 int cpu_to_le16 (int) ;
 int devdbg (struct usbnet*,char*,...) ;
 int dm_write_shared_word (struct usbnet*,int,int,int ) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static void dm9601_mdio_write(struct net_device *netdev, int phy_id, int loc,
         int val)
{
 struct usbnet *dev = netdev_priv(netdev);
 __le16 res = cpu_to_le16(val);

 if (phy_id) {
  devdbg(dev, "Only internal phy supported");
  return;
 }

 devdbg(dev,"dm9601_mdio_write() phy_id=0x%02x, loc=0x%02x, val=0x%04x",
        phy_id, loc, val);

 dm_write_shared_word(dev, 1, loc, res);
}
