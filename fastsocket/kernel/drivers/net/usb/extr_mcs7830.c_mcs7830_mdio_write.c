
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;


 int mcs7830_write_phy (struct usbnet*,int,int) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mcs7830_mdio_write(struct net_device *netdev, int phy_id,
    int location, int val)
{
 struct usbnet *dev = netdev_priv(netdev);
 mcs7830_write_phy(dev, location, val);
}
