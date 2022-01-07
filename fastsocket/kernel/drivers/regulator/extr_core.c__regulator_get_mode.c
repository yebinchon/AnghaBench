
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {int mutex; TYPE_2__* desc; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_mode ) (struct regulator_dev*) ;} ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct regulator_dev*) ;

__attribute__((used)) static unsigned int _regulator_get_mode(struct regulator_dev *rdev)
{
 int ret;

 mutex_lock(&rdev->mutex);


 if (!rdev->desc->ops->get_mode) {
  ret = -EINVAL;
  goto out;
 }

 ret = rdev->desc->ops->get_mode(rdev);
out:
 mutex_unlock(&rdev->mutex);
 return ret;
}
