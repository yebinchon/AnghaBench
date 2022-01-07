
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int radeon_ttm_fini (struct radeon_device*) ;

void radeon_bo_fini(struct radeon_device *rdev)
{
 radeon_ttm_fini(rdev);
}
