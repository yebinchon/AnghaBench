
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int vram_is_ddr; int vram_width; scalar_t__ gtt_base_align; int igp_sideport_enabled; int aper_size; int visible_vram_size; int real_vram_size; int mc_vram_size; int aper_base; } ;
struct radeon_device {TYPE_1__ mc; int pdev; } ;


 int G_000004_MC_FB_START (int) ;
 int RADEON_CONFIG_MEMSIZE ;
 int RREG32 (int ) ;
 int RREG32_MC (int ) ;
 int R_000004_MC_FB_LOCATION ;
 int pci_resource_len (int ,int ) ;
 int pci_resource_start (int ,int ) ;
 int radeon_atombios_sideport_present (struct radeon_device*) ;
 int radeon_gtt_location (struct radeon_device*,TYPE_1__*) ;
 int radeon_update_bandwidth_info (struct radeon_device*) ;
 int radeon_vram_location (struct radeon_device*,TYPE_1__*,int) ;

__attribute__((used)) static void rs600_mc_init(struct radeon_device *rdev)
{
 u64 base;

 rdev->mc.aper_base = pci_resource_start(rdev->pdev, 0);
 rdev->mc.aper_size = pci_resource_len(rdev->pdev, 0);
 rdev->mc.vram_is_ddr = 1;
 rdev->mc.vram_width = 128;
 rdev->mc.real_vram_size = RREG32(RADEON_CONFIG_MEMSIZE);
 rdev->mc.mc_vram_size = rdev->mc.real_vram_size;
 rdev->mc.visible_vram_size = rdev->mc.aper_size;
 rdev->mc.igp_sideport_enabled = radeon_atombios_sideport_present(rdev);
 base = RREG32_MC(R_000004_MC_FB_LOCATION);
 base = G_000004_MC_FB_START(base) << 16;
 radeon_vram_location(rdev, &rdev->mc, base);
 rdev->mc.gtt_base_align = 0;
 radeon_gtt_location(rdev, &rdev->mc);
 radeon_update_bandwidth_info(rdev);
}
