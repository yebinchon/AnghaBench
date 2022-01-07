
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int vram_is_ddr; int vram_width; int aper_base; scalar_t__ gtt_base_align; } ;
struct radeon_device {int flags; TYPE_1__ mc; } ;


 int R300_MEM_NUM_CHANNELS_MASK ;
 int RADEON_IS_AGP ;
 int RADEON_IS_IGP ;
 int RADEON_MEM_CNTL ;
 int RADEON_NB_TOM ;
 int RREG32 (int ) ;
 int r100_vram_init_sizes (struct radeon_device*) ;
 int radeon_gtt_location (struct radeon_device*,TYPE_1__*) ;
 int radeon_update_bandwidth_info (struct radeon_device*) ;
 int radeon_vram_location (struct radeon_device*,TYPE_1__*,int) ;

void r300_mc_init(struct radeon_device *rdev)
{
 u64 base;
 u32 tmp;


 rdev->mc.vram_is_ddr = 1;
 tmp = RREG32(RADEON_MEM_CNTL);
 tmp &= R300_MEM_NUM_CHANNELS_MASK;
 switch (tmp) {
 case 0: rdev->mc.vram_width = 64; break;
 case 1: rdev->mc.vram_width = 128; break;
 case 2: rdev->mc.vram_width = 256; break;
 default: rdev->mc.vram_width = 128; break;
 }
 r100_vram_init_sizes(rdev);
 base = rdev->mc.aper_base;
 if (rdev->flags & RADEON_IS_IGP)
  base = (RREG32(RADEON_NB_TOM) & 0xffff) << 16;
 radeon_vram_location(rdev, &rdev->mc, base);
 rdev->mc.gtt_base_align = 0;
 if (!(rdev->flags & RADEON_IS_AGP))
  radeon_gtt_location(rdev, &rdev->mc);
 radeon_update_bandwidth_info(rdev);
}
