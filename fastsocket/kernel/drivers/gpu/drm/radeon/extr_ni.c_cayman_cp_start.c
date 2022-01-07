
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_ring {int dummy; } ;
struct TYPE_3__ {int max_hw_contexts; } ;
struct TYPE_4__ {TYPE_1__ cayman; } ;
struct radeon_device {TYPE_2__ config; struct radeon_ring* ring; } ;


 int DRM_ERROR (char*,int) ;
 int PACKET3 (int ,int) ;
 int PACKET3_CLEAR_STATE ;
 int PACKET3_ME_INITIALIZE ;
 int PACKET3_ME_INITIALIZE_DEVICE_ID (int) ;
 int PACKET3_PREAMBLE_BEGIN_CLEAR_STATE ;
 int PACKET3_PREAMBLE_CNTL ;
 int PACKET3_PREAMBLE_END_CLEAR_STATE ;
 size_t RADEON_RING_TYPE_GFX_INDEX ;
 int cayman_cp_enable (struct radeon_device*,int) ;
 int cayman_default_size ;
 int* cayman_default_state ;
 int radeon_ring_lock (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_unlock_commit (struct radeon_device*,struct radeon_ring*) ;
 int radeon_ring_write (struct radeon_ring*,int) ;

__attribute__((used)) static int cayman_cp_start(struct radeon_device *rdev)
{
 struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
 int r, i;

 r = radeon_ring_lock(rdev, ring, 7);
 if (r) {
  DRM_ERROR("radeon: cp failed to lock ring (%d).\n", r);
  return r;
 }
 radeon_ring_write(ring, PACKET3(PACKET3_ME_INITIALIZE, 5));
 radeon_ring_write(ring, 0x1);
 radeon_ring_write(ring, 0x0);
 radeon_ring_write(ring, rdev->config.cayman.max_hw_contexts - 1);
 radeon_ring_write(ring, PACKET3_ME_INITIALIZE_DEVICE_ID(1));
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, 0);
 radeon_ring_unlock_commit(rdev, ring);

 cayman_cp_enable(rdev, 1);

 r = radeon_ring_lock(rdev, ring, cayman_default_size + 19);
 if (r) {
  DRM_ERROR("radeon: cp failed to lock ring (%d).\n", r);
  return r;
 }


 radeon_ring_write(ring, PACKET3(PACKET3_PREAMBLE_CNTL, 0));
 radeon_ring_write(ring, PACKET3_PREAMBLE_BEGIN_CLEAR_STATE);

 for (i = 0; i < cayman_default_size; i++)
  radeon_ring_write(ring, cayman_default_state[i]);

 radeon_ring_write(ring, PACKET3(PACKET3_PREAMBLE_CNTL, 0));
 radeon_ring_write(ring, PACKET3_PREAMBLE_END_CLEAR_STATE);


 radeon_ring_write(ring, PACKET3(PACKET3_CLEAR_STATE, 0));
 radeon_ring_write(ring, 0);


 radeon_ring_write(ring, 0xc0026f00);
 radeon_ring_write(ring, 0x00000000);
 radeon_ring_write(ring, 0x00000000);
 radeon_ring_write(ring, 0x00000000);


 radeon_ring_write(ring, 0xc0036f00);
 radeon_ring_write(ring, 0x00000bc4);
 radeon_ring_write(ring, 0xffffffff);
 radeon_ring_write(ring, 0xffffffff);
 radeon_ring_write(ring, 0xffffffff);

 radeon_ring_write(ring, 0xc0026900);
 radeon_ring_write(ring, 0x00000316);
 radeon_ring_write(ring, 0x0000000e);
 radeon_ring_write(ring, 0x00000010);

 radeon_ring_unlock_commit(rdev, ring);



 return 0;
}
