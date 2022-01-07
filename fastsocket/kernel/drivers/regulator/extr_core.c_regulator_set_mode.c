
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {int mutex; TYPE_2__* desc; } ;
struct regulator {struct regulator_dev* rdev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_mode ) (struct regulator_dev*,unsigned int) ;} ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_check_mode (struct regulator_dev*,unsigned int) ;
 int stub1 (struct regulator_dev*,unsigned int) ;

int regulator_set_mode(struct regulator *regulator, unsigned int mode)
{
 struct regulator_dev *rdev = regulator->rdev;
 int ret;

 mutex_lock(&rdev->mutex);


 if (!rdev->desc->ops->set_mode) {
  ret = -EINVAL;
  goto out;
 }


 ret = regulator_check_mode(rdev, mode);
 if (ret < 0)
  goto out;

 ret = rdev->desc->ops->set_mode(rdev, mode);
out:
 mutex_unlock(&rdev->mutex);
 return ret;
}
