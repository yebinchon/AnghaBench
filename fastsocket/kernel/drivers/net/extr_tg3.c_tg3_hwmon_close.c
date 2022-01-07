
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tg3 {TYPE_2__* pdev; int * hwmon_dev; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int hwmon_device_unregister (int *) ;
 int sysfs_remove_group (int *,int *) ;
 int tg3_group ;

__attribute__((used)) static void tg3_hwmon_close(struct tg3 *tp)
{
 if (tp->hwmon_dev) {
  hwmon_device_unregister(tp->hwmon_dev);
  tp->hwmon_dev = ((void*)0);
  sysfs_remove_group(&tp->pdev->dev.kobj, &tg3_group);
 }
}
