
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_6__ {int * virtual_start; } ;
struct TYPE_7__ {TYPE_1__ ring; } ;
typedef TYPE_2__ drm_via_private_t ;
struct TYPE_8__ {int func; } ;
typedef TYPE_3__ drm_via_dma_init_t ;


 int DRM_CURPROC ;
 int DRM_SUSER (int ) ;
 int EFAULT ;
 int EINVAL ;
 int EPERM ;



 int via_dma_cleanup (struct drm_device*) ;
 int via_initialize (struct drm_device*,TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static int via_dma_init(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_via_private_t *dev_priv = (drm_via_private_t *) dev->dev_private;
 drm_via_dma_init_t *init = data;
 int retcode = 0;

 switch (init->func) {
 case 128:
  if (!DRM_SUSER(DRM_CURPROC))
   retcode = -EPERM;
  else
   retcode = via_initialize(dev, dev_priv, init);
  break;
 case 130:
  if (!DRM_SUSER(DRM_CURPROC))
   retcode = -EPERM;
  else
   retcode = via_dma_cleanup(dev);
  break;
 case 129:
  retcode = (dev_priv->ring.virtual_start != ((void*)0)) ?
   0 : -EFAULT;
  break;
 default:
  retcode = -EINVAL;
  break;
 }

 return retcode;
}
