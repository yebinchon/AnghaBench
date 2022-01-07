
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct radeon_ring {int align_mask; int gpu_addr; int wptr; int ready; scalar_t__ rptr_save_reg; int rptr; } ;
struct TYPE_4__ {int real_vram_size; } ;
struct TYPE_3__ {int gpu_addr; scalar_t__ enabled; } ;
struct radeon_device {TYPE_2__ mc; struct radeon_ring* ring; int pdev; TYPE_1__ wb; int me_fw; } ;


 int DRM_ERROR (char*,...) ;
 int DRM_INFO (char*,unsigned long) ;
 int RADEON_BUF_SWAP_32BIT ;
 int RADEON_CP_CSQ_CNTL ;
 int RADEON_CP_CSQ_MODE ;
 int RADEON_CP_PACKET2 ;
 int RADEON_CP_RB_BASE ;
 int RADEON_CP_RB_CNTL ;
 int RADEON_CP_RB_RPTR ;
 int RADEON_CP_RB_RPTR_WR ;
 int RADEON_CP_RB_WPTR ;
 int RADEON_CP_RB_WPTR_DELAY ;
 int RADEON_CSQ_PRIBM_INDBM ;
 int RADEON_INDIRECT1_START ;
 int RADEON_INDIRECT2_START ;
 int RADEON_MAX_FETCH ;
 int RADEON_RB_BLKSZ ;
 int RADEON_RB_BUFSZ ;
 int RADEON_RB_NO_UPDATE ;
 int RADEON_RB_RPTR_WR_ENA ;
 size_t RADEON_RING_TYPE_GFX_INDEX ;
 int RADEON_WB_CP_RPTR_OFFSET ;
 int RADEON_WB_SCRATCH_OFFSET ;
 int REG_SET (int ,unsigned int) ;
 int RREG32 (int ) ;
 int R_00070C_CP_RB_RPTR_ADDR ;
 int R_000770_SCRATCH_UMSK ;
 int R_000774_SCRATCH_ADDR ;
 int S_00070C_RB_RPTR_ADDR (int) ;
 int WREG32 (int,int) ;
 unsigned int drm_order (unsigned int) ;
 int pci_set_master (int ) ;
 int r100_cp_init_microcode (struct radeon_device*) ;
 int r100_cp_load_microcode (struct radeon_device*) ;
 scalar_t__ r100_debugfs_cp_init (struct radeon_device*) ;
 int radeon_ring_init (struct radeon_device*,struct radeon_ring*,unsigned int,int,int ,int,int ,int,int ) ;
 int radeon_ring_start (struct radeon_device*,size_t,struct radeon_ring*) ;
 scalar_t__ radeon_ring_supports_scratch_reg (struct radeon_device*,struct radeon_ring*) ;
 int radeon_ring_test (struct radeon_device*,size_t,struct radeon_ring*) ;
 int radeon_scratch_get (struct radeon_device*,scalar_t__*) ;
 int radeon_ttm_set_active_vram_size (struct radeon_device*,int ) ;
 int udelay (int) ;

int r100_cp_init(struct radeon_device *rdev, unsigned ring_size)
{
 struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
 unsigned rb_bufsz;
 unsigned rb_blksz;
 unsigned max_fetch;
 unsigned pre_write_timer;
 unsigned pre_write_limit;
 unsigned indirect2_start;
 unsigned indirect1_start;
 uint32_t tmp;
 int r;

 if (r100_debugfs_cp_init(rdev)) {
  DRM_ERROR("Failed to register debugfs file for CP !\n");
 }
 if (!rdev->me_fw) {
  r = r100_cp_init_microcode(rdev);
  if (r) {
   DRM_ERROR("Failed to load firmware!\n");
   return r;
  }
 }


 rb_bufsz = drm_order(ring_size / 8);
 ring_size = (1 << (rb_bufsz + 1)) * 4;
 r100_cp_load_microcode(rdev);
 r = radeon_ring_init(rdev, ring, ring_size, RADEON_WB_CP_RPTR_OFFSET,
        RADEON_CP_RB_RPTR, RADEON_CP_RB_WPTR,
        0, 0x7fffff, RADEON_CP_PACKET2);
 if (r) {
  return r;
 }


 rb_blksz = 9;

 max_fetch = 1;
 ring->align_mask = 16 - 1;

 pre_write_timer = 64;



 pre_write_limit = 0;
 indirect2_start = 80;
 indirect1_start = 16;

 WREG32(0x718, pre_write_timer | (pre_write_limit << 28));
 tmp = (REG_SET(RADEON_RB_BUFSZ, rb_bufsz) |
        REG_SET(RADEON_RB_BLKSZ, rb_blksz) |
        REG_SET(RADEON_MAX_FETCH, max_fetch));



 WREG32(RADEON_CP_RB_CNTL, tmp | RADEON_RB_NO_UPDATE);


 DRM_INFO("radeon: ring at 0x%016lX\n", (unsigned long)ring->gpu_addr);
 WREG32(RADEON_CP_RB_BASE, ring->gpu_addr);

 WREG32(RADEON_CP_RB_CNTL, tmp | RADEON_RB_RPTR_WR_ENA | RADEON_RB_NO_UPDATE);
 WREG32(RADEON_CP_RB_RPTR_WR, 0);
 ring->wptr = 0;
 WREG32(RADEON_CP_RB_WPTR, ring->wptr);


 WREG32(R_00070C_CP_RB_RPTR_ADDR,
  S_00070C_RB_RPTR_ADDR((rdev->wb.gpu_addr + RADEON_WB_CP_RPTR_OFFSET) >> 2));
 WREG32(R_000774_SCRATCH_ADDR, rdev->wb.gpu_addr + RADEON_WB_SCRATCH_OFFSET);

 if (rdev->wb.enabled)
  WREG32(R_000770_SCRATCH_UMSK, 0xff);
 else {
  tmp |= RADEON_RB_NO_UPDATE;
  WREG32(R_000770_SCRATCH_UMSK, 0);
 }

 WREG32(RADEON_CP_RB_CNTL, tmp);
 udelay(10);
 ring->rptr = RREG32(RADEON_CP_RB_RPTR);

 WREG32(RADEON_CP_CSQ_MODE,
        REG_SET(RADEON_INDIRECT2_START, indirect2_start) |
        REG_SET(RADEON_INDIRECT1_START, indirect1_start));
 WREG32(RADEON_CP_RB_WPTR_DELAY, 0);
 WREG32(RADEON_CP_CSQ_MODE, 0x00004D4D);
 WREG32(RADEON_CP_CSQ_CNTL, RADEON_CSQ_PRIBM_INDBM);


 pci_set_master(rdev->pdev);

 radeon_ring_start(rdev, RADEON_RING_TYPE_GFX_INDEX, &rdev->ring[RADEON_RING_TYPE_GFX_INDEX]);
 r = radeon_ring_test(rdev, RADEON_RING_TYPE_GFX_INDEX, ring);
 if (r) {
  DRM_ERROR("radeon: cp isn't working (%d).\n", r);
  return r;
 }
 ring->ready = 1;
 radeon_ttm_set_active_vram_size(rdev, rdev->mc.real_vram_size);

 if (!ring->rptr_save_reg
     && radeon_ring_supports_scratch_reg(rdev, ring)) {
  r = radeon_scratch_get(rdev, &ring->rptr_save_reg);
  if (r) {
   DRM_ERROR("failed to get scratch reg for rptr save (%d).\n", r);
   ring->rptr_save_reg = 0;
  }
 }
 return 0;
}
