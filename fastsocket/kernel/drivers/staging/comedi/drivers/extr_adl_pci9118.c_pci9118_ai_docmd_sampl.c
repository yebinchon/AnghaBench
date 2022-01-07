
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; int minor; } ;
struct TYPE_2__ {int ai_do; int ai12_startstop; int IntControlReg; int AdFunctionReg; int AdControlReg; int ai_divisor2; int ai_divisor1; scalar_t__ iobase_a; int int_ai_func; } ;


 scalar_t__ AMCC_OP_REG_INTCSR ;
 int AdControl_ExtM ;
 int AdControl_Int ;
 int AdControl_SoftG ;
 int AdControl_TmrTr ;
 int DPRINTK (char*,...) ;
 int EIO ;
 int EXTTRG_AI ;
 int Int_Timer ;
 scalar_t__ PCI9118_ADFUNC ;
 scalar_t__ PCI9118_INTCTRL ;
 int START_AI_EXT ;
 int START_AI_INT ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* devpriv ;
 int inl (scalar_t__) ;
 int interrupt_pci9118_ai_onesample ;
 int outl (int,scalar_t__) ;
 int pci9118_exttrg_add (struct comedi_device*,int ) ;
 int start_pacer (struct comedi_device*,int,int ,int ) ;

__attribute__((used)) static int pci9118_ai_docmd_sampl(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 DPRINTK("adl_pci9118 EDBG: BGN: pci9118_ai_docmd_sampl(%d,) [%d]\n",
  dev->minor, devpriv->ai_do);
 switch (devpriv->ai_do) {
 case 1:
  devpriv->AdControlReg |= AdControl_TmrTr;
  break;
 case 2:
  comedi_error(dev, "pci9118_ai_docmd_sampl() mode 2 bug!\n");
  return -EIO;
 case 3:
  devpriv->AdControlReg |= AdControl_ExtM;
  break;
 case 4:
  comedi_error(dev, "pci9118_ai_docmd_sampl() mode 4 bug!\n");
  return -EIO;
 default:
  comedi_error(dev,
        "pci9118_ai_docmd_sampl() mode number bug!\n");
  return -EIO;
 };

 devpriv->int_ai_func = interrupt_pci9118_ai_onesample;

 if (devpriv->ai12_startstop)
  pci9118_exttrg_add(dev, EXTTRG_AI);

 if ((devpriv->ai_do == 1) || (devpriv->ai_do == 2))
  devpriv->IntControlReg |= Int_Timer;

 devpriv->AdControlReg |= AdControl_Int;

 outl(inl(devpriv->iobase_a + AMCC_OP_REG_INTCSR) | 0x1f00, devpriv->iobase_a + AMCC_OP_REG_INTCSR);

 if (!(devpriv->ai12_startstop & (START_AI_EXT | START_AI_INT))) {
  outl(devpriv->IntControlReg, dev->iobase + PCI9118_INTCTRL);
  outl(devpriv->AdFunctionReg, dev->iobase + PCI9118_ADFUNC);
  if (devpriv->ai_do != 3) {
   start_pacer(dev, devpriv->ai_do, devpriv->ai_divisor1,
        devpriv->ai_divisor2);
   devpriv->AdControlReg |= AdControl_SoftG;
  }
  outl(devpriv->IntControlReg, dev->iobase + PCI9118_INTCTRL);
 }

 DPRINTK("adl_pci9118 EDBG: END: pci9118_ai_docmd_sampl()\n");
 return 0;
}
