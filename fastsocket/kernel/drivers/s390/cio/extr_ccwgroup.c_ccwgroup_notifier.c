
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct device {int dummy; } ;


 unsigned long BUS_NOTIFY_UNBIND_DRIVER ;
 int NOTIFY_OK ;
 int ccwgroup_ungroup_callback ;
 int device_schedule_callback (struct device*,int ) ;

__attribute__((used)) static int ccwgroup_notifier(struct notifier_block *nb, unsigned long action,
        void *data)
{
 struct device *dev = data;

 if (action == BUS_NOTIFY_UNBIND_DRIVER)
  device_schedule_callback(dev, ccwgroup_ungroup_callback);

 return NOTIFY_OK;
}
