
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {scalar_t__ rptr; scalar_t__ wptr; int nop; } ;
struct radeon_device {int dummy; } ;


 int radeon_ring_alloc (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_commit (struct radeon_device*,struct radeon_ring*) ;
 int radeon_ring_free_size (struct radeon_device*,struct radeon_ring*) ;
 int radeon_ring_write (struct radeon_ring*,int ) ;

void radeon_ring_force_activity(struct radeon_device *rdev, struct radeon_ring *ring)
{
 int r;

 radeon_ring_free_size(rdev, ring);
 if (ring->rptr == ring->wptr) {
  r = radeon_ring_alloc(rdev, ring, 1);
  if (!r) {
   radeon_ring_write(ring, ring->nop);
   radeon_ring_commit(rdev, ring);
  }
 }
}
