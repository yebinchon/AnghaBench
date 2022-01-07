
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EINVAL ;
 int SIERRA_NET_MAX_SUPPORTED_MTU ;
 int usbnet_change_mtu (struct net_device*,int) ;

__attribute__((used)) static int sierra_net_change_mtu(struct net_device *net, int new_mtu)
{
 if (new_mtu > SIERRA_NET_MAX_SUPPORTED_MTU)
  return -EINVAL;

 return usbnet_change_mtu(net, new_mtu);
}
