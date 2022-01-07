
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int pcie_reg_mask; } ;
typedef int reg ;


 int RADEON_PCIE_DATA ;
 int RADEON_PCIE_INDEX ;
 int WREG32 (int ,int ) ;

__attribute__((used)) static inline void rv370_pcie_wreg(struct radeon_device *rdev, uint32_t reg, uint32_t v)
{
 WREG32(RADEON_PCIE_INDEX, ((reg) & rdev->pcie_reg_mask));
 WREG32(RADEON_PCIE_DATA, (v));
}
