
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {int mutex; TYPE_2__* desc; } ;
struct regulator {int min_uV; int max_uV; struct regulator_dev* rdev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_voltage ) (struct regulator_dev*,int,int) ;} ;


 int EINVAL ;
 int REGULATOR_EVENT_VOLTAGE_CHANGE ;
 int _notifier_call_chain (struct regulator_dev*,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_check_voltage (struct regulator_dev*,int*,int*) ;
 int stub1 (struct regulator_dev*,int,int) ;

int regulator_set_voltage(struct regulator *regulator, int min_uV, int max_uV)
{
 struct regulator_dev *rdev = regulator->rdev;
 int ret;

 mutex_lock(&rdev->mutex);


 if (!rdev->desc->ops->set_voltage) {
  ret = -EINVAL;
  goto out;
 }


 ret = regulator_check_voltage(rdev, &min_uV, &max_uV);
 if (ret < 0)
  goto out;
 regulator->min_uV = min_uV;
 regulator->max_uV = max_uV;
 ret = rdev->desc->ops->set_voltage(rdev, min_uV, max_uV);

out:
 _notifier_call_chain(rdev, REGULATOR_EVENT_VOLTAGE_CHANGE, ((void*)0));
 mutex_unlock(&rdev->mutex);
 return ret;
}
