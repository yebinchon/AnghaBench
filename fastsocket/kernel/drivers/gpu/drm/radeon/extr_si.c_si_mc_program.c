
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int vram_start; int vram_end; } ;
struct TYPE_3__ {int gpu_addr; } ;
struct radeon_device {int dev; TYPE_2__ mc; TYPE_1__ vram_scratch; } ;
struct evergreen_mc_save {int dummy; } ;


 int HDP_NONSURFACE_BASE ;
 int HDP_NONSURFACE_INFO ;
 int HDP_NONSURFACE_SIZE ;
 int HDP_REG_COHERENCY_FLUSH_CNTL ;
 int MC_VM_AGP_BASE ;
 int MC_VM_AGP_BOT ;
 int MC_VM_AGP_TOP ;
 int MC_VM_FB_LOCATION ;
 int MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR ;
 int MC_VM_SYSTEM_APERTURE_HIGH_ADDR ;
 int MC_VM_SYSTEM_APERTURE_LOW_ADDR ;
 int VGA_HDP_CONTROL ;
 int VGA_MEMORY_DISABLE ;
 int WREG32 (int,int) ;
 int dev_warn (int ,char*) ;
 int evergreen_mc_resume (struct radeon_device*,struct evergreen_mc_save*) ;
 int evergreen_mc_stop (struct radeon_device*,struct evergreen_mc_save*) ;
 scalar_t__ radeon_mc_wait_for_idle (struct radeon_device*) ;
 int rv515_vga_render_disable (struct radeon_device*) ;

__attribute__((used)) static void si_mc_program(struct radeon_device *rdev)
{
 struct evergreen_mc_save save;
 u32 tmp;
 int i, j;


 for (i = 0, j = 0; i < 32; i++, j += 0x18) {
  WREG32((0x2c14 + j), 0x00000000);
  WREG32((0x2c18 + j), 0x00000000);
  WREG32((0x2c1c + j), 0x00000000);
  WREG32((0x2c20 + j), 0x00000000);
  WREG32((0x2c24 + j), 0x00000000);
 }
 WREG32(HDP_REG_COHERENCY_FLUSH_CNTL, 0);

 evergreen_mc_stop(rdev, &save);
 if (radeon_mc_wait_for_idle(rdev)) {
  dev_warn(rdev->dev, "Wait for MC idle timedout !\n");
 }

 WREG32(VGA_HDP_CONTROL, VGA_MEMORY_DISABLE);

 WREG32(MC_VM_SYSTEM_APERTURE_LOW_ADDR,
        rdev->mc.vram_start >> 12);
 WREG32(MC_VM_SYSTEM_APERTURE_HIGH_ADDR,
        rdev->mc.vram_end >> 12);
 WREG32(MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR,
        rdev->vram_scratch.gpu_addr >> 12);
 tmp = ((rdev->mc.vram_end >> 24) & 0xFFFF) << 16;
 tmp |= ((rdev->mc.vram_start >> 24) & 0xFFFF);
 WREG32(MC_VM_FB_LOCATION, tmp);

 WREG32(HDP_NONSURFACE_BASE, (rdev->mc.vram_start >> 8));
 WREG32(HDP_NONSURFACE_INFO, (2 << 7) | (1 << 30));
 WREG32(HDP_NONSURFACE_SIZE, 0x3FFFFFFF);
 WREG32(MC_VM_AGP_BASE, 0);
 WREG32(MC_VM_AGP_TOP, 0x0FFFFFFF);
 WREG32(MC_VM_AGP_BOT, 0x0FFFFFFF);
 if (radeon_mc_wait_for_idle(rdev)) {
  dev_warn(rdev->dev, "Wait for MC idle timedout !\n");
 }
 evergreen_mc_resume(rdev, &save);


 rv515_vga_render_disable(rdev);
}
