
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct regulator_dev {int owner; scalar_t__ exclusive; int open_count; TYPE_1__ dev; } ;
struct TYPE_5__ {struct regulator* name; } ;
struct TYPE_6__ {TYPE_2__ attr; } ;
struct regulator {int list; TYPE_3__ dev_attr; scalar_t__ dev; struct regulator* supply_name; struct regulator_dev* rdev; } ;


 scalar_t__ IS_ERR (struct regulator*) ;
 int device_remove_file (scalar_t__,TYPE_3__*) ;
 int kfree (struct regulator*) ;
 int list_del (int *) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_list_mutex ;
 int sysfs_remove_link (int *,struct regulator*) ;

void regulator_put(struct regulator *regulator)
{
 struct regulator_dev *rdev;

 if (regulator == ((void*)0) || IS_ERR(regulator))
  return;

 mutex_lock(&regulator_list_mutex);
 rdev = regulator->rdev;


 if (regulator->dev) {
  sysfs_remove_link(&rdev->dev.kobj, regulator->supply_name);
  kfree(regulator->supply_name);
  device_remove_file(regulator->dev, &regulator->dev_attr);
  kfree(regulator->dev_attr.attr.name);
 }
 list_del(&regulator->list);
 kfree(regulator);

 rdev->open_count--;
 rdev->exclusive = 0;

 module_put(rdev->owner);
 mutex_unlock(&regulator_list_mutex);
}
