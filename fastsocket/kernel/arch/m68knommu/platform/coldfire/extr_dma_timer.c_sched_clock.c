
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DTCN0 ;
 unsigned long __raw_readl (int ) ;
 unsigned long long cycles2ns (unsigned long) ;

unsigned long long sched_clock(void)
{
 unsigned long cycl = __raw_readl(DTCN0);

 return cycles2ns(cycl);
}
