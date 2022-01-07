
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct enclosure_component {TYPE_2__ cdev; TYPE_1__* dev; } ;
struct TYPE_3__ {int kobj; } ;


 int ENCLOSURE_NAME_SIZE ;
 int enclosure_link_name (struct enclosure_component*,char*) ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static void enclosure_remove_links(struct enclosure_component *cdev)
{
 char name[ENCLOSURE_NAME_SIZE];

 enclosure_link_name(cdev, name);
 sysfs_remove_link(&cdev->dev->kobj, name);
 sysfs_remove_link(&cdev->cdev.kobj, "device");
}
