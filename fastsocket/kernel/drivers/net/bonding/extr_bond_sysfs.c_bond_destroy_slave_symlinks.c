
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct net_device {char* name; TYPE_1__ dev; } ;


 int IFNAMSIZ ;
 int sprintf (char*,char*,char*) ;
 int sysfs_remove_link (int *,char*) ;

void bond_destroy_slave_symlinks(struct net_device *master,
     struct net_device *slave)
{
 char linkname[IFNAMSIZ+7];

 sysfs_remove_link(&(slave->dev.kobj), "master");
 sprintf(linkname, "slave_%s", slave->name);
 sysfs_remove_link(&(master->dev.kobj), linkname);
}
