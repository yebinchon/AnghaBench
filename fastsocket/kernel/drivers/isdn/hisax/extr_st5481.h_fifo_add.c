
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifo {int count; int size; int lock; int w; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int fifo_add(struct fifo *fifo)
{
 unsigned long flags;
 int index;

 if (!fifo) {
  return -1;
 }

 spin_lock_irqsave(&fifo->lock, flags);
 if (fifo->count == fifo->size) {

  index = -1;
 } else {

  index = fifo->w++ & (fifo->size-1);
  fifo->count++;
 }
 spin_unlock_irqrestore(&fifo->lock, flags);
 return index;
}
