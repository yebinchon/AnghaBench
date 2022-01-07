
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int dummy; } ;
struct radeon_device {int dummy; } ;


 int PACKET0 (int ,int ) ;
 int RADEON_ISYNC_ANY2D_IDLE3D ;
 int RADEON_ISYNC_ANY3D_IDLE2D ;
 int RADEON_ISYNC_CNTL ;
 int RADEON_ISYNC_CPSCRATCH_IDLEGUI ;
 int RADEON_ISYNC_WAIT_IDLEGUI ;
 int radeon_ring_lock (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_unlock_commit (struct radeon_device*,struct radeon_ring*) ;
 int radeon_ring_write (struct radeon_ring*,int) ;

void r100_ring_start(struct radeon_device *rdev, struct radeon_ring *ring)
{
 int r;

 r = radeon_ring_lock(rdev, ring, 2);
 if (r) {
  return;
 }
 radeon_ring_write(ring, PACKET0(RADEON_ISYNC_CNTL, 0));
 radeon_ring_write(ring,
     RADEON_ISYNC_ANY2D_IDLE3D |
     RADEON_ISYNC_ANY3D_IDLE2D |
     RADEON_ISYNC_WAIT_IDLEGUI |
     RADEON_ISYNC_CPSCRATCH_IDLEGUI);
 radeon_ring_unlock_commit(rdev, ring);
}
