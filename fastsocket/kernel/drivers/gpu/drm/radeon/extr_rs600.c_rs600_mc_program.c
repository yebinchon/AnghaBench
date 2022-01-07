
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rv515_mc_save {int dummy; } ;
struct TYPE_2__ {int vram_start; int vram_end; } ;
struct radeon_device {TYPE_1__ mc; int dev; } ;


 int R_000004_MC_FB_LOCATION ;
 int R_000005_MC_AGP_LOCATION ;
 int R_000006_AGP_BASE ;
 int R_000007_AGP_BASE_2 ;
 int R_000134_HDP_FB_LOCATION ;
 int S_000004_MC_FB_START (int) ;
 int S_000004_MC_FB_TOP (int) ;
 int S_000134_HDP_FB_START (int) ;
 int WREG32 (int ,int ) ;
 int WREG32_MC (int ,int) ;
 int dev_warn (int ,char*) ;
 scalar_t__ rs600_mc_wait_for_idle (struct radeon_device*) ;
 int rv515_mc_resume (struct radeon_device*,struct rv515_mc_save*) ;
 int rv515_mc_stop (struct radeon_device*,struct rv515_mc_save*) ;

__attribute__((used)) static void rs600_mc_program(struct radeon_device *rdev)
{
 struct rv515_mc_save save;


 rv515_mc_stop(rdev, &save);


 if (rs600_mc_wait_for_idle(rdev))
  dev_warn(rdev->dev, "Wait MC idle timeout before updating MC.\n");


 WREG32_MC(R_000005_MC_AGP_LOCATION, 0x0FFFFFFF);
 WREG32_MC(R_000006_AGP_BASE, 0);
 WREG32_MC(R_000007_AGP_BASE_2, 0);

 WREG32_MC(R_000004_MC_FB_LOCATION,
   S_000004_MC_FB_START(rdev->mc.vram_start >> 16) |
   S_000004_MC_FB_TOP(rdev->mc.vram_end >> 16));
 WREG32(R_000134_HDP_FB_LOCATION,
  S_000134_HDP_FB_START(rdev->mc.vram_start >> 16));

 rv515_mc_resume(rdev, &save);
}
