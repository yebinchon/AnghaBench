
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_relax () ;

void __delay(unsigned long loops)
{
 unsigned long i;

        for(i = 0; i < loops; i++)
                cpu_relax();
}
