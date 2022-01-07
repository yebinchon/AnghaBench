
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {long tv_sec; long tv_usec; } ;
struct TYPE_2__ {long tv_sec; int tv_nsec; } ;


 long do_gettimeoffset () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 long tickadj ;
 scalar_t__ time_adjust ;
 scalar_t__ unlikely (int) ;
 TYPE_1__ xtime ;

void do_gettimeofday(struct timeval *tv)
{
 unsigned long flags;
 signed long usec, sec;
 local_irq_save(flags);
 usec = do_gettimeoffset();






 if (unlikely(time_adjust < 0) && usec > tickadj)
  usec = tickadj;

 sec = xtime.tv_sec;
 usec += xtime.tv_nsec / 1000;
 local_irq_restore(flags);

 while (usec >= 1000000) {
  usec -= 1000000;
  sec++;
 }

 tv->tv_sec = sec;
 tv->tv_usec = usec;
}
