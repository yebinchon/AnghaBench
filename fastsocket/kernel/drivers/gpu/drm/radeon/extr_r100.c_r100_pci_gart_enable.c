
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int table_addr; int ready; } ;
struct TYPE_4__ {int gtt_start; int gtt_end; int gtt_size; } ;
struct radeon_device {TYPE_1__ gart; TYPE_2__ mc; } ;


 int DRM_INFO (char*,unsigned int,unsigned long long) ;
 int RADEON_AIC_CNTL ;
 int RADEON_AIC_HI_ADDR ;
 int RADEON_AIC_LO_ADDR ;
 int RADEON_AIC_PT_BASE ;
 int RADEON_DIS_OUT_OF_PCI_GART_ACCESS ;
 int RADEON_PCIGART_TRANSLATE_EN ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int r100_pci_gart_tlb_flush (struct radeon_device*) ;
 int radeon_gart_restore (struct radeon_device*) ;

int r100_pci_gart_enable(struct radeon_device *rdev)
{
 uint32_t tmp;

 radeon_gart_restore(rdev);

 tmp = RREG32(RADEON_AIC_CNTL) | RADEON_DIS_OUT_OF_PCI_GART_ACCESS;
 WREG32(RADEON_AIC_CNTL, tmp);

 WREG32(RADEON_AIC_LO_ADDR, rdev->mc.gtt_start);
 WREG32(RADEON_AIC_HI_ADDR, rdev->mc.gtt_end);

 WREG32(RADEON_AIC_PT_BASE, rdev->gart.table_addr);
 tmp = RREG32(RADEON_AIC_CNTL) | RADEON_PCIGART_TRANSLATE_EN;
 WREG32(RADEON_AIC_CNTL, tmp);
 r100_pci_gart_tlb_flush(rdev);
 DRM_INFO("PCI GART of %uM enabled (table at 0x%016llX).\n",
   (unsigned)(rdev->mc.gtt_size >> 20),
   (unsigned long long)rdev->gart.table_addr);
 rdev->gart.ready = 1;
 return 0;
}
