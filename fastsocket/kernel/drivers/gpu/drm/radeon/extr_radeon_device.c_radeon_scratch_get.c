
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int num_reg; int* free; int * reg; } ;
struct radeon_device {TYPE_1__ scratch; } ;


 int EINVAL ;

int radeon_scratch_get(struct radeon_device *rdev, uint32_t *reg)
{
 int i;

 for (i = 0; i < rdev->scratch.num_reg; i++) {
  if (rdev->scratch.free[i]) {
   rdev->scratch.free[i] = 0;
   *reg = rdev->scratch.reg[i];
   return 0;
  }
 }
 return -EINVAL;
}
