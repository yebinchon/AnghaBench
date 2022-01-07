
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct regulator {struct regulator_dev* rdev; } ;
struct TYPE_2__ {scalar_t__ n_voltages; } ;


 int EINVAL ;

int regulator_count_voltages(struct regulator *regulator)
{
 struct regulator_dev *rdev = regulator->rdev;

 return rdev->desc->n_voltages ? : -EINVAL;
}
