
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int rptr_save_reg; } ;
struct radeon_device {struct radeon_ring* ring; } ;


 size_t CAYMAN_RING_TYPE_CP1_INDEX ;
 size_t CAYMAN_RING_TYPE_CP2_INDEX ;
 size_t RADEON_RING_TYPE_GFX_INDEX ;
 int radeon_ring_fini (struct radeon_device*,struct radeon_ring*) ;
 int radeon_scratch_free (struct radeon_device*,int ) ;
 int si_cp_enable (struct radeon_device*,int) ;

__attribute__((used)) static void si_cp_fini(struct radeon_device *rdev)
{
 struct radeon_ring *ring;
 si_cp_enable(rdev, 0);

 ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
 radeon_ring_fini(rdev, ring);
 radeon_scratch_free(rdev, ring->rptr_save_reg);

 ring = &rdev->ring[CAYMAN_RING_TYPE_CP1_INDEX];
 radeon_ring_fini(rdev, ring);
 radeon_scratch_free(rdev, ring->rptr_save_reg);

 ring = &rdev->ring[CAYMAN_RING_TYPE_CP2_INDEX];
 radeon_ring_fini(rdev, ring);
 radeon_scratch_free(rdev, ring->rptr_save_reg);
}
