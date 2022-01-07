
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int track_flush; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CP_PACKET0 (int ,int ) ;
 int OUT_RING (int) ;
 int R300_DSTCACHE_CTLSTAT ;
 int R300_RB2D_DC_FLUSH ;
 int R300_RB2D_DC_FREE ;
 int R300_RB3D_AARESOLVE_CTL ;
 int R300_RB3D_DC_FLUSH ;
 int R300_RB3D_DC_FREE ;
 int R300_RB3D_DSTCACHE_CTLSTAT ;
 int R300_TX_INVALTAGS ;
 int R300_ZB_ZCACHE_CTLSTAT ;
 int R300_ZC_FLUSH ;
 int R300_ZC_FREE ;
 int RADEON_FLUSH_EMITED ;
 int RADEON_PURGE_EMITED ;
 int RADEON_WAIT_2D_IDLECLEAN ;
 int RADEON_WAIT_3D_IDLECLEAN ;
 int RADEON_WAIT_HOST_IDLECLEAN ;
 int RADEON_WAIT_UNTIL ;
 int RING_LOCALS ;

__attribute__((used)) static void r300_pacify(drm_radeon_private_t *dev_priv)
{
 uint32_t cache_z, cache_3d, cache_2d;
 RING_LOCALS;

 cache_z = R300_ZC_FLUSH;
 cache_2d = R300_RB2D_DC_FLUSH;
 cache_3d = R300_RB3D_DC_FLUSH;
 if (!(dev_priv->track_flush & RADEON_PURGE_EMITED)) {

  cache_z |= R300_ZC_FREE;
  cache_2d |= R300_RB2D_DC_FREE;
  cache_3d |= R300_RB3D_DC_FREE;
 }


 BEGIN_RING(2);
 OUT_RING(CP_PACKET0(R300_ZB_ZCACHE_CTLSTAT, 0));
 OUT_RING(cache_z);
 ADVANCE_RING();

 BEGIN_RING(2);
 OUT_RING(CP_PACKET0(R300_RB3D_DSTCACHE_CTLSTAT, 0));
 OUT_RING(cache_3d);
 ADVANCE_RING();

 BEGIN_RING(2);
 OUT_RING(CP_PACKET0(R300_TX_INVALTAGS, 0));
 OUT_RING(0);
 ADVANCE_RING();

 BEGIN_RING(2);
 OUT_RING(CP_PACKET0(R300_RB3D_AARESOLVE_CTL, 0));
 OUT_RING(0);
 ADVANCE_RING();
 BEGIN_RING(2);
 OUT_RING(CP_PACKET0(RADEON_WAIT_UNTIL, 0));
 OUT_RING(RADEON_WAIT_3D_IDLECLEAN);
 ADVANCE_RING();

 BEGIN_RING(4);
 OUT_RING(CP_PACKET0(R300_DSTCACHE_CTLSTAT, 0));
 OUT_RING(cache_2d);
 OUT_RING(CP_PACKET0(RADEON_WAIT_UNTIL, 0));
 OUT_RING(RADEON_WAIT_2D_IDLECLEAN |
   RADEON_WAIT_HOST_IDLECLEAN);
 ADVANCE_RING();

 dev_priv->track_flush |= RADEON_FLUSH_EMITED | RADEON_PURGE_EMITED;
}
