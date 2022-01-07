
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int dummy; } ;


 int IRQF_VALID ;
 unsigned int IRQ_S3C2440_AC97 ;
 unsigned int IRQ_S3C2440_WDT ;
 unsigned int IRQ_WDT ;
 int handle_level_irq ;
 int printk (char*) ;
 int s3c_irq_demux_wdtac97 ;
 int s3c_irq_level_chip ;
 int s3c_irq_wdtac97 ;
 int set_irq_chained_handler (unsigned int,int ) ;
 int set_irq_chip (unsigned int,int *) ;
 int set_irq_flags (unsigned int,int ) ;
 int set_irq_handler (unsigned int,int ) ;

__attribute__((used)) static int s3c2440_irq_add(struct sys_device *sysdev)
{
 unsigned int irqno;

 printk("S3C2440: IRQ Support\n");



 set_irq_chip(IRQ_WDT, &s3c_irq_level_chip);
 set_irq_handler(IRQ_WDT, handle_level_irq);
 set_irq_chained_handler(IRQ_WDT, s3c_irq_demux_wdtac97);

 for (irqno = IRQ_S3C2440_WDT; irqno <= IRQ_S3C2440_AC97; irqno++) {
  set_irq_chip(irqno, &s3c_irq_wdtac97);
  set_irq_handler(irqno, handle_level_irq);
  set_irq_flags(irqno, IRQF_VALID);
 }

 return 0;
}
