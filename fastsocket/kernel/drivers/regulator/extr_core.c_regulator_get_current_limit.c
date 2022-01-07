
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int rdev; } ;


 int _regulator_get_current_limit (int ) ;

int regulator_get_current_limit(struct regulator *regulator)
{
 return _regulator_get_current_limit(regulator->rdev);
}
