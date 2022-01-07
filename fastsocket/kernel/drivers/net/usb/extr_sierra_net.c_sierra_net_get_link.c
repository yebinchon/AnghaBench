
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ link_up; } ;


 struct usbnet* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 TYPE_1__* sierra_net_get_private (struct usbnet*) ;

__attribute__((used)) static u32 sierra_net_get_link(struct net_device *net)
{
 struct usbnet *dev = netdev_priv(net);

 return sierra_net_get_private(dev)->link_up && netif_running(net);
}
