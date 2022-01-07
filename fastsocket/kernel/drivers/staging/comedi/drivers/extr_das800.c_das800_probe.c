
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int spinlock; scalar_t__ iobase; } ;


 scalar_t__ DAS800_GAIN ;
 scalar_t__ DAS800_ID ;
 int ID ;
 int ciodas800 ;
 int ciodas801 ;
 int ciodas802 ;
 int ciodas80216 ;
 int das800 ;
 int das800_boards ;
 int das801 ;
 int das802 ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int printk (char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int thisboard ;

__attribute__((used)) static int das800_probe(struct comedi_device *dev)
{
 int id_bits;
 unsigned long irq_flags;
 int board;


 spin_lock_irqsave(&dev->spinlock, irq_flags);
 outb(ID, dev->iobase + DAS800_GAIN);
 id_bits = inb(dev->iobase + DAS800_ID) & 0x3;
 spin_unlock_irqrestore(&dev->spinlock, irq_flags);

 board = thisboard - das800_boards;

 switch (id_bits) {
 case 0x0:
  if (board == das800) {
   printk(" Board model: DAS-800\n");
   return board;
  }
  if (board == ciodas800) {
   printk(" Board model: CIO-DAS800\n");
   return board;
  }
  printk(" Board model (probed): DAS-800\n");
  return das800;
  break;
 case 0x2:
  if (board == das801) {
   printk(" Board model: DAS-801\n");
   return board;
  }
  if (board == ciodas801) {
   printk(" Board model: CIO-DAS801\n");
   return board;
  }
  printk(" Board model (probed): DAS-801\n");
  return das801;
  break;
 case 0x3:
  if (board == das802) {
   printk(" Board model: DAS-802\n");
   return board;
  }
  if (board == ciodas802) {
   printk(" Board model: CIO-DAS802\n");
   return board;
  }
  if (board == ciodas80216) {
   printk(" Board model: CIO-DAS802/16\n");
   return board;
  }
  printk(" Board model (probed): DAS-802\n");
  return das802;
  break;
 default:
  printk(" Board model: probe returned 0x%x (unknown)\n",
         id_bits);
  return board;
  break;
 }
 return -1;
}
