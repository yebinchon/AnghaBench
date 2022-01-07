
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int vram_is_ddr; int vram_width; scalar_t__ gtt_size; scalar_t__ gtt_base_align; int igp_sideport_enabled; } ;
struct radeon_device {TYPE_1__ mc; } ;


 int RADEON_NB_TOM ;
 int RREG32 (int ) ;
 int r100_vram_init_sizes (struct radeon_device*) ;
 int radeon_combios_sideport_present (struct radeon_device*) ;
 int radeon_gtt_location (struct radeon_device*,TYPE_1__*) ;
 int radeon_update_bandwidth_info (struct radeon_device*) ;
 int radeon_vram_location (struct radeon_device*,TYPE_1__*,int) ;
 int rs400_gart_adjust_size (struct radeon_device*) ;

__attribute__((used)) static void rs400_mc_init(struct radeon_device *rdev)
{
 u64 base;

 rs400_gart_adjust_size(rdev);
 rdev->mc.igp_sideport_enabled = radeon_combios_sideport_present(rdev);

 rdev->mc.vram_is_ddr = 1;
 rdev->mc.vram_width = 128;
 r100_vram_init_sizes(rdev);
 base = (RREG32(RADEON_NB_TOM) & 0xffff) << 16;
 radeon_vram_location(rdev, &rdev->mc, base);
 rdev->mc.gtt_base_align = rdev->mc.gtt_size - 1;
 radeon_gtt_location(rdev, &rdev->mc);
 radeon_update_bandwidth_info(rdev);
}
