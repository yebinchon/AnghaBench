
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 struct vio_dev* vio_find_node (struct device_node*) ;
 int vio_unregister_device (struct vio_dev*) ;

__attribute__((used)) static int dlpar_remove_vio_slot(char *drc_name, struct device_node *dn)
{
 struct vio_dev *vio_dev;

 vio_dev = vio_find_node(dn);
 if (!vio_dev)
  return -EINVAL;

 vio_unregister_device(vio_dev);
 return 0;
}
