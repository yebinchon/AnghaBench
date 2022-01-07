
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int ai_stop_spinlock; scalar_t__ iobase1; int state; } ;


 int AI_CMD_STARTED ;
 int EINVAL ;
 unsigned char GAT_CONFIG (int ,int ) ;
 int GAT_GND ;
 int GAT_VCC ;
 scalar_t__ PCI230_ZGAT_SCE ;
 TYPE_1__* devpriv ;
 int outb (unsigned char,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int pci230_ai_inttrig_scan_begin(struct comedi_device *dev,
     struct comedi_subdevice *s,
     unsigned int trig_num)
{
 unsigned long irqflags;
 unsigned char zgat;

 if (trig_num != 0)
  return -EINVAL;

 spin_lock_irqsave(&devpriv->ai_stop_spinlock, irqflags);
 if (test_bit(AI_CMD_STARTED, &devpriv->state)) {

  zgat = GAT_CONFIG(0, GAT_GND);
  outb(zgat, devpriv->iobase1 + PCI230_ZGAT_SCE);
  zgat = GAT_CONFIG(0, GAT_VCC);
  outb(zgat, devpriv->iobase1 + PCI230_ZGAT_SCE);
 }
 spin_unlock_irqrestore(&devpriv->ai_stop_spinlock, irqflags);

 return 1;
}
