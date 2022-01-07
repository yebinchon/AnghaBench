
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_4__ {unsigned int ai_inttrig_start; int ai_do; int AdControlReg; int ai_divisor2; int ai_divisor1; int AdFunctionReg; int IntControlReg; int ai12_startstop; } ;
struct TYPE_3__ {int * inttrig; } ;


 int AdControl_SoftG ;
 int EINVAL ;
 scalar_t__ PCI9118_ADCNTRL ;
 scalar_t__ PCI9118_ADFUNC ;
 scalar_t__ PCI9118_INTCTRL ;
 int START_AI_INT ;
 TYPE_2__* devpriv ;
 int outl (int ,scalar_t__) ;
 int start_pacer (struct comedi_device*,int,int ,int ) ;

__attribute__((used)) static int pci9118_ai_inttrig(struct comedi_device *dev,
         struct comedi_subdevice *s, unsigned int trignum)
{
 if (trignum != devpriv->ai_inttrig_start)
  return -EINVAL;

 devpriv->ai12_startstop &= ~START_AI_INT;
 s->async->inttrig = ((void*)0);

 outl(devpriv->IntControlReg, dev->iobase + PCI9118_INTCTRL);
 outl(devpriv->AdFunctionReg, dev->iobase + PCI9118_ADFUNC);
 if (devpriv->ai_do != 3) {
  start_pacer(dev, devpriv->ai_do, devpriv->ai_divisor1,
       devpriv->ai_divisor2);
  devpriv->AdControlReg |= AdControl_SoftG;
 }
 outl(devpriv->AdControlReg, dev->iobase + PCI9118_ADCNTRL);

 return 1;
}
