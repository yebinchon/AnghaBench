
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;


 int RADEON_AIC_CNTL ;
 int RADEON_AIC_HI_ADDR ;
 int RADEON_AIC_LO_ADDR ;
 int RADEON_DIS_OUT_OF_PCI_GART_ACCESS ;
 int RADEON_PCIGART_TRANSLATE_EN ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;

void r100_pci_gart_disable(struct radeon_device *rdev)
{
 uint32_t tmp;


 tmp = RREG32(RADEON_AIC_CNTL) | RADEON_DIS_OUT_OF_PCI_GART_ACCESS;
 WREG32(RADEON_AIC_CNTL, tmp & ~RADEON_PCIGART_TRANSLATE_EN);
 WREG32(RADEON_AIC_LO_ADDR, 0);
 WREG32(RADEON_AIC_HI_ADDR, 0);
}
