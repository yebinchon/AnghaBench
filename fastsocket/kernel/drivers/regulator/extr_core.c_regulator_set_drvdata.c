
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator {TYPE_1__* rdev; } ;
struct TYPE_2__ {void* reg_data; } ;



void regulator_set_drvdata(struct regulator *regulator, void *data)
{
 regulator->rdev->reg_data = data;
}
