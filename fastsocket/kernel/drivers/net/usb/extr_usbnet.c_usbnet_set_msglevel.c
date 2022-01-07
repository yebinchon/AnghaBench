
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbnet {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct usbnet* netdev_priv (struct net_device*) ;

void usbnet_set_msglevel (struct net_device *net, u32 level)
{
 struct usbnet *dev = netdev_priv(net);

 dev->msg_enable = level;
}
