
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct radeon_ring {int dummy; } ;
struct radeon_device {scalar_t__ family; struct radeon_ring* ring; } ;


 scalar_t__ CHIP_CAYMAN ;
 int PACKET3 (int ,int) ;
 int PACKET3_SET_CONFIG_REG ;
 int PACKET3_SET_CONFIG_REG_START ;
 int PACKET3_SURFACE_SYNC ;
 size_t RADEON_RING_TYPE_GFX_INDEX ;
 int radeon_ring_write (struct radeon_ring*,int) ;

__attribute__((used)) static void
cp_set_surface_sync(struct radeon_device *rdev,
      u32 sync_type, u32 size,
      u64 mc_addr)
{
 struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
 u32 cp_coher_size;

 if (size == 0xffffffff)
  cp_coher_size = 0xffffffff;
 else
  cp_coher_size = ((size + 255) >> 8);

 if (rdev->family >= CHIP_CAYMAN) {




  radeon_ring_write(ring, PACKET3(PACKET3_SET_CONFIG_REG, 1));
  radeon_ring_write(ring, (0x85e8 - PACKET3_SET_CONFIG_REG_START) >> 2);
  radeon_ring_write(ring, 0);
 }
 radeon_ring_write(ring, PACKET3(PACKET3_SURFACE_SYNC, 3));
 radeon_ring_write(ring, sync_type);
 radeon_ring_write(ring, cp_coher_size);
 radeon_ring_write(ring, mc_addr >> 8);
 radeon_ring_write(ring, 10);
}
