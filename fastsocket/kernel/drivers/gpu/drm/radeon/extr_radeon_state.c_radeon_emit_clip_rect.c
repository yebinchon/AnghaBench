
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_clip_rect {int x1; int y1; int x2; int y2; } ;
typedef int drm_radeon_private_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CP_PACKET0 (int ,int ) ;
 int DRM_DEBUG (char*,int,int,int,int) ;
 int OUT_RING (int) ;
 int RADEON_RE_TOP_LEFT ;
 int RADEON_RE_WIDTH_HEIGHT ;
 int RING_LOCALS ;

__attribute__((used)) static void radeon_emit_clip_rect(drm_radeon_private_t * dev_priv,
      struct drm_clip_rect * box)
{
 RING_LOCALS;

 DRM_DEBUG("   box:  x1=%d y1=%d  x2=%d y2=%d\n",
    box->x1, box->y1, box->x2, box->y2);

 BEGIN_RING(4);
 OUT_RING(CP_PACKET0(RADEON_RE_TOP_LEFT, 0));
 OUT_RING((box->y1 << 16) | box->x1);
 OUT_RING(CP_PACKET0(RADEON_RE_WIDTH_HEIGHT, 0));
 OUT_RING(((box->y2 - 1) << 16) | (box->x2 - 1));
 ADVANCE_RING();
}
