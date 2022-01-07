
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct capi_ctr {scalar_t__ driverdata; } ;
struct TYPE_3__ {int ncci_head; int version; TYPE_2__* card; } ;
typedef TYPE_1__ avmctrl_info ;
struct TYPE_4__ {unsigned int port; int lock; } ;
typedef TYPE_2__ avmcard ;


 int b1_reset (unsigned int) ;
 int capi_ctr_down (struct capi_ctr*) ;
 int capilib_release (int *) ;
 int memset (int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int t1_disable_irq (unsigned int) ;

__attribute__((used)) static void t1isa_reset_ctr(struct capi_ctr *ctrl)
{
 avmctrl_info *cinfo = (avmctrl_info *)(ctrl->driverdata);
 avmcard *card = cinfo->card;
 unsigned int port = card->port;
 unsigned long flags;

 t1_disable_irq(port);
 b1_reset(port);
 b1_reset(port);

 memset(cinfo->version, 0, sizeof(cinfo->version));
 spin_lock_irqsave(&card->lock, flags);
 capilib_release(&cinfo->ncci_head);
 spin_unlock_irqrestore(&card->lock, flags);
 capi_ctr_down(ctrl);
}
