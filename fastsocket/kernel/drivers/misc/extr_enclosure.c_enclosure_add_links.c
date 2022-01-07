
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct enclosure_component {TYPE_1__ cdev; TYPE_2__* dev; } ;
struct TYPE_4__ {int kobj; } ;


 int ENCLOSURE_NAME_SIZE ;
 int enclosure_link_name (struct enclosure_component*,char*) ;
 int sysfs_create_link (int *,int *,char*) ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static int enclosure_add_links(struct enclosure_component *cdev)
{
 int error;
 char name[ENCLOSURE_NAME_SIZE];

 error = sysfs_create_link(&cdev->cdev.kobj, &cdev->dev->kobj, "device");
 if (error)
  return error;

 enclosure_link_name(cdev, name);
 error = sysfs_create_link(&cdev->dev->kobj, &cdev->cdev.kobj, name);
 if (error)
  sysfs_remove_link(&cdev->cdev.kobj, "device");

 return error;
}
