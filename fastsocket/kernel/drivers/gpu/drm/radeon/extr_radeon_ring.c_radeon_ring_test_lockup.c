
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_ring {int rptr; int ptr_reg_mask; int ptr_reg_shift; int last_rptr; scalar_t__ last_activity; int rptr_reg; } ;
struct radeon_device {int dev; } ;


 int RREG32 (int ) ;
 int dev_err (int ,char*,unsigned long) ;
 unsigned long jiffies ;
 unsigned long jiffies_to_msecs (scalar_t__) ;
 unsigned long radeon_lockup_timeout ;
 int radeon_ring_lockup_update (struct radeon_ring*) ;
 int time_after (unsigned long,scalar_t__) ;

bool radeon_ring_test_lockup(struct radeon_device *rdev, struct radeon_ring *ring)
{
 unsigned long cjiffies, elapsed;
 uint32_t rptr;

 cjiffies = jiffies;
 if (!time_after(cjiffies, ring->last_activity)) {

  radeon_ring_lockup_update(ring);
  return 0;
 }
 rptr = RREG32(ring->rptr_reg);
 ring->rptr = (rptr & ring->ptr_reg_mask) >> ring->ptr_reg_shift;
 if (ring->rptr != ring->last_rptr) {

  radeon_ring_lockup_update(ring);
  return 0;
 }
 elapsed = jiffies_to_msecs(cjiffies - ring->last_activity);
 if (radeon_lockup_timeout && elapsed >= radeon_lockup_timeout) {
  dev_err(rdev->dev, "GPU lockup CP stall for more than %lumsec\n", elapsed);
  return 1;
 }

 return 0;
}
