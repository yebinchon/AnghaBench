
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int AdControlReg; int AdFunctionReg; scalar_t__ ai16bits; } ;


 int AdControl_Int ;
 int AdFunction_PDTrg ;
 int AdFunction_PETrg ;
 int AdStatus_ADrdy ;
 int EINVAL ;
 int ETIME ;
 scalar_t__ PCI9118_ADFUNC ;
 scalar_t__ PCI9118_ADSTAT ;
 scalar_t__ PCI9118_AD_DATA ;
 scalar_t__ PCI9118_DELFIFO ;
 scalar_t__ PCI9118_SOFTTRG ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* devpriv ;
 int inl (scalar_t__) ;
 int inw (scalar_t__) ;
 int outl (int,scalar_t__) ;
 int outw (int ,scalar_t__) ;
 int setup_channel_list (struct comedi_device*,struct comedi_subdevice*,int,int *,int ,int ,int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int pci9118_insn_read_ai(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{

 int n, timeout;

 devpriv->AdControlReg = AdControl_Int & 0xff;
 devpriv->AdFunctionReg = AdFunction_PDTrg | AdFunction_PETrg;
 outl(devpriv->AdFunctionReg, dev->iobase + PCI9118_ADFUNC);

 if (!setup_channel_list(dev, s, 1, &insn->chanspec, 0, 0, 0, 0, 0))
  return -EINVAL;

 outl(0, dev->iobase + PCI9118_DELFIFO);

 for (n = 0; n < insn->n; n++) {
  outw(0, dev->iobase + PCI9118_SOFTTRG);
  udelay(2);
  timeout = 100;
  while (timeout--) {
   if (inl(dev->iobase + PCI9118_ADSTAT) & AdStatus_ADrdy)
    goto conv_finish;
   udelay(1);
  }

  comedi_error(dev, "A/D insn timeout");
  data[n] = 0;
  outl(0, dev->iobase + PCI9118_DELFIFO);
  return -ETIME;

conv_finish:
  if (devpriv->ai16bits) {
   data[n] =
       (inl(dev->iobase +
     PCI9118_AD_DATA) & 0xffff) ^ 0x8000;
  } else {
   data[n] =
       (inw(dev->iobase + PCI9118_AD_DATA) >> 4) & 0xfff;
  }
 }

 outl(0, dev->iobase + PCI9118_DELFIFO);
 return n;

}
