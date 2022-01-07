
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct radeon_ring {int ring_size; } ;
struct TYPE_6__ {int installed; } ;
struct radeon_device {int flags; int dev; struct radeon_ring* ring; TYPE_3__ irq; TYPE_2__* asic; int rlc_fw; int pfp_fw; int me_fw; } ;
struct TYPE_4__ {int * copy; } ;
struct TYPE_5__ {TYPE_1__ copy; } ;


 int DMA_PACKET (int ,int ,int ,int ) ;
 int DMA_PACKET_NOP ;
 int DMA_RB_RPTR ;
 int DMA_RB_WPTR ;
 int DRM_ERROR (char*,...) ;
 int R600_CP_RB_RPTR ;
 int R600_CP_RB_WPTR ;
 size_t R600_RING_TYPE_DMA_INDEX ;
 int R600_WB_DMA_RPTR_OFFSET ;
 int RADEON_CP_PACKET2 ;
 int RADEON_IS_AGP ;
 size_t RADEON_RING_TYPE_GFX_INDEX ;
 int RADEON_WB_CP_RPTR_OFFSET ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,int) ;
 int r600_agp_enable (struct radeon_device*) ;
 int r600_audio_init (struct radeon_device*) ;
 int r600_blit_fini (struct radeon_device*) ;
 int r600_blit_init (struct radeon_device*) ;
 int r600_cp_load_microcode (struct radeon_device*) ;
 int r600_cp_resume (struct radeon_device*) ;
 int r600_dma_resume (struct radeon_device*) ;
 int r600_gpu_init (struct radeon_device*) ;
 int r600_init_microcode (struct radeon_device*) ;
 int r600_irq_init (struct radeon_device*) ;
 int r600_irq_set (struct radeon_device*) ;
 int r600_mc_program (struct radeon_device*) ;
 int r600_pcie_gart_enable (struct radeon_device*) ;
 int r600_pcie_gen2_enable (struct radeon_device*) ;
 int r600_vram_scratch_init (struct radeon_device*) ;
 int radeon_fence_driver_start_ring (struct radeon_device*,size_t) ;
 int radeon_ib_pool_init (struct radeon_device*) ;
 int radeon_irq_kms_fini (struct radeon_device*) ;
 int radeon_irq_kms_init (struct radeon_device*) ;
 int radeon_ring_init (struct radeon_device*,struct radeon_ring*,int ,int ,int ,int ,int,int,int ) ;
 int radeon_wb_init (struct radeon_device*) ;

__attribute__((used)) static int r600_startup(struct radeon_device *rdev)
{
 struct radeon_ring *ring;
 int r;


 r600_pcie_gen2_enable(rdev);

 if (!rdev->me_fw || !rdev->pfp_fw || !rdev->rlc_fw) {
  r = r600_init_microcode(rdev);
  if (r) {
   DRM_ERROR("Failed to load firmware!\n");
   return r;
  }
 }

 r = r600_vram_scratch_init(rdev);
 if (r)
  return r;

 r600_mc_program(rdev);
 if (rdev->flags & RADEON_IS_AGP) {
  r600_agp_enable(rdev);
 } else {
  r = r600_pcie_gart_enable(rdev);
  if (r)
   return r;
 }
 r600_gpu_init(rdev);
 r = r600_blit_init(rdev);
 if (r) {
  r600_blit_fini(rdev);
  rdev->asic->copy.copy = ((void*)0);
  dev_warn(rdev->dev, "failed blitter (%d) falling back to memcpy\n", r);
 }


 r = radeon_wb_init(rdev);
 if (r)
  return r;

 r = radeon_fence_driver_start_ring(rdev, RADEON_RING_TYPE_GFX_INDEX);
 if (r) {
  dev_err(rdev->dev, "failed initializing CP fences (%d).\n", r);
  return r;
 }

 r = radeon_fence_driver_start_ring(rdev, R600_RING_TYPE_DMA_INDEX);
 if (r) {
  dev_err(rdev->dev, "failed initializing DMA fences (%d).\n", r);
  return r;
 }


 if (!rdev->irq.installed) {
  r = radeon_irq_kms_init(rdev);
  if (r)
   return r;
 }

 r = r600_irq_init(rdev);
 if (r) {
  DRM_ERROR("radeon: IH init failed (%d).\n", r);
  radeon_irq_kms_fini(rdev);
  return r;
 }
 r600_irq_set(rdev);

 ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
 r = radeon_ring_init(rdev, ring, ring->ring_size, RADEON_WB_CP_RPTR_OFFSET,
        R600_CP_RB_RPTR, R600_CP_RB_WPTR,
        0, 0xfffff, RADEON_CP_PACKET2);
 if (r)
  return r;

 ring = &rdev->ring[R600_RING_TYPE_DMA_INDEX];
 r = radeon_ring_init(rdev, ring, ring->ring_size, R600_WB_DMA_RPTR_OFFSET,
        DMA_RB_RPTR, DMA_RB_WPTR,
        2, 0x3fffc, DMA_PACKET(DMA_PACKET_NOP, 0, 0, 0));
 if (r)
  return r;

 r = r600_cp_load_microcode(rdev);
 if (r)
  return r;
 r = r600_cp_resume(rdev);
 if (r)
  return r;

 r = r600_dma_resume(rdev);
 if (r)
  return r;

 r = radeon_ib_pool_init(rdev);
 if (r) {
  dev_err(rdev->dev, "IB initialization failed (%d).\n", r);
  return r;
 }

 r = r600_audio_init(rdev);
 if (r) {
  DRM_ERROR("radeon: audio init failed\n");
  return r;
 }

 return 0;
}
