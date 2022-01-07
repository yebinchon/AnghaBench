
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int hdp_cntl; } ;
struct TYPE_6__ {TYPE_2__ r300; } ;
struct TYPE_4__ {int installed; } ;
struct radeon_device {int dev; TYPE_3__ config; TYPE_1__ irq; } ;


 int RADEON_HOST_PATH_CNTL ;
 int RADEON_RING_TYPE_GFX_INDEX ;
 int RREG32 (int ) ;
 int dev_err (int ,char*,int) ;
 int r100_cp_init (struct radeon_device*,int) ;
 int r100_enable_bm (struct radeon_device*) ;
 int r100_irq_set (struct radeon_device*) ;
 int r100_set_common_regs (struct radeon_device*) ;
 int r300_clock_startup (struct radeon_device*) ;
 int radeon_fence_driver_start_ring (struct radeon_device*,int ) ;
 int radeon_ib_pool_init (struct radeon_device*) ;
 int radeon_irq_kms_init (struct radeon_device*) ;
 int radeon_wb_init (struct radeon_device*) ;
 int rs400_gart_enable (struct radeon_device*) ;
 int rs400_gpu_init (struct radeon_device*) ;
 int rs400_mc_program (struct radeon_device*) ;

__attribute__((used)) static int rs400_startup(struct radeon_device *rdev)
{
 int r;

 r100_set_common_regs(rdev);

 rs400_mc_program(rdev);

 r300_clock_startup(rdev);

 rs400_gpu_init(rdev);
 r100_enable_bm(rdev);


 r = rs400_gart_enable(rdev);
 if (r)
  return r;


 r = radeon_wb_init(rdev);
 if (r)
  return r;

 r = radeon_fence_driver_start_ring(rdev, RADEON_RING_TYPE_GFX_INDEX);
 if (r) {
  dev_err(rdev->dev, "failed initializing CP fences (%d).\n", r);
  return r;
 }


 if (!rdev->irq.installed) {
  r = radeon_irq_kms_init(rdev);
  if (r)
   return r;
 }

 r100_irq_set(rdev);
 rdev->config.r300.hdp_cntl = RREG32(RADEON_HOST_PATH_CNTL);

 r = r100_cp_init(rdev, 1024 * 1024);
 if (r) {
  dev_err(rdev->dev, "failed initializing CP (%d).\n", r);
  return r;
 }

 r = radeon_ib_pool_init(rdev);
 if (r) {
  dev_err(rdev->dev, "IB initialization failed (%d).\n", r);
  return r;
 }

 return 0;
}
