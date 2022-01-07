
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int bus_do_settimeofday (struct timespec*) ;
 int clock_was_set () ;
 int write_seqlock_irq (int *) ;
 int write_sequnlock_irq (int *) ;
 int xtime_lock ;

int do_settimeofday(struct timespec *tv)
{
 int ret;

 write_seqlock_irq(&xtime_lock);
 ret = bus_do_settimeofday(tv);
 write_sequnlock_irq(&xtime_lock);
 clock_was_set();
 return ret;
}
