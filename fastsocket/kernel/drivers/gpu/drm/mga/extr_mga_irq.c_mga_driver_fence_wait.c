
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_2__ {int last_fence_retired; int fence_queue; } ;
typedef TYPE_1__ drm_mga_private_t ;


 int DRM_HZ ;
 int DRM_WAIT_ON (int,int ,int,int) ;
 unsigned int atomic_read (int *) ;

int mga_driver_fence_wait(struct drm_device *dev, unsigned int *sequence)
{
 drm_mga_private_t *dev_priv = (drm_mga_private_t *) dev->dev_private;
 unsigned int cur_fence;
 int ret = 0;





 DRM_WAIT_ON(ret, dev_priv->fence_queue, 3 * DRM_HZ,
      (((cur_fence = atomic_read(&dev_priv->last_fence_retired))
        - *sequence) <= (1 << 23)));

 *sequence = cur_fence;

 return ret;
}
