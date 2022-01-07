
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int (* hw_start ) (struct net_device*) ;} ;
struct net_device {int dummy; } ;


 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int rtl_irq_enable_all (struct rtl8169_private*) ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static void rtl_hw_start(struct net_device *dev)
{
 struct rtl8169_private *tp = netdev_priv(dev);

 tp->hw_start(dev);

 rtl_irq_enable_all(tp);
}
