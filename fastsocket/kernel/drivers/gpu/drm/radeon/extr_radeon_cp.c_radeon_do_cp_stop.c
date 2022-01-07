
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; scalar_t__ cp_running; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CHIP_R420 ;
 int COMMIT_RING () ;
 int CP_PACKET0 (int ,int ) ;
 int DRM_DEBUG (char*) ;
 int OUT_RING (int ) ;
 int R300_RB3D_DC_FINISH ;
 int R300_RB3D_DSTCACHE_CTLSTAT ;
 int RADEON_CP_CSQ_CNTL ;
 int RADEON_CSQ_PRIDIS_INDDIS ;
 int RADEON_FAMILY_MASK ;
 int RADEON_WRITE (int ,int ) ;
 int RING_LOCALS ;
 int radeon_do_wait_for_idle (TYPE_1__*) ;

__attribute__((used)) static void radeon_do_cp_stop(drm_radeon_private_t * dev_priv)
{
 RING_LOCALS;
 DRM_DEBUG("\n");


 if ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_R420) {
  BEGIN_RING(2);
  OUT_RING(CP_PACKET0(R300_RB3D_DSTCACHE_CTLSTAT, 0));
  OUT_RING(R300_RB3D_DC_FINISH);
  ADVANCE_RING();
  COMMIT_RING();
  radeon_do_wait_for_idle(dev_priv);
 }

 RADEON_WRITE(RADEON_CP_CSQ_CNTL, RADEON_CSQ_PRIDIS_INDDIS);

 dev_priv->cp_running = 0;
}
