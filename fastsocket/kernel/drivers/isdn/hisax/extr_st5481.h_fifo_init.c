
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifo {int size; int lock; scalar_t__ count; scalar_t__ w; scalar_t__ r; } ;


 int spin_lock_init (int *) ;

__attribute__((used)) static inline void fifo_init(struct fifo *fifo, int size)
{
 fifo->r = fifo->w = fifo->count = 0;
 fifo->size = size;
 spin_lock_init(&fifo->lock);
}
