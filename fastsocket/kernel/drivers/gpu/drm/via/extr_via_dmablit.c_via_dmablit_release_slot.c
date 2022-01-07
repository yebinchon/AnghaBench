
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int busy_queue; int blit_lock; int num_free; } ;
typedef TYPE_1__ drm_via_blitq_t ;


 int DRM_WAKEUP (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
via_dmablit_release_slot(drm_via_blitq_t *blitq)
{
 unsigned long irqsave;

 spin_lock_irqsave(&blitq->blit_lock, irqsave);
 blitq->num_free++;
 spin_unlock_irqrestore(&blitq->blit_lock, irqsave);
 DRM_WAKEUP(&blitq->busy_queue);
}
