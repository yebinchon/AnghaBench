
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct net_device {int dummy; } ;


 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int rtl_readphy (struct rtl8169_private*,int) ;

__attribute__((used)) static int rtl_mdio_read(struct net_device *dev, int phy_id, int location)
{
 struct rtl8169_private *tp = netdev_priv(dev);

 return rtl_readphy(tp, location);
}
