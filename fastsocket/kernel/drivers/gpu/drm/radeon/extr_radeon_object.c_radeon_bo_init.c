
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mc_vram_size; int vram_width; scalar_t__ vram_is_ddr; scalar_t__ aper_size; int aper_base; int vram_mtrr; } ;
struct radeon_device {TYPE_1__ mc; } ;


 int DRM_INFO (char*,int,char) ;
 int MTRR_TYPE_WRCOMB ;
 int mtrr_add (int ,scalar_t__,int ,int) ;
 int radeon_ttm_init (struct radeon_device*) ;

int radeon_bo_init(struct radeon_device *rdev)
{

 rdev->mc.vram_mtrr = mtrr_add(rdev->mc.aper_base, rdev->mc.aper_size,
   MTRR_TYPE_WRCOMB, 1);
 DRM_INFO("Detected VRAM RAM=%lluM, BAR=%lluM\n",
  rdev->mc.mc_vram_size >> 20,
  (unsigned long long)rdev->mc.aper_size >> 20);
 DRM_INFO("RAM width %dbits %cDR\n",
   rdev->mc.vram_width, rdev->mc.vram_is_ddr ? 'D' : 'S');
 return radeon_ttm_init(rdev);
}
