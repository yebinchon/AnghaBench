
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct sys_device {int dummy; } ;
struct TYPE_6__ {int set_wake; } ;


 int IRQF_VALID ;
 unsigned int IRQ_EINT0 ;
 unsigned int IRQ_EINT3 ;
 unsigned int IRQ_RTC ;
 unsigned int IRQ_S3C2412_CF ;
 int IRQ_S3C2412_CFSDI ;
 unsigned int IRQ_S3C2412_SDI ;
 int handle_edge_irq ;
 int handle_level_irq ;
 TYPE_1__ s3c2412_irq_cfsdi ;
 int s3c2412_irq_demux_cfsdi ;
 TYPE_1__ s3c2412_irq_eint0t4 ;
 TYPE_1__ s3c2412_irq_rtc_chip ;
 int s3c2412_irq_rtc_wake ;
 TYPE_1__ s3c_irq_chip ;
 int set_irq_chained_handler (int ,int ) ;
 int set_irq_chip (unsigned int,TYPE_1__*) ;
 int set_irq_flags (unsigned int,int ) ;
 int set_irq_handler (unsigned int,int ) ;

__attribute__((used)) static int s3c2412_irq_add(struct sys_device *sysdev)
{
 unsigned int irqno;

 for (irqno = IRQ_EINT0; irqno <= IRQ_EINT3; irqno++) {
  set_irq_chip(irqno, &s3c2412_irq_eint0t4);
  set_irq_handler(irqno, handle_edge_irq);
  set_irq_flags(irqno, IRQF_VALID);
 }



 set_irq_chained_handler(IRQ_S3C2412_CFSDI, s3c2412_irq_demux_cfsdi);

 for (irqno = IRQ_S3C2412_SDI; irqno <= IRQ_S3C2412_CF; irqno++) {
  set_irq_chip(irqno, &s3c2412_irq_cfsdi);
  set_irq_handler(irqno, handle_level_irq);
  set_irq_flags(irqno, IRQF_VALID);
 }



 s3c2412_irq_rtc_chip = s3c_irq_chip;
 s3c2412_irq_rtc_chip.set_wake = s3c2412_irq_rtc_wake;

 set_irq_chip(IRQ_RTC, &s3c2412_irq_rtc_chip);

 return 0;
}
