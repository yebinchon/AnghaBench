
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int cayman_cp_enable (struct radeon_device*,int) ;
 int cayman_dma_stop (struct radeon_device*) ;
 int cayman_pcie_gart_disable (struct radeon_device*) ;
 int evergreen_irq_suspend (struct radeon_device*) ;
 int r600_audio_fini (struct radeon_device*) ;
 int radeon_vm_manager_fini (struct radeon_device*) ;
 int radeon_wb_disable (struct radeon_device*) ;

int cayman_suspend(struct radeon_device *rdev)
{
 r600_audio_fini(rdev);
 radeon_vm_manager_fini(rdev);
 cayman_cp_enable(rdev, 0);
 cayman_dma_stop(rdev);
 evergreen_irq_suspend(rdev);
 radeon_wb_disable(rdev);
 cayman_pcie_gart_disable(rdev);
 return 0;
}
