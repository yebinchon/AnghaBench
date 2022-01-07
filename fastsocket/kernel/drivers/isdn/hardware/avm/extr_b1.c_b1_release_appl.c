
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct capi_ctr {scalar_t__ driverdata; } ;
struct TYPE_3__ {int ncci_head; TYPE_2__* card; } ;
typedef TYPE_1__ avmctrl_info ;
struct TYPE_4__ {unsigned int port; int lock; } ;
typedef TYPE_2__ avmcard ;


 int SEND_RELEASE ;
 int b1_put_byte (unsigned int,int ) ;
 int b1_put_word (unsigned int,int ) ;
 int capilib_release_appl (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void b1_release_appl(struct capi_ctr *ctrl, u16 appl)
{
 avmctrl_info *cinfo = (avmctrl_info *)(ctrl->driverdata);
 avmcard *card = cinfo->card;
 unsigned int port = card->port;
 unsigned long flags;

 spin_lock_irqsave(&card->lock, flags);
 capilib_release_appl(&cinfo->ncci_head, appl);
 b1_put_byte(port, SEND_RELEASE);
 b1_put_word(port, appl);
 spin_unlock_irqrestore(&card->lock, flags);
}
