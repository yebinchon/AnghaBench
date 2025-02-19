
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int boxes; } ;
struct TYPE_6__ {int flags; int usec_timeout; TYPE_1__ stats; } ;
typedef TYPE_2__ drm_radeon_private_t ;


 int CHIP_RV280 ;
 int DRM_ERROR (char*) ;
 int DRM_UDELAY (int) ;
 int EBUSY ;
 int RADEON_BOX_WAIT_IDLE ;
 int RADEON_FAMILY_MASK ;
 int RADEON_RB3D_DC_BUSY ;
 int RADEON_RB3D_DC_FLUSH_ALL ;
 int RADEON_RB3D_DSTCACHE_CTLSTAT ;
 int RADEON_READ (int ) ;
 int RADEON_WRITE (int ,int) ;
 int radeon_status (TYPE_2__*) ;

__attribute__((used)) static int radeon_do_pixcache_flush(drm_radeon_private_t * dev_priv)
{
 u32 tmp;
 int i;

 dev_priv->stats.boxes |= RADEON_BOX_WAIT_IDLE;

 if ((dev_priv->flags & RADEON_FAMILY_MASK) <= CHIP_RV280) {
  tmp = RADEON_READ(RADEON_RB3D_DSTCACHE_CTLSTAT);
  tmp |= RADEON_RB3D_DC_FLUSH_ALL;
  RADEON_WRITE(RADEON_RB3D_DSTCACHE_CTLSTAT, tmp);

  for (i = 0; i < dev_priv->usec_timeout; i++) {
   if (!(RADEON_READ(RADEON_RB3D_DSTCACHE_CTLSTAT)
         & RADEON_RB3D_DC_BUSY)) {
    return 0;
   }
   DRM_UDELAY(1);
  }
 } else {

  return 0;
 }





 return -EBUSY;
}
