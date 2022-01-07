
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct vio_dev {scalar_t__ mp; } ;
struct device {int dummy; } ;


 struct vio_dev* to_vio_dev (struct device*) ;

__attribute__((used)) static int vio_md_node_match(struct device *dev, void *arg)
{
 struct vio_dev *vdev = to_vio_dev(dev);

 if (vdev->mp == (u64) arg)
  return 1;

 return 0;
}
