
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int IntControlReg; int AdControlReg; int AdFunctionReg; int* ao_data; scalar_t__ exttrg_users; scalar_t__ cnt0_users; } ;


 int AdFunction_PDTrg ;
 int AdFunction_PETrg ;
 scalar_t__ PCI9118_ADCNTRL ;
 scalar_t__ PCI9118_ADFUNC ;
 scalar_t__ PCI9118_ADSTAT ;
 scalar_t__ PCI9118_AD_DATA ;
 scalar_t__ PCI9118_BURST ;
 scalar_t__ PCI9118_CNTCTRL ;
 scalar_t__ PCI9118_DA1 ;
 scalar_t__ PCI9118_DA2 ;
 scalar_t__ PCI9118_DELFIFO ;
 scalar_t__ PCI9118_DO ;
 scalar_t__ PCI9118_INTCTRL ;
 scalar_t__ PCI9118_INTSRC ;
 scalar_t__ PCI9118_SCANMOD ;
 TYPE_1__* devpriv ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;
 int start_pacer (struct comedi_device*,int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int pci9118_reset(struct comedi_device *dev)
{
 devpriv->IntControlReg = 0;
 devpriv->exttrg_users = 0;
 inl(dev->iobase + PCI9118_INTCTRL);
 outl(devpriv->IntControlReg, dev->iobase + PCI9118_INTCTRL);
 outl(0x30, dev->iobase + PCI9118_CNTCTRL);

 start_pacer(dev, 0, 0, 0);
 devpriv->AdControlReg = 0;
 outl(devpriv->AdControlReg, dev->iobase + PCI9118_ADCNTRL);
 outl(0, dev->iobase + PCI9118_BURST);
 outl(1, dev->iobase + PCI9118_SCANMOD);
 outl(2, dev->iobase + PCI9118_SCANMOD);
 devpriv->AdFunctionReg = AdFunction_PDTrg | AdFunction_PETrg;
 outl(devpriv->AdFunctionReg, dev->iobase + PCI9118_ADFUNC);

 devpriv->ao_data[0] = 2047;
 devpriv->ao_data[1] = 2047;
 outl(devpriv->ao_data[0], dev->iobase + PCI9118_DA1);
 outl(devpriv->ao_data[1], dev->iobase + PCI9118_DA2);
 outl(0, dev->iobase + PCI9118_DO);
 udelay(10);
 inl(dev->iobase + PCI9118_AD_DATA);
 outl(0, dev->iobase + PCI9118_DELFIFO);
 outl(0, dev->iobase + PCI9118_INTSRC);
 inl(dev->iobase + PCI9118_ADSTAT);
 inl(dev->iobase + PCI9118_INTSRC);
 devpriv->AdControlReg = 0;
 outl(devpriv->AdControlReg, dev->iobase + PCI9118_ADCNTRL);

 devpriv->cnt0_users = 0;
 devpriv->exttrg_users = 0;

 return 0;
}
