
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct regulator_dev {TYPE_1__ dev; scalar_t__ supply; int list; int open_count; } ;


 int WARN_ON (int ) ;
 int device_unregister (TYPE_1__*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_list_mutex ;
 int sysfs_remove_link (int *,char*) ;
 int unset_regulator_supplies (struct regulator_dev*) ;

void regulator_unregister(struct regulator_dev *rdev)
{
 if (rdev == ((void*)0))
  return;

 mutex_lock(&regulator_list_mutex);
 WARN_ON(rdev->open_count);
 unset_regulator_supplies(rdev);
 list_del(&rdev->list);
 if (rdev->supply)
  sysfs_remove_link(&rdev->dev.kobj, "supply");
 device_unregister(&rdev->dev);
 mutex_unlock(&regulator_list_mutex);
}
