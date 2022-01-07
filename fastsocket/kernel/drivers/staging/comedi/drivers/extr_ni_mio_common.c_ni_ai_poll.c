
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int spinlock; } ;
struct TYPE_2__ {int buf_write_count; int buf_read_count; } ;


 scalar_t__ in_interrupt () ;
 int ni_handle_fifo_dregs (struct comedi_device*) ;
 int ni_sync_ai_dma (struct comedi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ni_ai_poll(struct comedi_device *dev, struct comedi_subdevice *s)
{
 unsigned long flags = 0;
 int count;


 if (in_interrupt() == 0)
  spin_lock_irqsave(&dev->spinlock, flags);

 ni_handle_fifo_dregs(dev);



 count = s->async->buf_write_count - s->async->buf_read_count;
 if (in_interrupt() == 0)
  spin_unlock_irqrestore(&dev->spinlock, flags);

 return count;
}
