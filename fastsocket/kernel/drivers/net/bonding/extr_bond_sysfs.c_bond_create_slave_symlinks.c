
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct net_device {char* name; TYPE_1__ dev; } ;


 int IFNAMSIZ ;
 int sprintf (char*,char*,char*) ;
 int sysfs_create_link (int *,int *,char*) ;

int bond_create_slave_symlinks(struct net_device *master,
          struct net_device *slave)
{
 char linkname[IFNAMSIZ+7];
 int ret = 0;


 ret = sysfs_create_link(&(slave->dev.kobj), &(master->dev.kobj),
    "master");
 if (ret)
  return ret;

 sprintf(linkname, "slave_%s", slave->name);
 ret = sysfs_create_link(&(master->dev.kobj), &(slave->dev.kobj),
    linkname);
 return ret;

}
