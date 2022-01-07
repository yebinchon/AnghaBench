
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct radeon_device {scalar_t__ family; int pdev; } ;


 scalar_t__ CHIP_RV280 ;
 scalar_t__ CHIP_RV350 ;
 int DRM_INFO (char*) ;
 int RADEON_CONFIG_APER_SIZE ;
 int RADEON_HDP_APER_CNTL ;
 int RADEON_HOST_PATH_CNTL ;
 int RREG32 (int ) ;
 int WREG32_P (int ,int,int) ;
 int pci_read_config_byte (int ,int,int*) ;

__attribute__((used)) static u32 r100_get_accessible_vram(struct radeon_device *rdev)
{
 u32 aper_size;
 u8 byte;

 aper_size = RREG32(RADEON_CONFIG_APER_SIZE);




 if (rdev->family == CHIP_RV280 ||
     rdev->family >= CHIP_RV350) {
  WREG32_P(RADEON_HOST_PATH_CNTL, RADEON_HDP_APER_CNTL,
         ~RADEON_HDP_APER_CNTL);
  DRM_INFO("Generation 2 PCI interface, using max accessible memory\n");
  return aper_size * 2;
 }





 pci_read_config_byte(rdev->pdev, 0xe, &byte);
 if (byte & 0x80) {
  DRM_INFO("Generation 1 PCI interface in multifunction mode\n");
  DRM_INFO("Limiting VRAM to one aperture\n");
  return aper_size;
 }





 if (RREG32(RADEON_HOST_PATH_CNTL) & RADEON_HDP_APER_CNTL)
  return aper_size * 2;
 return aper_size;
}
