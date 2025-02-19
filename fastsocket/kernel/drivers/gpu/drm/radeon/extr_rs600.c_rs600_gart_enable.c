
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int table_addr; int ready; int * robj; } ;
struct TYPE_3__ {int gtt_start; int gtt_end; int vram_start; int vram_end; int gtt_size; } ;
struct radeon_device {TYPE_2__ gart; TYPE_1__ mc; int dev; } ;


 int DRM_INFO (char*,unsigned int,unsigned long long) ;
 int EINVAL ;
 int RADEON_BUS_CNTL ;
 int RREG32 (int ) ;
 int RREG32_MC (scalar_t__) ;
 int RS600_BUS_MASTER_DIS ;
 scalar_t__ R_000009_MC_CNTL1 ;
 scalar_t__ R_000100_MC_PT0_CNTL ;
 scalar_t__ R_000102_MC_PT0_CONTEXT0_CNTL ;
 scalar_t__ R_000112_MC_PT0_SYSTEM_APERTURE_LOW_ADDR ;
 scalar_t__ R_000114_MC_PT0_SYSTEM_APERTURE_HIGH_ADDR ;
 scalar_t__ R_00011C_MC_PT0_CONTEXT0_DEFAULT_READ_ADDR ;
 scalar_t__ R_00012C_MC_PT0_CONTEXT0_FLAT_BASE_ADDR ;
 scalar_t__ R_00013C_MC_PT0_CONTEXT0_FLAT_START_ADDR ;
 scalar_t__ R_00014C_MC_PT0_CONTEXT0_FLAT_END_ADDR ;
 scalar_t__ R_00016C_MC_PT0_CLIENT0_CNTL ;
 int S_000009_ENABLE_PAGE_TABLES (int) ;
 int S_000100_EFFECTIVE_L2_CACHE_SIZE (int) ;
 int S_000100_EFFECTIVE_L2_QUEUE_SIZE (int) ;
 int S_000100_ENABLE_PT (int) ;
 int S_000102_ENABLE_PAGE_TABLE (int) ;
 int S_000102_PAGE_TABLE_DEPTH (int ) ;
 int S_00016C_EFFECTIVE_L1_CACHE_SIZE (int) ;
 int S_00016C_EFFECTIVE_L1_QUEUE_SIZE (int) ;
 int S_00016C_ENABLE_FRAGMENT_PROCESSING (int) ;
 int S_00016C_ENABLE_TRANSLATION_MODE_OVERRIDE (int) ;
 int S_00016C_SYSTEM_ACCESS_MODE_MASK (int ) ;
 int S_00016C_SYSTEM_APERTURE_UNMAPPED_ACCESS (int ) ;
 int V_000102_PAGE_TABLE_FLAT ;
 int V_00016C_SYSTEM_ACCESS_MODE_NOT_IN_SYS ;
 int V_00016C_SYSTEM_APERTURE_UNMAPPED_PASSTHROUGH ;
 int WREG32 (int ,int) ;
 int WREG32_MC (scalar_t__,int) ;
 int dev_err (int ,char*) ;
 int radeon_gart_restore (struct radeon_device*) ;
 int radeon_gart_table_vram_pin (struct radeon_device*) ;
 int rs600_gart_tlb_flush (struct radeon_device*) ;

__attribute__((used)) static int rs600_gart_enable(struct radeon_device *rdev)
{
 u32 tmp;
 int r, i;

 if (rdev->gart.robj == ((void*)0)) {
  dev_err(rdev->dev, "No VRAM object for PCIE GART.\n");
  return -EINVAL;
 }
 r = radeon_gart_table_vram_pin(rdev);
 if (r)
  return r;
 radeon_gart_restore(rdev);

 tmp = RREG32(RADEON_BUS_CNTL) & ~RS600_BUS_MASTER_DIS;
 WREG32(RADEON_BUS_CNTL, tmp);

 WREG32_MC(R_000100_MC_PT0_CNTL,
    (S_000100_EFFECTIVE_L2_CACHE_SIZE(6) |
     S_000100_EFFECTIVE_L2_QUEUE_SIZE(6)));

 for (i = 0; i < 19; i++) {
  WREG32_MC(R_00016C_MC_PT0_CLIENT0_CNTL + i,
     S_00016C_ENABLE_TRANSLATION_MODE_OVERRIDE(1) |
     S_00016C_SYSTEM_ACCESS_MODE_MASK(
      V_00016C_SYSTEM_ACCESS_MODE_NOT_IN_SYS) |
     S_00016C_SYSTEM_APERTURE_UNMAPPED_ACCESS(
      V_00016C_SYSTEM_APERTURE_UNMAPPED_PASSTHROUGH) |
     S_00016C_EFFECTIVE_L1_CACHE_SIZE(3) |
     S_00016C_ENABLE_FRAGMENT_PROCESSING(1) |
     S_00016C_EFFECTIVE_L1_QUEUE_SIZE(3));
 }

 WREG32_MC(R_000102_MC_PT0_CONTEXT0_CNTL,
    S_000102_ENABLE_PAGE_TABLE(1) |
    S_000102_PAGE_TABLE_DEPTH(V_000102_PAGE_TABLE_FLAT));


 for (i = 1; i < 8; i++)
  WREG32_MC(R_000102_MC_PT0_CONTEXT0_CNTL + i, 0);


 WREG32_MC(R_00012C_MC_PT0_CONTEXT0_FLAT_BASE_ADDR,
    rdev->gart.table_addr);
 WREG32_MC(R_00013C_MC_PT0_CONTEXT0_FLAT_START_ADDR, rdev->mc.gtt_start);
 WREG32_MC(R_00014C_MC_PT0_CONTEXT0_FLAT_END_ADDR, rdev->mc.gtt_end);
 WREG32_MC(R_00011C_MC_PT0_CONTEXT0_DEFAULT_READ_ADDR, 0);


 WREG32_MC(R_000112_MC_PT0_SYSTEM_APERTURE_LOW_ADDR, rdev->mc.vram_start);
 WREG32_MC(R_000114_MC_PT0_SYSTEM_APERTURE_HIGH_ADDR, rdev->mc.vram_end);


 tmp = RREG32_MC(R_000100_MC_PT0_CNTL);
 WREG32_MC(R_000100_MC_PT0_CNTL, (tmp | S_000100_ENABLE_PT(1)));
 tmp = RREG32_MC(R_000009_MC_CNTL1);
 WREG32_MC(R_000009_MC_CNTL1, (tmp | S_000009_ENABLE_PAGE_TABLES(1)));
 rs600_gart_tlb_flush(rdev);
 DRM_INFO("PCIE GART of %uM enabled (table at 0x%016llX).\n",
   (unsigned)(rdev->mc.gtt_size >> 20),
   (unsigned long long)rdev->gart.table_addr);
 rdev->gart.ready = 1;
 return 0;
}
