
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long icucr; } ;


 unsigned long M32R_ICUCR_IEN ;
 unsigned long M32R_ICUCR_ILEVEL6 ;
 unsigned int NR_IRQS ;
 TYPE_1__* icu_data ;
 unsigned long irq2port (unsigned int) ;
 int outl (unsigned long,unsigned long) ;
 int printk (char*,unsigned int) ;

__attribute__((used)) static void enable_mappi3_irq(unsigned int irq)
{
 unsigned long port, data;

 if ((irq == 0) ||(irq >= NR_IRQS)) {
  printk("bad irq 0x%08x\n", irq);
  return;
 }
 port = irq2port(irq);
 data = icu_data[irq].icucr|M32R_ICUCR_IEN|M32R_ICUCR_ILEVEL6;
 outl(data, port);
}
