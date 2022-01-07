
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int flags; } ;


 int RADEON_IS_PCI ;
 int r100_cp_disable (struct radeon_device*) ;
 int r100_irq_disable (struct radeon_device*) ;
 int r100_pci_gart_disable (struct radeon_device*) ;
 int radeon_wb_disable (struct radeon_device*) ;

int r100_suspend(struct radeon_device *rdev)
{
 r100_cp_disable(rdev);
 radeon_wb_disable(rdev);
 r100_irq_disable(rdev);
 if (rdev->flags & RADEON_IS_PCI)
  r100_pci_gart_disable(rdev);
 return 0;
}
