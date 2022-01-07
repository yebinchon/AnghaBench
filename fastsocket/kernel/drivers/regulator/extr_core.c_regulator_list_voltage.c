
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_ops {int (* list_voltage ) (struct regulator_dev*,unsigned int) ;} ;
struct regulator_dev {TYPE_1__* constraints; int mutex; TYPE_2__* desc; } ;
struct regulator {struct regulator_dev* rdev; } ;
struct TYPE_4__ {unsigned int n_voltages; struct regulator_ops* ops; } ;
struct TYPE_3__ {int min_uV; int max_uV; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct regulator_dev*,unsigned int) ;

int regulator_list_voltage(struct regulator *regulator, unsigned selector)
{
 struct regulator_dev *rdev = regulator->rdev;
 struct regulator_ops *ops = rdev->desc->ops;
 int ret;

 if (!ops->list_voltage || selector >= rdev->desc->n_voltages)
  return -EINVAL;

 mutex_lock(&rdev->mutex);
 ret = ops->list_voltage(rdev, selector);
 mutex_unlock(&rdev->mutex);

 if (ret > 0) {
  if (ret < rdev->constraints->min_uV)
   ret = 0;
  else if (ret > rdev->constraints->max_uV)
   ret = 0;
 }

 return ret;
}
