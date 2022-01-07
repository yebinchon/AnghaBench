
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct net_device {TYPE_1__ dev; } ;


 int boot_opts_group ;
 int mesh_ie_group ;
 int sysfs_create_group (int *,int *) ;

void lbs_persist_config_init(struct net_device *dev)
{
 int ret;
 ret = sysfs_create_group(&(dev->dev.kobj), &boot_opts_group);
 ret = sysfs_create_group(&(dev->dev.kobj), &mesh_ie_group);
}
