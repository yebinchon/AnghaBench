
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int interrupt_lock; } ;
struct TYPE_3__ {int mite_chan; } ;


 int comedi_buf_read_n_available (int ) ;
 int mite_sync_input_dma (int ,int ) ;
 TYPE_2__* private (struct comedi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* subdev_to_counter (struct comedi_subdevice*) ;

__attribute__((used)) static int ni_660x_input_poll(struct comedi_device *dev,
         struct comedi_subdevice *s)
{
 unsigned long flags;

 spin_lock_irqsave(&private(dev)->interrupt_lock, flags);
 mite_sync_input_dma(subdev_to_counter(s)->mite_chan, s->async);
 spin_unlock_irqrestore(&private(dev)->interrupt_lock, flags);
 return comedi_buf_read_n_available(s->async);
}
