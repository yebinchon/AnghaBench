
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int spinlock; scalar_t__ iobase; } ;
struct TYPE_2__ {int buf_write_count; int buf_read_count; } ;


 scalar_t__ DAS16M1_CS ;
 int das16m1_handler (struct comedi_device*,unsigned int) ;
 unsigned int inb (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int das16m1_poll(struct comedi_device *dev, struct comedi_subdevice *s)
{
 unsigned long flags;
 unsigned int status;


 spin_lock_irqsave(&dev->spinlock, flags);
 status = inb(dev->iobase + DAS16M1_CS);
 das16m1_handler(dev, status);
 spin_unlock_irqrestore(&dev->spinlock, flags);

 return s->async->buf_write_count - s->async->buf_read_count;
}
