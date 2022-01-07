
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_ring {int dummy; } ;
struct radeon_device {unsigned int usec_timeout; } ;


 int DRM_ERROR (char*,int,...) ;
 int DRM_INFO (char*,unsigned int) ;
 int DRM_UDELAY (int) ;
 int EINVAL ;
 int PACKET0 (int,int ) ;
 int RREG32 (int) ;
 int WREG32 (int,int) ;
 int radeon_ring_lock (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_unlock_commit (struct radeon_device*,struct radeon_ring*) ;
 int radeon_ring_write (struct radeon_ring*,int) ;
 int radeon_scratch_free (struct radeon_device*,int) ;
 int radeon_scratch_get (struct radeon_device*,int*) ;

int r100_ring_test(struct radeon_device *rdev, struct radeon_ring *ring)
{
 uint32_t scratch;
 uint32_t tmp = 0;
 unsigned i;
 int r;

 r = radeon_scratch_get(rdev, &scratch);
 if (r) {
  DRM_ERROR("radeon: cp failed to get scratch reg (%d).\n", r);
  return r;
 }
 WREG32(scratch, 0xCAFEDEAD);
 r = radeon_ring_lock(rdev, ring, 2);
 if (r) {
  DRM_ERROR("radeon: cp failed to lock ring (%d).\n", r);
  radeon_scratch_free(rdev, scratch);
  return r;
 }
 radeon_ring_write(ring, PACKET0(scratch, 0));
 radeon_ring_write(ring, 0xDEADBEEF);
 radeon_ring_unlock_commit(rdev, ring);
 for (i = 0; i < rdev->usec_timeout; i++) {
  tmp = RREG32(scratch);
  if (tmp == 0xDEADBEEF) {
   break;
  }
  DRM_UDELAY(1);
 }
 if (i < rdev->usec_timeout) {
  DRM_INFO("ring test succeeded in %d usecs\n", i);
 } else {
  DRM_ERROR("radeon: ring test failed (scratch(0x%04X)=0x%08X)\n",
     scratch, tmp);
  r = -EINVAL;
 }
 radeon_scratch_free(rdev, scratch);
 return r;
}
