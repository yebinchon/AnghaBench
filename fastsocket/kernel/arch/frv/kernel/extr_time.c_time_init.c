
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv_nsec; int tv_sec; } ;


 int IRQ_CPU_TIMER0 ;
 int mktime (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int setup_irq (int ,int *) ;
 int time_divisor_init () ;
 int timer_irq ;
 TYPE_1__ xtime ;

void time_init(void)
{
 unsigned int year, mon, day, hour, min, sec;

 extern void arch_gettod(int *year, int *mon, int *day, int *hour, int *min, int *sec);




 year = 1980;
 mon = day = 1;
 hour = min = sec = 0;
 arch_gettod (&year, &mon, &day, &hour, &min, &sec);

 if ((year += 1900) < 1970)
  year += 100;
 xtime.tv_sec = mktime(year, mon, day, hour, min, sec);
 xtime.tv_nsec = 0;


 setup_irq(IRQ_CPU_TIMER0, &timer_irq);

 time_divisor_init();
}
