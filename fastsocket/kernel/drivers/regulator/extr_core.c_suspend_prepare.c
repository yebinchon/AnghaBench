
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int suspend_state_t ;
struct regulator_dev {TYPE_1__* constraints; } ;
struct TYPE_2__ {int state_disk; int state_mem; int state_standby; } ;


 int EINVAL ;



 int suspend_set_state (struct regulator_dev*,int *) ;

__attribute__((used)) static int suspend_prepare(struct regulator_dev *rdev, suspend_state_t state)
{
 if (!rdev->constraints)
  return -EINVAL;

 switch (state) {
 case 128:
  return suspend_set_state(rdev,
   &rdev->constraints->state_standby);
 case 129:
  return suspend_set_state(rdev,
   &rdev->constraints->state_mem);
 case 130:
  return suspend_set_state(rdev,
   &rdev->constraints->state_disk);
 default:
  return -EINVAL;
 }
}
