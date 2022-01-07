
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmlogrdr_priv_t {TYPE_1__* device; int minor_num; } ;
struct TYPE_2__ {int kobj; } ;


 int MKDEV (int ,int ) ;
 int device_destroy (int ,int ) ;
 int device_unregister (TYPE_1__*) ;
 int sysfs_remove_group (int *,int *) ;
 int vmlogrdr_attr_group ;
 int vmlogrdr_class ;
 int vmlogrdr_major ;

__attribute__((used)) static int vmlogrdr_unregister_device(struct vmlogrdr_priv_t *priv)
{
 device_destroy(vmlogrdr_class, MKDEV(vmlogrdr_major, priv->minor_num));
 if (priv->device != ((void*)0)) {
  sysfs_remove_group(&priv->device->kobj, &vmlogrdr_attr_group);
  device_unregister(priv->device);
  priv->device=((void*)0);
 }
 return 0;
}
