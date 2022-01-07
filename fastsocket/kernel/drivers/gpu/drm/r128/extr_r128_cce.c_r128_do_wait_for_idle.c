
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int usec_timeout; } ;
typedef TYPE_1__ drm_r128_private_t ;


 int DRM_ERROR (char*) ;
 int DRM_UDELAY (int) ;
 int EBUSY ;
 int R128_GUI_ACTIVE ;
 int R128_GUI_STAT ;
 int R128_READ (int ) ;
 int r128_do_pixcache_flush (TYPE_1__*) ;
 int r128_do_wait_for_fifo (TYPE_1__*,int) ;

__attribute__((used)) static int r128_do_wait_for_idle(drm_r128_private_t *dev_priv)
{
 int i, ret;

 ret = r128_do_wait_for_fifo(dev_priv, 64);
 if (ret)
  return ret;

 for (i = 0; i < dev_priv->usec_timeout; i++) {
  if (!(R128_READ(R128_GUI_STAT) & R128_GUI_ACTIVE)) {
   r128_do_pixcache_flush(dev_priv);
   return 0;
  }
  DRM_UDELAY(1);
 }




 return -EBUSY;
}
