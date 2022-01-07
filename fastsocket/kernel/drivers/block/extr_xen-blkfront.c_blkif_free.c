
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sring; } ;
struct blkfront_info {scalar_t__ ring_ref; scalar_t__ irq; scalar_t__ evtchn; TYPE_1__ ring; int callback; scalar_t__ rq; int connected; } ;


 int BLKIF_STATE_DISCONNECTED ;
 int BLKIF_STATE_SUSPENDED ;
 scalar_t__ GRANT_INVALID_REF ;
 int blk_stop_queue (scalar_t__) ;
 int blkif_io_lock ;
 int flush_scheduled_work () ;
 int gnttab_cancel_free_callback (int *) ;
 int gnttab_end_foreign_access (scalar_t__,int ,unsigned long) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int unbind_from_irqhandler (scalar_t__,struct blkfront_info*) ;

__attribute__((used)) static void blkif_free(struct blkfront_info *info, int suspend)
{

 spin_lock_irq(&blkif_io_lock);
 info->connected = suspend ?
  BLKIF_STATE_SUSPENDED : BLKIF_STATE_DISCONNECTED;

 if (info->rq)
  blk_stop_queue(info->rq);

 gnttab_cancel_free_callback(&info->callback);
 spin_unlock_irq(&blkif_io_lock);


 flush_scheduled_work();


 if (info->ring_ref != GRANT_INVALID_REF) {
  gnttab_end_foreign_access(info->ring_ref, 0,
       (unsigned long)info->ring.sring);
  info->ring_ref = GRANT_INVALID_REF;
  info->ring.sring = ((void*)0);
 }
 if (info->irq)
  unbind_from_irqhandler(info->irq, info);
 info->evtchn = info->irq = 0;

}
