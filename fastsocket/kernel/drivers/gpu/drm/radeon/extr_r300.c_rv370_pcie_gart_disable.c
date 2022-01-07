
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int RADEON_PCIE_TX_GART_CNTL ;
 int RADEON_PCIE_TX_GART_EN ;
 int RADEON_PCIE_TX_GART_END_HI ;
 int RADEON_PCIE_TX_GART_END_LO ;
 int RADEON_PCIE_TX_GART_START_HI ;
 int RADEON_PCIE_TX_GART_START_LO ;
 int RADEON_PCIE_TX_GART_UNMAPPED_ACCESS_DISCARD ;
 int RREG32_PCIE (int ) ;
 int WREG32_PCIE (int ,int) ;
 int radeon_gart_table_vram_unpin (struct radeon_device*) ;

void rv370_pcie_gart_disable(struct radeon_device *rdev)
{
 u32 tmp;

 WREG32_PCIE(RADEON_PCIE_TX_GART_START_LO, 0);
 WREG32_PCIE(RADEON_PCIE_TX_GART_END_LO, 0);
 WREG32_PCIE(RADEON_PCIE_TX_GART_START_HI, 0);
 WREG32_PCIE(RADEON_PCIE_TX_GART_END_HI, 0);
 tmp = RREG32_PCIE(RADEON_PCIE_TX_GART_CNTL);
 tmp |= RADEON_PCIE_TX_GART_UNMAPPED_ACCESS_DISCARD;
 WREG32_PCIE(RADEON_PCIE_TX_GART_CNTL, tmp & ~RADEON_PCIE_TX_GART_EN);
 radeon_gart_table_vram_unpin(rdev);
}
