
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHIP_RESET ;
 int CMD_REG ;
 int INT_REG ;
 int REG0 ;
 int SCSI_NOP ;
 int STAT_REG ;
 unsigned long WATCHDOG ;
 int barrier () ;
 int chip_init () ;
 int inb (int ) ;
 unsigned long jiffies ;
 int outb (int,int ) ;
 int probe_irq_off (int) ;
 int probe_irq_on () ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ time_before_eq (unsigned long,unsigned long) ;

__attribute__((used)) static int irq_probe(void)
{
 int irqs, irq;
 unsigned long i;

 inb(INT_REG);
 irqs = probe_irq_on();


 REG0;
 outb(0xff, CMD_REG);


 i = jiffies + WATCHDOG;
 while (time_after(i, jiffies) && !(inb(STAT_REG) & 0x80))
  barrier();
 if (time_before_eq(i, jiffies)) {
  probe_irq_off(irqs);
  return -1;
 }

 irq = probe_irq_off(irqs);


 outb(CHIP_RESET, CMD_REG);
 outb(SCSI_NOP, CMD_REG);
 chip_init();

 return irq;
}
