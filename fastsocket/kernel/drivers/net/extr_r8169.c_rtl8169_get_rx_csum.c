
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8169_private {int cp_cmd; } ;
struct net_device {int dummy; } ;


 int RxChkSum ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 rtl8169_get_rx_csum(struct net_device *dev)
{
 struct rtl8169_private *tp = netdev_priv(dev);

 return tp->cp_cmd & RxChkSum;
}
