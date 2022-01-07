
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int gtt_size; } ;
struct radeon_device {scalar_t__ family; TYPE_3__ mc; TYPE_2__* asic; int flags; } ;
struct TYPE_4__ {int * set_page; int * tlb_flush; } ;
struct TYPE_5__ {TYPE_1__ gart; } ;


 scalar_t__ CHIP_R423 ;
 scalar_t__ CHIP_R600 ;
 scalar_t__ CHIP_RV380 ;
 scalar_t__ CHIP_RV410 ;
 scalar_t__ CHIP_RV515 ;
 int DRM_INFO (char*) ;
 int RADEON_IS_AGP ;
 int RADEON_IS_PCI ;
 int RADEON_IS_PCIE ;
 int r100_pci_gart_set_page ;
 int r100_pci_gart_tlb_flush ;
 int radeon_gart_size ;
 int rv370_pcie_gart_set_page ;
 int rv370_pcie_gart_tlb_flush ;

void radeon_agp_disable(struct radeon_device *rdev)
{
 rdev->flags &= ~RADEON_IS_AGP;
 if (rdev->family >= CHIP_R600) {
  DRM_INFO("Forcing AGP to PCIE mode\n");
  rdev->flags |= RADEON_IS_PCIE;
 } else if (rdev->family >= CHIP_RV515 ||
   rdev->family == CHIP_RV380 ||
   rdev->family == CHIP_RV410 ||
   rdev->family == CHIP_R423) {
  DRM_INFO("Forcing AGP to PCIE mode\n");
  rdev->flags |= RADEON_IS_PCIE;
  rdev->asic->gart.tlb_flush = &rv370_pcie_gart_tlb_flush;
  rdev->asic->gart.set_page = &rv370_pcie_gart_set_page;
 } else {
  DRM_INFO("Forcing AGP to PCI mode\n");
  rdev->flags |= RADEON_IS_PCI;
  rdev->asic->gart.tlb_flush = &r100_pci_gart_tlb_flush;
  rdev->asic->gart.set_page = &r100_pci_gart_set_page;
 }
 rdev->mc.gtt_size = radeon_gart_size * 1024 * 1024;
}
