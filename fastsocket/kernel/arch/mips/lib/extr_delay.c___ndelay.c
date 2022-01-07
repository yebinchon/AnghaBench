
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int udelay_val; } ;


 unsigned long HZ ;
 int __delay (unsigned long) ;
 TYPE_1__ current_cpu_data ;

void __ndelay(unsigned long ns)
{
 unsigned int lpj = current_cpu_data.udelay_val;

 __delay((ns * 0x00000005ull * HZ * lpj) >> 32);
}
