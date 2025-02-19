
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u32 ;
struct radeon_semaphore {int dummy; } ;
struct radeon_ring {int idx; } ;
struct radeon_fence {int ring; } ;
struct radeon_device {struct radeon_ring* ring; TYPE_2__* asic; } ;
struct TYPE_3__ {int dma_ring_index; } ;
struct TYPE_4__ {TYPE_1__ copy; } ;


 int DIV_ROUND_UP (int,int) ;
 int DMA_PACKET (int ,int,int ,int ,int) ;
 int DMA_PACKET_COPY ;
 int DRM_ERROR (char*,int) ;
 unsigned int RADEON_GPU_PAGE_SHIFT ;
 int radeon_fence_emit (struct radeon_device*,struct radeon_fence**,int ) ;
 scalar_t__ radeon_fence_need_sync (struct radeon_fence*,int ) ;
 int radeon_fence_note_sync (struct radeon_fence*,int ) ;
 int radeon_ring_lock (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_unlock_commit (struct radeon_device*,struct radeon_ring*) ;
 int radeon_ring_unlock_undo (struct radeon_device*,struct radeon_ring*) ;
 int radeon_ring_write (struct radeon_ring*,int) ;
 int radeon_semaphore_create (struct radeon_device*,struct radeon_semaphore**) ;
 int radeon_semaphore_free (struct radeon_device*,struct radeon_semaphore**,struct radeon_fence*) ;
 int radeon_semaphore_sync_rings (struct radeon_device*,struct radeon_semaphore*,int ,int ) ;
 int upper_32_bits (int) ;

int si_copy_dma(struct radeon_device *rdev,
  uint64_t src_offset, uint64_t dst_offset,
  unsigned num_gpu_pages,
  struct radeon_fence **fence)
{
 struct radeon_semaphore *sem = ((void*)0);
 int ring_index = rdev->asic->copy.dma_ring_index;
 struct radeon_ring *ring = &rdev->ring[ring_index];
 u32 size_in_bytes, cur_size_in_bytes;
 int i, num_loops;
 int r = 0;

 r = radeon_semaphore_create(rdev, &sem);
 if (r) {
  DRM_ERROR("radeon: moving bo (%d).\n", r);
  return r;
 }

 size_in_bytes = (num_gpu_pages << RADEON_GPU_PAGE_SHIFT);
 num_loops = DIV_ROUND_UP(size_in_bytes, 0xfffff);
 r = radeon_ring_lock(rdev, ring, num_loops * 5 + 11);
 if (r) {
  DRM_ERROR("radeon: moving bo (%d).\n", r);
  radeon_semaphore_free(rdev, &sem, ((void*)0));
  return r;
 }

 if (radeon_fence_need_sync(*fence, ring->idx)) {
  radeon_semaphore_sync_rings(rdev, sem, (*fence)->ring,
         ring->idx);
  radeon_fence_note_sync(*fence, ring->idx);
 } else {
  radeon_semaphore_free(rdev, &sem, ((void*)0));
 }

 for (i = 0; i < num_loops; i++) {
  cur_size_in_bytes = size_in_bytes;
  if (cur_size_in_bytes > 0xFFFFF)
   cur_size_in_bytes = 0xFFFFF;
  size_in_bytes -= cur_size_in_bytes;
  radeon_ring_write(ring, DMA_PACKET(DMA_PACKET_COPY, 1, 0, 0, cur_size_in_bytes));
  radeon_ring_write(ring, dst_offset & 0xffffffff);
  radeon_ring_write(ring, src_offset & 0xffffffff);
  radeon_ring_write(ring, upper_32_bits(dst_offset) & 0xff);
  radeon_ring_write(ring, upper_32_bits(src_offset) & 0xff);
  src_offset += cur_size_in_bytes;
  dst_offset += cur_size_in_bytes;
 }

 r = radeon_fence_emit(rdev, fence, ring->idx);
 if (r) {
  radeon_ring_unlock_undo(rdev, ring);
  return r;
 }

 radeon_ring_unlock_commit(rdev, ring);
 radeon_semaphore_free(rdev, &sem, *fence);

 return r;
}
