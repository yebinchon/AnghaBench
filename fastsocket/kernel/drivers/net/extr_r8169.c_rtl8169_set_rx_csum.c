
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8169_private {int dummy; } ;
struct net_device {int dummy; } ;


 int __rtl8169_set_rx_csum (struct net_device*,int ) ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int rtl_lock_work (struct rtl8169_private*) ;
 int rtl_unlock_work (struct rtl8169_private*) ;

__attribute__((used)) static int rtl8169_set_rx_csum(struct net_device *dev, u32 data)
{
 struct rtl8169_private *tp = netdev_priv(dev);

 rtl_lock_work(tp);
 __rtl8169_set_rx_csum(dev, data);
 rtl_unlock_work(tp);

 return 0;
}
