
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {int * dev_private; } ;
typedef int drm_radeon_private_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CP_PACKET0 (int ,int ) ;
 int CP_PACKET0_TABLE (int ,int) ;
 int DRM_DEBUG (char*) ;
 int OUT_RING (int) ;
 int RADEON_RE_STIPPLE_ADDR ;
 int RADEON_RE_STIPPLE_DATA ;
 int RING_LOCALS ;

__attribute__((used)) static void radeon_cp_dispatch_stipple(struct drm_device * dev, u32 * stipple)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 int i;
 RING_LOCALS;
 DRM_DEBUG("\n");

 BEGIN_RING(35);

 OUT_RING(CP_PACKET0(RADEON_RE_STIPPLE_ADDR, 0));
 OUT_RING(0x00000000);

 OUT_RING(CP_PACKET0_TABLE(RADEON_RE_STIPPLE_DATA, 31));
 for (i = 0; i < 32; i++) {
  OUT_RING(stipple[i]);
 }

 ADVANCE_RING();
}
