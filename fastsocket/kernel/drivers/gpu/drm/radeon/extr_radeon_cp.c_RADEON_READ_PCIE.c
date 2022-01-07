
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int drm_radeon_private_t ;


 int RADEON_PCIE_DATA ;
 int RADEON_PCIE_INDEX ;
 int RADEON_READ (int ) ;
 int RADEON_WRITE8 (int ,int) ;

__attribute__((used)) static u32 RADEON_READ_PCIE(drm_radeon_private_t *dev_priv, int addr)
{
 RADEON_WRITE8(RADEON_PCIE_INDEX, addr & 0xff);
 return RADEON_READ(RADEON_PCIE_DATA);
}
