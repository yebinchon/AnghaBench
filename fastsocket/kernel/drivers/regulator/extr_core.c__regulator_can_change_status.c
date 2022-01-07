
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* constraints; } ;
struct TYPE_2__ {int valid_ops_mask; } ;


 int REGULATOR_CHANGE_STATUS ;

__attribute__((used)) static int _regulator_can_change_status(struct regulator_dev *rdev)
{
 if (!rdev->constraints)
  return 0;

 if (rdev->constraints->valid_ops_mask & REGULATOR_CHANGE_STATUS)
  return 1;
 else
  return 0;
}
