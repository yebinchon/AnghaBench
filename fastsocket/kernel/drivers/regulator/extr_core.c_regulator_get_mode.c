
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int rdev; } ;


 unsigned int _regulator_get_mode (int ) ;

unsigned int regulator_get_mode(struct regulator *regulator)
{
 return _regulator_get_mode(regulator->rdev);
}
