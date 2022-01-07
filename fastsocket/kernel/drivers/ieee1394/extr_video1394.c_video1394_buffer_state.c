
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_iso_ctx {unsigned int* buffer_status; int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline unsigned video1394_buffer_state(struct dma_iso_ctx *d,
           unsigned int buffer)
{
 unsigned long flags;
 unsigned int ret;
 spin_lock_irqsave(&d->lock, flags);
 ret = d->buffer_status[buffer];
 spin_unlock_irqrestore(&d->lock, flags);
 return ret;
}
