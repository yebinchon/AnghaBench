
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct net_device {int dummy; } ;


 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int rtl_writephy (struct rtl8169_private*,int,int) ;

__attribute__((used)) static void rtl_mdio_write(struct net_device *dev, int phy_id, int location,
      int val)
{
 struct rtl8169_private *tp = netdev_priv(dev);

 rtl_writephy(tp, location, val);
}
