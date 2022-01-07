
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct device {int kobj; } ;


 int sysfs_schedule_callback (int *,void (*) (void*),struct device*,struct module*) ;

int device_schedule_callback_owner(struct device *dev,
  void (*func)(struct device *), struct module *owner)
{
 return sysfs_schedule_callback(&dev->kobj,
   (void (*)(void *)) func, dev, owner);
}
