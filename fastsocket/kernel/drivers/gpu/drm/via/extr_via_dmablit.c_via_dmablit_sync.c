
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_head_t ;
typedef int uint32_t ;
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_2__ {int * blit_queues; } ;
typedef TYPE_1__ drm_via_private_t ;
typedef int drm_via_blitq_t ;


 int DRM_DEBUG (char*,int ,int,int) ;
 int DRM_HZ ;
 int DRM_WAIT_ON (int,int ,int,int) ;
 scalar_t__ via_dmablit_active (int *,int,int ,int **) ;

__attribute__((used)) static int
via_dmablit_sync(struct drm_device *dev, uint32_t handle, int engine)
{

 drm_via_private_t *dev_priv = (drm_via_private_t *)dev->dev_private;
 drm_via_blitq_t *blitq = dev_priv->blit_queues + engine;
 wait_queue_head_t *queue;
 int ret = 0;

 if (via_dmablit_active(blitq, engine, handle, &queue)) {
  DRM_WAIT_ON(ret, *queue, 3 * DRM_HZ,
       !via_dmablit_active(blitq, engine, handle, ((void*)0)));
 }
 DRM_DEBUG("DMA blit sync handle 0x%x engine %d returned %d\n",
    handle, engine, ret);

 return ret;
}
