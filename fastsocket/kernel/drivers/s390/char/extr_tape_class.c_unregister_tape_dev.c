
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tape_class_device {TYPE_1__* char_device; int mode_name; } ;
struct device {int kobj; } ;
struct TYPE_2__ {int dev; } ;


 int IS_ERR (struct tape_class_device*) ;
 int cdev_del (TYPE_1__*) ;
 int device_destroy (int ,int ) ;
 int kfree (struct tape_class_device*) ;
 int sysfs_remove_link (int *,int ) ;
 int tape_class ;

void unregister_tape_dev(struct device *device, struct tape_class_device *tcd)
{
 if (tcd != ((void*)0) && !IS_ERR(tcd)) {
  sysfs_remove_link(&device->kobj, tcd->mode_name);
  device_destroy(tape_class, tcd->char_device->dev);
  cdev_del(tcd->char_device);
  kfree(tcd);
 }
}
