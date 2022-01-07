
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int ring_size; int ring_free_dw; unsigned int align_mask; unsigned int count_dw; int wptr; int wptr_old; int idx; } ;
struct radeon_device {int dummy; } ;


 int ENOMEM ;
 int radeon_fence_wait_next_locked (struct radeon_device*,int ) ;
 int radeon_ring_free_size (struct radeon_device*,struct radeon_ring*) ;
 int radeon_ring_lockup_update (struct radeon_ring*) ;

int radeon_ring_alloc(struct radeon_device *rdev, struct radeon_ring *ring, unsigned ndw)
{
 int r;


 if (ndw > (ring->ring_size / 4))
  return -ENOMEM;


 radeon_ring_free_size(rdev, ring);
 if (ring->ring_free_dw == (ring->ring_size / 4)) {



  radeon_ring_lockup_update(ring);
 }
 ndw = (ndw + ring->align_mask) & ~ring->align_mask;
 while (ndw > (ring->ring_free_dw - 1)) {
  radeon_ring_free_size(rdev, ring);
  if (ndw < ring->ring_free_dw) {
   break;
  }
  r = radeon_fence_wait_next_locked(rdev, ring->idx);
  if (r)
   return r;
 }
 ring->count_dw = ndw;
 ring->wptr_old = ring->wptr;
 return 0;
}
