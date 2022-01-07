
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct capi_ctr {scalar_t__ driverdata; } ;
struct TYPE_4__ {int ncci_head; int version; TYPE_2__* card; } ;
typedef TYPE_1__ avmctrl_info ;
struct TYPE_5__ {int lock; } ;
typedef TYPE_2__ avmcard ;


 int b1dma_reset (TYPE_2__*) ;
 int capi_ctr_down (struct capi_ctr*) ;
 int capilib_release (int *) ;
 int memset (int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void b1dma_reset_ctr(struct capi_ctr *ctrl)
{
 avmctrl_info *cinfo = (avmctrl_info *)(ctrl->driverdata);
 avmcard *card = cinfo->card;
 unsigned long flags;

 spin_lock_irqsave(&card->lock, flags);
  b1dma_reset(card);

 memset(cinfo->version, 0, sizeof(cinfo->version));
 capilib_release(&cinfo->ncci_head);
 spin_unlock_irqrestore(&card->lock, flags);
 capi_ctr_down(ctrl);
}
