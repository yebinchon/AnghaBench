
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int boxes; } ;
struct TYPE_5__ {int usec_timeout; int flags; TYPE_1__ stats; } ;
typedef TYPE_2__ drm_radeon_private_t ;


 int CHIP_RV770 ;
 int DRM_INFO (char*,int,int) ;
 int DRM_UDELAY (int) ;
 int EBUSY ;
 int R600_CMDFIFO_AVAIL_MASK ;
 int R600_GRBM_STATUS ;
 int R600_GRBM_STATUS2 ;
 int R700_CMDFIFO_AVAIL_MASK ;
 int RADEON_BOX_WAIT_IDLE ;
 int RADEON_FAMILY_MASK ;
 int RADEON_READ (int ) ;

__attribute__((used)) static int r600_do_wait_for_fifo(drm_radeon_private_t *dev_priv, int entries)
{
 int i;

 dev_priv->stats.boxes |= RADEON_BOX_WAIT_IDLE;

 for (i = 0; i < dev_priv->usec_timeout; i++) {
  int slots;
  if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_RV770)
   slots = (RADEON_READ(R600_GRBM_STATUS)
     & R700_CMDFIFO_AVAIL_MASK);
  else
   slots = (RADEON_READ(R600_GRBM_STATUS)
     & R600_CMDFIFO_AVAIL_MASK);
  if (slots >= entries)
   return 0;
  DRM_UDELAY(1);
 }
 DRM_INFO("wait for fifo failed status : 0x%08X 0x%08X\n",
   RADEON_READ(R600_GRBM_STATUS),
   RADEON_READ(R600_GRBM_STATUS2));

 return -EBUSY;
}
