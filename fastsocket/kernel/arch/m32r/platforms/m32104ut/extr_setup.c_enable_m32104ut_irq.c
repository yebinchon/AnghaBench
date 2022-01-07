
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long icucr; } ;


 unsigned long M32R_ICUCR_IEN ;
 unsigned long M32R_ICUCR_ILEVEL6 ;
 TYPE_1__* icu_data ;
 unsigned long irq2port (unsigned int) ;
 int outl (unsigned long,unsigned long) ;

__attribute__((used)) static void enable_m32104ut_irq(unsigned int irq)
{
 unsigned long port, data;

 port = irq2port(irq);
 data = icu_data[irq].icucr|M32R_ICUCR_IEN|M32R_ICUCR_ILEVEL6;
 outl(data, port);
}
