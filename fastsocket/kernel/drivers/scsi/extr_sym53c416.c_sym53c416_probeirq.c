
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COMMAND_REG ;
 scalar_t__ DEST_BUS_ID ;
 int ILLEGAL ;
 scalar_t__ INT_REG ;
 int NOOP ;
 int SCI ;
 scalar_t__ STATUS_REG ;
 int barrier () ;
 int inb (scalar_t__) ;
 int jiffies ;
 int outb (int,scalar_t__) ;
 int probe_irq_off (int) ;
 int probe_irq_on () ;
 int sym53c416_init (int,int) ;
 scalar_t__ time_before (int,unsigned long) ;
 scalar_t__ time_before_eq (unsigned long,int) ;

__attribute__((used)) static int sym53c416_probeirq(int base, int scsi_id)
{
 int irq, irqs;
 unsigned long i;


 inb(base + INT_REG);

 irqs = probe_irq_on();

 sym53c416_init(base, scsi_id);

 outb(NOOP, base + COMMAND_REG);
 outb(ILLEGAL, base + COMMAND_REG);
 outb(0x07, base + DEST_BUS_ID);
 outb(0x00, base + DEST_BUS_ID);

 i = jiffies + 20;
 while(time_before(jiffies, i) && !(inb(base + STATUS_REG) & SCI))
  barrier();
 if(time_before_eq(i, jiffies))
  return 0;

 irq = probe_irq_off(irqs);
 sym53c416_init(base, scsi_id);
 return irq;
}
