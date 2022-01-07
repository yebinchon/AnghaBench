
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int track_flush; } ;
typedef TYPE_1__ drm_radeon_private_t ;
struct TYPE_6__ {int buffer; } ;
typedef TYPE_2__ drm_radeon_kcmd_buffer_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CP_PACKET0 (int ,int ) ;
 int CP_PACKET3 (int ,int) ;
 int EINVAL ;
 int OUT_RING (int) ;
 int OUT_RING_DRM_BUFFER (int ,int) ;
 int R200_3D_DRAW_IMMD_2 ;
 int R300_PRIM_NUM_VERTICES_SHIFT ;
 int R300_PRIM_TYPE_POINT ;
 int R300_PRIM_WALK_RING ;
 int R300_RB3D_DC_FLUSH ;
 int R300_RB3D_DSTCACHE_CTLSTAT ;
 int RADEON_FLUSH_EMITED ;
 int RADEON_WAIT_3D_IDLECLEAN ;
 int RADEON_WAIT_UNTIL ;
 int RING_LOCALS ;
 int drm_buffer_unprocessed (int ) ;

__attribute__((used)) static __inline__ int r300_emit_clear(drm_radeon_private_t *dev_priv,
          drm_radeon_kcmd_buffer_t *cmdbuf)
{
 RING_LOCALS;

 if (8 * 4 > drm_buffer_unprocessed(cmdbuf->buffer))
  return -EINVAL;

 BEGIN_RING(10);
 OUT_RING(CP_PACKET3(R200_3D_DRAW_IMMD_2, 8));
 OUT_RING(R300_PRIM_TYPE_POINT | R300_PRIM_WALK_RING |
   (1 << R300_PRIM_NUM_VERTICES_SHIFT));
 OUT_RING_DRM_BUFFER(cmdbuf->buffer, 8);
 ADVANCE_RING();

 BEGIN_RING(4);
 OUT_RING(CP_PACKET0(R300_RB3D_DSTCACHE_CTLSTAT, 0));
 OUT_RING(R300_RB3D_DC_FLUSH);
 OUT_RING(CP_PACKET0(RADEON_WAIT_UNTIL, 0));
 OUT_RING(RADEON_WAIT_3D_IDLECLEAN);
 ADVANCE_RING();

 dev_priv->track_flush |= RADEON_FLUSH_EMITED;

 return 0;
}
