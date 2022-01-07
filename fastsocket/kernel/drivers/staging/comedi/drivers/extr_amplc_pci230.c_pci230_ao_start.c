
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct comedi_cmd {int scan_begin_src; int scan_begin_arg; } ;
struct comedi_async {int inttrig; int events; struct comedi_cmd cmd; } ;
struct TYPE_2__ {scalar_t__ ao_scan_count; int hwver; unsigned short daccon; int isr_spinlock; scalar_t__ iobase1; int ier; int int_en; int ao_continuous; int state; } ;


 int AO_CMD_STARTED ;
 int COMEDI_CB_EOA ;
 int CR_INVERT ;
 int GAT_CONFIG (int,int ) ;
 int GAT_VCC ;
 unsigned short PCI230P2_DAC_TRIG_EXTN ;
 unsigned short PCI230P2_DAC_TRIG_EXTP ;
 unsigned short PCI230P2_DAC_TRIG_MASK ;
 unsigned short PCI230P2_DAC_TRIG_NONE ;
 unsigned short PCI230P2_DAC_TRIG_SW ;
 unsigned short PCI230P2_DAC_TRIG_Z2CT1 ;
 int PCI230P2_INT_DAC ;
 scalar_t__ PCI230_DACCON ;
 scalar_t__ PCI230_INT_SCE ;
 int PCI230_INT_ZCLK_CT1 ;
 scalar_t__ PCI230_ZGAT_SCE ;



 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 TYPE_1__* devpriv ;
 int outb (int ,scalar_t__) ;
 int outw (unsigned short,scalar_t__) ;
 int pci230_ao_inttrig_scan_begin ;
 int pci230_ao_stop (struct comedi_device*,struct comedi_subdevice*) ;
 int pci230_handle_ao_fifo (struct comedi_device*,struct comedi_subdevice*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pci230_ao_start(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 unsigned long irqflags;

 set_bit(AO_CMD_STARTED, &devpriv->state);
 if (!devpriv->ao_continuous && (devpriv->ao_scan_count == 0)) {

  async->events |= COMEDI_CB_EOA;
  pci230_ao_stop(dev, s);
  comedi_event(dev, s);
 } else {
  if (devpriv->hwver >= 2) {

   unsigned short scantrig;
   int run;


   run = pci230_handle_ao_fifo(dev, s);
   comedi_event(dev, s);
   if (!run) {

    return;
   }

   switch (cmd->scan_begin_src) {
   case 128:
    scantrig = PCI230P2_DAC_TRIG_Z2CT1;
    break;
   case 130:

    if ((cmd->scan_begin_arg & CR_INVERT) == 0) {

     scantrig = PCI230P2_DAC_TRIG_EXTP;
    } else {

     scantrig = PCI230P2_DAC_TRIG_EXTN;
    }
    break;
   case 129:
    scantrig = PCI230P2_DAC_TRIG_SW;
    break;
   default:

    scantrig = PCI230P2_DAC_TRIG_NONE;
    break;
   }
   devpriv->daccon = (devpriv->daccon
        & ~PCI230P2_DAC_TRIG_MASK) |
       scantrig;
   outw(devpriv->daccon, dev->iobase + PCI230_DACCON);

  }
  switch (cmd->scan_begin_src) {
  case 128:
   if (devpriv->hwver < 2) {


    spin_lock_irqsave(&devpriv->isr_spinlock,
        irqflags);
    devpriv->int_en |= PCI230_INT_ZCLK_CT1;
    devpriv->ier |= PCI230_INT_ZCLK_CT1;
    outb(devpriv->ier,
         devpriv->iobase1 + PCI230_INT_SCE);
    spin_unlock_irqrestore(&devpriv->isr_spinlock,
             irqflags);
   }

   outb(GAT_CONFIG(1, GAT_VCC),
        devpriv->iobase1 + PCI230_ZGAT_SCE);
   break;
  case 129:
   async->inttrig = pci230_ao_inttrig_scan_begin;
   break;
  }
  if (devpriv->hwver >= 2) {

   spin_lock_irqsave(&devpriv->isr_spinlock, irqflags);
   devpriv->int_en |= PCI230P2_INT_DAC;
   devpriv->ier |= PCI230P2_INT_DAC;
   outb(devpriv->ier, devpriv->iobase1 + PCI230_INT_SCE);
   spin_unlock_irqrestore(&devpriv->isr_spinlock,
            irqflags);
  }
 }
}
