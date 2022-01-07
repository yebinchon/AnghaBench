
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vxgedev {int rx_csum; } ;
struct net_device {int dummy; } ;


 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 vxge_get_rx_csum(struct net_device *dev)
{
 struct vxgedev *vdev = (struct vxgedev *)netdev_priv(dev);

 return vdev->rx_csum;
}
