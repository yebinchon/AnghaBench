
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ringbuffer {int queue; int lock; } ;


 int dvb_ringbuffer_flush (struct dvb_ringbuffer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

void dvb_ringbuffer_flush_spinlock_wakeup(struct dvb_ringbuffer *rbuf)
{
 unsigned long flags;

 spin_lock_irqsave(&rbuf->lock, flags);
 dvb_ringbuffer_flush(rbuf);
 spin_unlock_irqrestore(&rbuf->lock, flags);

 wake_up(&rbuf->queue);
}
