
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vnet {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct vnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static void vnet_set_msglevel(struct net_device *dev, u32 value)
{
 struct vnet *vp = netdev_priv(dev);
 vp->msg_enable = value;
}
