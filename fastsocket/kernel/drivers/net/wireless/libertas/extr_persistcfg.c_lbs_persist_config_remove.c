
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct net_device {TYPE_1__ dev; } ;


 int boot_opts_group ;
 int mesh_ie_group ;
 int sysfs_remove_group (int *,int *) ;

void lbs_persist_config_remove(struct net_device *dev)
{
 sysfs_remove_group(&(dev->dev.kobj), &boot_opts_group);
 sysfs_remove_group(&(dev->dev.kobj), &mesh_ie_group);
}
