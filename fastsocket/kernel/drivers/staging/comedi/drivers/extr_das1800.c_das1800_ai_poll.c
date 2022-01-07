
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int spinlock; } ;
struct TYPE_2__ {int buf_write_count; int buf_read_count; } ;


 int das1800_ai_handler (struct comedi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int das1800_ai_poll(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 unsigned long flags;


 spin_lock_irqsave(&dev->spinlock, flags);
 das1800_ai_handler(dev);
 spin_unlock_irqrestore(&dev->spinlock, flags);

 return s->async->buf_write_count - s->async->buf_read_count;
}
