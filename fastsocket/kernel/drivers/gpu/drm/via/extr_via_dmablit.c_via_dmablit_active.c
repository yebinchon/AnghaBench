
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wait_queue_head_t ;
typedef int uint32_t ;
struct TYPE_3__ {int done_blit_handle; int cur_blit_handle; int cur; int blit_lock; int * blit_queue; } ;
typedef TYPE_1__ drm_via_blitq_t ;


 int VIA_NUM_BLIT_SLOTS ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
via_dmablit_active(drm_via_blitq_t *blitq, int engine, uint32_t handle, wait_queue_head_t **queue)
{
 unsigned long irqsave;
 uint32_t slot;
 int active;

 spin_lock_irqsave(&blitq->blit_lock, irqsave);





 active = ((blitq->done_blit_handle - handle) > (1 << 23)) &&
  ((blitq->cur_blit_handle - handle) <= (1 << 23));

 if (queue && active) {
  slot = handle - blitq->done_blit_handle + blitq->cur - 1;
  if (slot >= VIA_NUM_BLIT_SLOTS)
   slot -= VIA_NUM_BLIT_SLOTS;
  *queue = blitq->blit_queue + slot;
 }

 spin_unlock_irqrestore(&blitq->blit_lock, irqsave);

 return active;
}
