
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int boxes; } ;
struct TYPE_6__ {int usec_timeout; TYPE_1__ stats; } ;
typedef TYPE_2__ drm_radeon_private_t ;


 int DRM_DEBUG (char*,int,int) ;
 int DRM_ERROR (char*) ;
 int DRM_UDELAY (int) ;
 int EBUSY ;
 int R300_VAP_CNTL_STATUS ;
 int RADEON_BOX_WAIT_IDLE ;
 int RADEON_RBBM_FIFOCNT_MASK ;
 int RADEON_RBBM_STATUS ;
 int RADEON_READ (int ) ;
 int radeon_status (TYPE_2__*) ;

__attribute__((used)) static int radeon_do_wait_for_fifo(drm_radeon_private_t * dev_priv, int entries)
{
 int i;

 dev_priv->stats.boxes |= RADEON_BOX_WAIT_IDLE;

 for (i = 0; i < dev_priv->usec_timeout; i++) {
  int slots = (RADEON_READ(RADEON_RBBM_STATUS)
        & RADEON_RBBM_FIFOCNT_MASK);
  if (slots >= entries)
   return 0;
  DRM_UDELAY(1);
 }
 DRM_DEBUG("wait for fifo failed status : 0x%08X 0x%08X\n",
   RADEON_READ(RADEON_RBBM_STATUS),
   RADEON_READ(R300_VAP_CNTL_STATUS));





 return -EBUSY;
}
