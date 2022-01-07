
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct radeon_device {int* bios; int bios_header_start; int is_atom_bios; } ;


 int DRM_DEBUG (char*,char*) ;
 int DRM_ERROR (char*) ;
 int DRM_INFO (char*) ;
 void* RBIOS16 (int) ;
 int RBIOS8 (int) ;
 int igp_read_bios_from_vram (struct radeon_device*) ;
 int kfree (int*) ;
 int memcmp (int*,char*,int) ;
 int printk (char*,int,int) ;
 int radeon_acpi_vfct_bios (struct radeon_device*) ;
 int radeon_atrm_get_bios (struct radeon_device*) ;
 int radeon_read_bios (struct radeon_device*) ;
 int radeon_read_disabled_bios (struct radeon_device*) ;

bool radeon_get_bios(struct radeon_device *rdev)
{
 bool r;
 uint16_t tmp;

 r = radeon_atrm_get_bios(rdev);
 if (r == 0)
  r = radeon_acpi_vfct_bios(rdev);
 if (r == 0)
  r = igp_read_bios_from_vram(rdev);
 if (r == 0)
  r = radeon_read_bios(rdev);
 if (r == 0) {
  r = radeon_read_disabled_bios(rdev);
 }
 if (r == 0 || rdev->bios == ((void*)0)) {
  DRM_ERROR("Unable to locate a BIOS ROM\n");
  rdev->bios = ((void*)0);
  return 0;
 }
 if (rdev->bios[0] != 0x55 || rdev->bios[1] != 0xaa) {
  printk("BIOS signature incorrect %x %x\n", rdev->bios[0], rdev->bios[1]);
  goto free_bios;
 }

 tmp = RBIOS16(0x18);
 if (RBIOS8(tmp + 0x14) != 0x0) {
  DRM_INFO("Not an x86 BIOS ROM, not using.\n");
  goto free_bios;
 }

 rdev->bios_header_start = RBIOS16(0x48);
 if (!rdev->bios_header_start) {
  goto free_bios;
 }
 tmp = rdev->bios_header_start + 4;
 if (!memcmp(rdev->bios + tmp, "ATOM", 4) ||
     !memcmp(rdev->bios + tmp, "MOTA", 4)) {
  rdev->is_atom_bios = 1;
 } else {
  rdev->is_atom_bios = 0;
 }

 DRM_DEBUG("%sBIOS detected\n", rdev->is_atom_bios ? "ATOM" : "COM");
 return 1;
free_bios:
 kfree(rdev->bios);
 rdev->bios = ((void*)0);
 return 0;
}
