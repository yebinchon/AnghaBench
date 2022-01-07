
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int cob_size; } ;
typedef TYPE_1__ drm_savage_private_t ;


 int DRM_ERROR (char*) ;
 int DRM_INFO (char*,int) ;
 int DRM_UDELAY (int) ;
 int EBUSY ;
 int SAVAGE_BCI_FIFO_SIZE ;
 int SAVAGE_DEFAULT_USEC_TIMEOUT ;
 int SAVAGE_FIFO_USED_MASK_S3D ;
 int SAVAGE_READ (int ) ;
 int SAVAGE_STATUS_WORD0 ;

__attribute__((used)) static int
savage_bci_wait_fifo_s3d(drm_savage_private_t * dev_priv, unsigned int n)
{
 uint32_t maxUsed = dev_priv->cob_size + SAVAGE_BCI_FIFO_SIZE - n;
 uint32_t status;
 int i;

 for (i = 0; i < SAVAGE_DEFAULT_USEC_TIMEOUT; i++) {
  status = SAVAGE_READ(SAVAGE_STATUS_WORD0);
  if ((status & SAVAGE_FIFO_USED_MASK_S3D) <= maxUsed)
   return 0;
  DRM_UDELAY(1);
 }





 return -EBUSY;
}
