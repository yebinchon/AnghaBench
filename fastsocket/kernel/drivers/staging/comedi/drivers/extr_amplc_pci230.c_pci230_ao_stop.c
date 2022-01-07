
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct comedi_cmd {scalar_t__ scan_begin_src; } ;
struct TYPE_4__ {int hwver; unsigned char int_en; scalar_t__ intr_cpuid; unsigned char ier; int daccon; int isr_spinlock; scalar_t__ iobase1; scalar_t__ intr_running; int ao_stop_spinlock; int state; } ;
struct TYPE_3__ {struct comedi_cmd cmd; } ;


 int AO_CMD_STARTED ;
 int OWNER_AOCMD ;
 int PCI230P2_DAC_FIFO_RESET ;
 int PCI230P2_DAC_FIFO_UNDERRUN_CLEAR ;
 unsigned char PCI230P2_INT_DAC ;
 scalar_t__ PCI230_DACCON ;
 int PCI230_DAC_OR_MASK ;
 scalar_t__ PCI230_INT_SCE ;
 unsigned char PCI230_INT_ZCLK_CT1 ;
 scalar_t__ THISCPU ;
 scalar_t__ TRIG_TIMER ;
 TYPE_2__* devpriv ;
 int outb (unsigned char,scalar_t__) ;
 int outw (int,scalar_t__) ;
 int pci230_cancel_ct (struct comedi_device*,int) ;
 int put_all_resources (struct comedi_device*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void pci230_ao_stop(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 unsigned long irqflags;
 unsigned char intsrc;
 int started;
 struct comedi_cmd *cmd;

 spin_lock_irqsave(&devpriv->ao_stop_spinlock, irqflags);
 started = test_and_clear_bit(AO_CMD_STARTED, &devpriv->state);
 spin_unlock_irqrestore(&devpriv->ao_stop_spinlock, irqflags);
 if (!started) {
  return;
 }

 cmd = &s->async->cmd;
 if (cmd->scan_begin_src == TRIG_TIMER) {

  pci230_cancel_ct(dev, 1);
 }


 if (devpriv->hwver < 2) {

  intsrc = PCI230_INT_ZCLK_CT1;
 } else {

  intsrc = PCI230P2_INT_DAC;
 }


 spin_lock_irqsave(&devpriv->isr_spinlock, irqflags);
 devpriv->int_en &= ~intsrc;
 while (devpriv->intr_running && devpriv->intr_cpuid != THISCPU) {
  spin_unlock_irqrestore(&devpriv->isr_spinlock, irqflags);
  spin_lock_irqsave(&devpriv->isr_spinlock, irqflags);
 }
 if (devpriv->ier != devpriv->int_en) {
  devpriv->ier = devpriv->int_en;
  outb(devpriv->ier, devpriv->iobase1 + PCI230_INT_SCE);
 }
 spin_unlock_irqrestore(&devpriv->isr_spinlock, irqflags);

 if (devpriv->hwver >= 2) {


  devpriv->daccon &= PCI230_DAC_OR_MASK;
  outw(devpriv->daccon | PCI230P2_DAC_FIFO_RESET
       | PCI230P2_DAC_FIFO_UNDERRUN_CLEAR,
       dev->iobase + PCI230_DACCON);
 }


 put_all_resources(dev, OWNER_AOCMD);
}
