
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int spinlock; } ;
struct TYPE_2__ {int adc_fifo_bits; int ao_control_bits; scalar_t__ control_status; } ;


 int DACEN ;
 scalar_t__ DAC_CSR ;
 int DAC_PACER_MASK ;
 int DAEMIE ;
 int DAHFIE ;
 scalar_t__ INT_ADCFIFO ;
 TYPE_1__* devpriv ;
 int outw (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cb_pcidas_ao_cancel(struct comedi_device *dev,
          struct comedi_subdevice *s)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->spinlock, flags);

 devpriv->adc_fifo_bits &= ~DAHFIE & ~DAEMIE;
 outw(devpriv->adc_fifo_bits, devpriv->control_status + INT_ADCFIFO);


 devpriv->ao_control_bits &= ~DACEN & ~DAC_PACER_MASK;
 outw(devpriv->ao_control_bits, devpriv->control_status + DAC_CSR);
 spin_unlock_irqrestore(&dev->spinlock, flags);

 return 0;
}
