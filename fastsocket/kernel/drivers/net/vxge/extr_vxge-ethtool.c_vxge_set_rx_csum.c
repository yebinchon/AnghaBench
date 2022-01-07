
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vxgedev {int rx_csum; } ;
struct net_device {int dummy; } ;


 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static int vxge_set_rx_csum(struct net_device *dev, u32 data)
{
 struct vxgedev *vdev = (struct vxgedev *)netdev_priv(dev);

 if (data)
  vdev->rx_csum = 1;
 else
  vdev->rx_csum = 0;

 return 0;
}
