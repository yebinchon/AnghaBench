
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifo {int size; int lock; int count; int r; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int fifo_remove(struct fifo *fifo)
{
 unsigned long flags;
 int index;

 if (!fifo) {
  return -1;
 }

 spin_lock_irqsave(&fifo->lock, flags);
 if (!fifo->count) {

  index = -1;
 } else {

  index = fifo->r++ & (fifo->size-1);
  fifo->count--;
 }
 spin_unlock_irqrestore(&fifo->lock, flags);

 return index;
}
