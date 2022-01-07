
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int spinlock; scalar_t__ iobase; } ;
struct TYPE_4__ {int control_state; int timer; scalar_t__ timer_running; scalar_t__ timer_mode; scalar_t__ dma_chan; } ;
struct TYPE_3__ {int size; } ;


 scalar_t__ DAS1600_BURST ;
 scalar_t__ DAS16_CONTROL ;
 int DAS16_INTE ;
 int DMA_ENABLE ;
 int PACING_MASK ;
 int del_timer (int *) ;
 TYPE_2__* devpriv ;
 int disable_dma (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static int das16_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->spinlock, flags);

 devpriv->control_state &= ~DAS16_INTE & ~PACING_MASK & ~DMA_ENABLE;
 outb(devpriv->control_state, dev->iobase + DAS16_CONTROL);
 if (devpriv->dma_chan)
  disable_dma(devpriv->dma_chan);


 if (devpriv->timer_mode && devpriv->timer_running) {
  devpriv->timer_running = 0;
  del_timer(&devpriv->timer);
 }


 if (thisboard->size > 0x400) {
  outb(0, dev->iobase + DAS1600_BURST);
 }

 spin_unlock_irqrestore(&dev->spinlock, flags);

 return 0;
}
