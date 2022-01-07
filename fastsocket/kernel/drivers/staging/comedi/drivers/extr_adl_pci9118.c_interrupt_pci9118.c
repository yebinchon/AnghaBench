
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ subdevices; scalar_t__ iobase; int attached; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int ai12_startstop; unsigned int AdControlReg; int (* int_ai_func ) (struct comedi_device*,scalar_t__,unsigned int,unsigned int,unsigned int) ;scalar_t__ ai_neverending; int ai_divisor2; int ai_divisor1; scalar_t__ ai_do; scalar_t__ iobase_a; } ;


 scalar_t__ AMCC_OP_REG_INTCSR ;
 unsigned int ANY_S593X_INT ;
 unsigned int AdStatus_DTH ;
 int EXTTRG_AI ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int Int_DTrg ;
 scalar_t__ PCI9118_ADCNTRL ;
 scalar_t__ PCI9118_ADSTAT ;
 scalar_t__ PCI9118_INTSRC ;
 int START_AI_EXT ;
 int STOP_AI_EXT ;
 TYPE_1__* devpriv ;
 int inl (scalar_t__) ;
 int inw (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 int pci9118_exttrg_del (struct comedi_device*,int ) ;
 int start_pacer (struct comedi_device*,scalar_t__,int ,int ) ;
 int stub1 (struct comedi_device*,scalar_t__,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static irqreturn_t interrupt_pci9118(int irq, void *d)
{
 struct comedi_device *dev = d;
 unsigned int int_daq = 0, int_amcc, int_adstat;

 if (!dev->attached)
  return IRQ_NONE;

 int_daq = inl(dev->iobase + PCI9118_INTSRC) & 0xf;
 int_amcc = inl(devpriv->iobase_a + AMCC_OP_REG_INTCSR);



 if ((!int_daq) && (!(int_amcc & ANY_S593X_INT)))
  return IRQ_NONE;

 outl(int_amcc | 0x00ff0000, devpriv->iobase_a + AMCC_OP_REG_INTCSR);

 int_adstat = inw(dev->iobase + PCI9118_ADSTAT) & 0x1ff;

 if (devpriv->ai_do) {
  if (devpriv->ai12_startstop)
   if ((int_adstat & AdStatus_DTH) && (int_daq & Int_DTrg)) {
    if (devpriv->ai12_startstop & START_AI_EXT) {
     devpriv->ai12_startstop &=
         ~START_AI_EXT;
     if (!(devpriv->ai12_startstop &
           STOP_AI_EXT))
      pci9118_exttrg_del(dev, EXTTRG_AI);
     start_pacer(dev, devpriv->ai_do, devpriv->ai_divisor1, devpriv->ai_divisor2);
     outl(devpriv->AdControlReg,
          dev->iobase + PCI9118_ADCNTRL);
    } else {
     if (devpriv->ai12_startstop &
         STOP_AI_EXT) {
      devpriv->ai12_startstop &=
          ~STOP_AI_EXT;
      pci9118_exttrg_del(dev, EXTTRG_AI);
      devpriv->ai_neverending = 0;
     }
    }
   }

  (devpriv->int_ai_func) (dev, dev->subdevices + 0, int_adstat,
     int_amcc, int_daq);

 }
 return IRQ_HANDLED;
}
