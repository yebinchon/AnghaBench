
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int spinlock; scalar_t__ iobase; } ;
struct TYPE_4__ {short ao_update_bits; } ;
struct TYPE_3__ {int ao_n_chan; int resolution; } ;


 int CR_CHAN (int ) ;
 int DAC (int) ;
 scalar_t__ DAS1800_DAC ;
 scalar_t__ DAS1800_SELECT ;
 TYPE_2__* devpriv ;
 int outb (int ,scalar_t__) ;
 int outw (short,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static int das1800_ao_winsn(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 int chan = CR_CHAN(insn->chanspec);

 int update_chan = thisboard->ao_n_chan - 1;
 short output;
 unsigned long irq_flags;


 output = data[0] - (1 << (thisboard->resolution - 1));

 if (chan == update_chan)
  devpriv->ao_update_bits = output;

 spin_lock_irqsave(&dev->spinlock, irq_flags);
 outb(DAC(chan), dev->iobase + DAS1800_SELECT);
 outw(output, dev->iobase + DAS1800_DAC);

 if (chan != update_chan) {
  outb(DAC(update_chan), dev->iobase + DAS1800_SELECT);
  outw(devpriv->ao_update_bits, dev->iobase + DAS1800_DAC);
 }
 spin_unlock_irqrestore(&dev->spinlock, irq_flags);

 return 1;
}
