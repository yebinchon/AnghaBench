
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {int dummy; } ;


 scalar_t__ cayman_gpu_check_soft_reset (struct radeon_device*) ;
 int cayman_gpu_soft_reset (struct radeon_device*,scalar_t__) ;
 int r600_set_bios_scratch_engine_hung (struct radeon_device*,int) ;

int cayman_asic_reset(struct radeon_device *rdev)
{
 u32 reset_mask;

 reset_mask = cayman_gpu_check_soft_reset(rdev);

 if (reset_mask)
  r600_set_bios_scratch_engine_hung(rdev, 1);

 cayman_gpu_soft_reset(rdev, reset_mask);

 reset_mask = cayman_gpu_check_soft_reset(rdev);

 if (!reset_mask)
  r600_set_bios_scratch_engine_hung(rdev, 0);

 return 0;
}
