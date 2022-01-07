
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int spinlock; } ;
struct TYPE_2__ {int adc_fifo_bits; scalar_t__ control_status; } ;


 scalar_t__ ADCMUX_CONT ;
 int EOAIE ;
 int INTE ;
 scalar_t__ INT_ADCFIFO ;
 scalar_t__ TRIG_CONTSTAT ;
 TYPE_1__* devpriv ;
 int outw (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cb_pcidas_cancel(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->spinlock, flags);

 devpriv->adc_fifo_bits &= ~INTE & ~EOAIE;
 outw(devpriv->adc_fifo_bits, devpriv->control_status + INT_ADCFIFO);
 spin_unlock_irqrestore(&dev->spinlock, flags);


 outw(0, devpriv->control_status + TRIG_CONTSTAT);

 outw(0, devpriv->control_status + ADCMUX_CONT);

 return 0;
}
