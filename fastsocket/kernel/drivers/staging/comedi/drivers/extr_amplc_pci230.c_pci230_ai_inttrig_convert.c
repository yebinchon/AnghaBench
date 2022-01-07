
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int adccon; scalar_t__ hwver; int ai_stop_spinlock; scalar_t__ iobase1; int state; } ;


 int AI_CMD_STARTED ;
 int EINVAL ;
 int I8254_MODE0 ;
 int I8254_MODE1 ;
 int PCI230_ADC_IM_DIF ;
 int PCI230_ADC_IM_MASK ;
 scalar_t__ PCI230_Z2_CT_BASE ;
 TYPE_1__* devpriv ;
 int i8254_set_mode (scalar_t__,int ,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int udelay (unsigned int) ;

__attribute__((used)) static int pci230_ai_inttrig_convert(struct comedi_device *dev,
         struct comedi_subdevice *s,
         unsigned int trig_num)
{
 unsigned long irqflags;

 if (trig_num != 0)
  return -EINVAL;

 spin_lock_irqsave(&devpriv->ai_stop_spinlock, irqflags);
 if (test_bit(AI_CMD_STARTED, &devpriv->state)) {
  unsigned int delayus;



  i8254_set_mode(devpriv->iobase1 + PCI230_Z2_CT_BASE, 0, 2,
          I8254_MODE0);
  i8254_set_mode(devpriv->iobase1 + PCI230_Z2_CT_BASE, 0, 2,
          I8254_MODE1);





  if (((devpriv->adccon & PCI230_ADC_IM_MASK)
       == PCI230_ADC_IM_DIF)
      && (devpriv->hwver == 0)) {

   delayus = 8;
  } else {

   delayus = 4;
  }
  spin_unlock_irqrestore(&devpriv->ai_stop_spinlock, irqflags);
  udelay(delayus);
 } else {
  spin_unlock_irqrestore(&devpriv->ai_stop_spinlock, irqflags);
 }

 return 1;
}
