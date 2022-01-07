
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct nouveau_fifo_chan {int dummy; } ;
struct nouveau_fifo {size_t min; size_t max; int lock; scalar_t__* channel; } ;


 char const* nouveau_client_name (struct nouveau_fifo_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

const char *
nouveau_client_name_for_fifo_chid(struct nouveau_fifo *fifo, u32 chid)
{
 struct nouveau_fifo_chan *chan = ((void*)0);
 unsigned long flags;

 spin_lock_irqsave(&fifo->lock, flags);
 if (chid >= fifo->min && chid <= fifo->max)
  chan = (void *)fifo->channel[chid];
 spin_unlock_irqrestore(&fifo->lock, flags);

 return nouveau_client_name(chan);
}
