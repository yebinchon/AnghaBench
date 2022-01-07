
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int mutex; } ;
struct regulator {struct regulator_dev* rdev; } ;


 int _regulator_enable (struct regulator_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int regulator_enable(struct regulator *regulator)
{
 struct regulator_dev *rdev = regulator->rdev;
 int ret = 0;

 mutex_lock(&rdev->mutex);
 ret = _regulator_enable(rdev);
 mutex_unlock(&rdev->mutex);
 return ret;
}
