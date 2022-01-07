
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_3__ {int blit_queues; } ;
typedef TYPE_1__ drm_via_private_t ;
struct TYPE_4__ {int poll_timer; struct drm_device* dev; } ;
typedef TYPE_2__ drm_via_blitq_t ;


 int DRM_DEBUG (char*,int,unsigned long) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int timer_pending (int *) ;
 int via_dmablit_handler (struct drm_device*,int,int ) ;

__attribute__((used)) static void
via_dmablit_timer(unsigned long data)
{
 drm_via_blitq_t *blitq = (drm_via_blitq_t *) data;
 struct drm_device *dev = blitq->dev;
 int engine = (int)
  (blitq - ((drm_via_private_t *)dev->dev_private)->blit_queues);

 DRM_DEBUG("Polling timer called for engine %d, jiffies %lu\n", engine,
    (unsigned long) jiffies);

 via_dmablit_handler(dev, engine, 0);

 if (!timer_pending(&blitq->poll_timer)) {
  mod_timer(&blitq->poll_timer, jiffies + 1);






        via_dmablit_handler(dev, engine, 0);

 }
}
