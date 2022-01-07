
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct comedi_cmd {scalar_t__ convert_src; scalar_t__ scan_begin_src; } ;
struct TYPE_4__ {scalar_t__ intr_cpuid; int adccon; int isr_spinlock; scalar_t__ iobase1; int ier; int int_en; scalar_t__ intr_running; int ai_stop_spinlock; int state; } ;
struct TYPE_3__ {struct comedi_cmd cmd; } ;


 int AI_CMD_STARTED ;
 int OWNER_AICMD ;
 scalar_t__ PCI230_ADCCON ;
 int PCI230_ADC_FIFO_RESET ;
 int PCI230_ADC_IM_MASK ;
 int PCI230_ADC_IR_MASK ;
 int PCI230_ADC_TRIG_NONE ;
 int PCI230_INT_ADC ;
 scalar_t__ PCI230_INT_SCE ;
 scalar_t__ THISCPU ;
 scalar_t__ TRIG_FOLLOW ;
 scalar_t__ TRIG_TIMER ;
 TYPE_2__* devpriv ;
 int outb (int ,scalar_t__) ;
 int outw (int,scalar_t__) ;
 int pci230_cancel_ct (struct comedi_device*,int) ;
 int put_all_resources (struct comedi_device*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void pci230_ai_stop(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 unsigned long irqflags;
 struct comedi_cmd *cmd;
 int started;

 spin_lock_irqsave(&devpriv->ai_stop_spinlock, irqflags);
 started = test_and_clear_bit(AI_CMD_STARTED, &devpriv->state);
 spin_unlock_irqrestore(&devpriv->ai_stop_spinlock, irqflags);
 if (!started) {
  return;
 }

 cmd = &s->async->cmd;
 if (cmd->convert_src == TRIG_TIMER) {

  pci230_cancel_ct(dev, 2);
 }
 if (cmd->scan_begin_src != TRIG_FOLLOW) {

  pci230_cancel_ct(dev, 0);
 }

 spin_lock_irqsave(&devpriv->isr_spinlock, irqflags);


 devpriv->int_en &= ~PCI230_INT_ADC;
 while (devpriv->intr_running && devpriv->intr_cpuid != THISCPU) {
  spin_unlock_irqrestore(&devpriv->isr_spinlock, irqflags);
  spin_lock_irqsave(&devpriv->isr_spinlock, irqflags);
 }
 if (devpriv->ier != devpriv->int_en) {
  devpriv->ier = devpriv->int_en;
  outb(devpriv->ier, devpriv->iobase1 + PCI230_INT_SCE);
 }
 spin_unlock_irqrestore(&devpriv->isr_spinlock, irqflags);



 devpriv->adccon = (devpriv->adccon & (PCI230_ADC_IR_MASK
           | PCI230_ADC_IM_MASK)) |
     PCI230_ADC_TRIG_NONE;
 outw(devpriv->adccon | PCI230_ADC_FIFO_RESET,
      dev->iobase + PCI230_ADCCON);


 put_all_resources(dev, OWNER_AICMD);
}
