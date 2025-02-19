
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cp_running; int flags; int track_flush; int cp_mode; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CHIP_R420 ;
 int COMMIT_RING () ;
 int CP_PACKET0 (int ,int) ;
 int DRM_DEBUG (char*) ;
 int OUT_RING (int) ;
 int R300_CP_RESYNC_ADDR ;
 int RADEON_CP_CSQ_CNTL ;
 int RADEON_FAMILY_MASK ;
 int RADEON_FLUSH_EMITED ;
 int RADEON_ISYNC_ANY2D_IDLE3D ;
 int RADEON_ISYNC_ANY3D_IDLE2D ;
 int RADEON_ISYNC_CNTL ;
 int RADEON_ISYNC_CPSCRATCH_IDLEGUI ;
 int RADEON_ISYNC_WAIT_IDLEGUI ;
 int RADEON_PURGE_CACHE () ;
 int RADEON_PURGE_EMITED ;
 int RADEON_PURGE_ZCACHE () ;
 int RADEON_WAIT_UNTIL_IDLE () ;
 int RADEON_WRITE (int ,int ) ;
 int RING_LOCALS ;
 int radeon_do_wait_for_idle (TYPE_1__*) ;

__attribute__((used)) static void radeon_do_cp_start(drm_radeon_private_t * dev_priv)
{
 RING_LOCALS;
 DRM_DEBUG("\n");

 radeon_do_wait_for_idle(dev_priv);

 RADEON_WRITE(RADEON_CP_CSQ_CNTL, dev_priv->cp_mode);

 dev_priv->cp_running = 1;




 if ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_R420) {
  BEGIN_RING(3);
  OUT_RING(CP_PACKET0(R300_CP_RESYNC_ADDR, 1));
  OUT_RING(5);
  OUT_RING(0xdeadbeef);
  ADVANCE_RING();
  COMMIT_RING();
 }

 BEGIN_RING(8);

 OUT_RING(CP_PACKET0(RADEON_ISYNC_CNTL, 0));
 OUT_RING(RADEON_ISYNC_ANY2D_IDLE3D |
   RADEON_ISYNC_ANY3D_IDLE2D |
   RADEON_ISYNC_WAIT_IDLEGUI |
   RADEON_ISYNC_CPSCRATCH_IDLEGUI);
 RADEON_PURGE_CACHE();
 RADEON_PURGE_ZCACHE();
 RADEON_WAIT_UNTIL_IDLE();
 ADVANCE_RING();
 COMMIT_RING();

 dev_priv->track_flush |= RADEON_FLUSH_EMITED | RADEON_PURGE_EMITED;
}
