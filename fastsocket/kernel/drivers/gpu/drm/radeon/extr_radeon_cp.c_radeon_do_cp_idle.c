
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int drm_radeon_private_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int COMMIT_RING () ;
 int DRM_DEBUG (char*) ;
 int RADEON_PURGE_CACHE () ;
 int RADEON_PURGE_ZCACHE () ;
 int RADEON_WAIT_UNTIL_IDLE () ;
 int RING_LOCALS ;
 int radeon_do_wait_for_idle (int *) ;

int radeon_do_cp_idle(drm_radeon_private_t * dev_priv)
{
 RING_LOCALS;
 DRM_DEBUG("\n");

 BEGIN_RING(6);

 RADEON_PURGE_CACHE();
 RADEON_PURGE_ZCACHE();
 RADEON_WAIT_UNTIL_IDLE();

 ADVANCE_RING();
 COMMIT_RING();

 return radeon_do_wait_for_idle(dev_priv);
}
