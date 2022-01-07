
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int spinlock; } ;
struct TYPE_2__ {int plx9080_iobase; } ;


 int plx9080_abort_dma (int ,unsigned int) ;
 TYPE_1__* priv (struct comedi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void abort_dma(struct comedi_device *dev, unsigned int channel)
{
 unsigned long flags;


 spin_lock_irqsave(&dev->spinlock, flags);

 plx9080_abort_dma(priv(dev)->plx9080_iobase, channel);

 spin_unlock_irqrestore(&dev->spinlock, flags);
}
