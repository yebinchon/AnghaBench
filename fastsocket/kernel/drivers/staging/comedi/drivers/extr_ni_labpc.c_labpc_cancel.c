
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; int spinlock; } ;
struct TYPE_2__ {int command2_bits; int command3_bits; int (* write_byte ) (int,scalar_t__) ;} ;


 scalar_t__ COMMAND2_REG ;
 scalar_t__ COMMAND3_REG ;
 int HWTRIG_BIT ;
 int PRETRIG_BIT ;
 int SWTRIG_BIT ;
 TYPE_1__* devpriv ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int,scalar_t__) ;
 int stub2 (int,scalar_t__) ;

__attribute__((used)) static int labpc_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->spinlock, flags);
 devpriv->command2_bits &= ~SWTRIG_BIT & ~HWTRIG_BIT & ~PRETRIG_BIT;
 devpriv->write_byte(devpriv->command2_bits, dev->iobase + COMMAND2_REG);
 spin_unlock_irqrestore(&dev->spinlock, flags);

 devpriv->command3_bits = 0;
 devpriv->write_byte(devpriv->command3_bits, dev->iobase + COMMAND3_REG);

 return 0;
}
