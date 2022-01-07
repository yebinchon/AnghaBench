
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HZ ;
 unsigned long MILLION ;
 int cpu_relax () ;
 unsigned long loops_per_jiffy ;

void __udelay(unsigned long usecs)
{
 int i, n;

 n = (loops_per_jiffy * HZ * usecs) / MILLION;
        for(i=0;i<n;i++)
                cpu_relax();
}
