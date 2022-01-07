
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int flags; } ;


 scalar_t__ ASIC_IS_X2 (struct radeon_device*) ;
 int RADEON_IS_IGP ;
 int RADEON_IS_PCIE ;
 int RADEON_PCIE_LC_LINK_WIDTH_CNTL ;
 int RADEON_PCIE_LC_LINK_WIDTH_RD_MASK ;
 int RADEON_PCIE_LC_LINK_WIDTH_RD_SHIFT ;






 int RREG32_PCIE_P (int ) ;

int r600_get_pcie_lanes(struct radeon_device *rdev)
{
 u32 link_width_cntl;

 if (rdev->flags & RADEON_IS_IGP)
  return 0;

 if (!(rdev->flags & RADEON_IS_PCIE))
  return 0;


 if (ASIC_IS_X2(rdev))
  return 0;



 link_width_cntl = RREG32_PCIE_P(RADEON_PCIE_LC_LINK_WIDTH_CNTL);

 switch ((link_width_cntl & RADEON_PCIE_LC_LINK_WIDTH_RD_MASK) >> RADEON_PCIE_LC_LINK_WIDTH_RD_SHIFT) {
 case 133:
  return 0;
 case 132:
  return 1;
 case 130:
  return 2;
 case 129:
  return 4;
 case 128:
  return 8;
 case 131:
 default:
  return 16;
 }
}
