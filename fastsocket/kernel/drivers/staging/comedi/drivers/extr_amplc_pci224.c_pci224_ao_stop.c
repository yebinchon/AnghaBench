
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {scalar_t__ intr_cpuid; int daccon; int ao_spinlock; scalar_t__ intr_running; scalar_t__ iobase1; scalar_t__ intsce; int state; } ;


 int AO_CMD_STARTED ;
 int COMBINE (int,int,int) ;
 scalar_t__ PCI224_DACCEN ;
 scalar_t__ PCI224_DACCON ;
 int PCI224_DACCON_FIFOINTR_EMPTY ;
 int PCI224_DACCON_FIFOINTR_MASK ;
 int PCI224_DACCON_FIFORESET ;
 int PCI224_DACCON_TRIG_MASK ;
 int PCI224_DACCON_TRIG_SW ;
 scalar_t__ PCI224_INT_SCE ;
 scalar_t__ THISCPU ;
 TYPE_1__* devpriv ;
 int outb (int ,scalar_t__) ;
 int outw (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void pci224_ao_stop(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 unsigned long flags;

 if (!test_and_clear_bit(AO_CMD_STARTED, &devpriv->state)) {
  return;
 }

 spin_lock_irqsave(&devpriv->ao_spinlock, flags);

 devpriv->intsce = 0;
 outb(0, devpriv->iobase1 + PCI224_INT_SCE);
 while (devpriv->intr_running && devpriv->intr_cpuid != THISCPU) {
  spin_unlock_irqrestore(&devpriv->ao_spinlock, flags);
  spin_lock_irqsave(&devpriv->ao_spinlock, flags);
 }
 spin_unlock_irqrestore(&devpriv->ao_spinlock, flags);

 outw(0, dev->iobase + PCI224_DACCEN);
 devpriv->daccon = COMBINE(devpriv->daccon,
      PCI224_DACCON_TRIG_SW |
      PCI224_DACCON_FIFOINTR_EMPTY,
      PCI224_DACCON_TRIG_MASK |
      PCI224_DACCON_FIFOINTR_MASK);
 outw(devpriv->daccon | PCI224_DACCON_FIFORESET,
      dev->iobase + PCI224_DACCON);
}
