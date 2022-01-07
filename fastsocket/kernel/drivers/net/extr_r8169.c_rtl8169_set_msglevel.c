
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8169_private {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct rtl8169_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void rtl8169_set_msglevel(struct net_device *dev, u32 value)
{
 struct rtl8169_private *tp = netdev_priv(dev);

 tp->msg_enable = value;
}
