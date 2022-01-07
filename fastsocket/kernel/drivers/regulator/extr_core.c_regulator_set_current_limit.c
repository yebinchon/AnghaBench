
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {int mutex; TYPE_2__* desc; } ;
struct regulator {struct regulator_dev* rdev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_current_limit ) (struct regulator_dev*,int,int) ;} ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_check_current_limit (struct regulator_dev*,int*,int*) ;
 int stub1 (struct regulator_dev*,int,int) ;

int regulator_set_current_limit(struct regulator *regulator,
          int min_uA, int max_uA)
{
 struct regulator_dev *rdev = regulator->rdev;
 int ret;

 mutex_lock(&rdev->mutex);


 if (!rdev->desc->ops->set_current_limit) {
  ret = -EINVAL;
  goto out;
 }


 ret = regulator_check_current_limit(rdev, &min_uA, &max_uA);
 if (ret < 0)
  goto out;

 ret = rdev->desc->ops->set_current_limit(rdev, min_uA, max_uA);
out:
 mutex_unlock(&rdev->mutex);
 return ret;
}
