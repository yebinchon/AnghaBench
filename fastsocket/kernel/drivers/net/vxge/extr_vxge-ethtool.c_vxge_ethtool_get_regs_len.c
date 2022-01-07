
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxgedev {int no_of_vpath; } ;
struct vxge_hw_vpath_reg {int dummy; } ;
struct net_device {int dummy; } ;


 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static int vxge_ethtool_get_regs_len(struct net_device *dev)
{
 struct vxgedev *vdev = (struct vxgedev *)netdev_priv(dev);

 return sizeof(struct vxge_hw_vpath_reg) * vdev->no_of_vpath;
}
