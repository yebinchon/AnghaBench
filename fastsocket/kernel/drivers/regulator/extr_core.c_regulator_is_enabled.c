
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator {TYPE_1__* rdev; } ;
struct TYPE_2__ {int mutex; } ;


 int _regulator_is_enabled (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int regulator_is_enabled(struct regulator *regulator)
{
 int ret;

 mutex_lock(&regulator->rdev->mutex);
 ret = _regulator_is_enabled(regulator->rdev);
 mutex_unlock(&regulator->rdev->mutex);

 return ret;
}
