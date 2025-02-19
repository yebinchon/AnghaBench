
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct ccwgroup_device {int count; TYPE_3__** cdev; TYPE_1__ dev; } ;
struct TYPE_5__ {int kobj; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;


 int sprintf (char*,char*,int) ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static void
__ccwgroup_remove_symlinks(struct ccwgroup_device *gdev)
{
 int i;
 char str[8];

 for (i = 0; i < gdev->count; i++) {
  sprintf(str, "cdev%d", i);
  sysfs_remove_link(&gdev->dev.kobj, str);
  sysfs_remove_link(&gdev->cdev[i]->dev.kobj, "group_device");
 }

}
