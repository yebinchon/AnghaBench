
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct iscsi_iface {TYPE_1__ dev; } ;


 int device_unregister (TYPE_1__*) ;
 int iscsi_iface_group ;
 int sysfs_remove_group (int *,int *) ;

void iscsi_destroy_iface(struct iscsi_iface *iface)
{
 sysfs_remove_group(&iface->dev.kobj, &iscsi_iface_group);
 device_unregister(&iface->dev);
}
