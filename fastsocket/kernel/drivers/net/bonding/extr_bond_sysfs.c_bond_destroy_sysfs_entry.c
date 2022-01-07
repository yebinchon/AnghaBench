
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct net_device {TYPE_1__ dev; } ;
struct bonding {struct net_device* dev; } ;


 int bonding_group ;
 int sysfs_remove_group (int *,int *) ;

void bond_destroy_sysfs_entry(struct bonding *bond)
{
 struct net_device *dev = bond->dev;

 sysfs_remove_group(&(dev->dev.kobj), &bonding_group);
}
