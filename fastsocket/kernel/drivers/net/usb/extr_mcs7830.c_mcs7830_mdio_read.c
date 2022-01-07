
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;


 int mcs7830_read_phy (struct usbnet*,int) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mcs7830_mdio_read(struct net_device *netdev, int phy_id,
        int location)
{
 struct usbnet *dev = netdev_priv(netdev);
 return mcs7830_read_phy(dev, location);
}
