
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct radeon_mc {int vram_start; int mc_vram_size; int real_vram_size; int aper_size; int vram_end; } ;
struct radeon_device {int dev; } ;


 int dev_info (int ,char*,int,int,int,int) ;
 int dev_warn (int ,char*) ;

__attribute__((used)) static void si_vram_location(struct radeon_device *rdev,
        struct radeon_mc *mc, u64 base)
{
 mc->vram_start = base;
 if (mc->mc_vram_size > (0xFFFFFFFFFFULL - base + 1)) {
  dev_warn(rdev->dev, "limiting VRAM to PCI aperture size\n");
  mc->real_vram_size = mc->aper_size;
  mc->mc_vram_size = mc->aper_size;
 }
 mc->vram_end = mc->vram_start + mc->mc_vram_size - 1;
 dev_info(rdev->dev, "VRAM: %lluM 0x%016llX - 0x%016llX (%lluM used)\n",
   mc->mc_vram_size >> 20, mc->vram_start,
   mc->vram_end, mc->real_vram_size >> 20);
}
