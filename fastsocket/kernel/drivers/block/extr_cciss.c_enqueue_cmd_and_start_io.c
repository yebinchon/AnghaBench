
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ Qdepth; scalar_t__ maxQsinceinit; int lock; int reqQ; } ;
typedef TYPE_1__ ctlr_info_t ;
typedef int CommandList_struct ;


 int addQ (int *,int *) ;
 int set_performant_mode (TYPE_1__*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_io (TYPE_1__*) ;

__attribute__((used)) static void enqueue_cmd_and_start_io(ctlr_info_t *h,
 CommandList_struct *c)
{
 unsigned long flags;

 set_performant_mode(h, c);
 spin_lock_irqsave(&h->lock, flags);
 addQ(&h->reqQ, c);
 h->Qdepth++;
 if (h->Qdepth > h->maxQsinceinit)
  h->maxQsinceinit = h->Qdepth;
 start_io(h);
 spin_unlock_irqrestore(&h->lock, flags);
}
