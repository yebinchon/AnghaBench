
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int flags; int dev; } ;


 int RADEON_IS_AGP ;
 int dev_warn (int ,char*) ;
 int radeon_agp_init (struct radeon_device*) ;

void radeon_agp_resume(struct radeon_device *rdev)
{
}
