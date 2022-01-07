
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long loops_per_jiffy; } ;


 unsigned long HZ ;
 int __delay (unsigned long) ;
 TYPE_1__* cpu_data ;
 size_t raw_smp_processor_id () ;

void __const_udelay(unsigned long xloops)
{
 __delay(xloops * (HZ * cpu_data[raw_smp_processor_id()].loops_per_jiffy));
}
