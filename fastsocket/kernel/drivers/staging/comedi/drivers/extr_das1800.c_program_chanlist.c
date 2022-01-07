
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int spinlock; scalar_t__ iobase; } ;
struct comedi_cmd {int chanlist_len; int * chanlist; } ;


 int const CR_CHAN (int ) ;
 int const CR_RANGE (int ) ;
 scalar_t__ DAS1800_QRAM ;
 scalar_t__ DAS1800_QRAM_ADDRESS ;
 scalar_t__ DAS1800_SELECT ;
 int QRAM ;
 int outb (int,scalar_t__) ;
 int outw (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void program_chanlist(struct comedi_device *dev, struct comedi_cmd cmd)
{
 int i, n, chan_range;
 unsigned long irq_flags;
 const int range_mask = 0x3;
 const int range_bitshift = 8;

 n = cmd.chanlist_len;

 spin_lock_irqsave(&dev->spinlock, irq_flags);
 outb(QRAM, dev->iobase + DAS1800_SELECT);
 outb(n - 1, dev->iobase + DAS1800_QRAM_ADDRESS);

 for (i = 0; i < n; i++) {
  chan_range =
      CR_CHAN(cmd.
       chanlist[i]) | ((CR_RANGE(cmd.chanlist[i]) &
          range_mask) << range_bitshift);
  outw(chan_range, dev->iobase + DAS1800_QRAM);
 }
 outb(n - 1, dev->iobase + DAS1800_QRAM_ADDRESS);
 spin_unlock_irqrestore(&dev->spinlock, irq_flags);

 return;
}
