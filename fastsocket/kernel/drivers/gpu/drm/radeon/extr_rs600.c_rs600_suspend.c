
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int r100_cp_disable (struct radeon_device*) ;
 int r600_audio_fini (struct radeon_device*) ;
 int radeon_wb_disable (struct radeon_device*) ;
 int rs600_gart_disable (struct radeon_device*) ;
 int rs600_irq_disable (struct radeon_device*) ;

int rs600_suspend(struct radeon_device *rdev)
{
 r600_audio_fini(rdev);
 r100_cp_disable(rdev);
 radeon_wb_disable(rdev);
 rs600_irq_disable(rdev);
 rs600_gart_disable(rdev);
 return 0;
}
