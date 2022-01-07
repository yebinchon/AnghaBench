
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct ubi_device {scalar_t__ vtbl_slots; TYPE_1__ cdev; } ;


 int cdev_del (TYPE_1__*) ;
 int kill_volumes (struct ubi_device*) ;
 int ubi_sysfs_close (struct ubi_device*) ;
 int unregister_chrdev_region (int ,scalar_t__) ;

__attribute__((used)) static void uif_close(struct ubi_device *ubi)
{
 kill_volumes(ubi);
 ubi_sysfs_close(ubi);
 cdev_del(&ubi->cdev);
 unregister_chrdev_region(ubi->cdev.dev, ubi->vtbl_slots + 1);
}
